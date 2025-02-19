/*******************************************************************************
  XLCDC Peripheral Library

  Company:
    Microchip Technology Inc.

  File Name:
    plib_xlcdc.c

  Summary:
    Contains XLCDC peripheral library function definitions.

  Description:
    This library implements a SUBSET of the register configurations
    for the XLCDC peripheral.

    Created with MPLAB Harmony Version 3.0
*******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
* Copyright (C) 2023 Microchip Technology Inc. and its subsidiaries.
*
* Subject to your compliance with these terms, you may use Microchip software
* and any derivatives exclusively with Microchip products. It is your
* responsibility to comply with third party license terms applicable to your
* use of third party software (including open source software) that may
* accompany Microchip software.
*
* THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
* EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
* WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
* PARTICULAR PURPOSE.
*
* IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
* INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
* WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
* BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
* FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
* ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
* THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
*******************************************************************************/
// DOM-IGNORE-END

#include <math.h>
#include "device.h"
#include "gfx/driver/controller/xlcdc/plib/plib_xlcdc.h"

/* YUV to RGB Color conversion matrix based on BT.709 standard */
static const double colConvMatrix[3][3] = {
//  {Y,   U/C(b),   V/C(r)},
    {1,        0,  1.28033}, // R
    {1, -0.21482, -0.38059}, // G
    {1,  2.12798,        0}  // B
};

/* Convert fraction to bespoke 13-bit signed integer */
static uint32_t XLCDC_FRAC_TO_CSC(double fraction) {
    int32_t scaled = 0;

    if (fraction < -4 || fraction >= 4) {
        return scaled;
    }

    scaled = (int32_t)round(fraction * 1024);

    if (scaled < -4096)
    {
        scaled = -4096;
    }
    if (scaled > 4095)
    {
        scaled = 4095;
    }

    return (uint32_t)(scaled & 0x1FFF);
}

/* Calculate Scaling Factor */
static uint32_t CALC_SCALING_FACT(uint32_t memsize, uint32_t size) {
    if (size == 0)
    {
        return 0;
    }

    uint64_t numerator = (uint64_t)memsize << 20;
    uint64_t result = (numerator + (size / 2)) / size;

    if (result > UINT32_MAX)
    {
        return UINT32_MAX;
    }

    return (uint32_t)result;
}

/* Utility Macros */
/* LCDSR Status Checks */
#define WAIT_LCDSR_EQ(_x_) while((LCDC_REGS->LCDC_LCDSR & _x_ ) == _x_ ){}
#define WAIT_LCDSR_NEQ(_x_) while((LCDC_REGS->LCDC_LCDSR & _x_ ) != _x_ ){}

/* ATTRS Status Checks*/
#define WAIT_ATTRS_EQ(_x_) while((LCDC_REGS->LCDC_ATTRS & _x_ ) == _x_ ){}
#define WAIT_ATTRS_NEQ(_x_) while((LCDC_REGS->LCDC_ATTRS & _x_ ) != _x_ ){}

void XLCDC_EnableClocks(void)
{
    /* Initialize LVDSPLL */
    /* Set PLL target to LVDSPLL and configure startup time of 150us */
    PMC_REGS->PMC_PLL_UPDT = PMC_PLL_UPDT_STUPTIM(0x6) |
                             PMC_PLL_UPDT_ID(0x7);

    /* Set the analog controls to the values recommended in the data sheet */
    PMC_REGS->PMC_PLL_ACR = PMC_PLL_ACR_LOOP_FILTER(0x1B) |
                            PMC_PLL_ACR_LOCK_THR(0x4) |
                            PMC_PLL_ACR_CONTROL(0x10);

    /* Set loop parameters for the fractional PLL */
    PMC_REGS->PMC_PLL_CTRL1 = PMC_PLL_CTRL1_MUL(48 - 1) |
                              PMC_PLL_CTRL1_FRACR(2563185);

    /* Update the PLL target i.e. LVDSPLL, with the configured settings */
    PMC_REGS->PMC_PLL_UPDT |= PMC_PLL_UPDT_UPDATE_Msk;

    /* Enable and lock LVDSPLL clock, enable it for use by PMC */
    PMC_REGS->PMC_PLL_CTRL0 = PMC_PLL_CTRL0_ENLOCK_Msk |
                              PMC_PLL_CTRL0_ENPLL_Msk |
                              PMC_PLL_CTRL0_DIVPMC(2 - 1) |
                              PMC_PLL_CTRL0_ENPLLCK_Msk;

    /* Update the PLL target i.e. LVDSPLL, with the configured settings */
    PMC_REGS->PMC_PLL_UPDT |= PMC_PLL_UPDT_UPDATE_Msk;

    /* Wait for PLL lock */
    while ((PMC_REGS->PMC_PLL_ISR0 & PMC_PLL_ISR0_LOCK7_Msk) != PMC_PLL_ISR0_LOCK7_Msk);

    /* Enable XLCDC Peripheral Clock */
    PMC_REGS->PMC_PCR = PMC_PCR_CMD(1) |
                        PMC_PCR_PID(ID_LCDC) |
                        PMC_PCR_EN(1);

    /* Setup XLCDC Clock  */
    LCDC_REGS->LCDC_LCDCFG0 = LCDC_LCDCFG0_CLKPOL(1) |
                               LCDC_LCDCFG0_CLKBYP(1) |
                               LCDC_LCDCFG0_CLKPWMSEL(LCDC_LCDCFG0_CLKPWMSEL_0_Val) |
                               LCDC_LCDCFG0_CLKDIV(0);
    WAIT_LCDSR_EQ(LCDC_LCDSR_SIPSTS_Msk);

    /* Setup Backlight PWM Clock */
    LCDC_REGS->LCDC_LCDCFG6 = LCDC_LCDCFG6_PWMCVAL(255) |
                               LCDC_LCDCFG6_PWMPOL(1) |
                               LCDC_LCDCFG6_PWMPS(0);
    WAIT_LCDSR_EQ(LCDC_LCDSR_SIPSTS_Msk);
}

void XLCDC_SetupTimingEngine(void)
{
    /* Configure Horizontal and Vertical Pulse Widths */
    LCDC_REGS->LCDC_LCDCFG1 = LCDC_LCDCFG1_VSPW(48 - 1) |
                               LCDC_LCDCFG1_HSPW(20 - 1);
    WAIT_LCDSR_EQ(LCDC_LCDSR_SIPSTS_Msk);

    /* Configure Vertical Porch Widths */
    LCDC_REGS->LCDC_LCDCFG2 = LCDC_LCDCFG2_VBPW(40 - 1) |
                               LCDC_LCDCFG2_VFPW(40 - 1);
    WAIT_LCDSR_EQ(LCDC_LCDSR_SIPSTS_Msk);

    /* Configure Horizontal Porch Widths */
    LCDC_REGS->LCDC_LCDCFG3 = LCDC_LCDCFG3_HBPW(40 - 1) |
                               LCDC_LCDCFG3_HFPW(156 - 1);
    WAIT_LCDSR_EQ(LCDC_LCDSR_SIPSTS_Msk);

    /* Configure Horizontal and Vertical Resolution */
    LCDC_REGS->LCDC_LCDCFG4 = LCDC_LCDCFG4_RPF(800 - 1) |
                               LCDC_LCDCFG4_PPL(1280 - 1);
    WAIT_LCDSR_EQ(LCDC_LCDSR_SIPSTS_Msk);

    /* Configure Signals and Misc. settings */
    LCDC_REGS->LCDC_LCDCFG5 = LCDC_LCDCFG5_HSPOL(0) |
                               LCDC_LCDCFG5_VSPOL(0) |
                               LCDC_LCDCFG5_VSPDLYS(1) |
                               LCDC_LCDCFG5_VSPDLYE(0) |
                               LCDC_LCDCFG5_DISPPOL(1) |
                               LCDC_LCDCFG5_DITHER(0) |
                               LCDC_LCDCFG5_DISPDLY(1) |
                               LCDC_LCDCFG5_MODE(5) |
                               LCDC_LCDCFG5_DPI(1) |
                               LCDC_LCDCFG5_VSPSU(0) |
                               LCDC_LCDCFG5_VSPHO(0) |
                               LCDC_LCDCFG5_GUARDTIME(1);
    WAIT_LCDSR_EQ(LCDC_LCDSR_SIPSTS_Msk);
}

void XLCDC_SetupBaseLayer(void)
{
    /* Configure System Bus Burst Length */
    LCDC_REGS->LCDC_BASECFG0 = LCDC_BASECFG0_BLEN(4);

    /* Configure Color Mode */
    LCDC_REGS->LCDC_BASECFG1 = LCDC_BASECFG1_CLUTEN(0) |
                                LCDC_BASECFG1_GAM(0) |
                                LCDC_BASECFG1_RGBMODE(13) |
                                LCDC_BASECFG1_CLUTMODE(3);

    /* Configure Row Striding */
    LCDC_REGS->LCDC_BASECFG2 = LCDC_BASECFG2_XSTRIDE(0);

    /* Configure Default Layer Color when DMA is disabled */
    LCDC_REGS->LCDC_BASECFG3 = LCDC_BASECFG3_RDEF(0x00) |
                                LCDC_BASECFG3_GDEF(0x00) |
                                LCDC_BASECFG3_BDEF(0x00);

    /* Discard Area, Replication Logic and Data Path */
    LCDC_REGS->LCDC_BASECFG4 = LCDC_BASECFG4_DMA(0) |
                                LCDC_BASECFG4_REP(1) |
                                LCDC_BASECFG4_DISCEN(0);

    /* Discard Area Co-ordinates */
    LCDC_REGS->LCDC_BASECFG5 = LCDC_BASECFG5_DISCXPOS(0x0) |
                                LCDC_BASECFG5_DISCYPOS(0x0);

    /* Discard Area Size */
    LCDC_REGS->LCDC_BASECFG6 = LCDC_BASECFG6_DISCXSIZE(1 - 1) |
                                LCDC_BASECFG6_DISCYSIZE(1 - 1);

    /* LUT Address for DMA fetch */
    LCDC_REGS->LCDC_BASECLA = (uint32_t)NULL;

    /* Frame Buffer Address for DMA fetch */
    LCDC_REGS->LCDC_BASEFBA = (uint32_t)NULL;

    /* Enable Base Layer */
    LCDC_REGS->LCDC_BASEEN = LCDC_BASEEN_ENABLE_Msk;

    /* Update Base Layer Attributes */
    LCDC_REGS->LCDC_ATTRE = LCDC_ATTRE_BASE_Msk;
    WAIT_ATTRS_EQ(LCDC_ATTRS_SIP_Msk);
}

void XLCDC_SetupOVR1Layer(void)
{
    /* Configure System Bus Burst Length */
    LCDC_REGS->LCDC_OVR1CFG0 = LCDC_OVR1CFG0_BLEN(4);

    /* Configure Color Mode */
    LCDC_REGS->LCDC_OVR1CFG1 = LCDC_OVR1CFG1_CLUTEN(0) |
                                LCDC_OVR1CFG1_GAM(0) |
                                LCDC_OVR1CFG1_RGBMODE(13) |
                                LCDC_OVR1CFG1_CLUTMODE(3);

    /* Configure Window Position */
    LCDC_REGS->LCDC_OVR1CFG2 = LCDC_OVR1CFG2_XPOS(0) |
                                LCDC_OVR1CFG2_YPOS(0);

    /* Configure Window Size */
    LCDC_REGS->LCDC_OVR1CFG3 = LCDC_OVR1CFG3_XSIZE(1280 - 1) |
                                LCDC_OVR1CFG3_YSIZE(800 - 1);

    /* Configure Row Striding */
    LCDC_REGS->LCDC_OVR1CFG4 = LCDC_OVR1CFG4_XSTRIDE(0);

    /* Configure Pixel Striding */
    LCDC_REGS->LCDC_OVR1CFG5 = LCDC_OVR1CFG5_PSTRIDE(0);

    /* Configure Default Layer Color when DMA is disabled */
    LCDC_REGS->LCDC_OVR1CFG6 = LCDC_OVR1CFG6_RDEF(0x00) |
                                LCDC_OVR1CFG6_GDEF(0x00) |
                                LCDC_OVR1CFG6_BDEF(0x00) |
                                LCDC_OVR1CFG6_ADEF(0x00);

    /* Chroma Key Component Colors */
    LCDC_REGS->LCDC_OVR1CFG7 = LCDC_OVR1CFG7_RKEY(0x00) |
                                LCDC_OVR1CFG7_GKEY(0x00) |
                                LCDC_OVR1CFG7_BKEY(0x00);
    /* Chroma Key Component Masks */
    LCDC_REGS->LCDC_OVR1CFG8 = LCDC_OVR1CFG8_RMASK(0x00) |
                                LCDC_OVR1CFG8_GMASK(0x00) |
                                LCDC_OVR1CFG8_BMASK(0x00);

    /* Alpha Blending, Chroma Keying, Replication Logic and Data Path */
    LCDC_REGS->LCDC_OVR1CFG9 = LCDC_OVR1CFG9_DMA(0) |
                                LCDC_OVR1CFG9_REP(1) |
                                LCDC_OVR1CFG9_CRKEY(0) |
                                LCDC_OVR1CFG9_DSTKEY(0) |
                                LCDC_OVR1CFG9_SFACTC(4) |  //A0*As
                                LCDC_OVR1CFG9_SFACTA(1) |  //1*As
                                LCDC_OVR1CFG9_DFACTC(6) |  //1-(A0*As)
                                LCDC_OVR1CFG9_DFACTA(2) |  //1-(A0*As)
                                LCDC_OVR1CFG9_A0(255) |    //A0/=255; i.e. GA
                                LCDC_OVR1CFG9_A1(0);

    /* LUT Address for DMA fetch */
    LCDC_REGS->LCDC_OVR1CLA = (uint32_t)NULL;

    /* Frame Buffer Address for DMA fetch */
    LCDC_REGS->LCDC_OVR1FBA = (uint32_t)NULL;

    /* Enable OVR1 Layer */
    LCDC_REGS->LCDC_OVR1EN = LCDC_OVR1EN_ENABLE_Msk;

    /* Update OVR1 Layer Attributes */
    LCDC_REGS->LCDC_ATTRE = LCDC_ATTRE_OVR1_Msk;
    WAIT_ATTRS_EQ(LCDC_ATTRS_SIP_Msk);
}

void XLCDC_SetupHEOLayer(void)
{
    /* Configure System Bus Burst Length */
    LCDC_REGS->LCDC_HEOCFG0 = LCDC_HEOCFG0_BLEN(4) |
                               LCDC_HEOCFG0_BLENCC(4);

    /* Configure Color Mode */
    LCDC_REGS->LCDC_HEOCFG1 = LCDC_HEOCFG1_CLUTEN(0) |
                               LCDC_HEOCFG1_YCCEN(1) |
                               LCDC_HEOCFG1_GAM(0) |
                               LCDC_HEOCFG1_RGBMODE(13) |
                               LCDC_HEOCFG1_CLUTMODE(3) |
                               LCDC_HEOCFG1_YCCMODE(0) |
                               LCDC_HEOCFG1_YCC422ROT(0) |
                               LCDC_HEOCFG1_ILD(0);

    /* Configure Window Position */
    LCDC_REGS->LCDC_HEOCFG2 = LCDC_HEOCFG2_XPOS(0) |
                               LCDC_HEOCFG2_YPOS(0);

    /* Configure Window Size */
    LCDC_REGS->LCDC_HEOCFG3 = LCDC_HEOCFG3_XSIZE(1280 - 1) |
                               LCDC_HEOCFG3_YSIZE(800 - 1);

    /* Image Size */
    LCDC_REGS->LCDC_HEOCFG4 = LCDC_HEOCFG4_XMEMSIZE(1280 - 1) |
                               LCDC_HEOCFG4_YMEMSIZE(800 - 1);

    /* Configure Row Striding */
    LCDC_REGS->LCDC_HEOCFG5 = LCDC_HEOCFG5_XSTRIDE(0);
    LCDC_REGS->LCDC_HEOCFG7 = LCDC_HEOCFG7_CCXSTRIDE(0);

    /* Configure Pixel Striding */
    LCDC_REGS->LCDC_HEOCFG6 = LCDC_HEOCFG6_PSTRIDE(0);
    LCDC_REGS->LCDC_HEOCFG8 = LCDC_HEOCFG8_CCPSTRIDE(0);

    /* Configure Default Layer Color when DMA is disabled */
    LCDC_REGS->LCDC_HEOCFG9 = LCDC_HEOCFG9_RDEF(0x00) |
                               LCDC_HEOCFG9_GDEF(0x00) |
                               LCDC_HEOCFG9_BDEF(0x00) |
                               LCDC_HEOCFG9_ADEF(0x00);

    /* Chroma Key Component Colors */
    LCDC_REGS->LCDC_HEOCFG10 = LCDC_HEOCFG10_RKEY(0x00) |
                                LCDC_HEOCFG10_GKEY(0x00) |
                                LCDC_HEOCFG10_BKEY(0x00);

    /* Chroma Key Component Masks */
    LCDC_REGS->LCDC_HEOCFG11 = LCDC_HEOCFG11_RMASK(0x00) |
                                LCDC_HEOCFG11_GMASK(0x00) |
                                LCDC_HEOCFG11_BMASK(0x00);

    /* Alpha Blending, Chroma Key, Replication Logic, Data Path, Video Priority */
    LCDC_REGS->LCDC_HEOCFG12 = LCDC_HEOCFG12_DMA(0) |
                                LCDC_HEOCFG12_REP(1) |
                                LCDC_HEOCFG12_CRKEY(0) |
                                LCDC_HEOCFG12_DSTKEY(0) |
                                LCDC_HEOCFG12_VIDPRI(1) |  //OVR2>HEO>OVR1>BASE
                                LCDC_HEOCFG12_SFACTC(4) |  //A0*As
                                LCDC_HEOCFG12_SFACTA(1) |  //1*As
                                LCDC_HEOCFG12_DFACTC(6) |  //1-(A0*As)
                                LCDC_HEOCFG12_DFACTA(2) |  //1-(A0*As)
                                LCDC_HEOCFG12_A0(255) |    //A0/=255; i.e. GA
                                LCDC_HEOCFG12_A1(0);

    /* Black Level, Contrast, Brightness Hue and Saturation adjustment */
    LCDC_REGS->LCDC_HEOCFG13 = LCDC_HEOCFG13_BL(0) |
                                LCDC_HEOCFG13_ENABLE(0);
    LCDC_REGS->LCDC_HEOCFG14 = LCDC_HEOCFG14_BRIGHT(0) |
                                LCDC_HEOCFG14_CONT(0);
    LCDC_REGS->LCDC_HEOCFG15 = LCDC_HEOCFG15_HUE(0) |
                                LCDC_HEOCFG15_SAT(0);

    /* YCbCr to RGB Color Space Conversion Unit */
    /* Coefficients for Red Component */
    LCDC_REGS->LCDC_HEOCFG16 = LCDC_HEOCFG16_RYGAIN(XLCDC_FRAC_TO_CSC(colConvMatrix[0][0])) |
                                LCDC_HEOCFG16_RCBGAIN(XLCDC_FRAC_TO_CSC(colConvMatrix[0][1]));
    LCDC_REGS->LCDC_HEOCFG17 = LCDC_HEOCFG17_RCRGAIN(XLCDC_FRAC_TO_CSC(colConvMatrix[0][2]));
    /* Coefficients for Green Component */
    LCDC_REGS->LCDC_HEOCFG18 = LCDC_HEOCFG18_GYGAIN(XLCDC_FRAC_TO_CSC(colConvMatrix[1][0])) |
                                LCDC_HEOCFG18_GCBGAIN(XLCDC_FRAC_TO_CSC(colConvMatrix[1][1]));
    LCDC_REGS->LCDC_HEOCFG19 = LCDC_HEOCFG19_GCRGAIN(XLCDC_FRAC_TO_CSC(colConvMatrix[1][2]));
    /* Coefficients for Blue Component */
    LCDC_REGS->LCDC_HEOCFG20 = LCDC_HEOCFG20_BYGAIN(XLCDC_FRAC_TO_CSC(colConvMatrix[2][0])) |
                                LCDC_HEOCFG20_BCBGAIN(XLCDC_FRAC_TO_CSC(colConvMatrix[2][1]));
    LCDC_REGS->LCDC_HEOCFG21 = LCDC_HEOCFG21_BCRGAIN(XLCDC_FRAC_TO_CSC(colConvMatrix[2][2]));
    /* Color Space Conversion Fixed Scaling Offsets */
    LCDC_REGS->LCDC_HEOCFG22 = LCDC_HEOCFG22_YOFF(1) |
                                LCDC_HEOCFG22_CBOFF(1) |
                                LCDC_HEOCFG22_CROFF(1);

    /* 2D Scaling Unit */
    /* Configure Scaler */
    LCDC_REGS->LCDC_HEOCFG23 = LCDC_HEOCFG23_VXSYEN(0) |
                                LCDC_HEOCFG23_VXSCEN(0) |
                                LCDC_HEOCFG23_HXSYEN(0) |
                                LCDC_HEOCFG23_HXSCEN(0);
    /* Factors */
    LCDC_REGS->LCDC_HEOCFG24 = LCDC_HEOCFG24_VXSYFACT(0x100000);
    LCDC_REGS->LCDC_HEOCFG25 = LCDC_HEOCFG25_VXSCFACT(0x100000);
    LCDC_REGS->LCDC_HEOCFG26 = LCDC_HEOCFG26_HXSYFACT(0x100000);
    LCDC_REGS->LCDC_HEOCFG27 = LCDC_HEOCFG27_HXSCFACT(0x100000);
    /* Phase/Offsets */
    LCDC_REGS->LCDC_HEOCFG28 = LCDC_HEOCFG28_VXSYOFF(0) |
                                LCDC_HEOCFG28_VXSYOFF1(0) |
                                LCDC_HEOCFG28_VXSCOFF(0) |
                                LCDC_HEOCFG28_VXSCOFF1(0);
    LCDC_REGS->LCDC_HEOCFG29 = LCDC_HEOCFG29_HXSYOFF(0) |
                                LCDC_HEOCFG29_HXSCOFF(0);
    /* Vertical Filter Configuration */
    LCDC_REGS->LCDC_HEOCFG30 = LCDC_HEOCFG30_VXSYCFG(1) |
                                LCDC_HEOCFG30_VXSYTAP2(0) |
                                LCDC_HEOCFG30_VXSY1201N(0) |
                                LCDC_HEOCFG30_VXSYBICU(0) |
                                LCDC_HEOCFG30_VXSYCFG1(0) |
                                LCDC_HEOCFG30_VXSCCFG(1) |
                                LCDC_HEOCFG30_VXSCTAP2(0) |
                                LCDC_HEOCFG30_VXSC1201N(0) |
                                LCDC_HEOCFG30_VXSCBICU(0) |
                                LCDC_HEOCFG30_VXSCCFG1(0);
    /* Horizontal Filter Configuration */
    LCDC_REGS->LCDC_HEOCFG31 = LCDC_HEOCFG31_HXSYCFG(1) |
                                LCDC_HEOCFG31_HXSYTAP2(0) |
                                LCDC_HEOCFG31_HXSYBICU(0) |
                                LCDC_HEOCFG31_HXSCCFG(1) |
                                LCDC_HEOCFG31_HXSCTAP2(0) |
                                LCDC_HEOCFG31_HXSCBICU(0);
    /* Filter Tap Coefficients */
    for(int i = 0; i < 16; i++)
    {
        LCDC_REGS->LCDC_HEOVTAP[i].LCDC_HEOVTAP10P = LCDC_HEOVTAP10P_TAP0(0) |
                                                    LCDC_HEOVTAP10P_TAP1(0);
        LCDC_REGS->LCDC_HEOVTAP[i].LCDC_HEOVTAP32P = LCDC_HEOVTAP32P_TAP2(0) |
                                                    LCDC_HEOVTAP32P_TAP3(0);
        LCDC_REGS->LCDC_HEOHTAP[i].LCDC_HEOHTAP10P = LCDC_HEOHTAP10P_TAP0(0) |
                                                    LCDC_HEOHTAP10P_TAP1(0);
        LCDC_REGS->LCDC_HEOHTAP[i].LCDC_HEOHTAP32P = LCDC_HEOHTAP32P_TAP2(0) |
                                                    LCDC_HEOHTAP32P_TAP3(0);
    }

    /* LUT Address for DMA fetch */
    LCDC_REGS->LCDC_HEOCLA = (uint32_t)NULL;

    /* Frame Buffer Addresses for DMA fetch */
    /* YCbCr, RGB or Interlaced Field 0 (top) */
    LCDC_REGS->LCDC_HEO[0].LCDC_HEOYFBA = (uint32_t)NULL;
    LCDC_REGS->LCDC_HEO[0].LCDC_HEOCBFBA = (uint32_t)NULL;
    LCDC_REGS->LCDC_HEO[0].LCDC_HEOCRFBA = (uint32_t)NULL;
    /* Interlaced Field 1 (top) when LCDC_HEOCFG1.ILD is 1 */
    LCDC_REGS->LCDC_HEO[1].LCDC_HEOYFBA = (uint32_t)NULL;
    LCDC_REGS->LCDC_HEO[1].LCDC_HEOCBFBA = (uint32_t)NULL;
    LCDC_REGS->LCDC_HEO[1].LCDC_HEOCRFBA = (uint32_t)NULL;

    /* Enable HEO Layer */
    LCDC_REGS->LCDC_HEOEN = LCDC_HEOEN_ENABLE_Msk;

    /* Update HEO Layer Attributes */
    LCDC_REGS->LCDC_ATTRE = LCDC_ATTRE_HEO_Msk;
    WAIT_ATTRS_EQ(LCDC_ATTRS_SIP_Msk);
}

void XLCDC_EnableBacklight(void)
{
    LCDC_REGS->LCDC_LCDEN = LCDC_LCDEN_PWMEN_Msk;
    WAIT_LCDSR_EQ(LCDC_LCDSR_SIPSTS_Msk);
    WAIT_LCDSR_NEQ(LCDC_LCDSR_PWMSTS_Msk);
}

void XLCDC_DisableBacklight(void)
{
    LCDC_REGS->LCDC_LCDDIS = LCDC_LCDDIS_PWMDIS_Msk;
    WAIT_LCDSR_EQ(LCDC_LCDSR_SIPSTS_Msk);
    WAIT_LCDSR_EQ(LCDC_LCDSR_PWMSTS_Msk)
}

void XLCDC_SetBacklightBrightness(uint8_t brightness)
{
    LCDC_REGS->LCDC_LCDCFG6 = (LCDC_REGS->LCDC_LCDCFG6 & ~LCDC_LCDCFG6_PWMCVAL_Msk) |
                               LCDC_LCDCFG6_PWMCVAL(brightness);
}

bool XLCDC_SetLayerEnable(XLCDC_LAYER layer, bool enable, bool update)
{
    switch(layer)
    {
        case XLCDC_LAYER_BASE:
        {
            /* Enable Base Layer */
            LCDC_REGS->LCDC_BASEEN = LCDC_BASEEN_ENABLE(enable);

            break;
        }

        case XLCDC_LAYER_OVR1:
        {
            /* Enable OVR1 Layer */
            LCDC_REGS->LCDC_OVR1EN = LCDC_OVR1EN_ENABLE(enable);

            break;
        }

        case XLCDC_LAYER_HEO:
        {
            /* Enable HEO Layer */
            LCDC_REGS->LCDC_HEOEN = LCDC_HEOEN_ENABLE(enable);

            break;
        }

        default:
            return 1;
    }

    if(update)
        return XLCDC_UpdateLayerAttributes(layer);
    else
        return 0;
}

bool XLCDC_SetLayerOpts(XLCDC_LAYER layer, uint8_t alpha, bool enable_dma, bool update)
{
    switch(layer)
    {
        case XLCDC_LAYER_BASE:
        {
            LCDC_REGS->LCDC_BASECFG4 = LCDC_BASECFG4_DMA(enable_dma) |
                                        LCDC_BASECFG4_REP(1) |
                                        LCDC_BASECFG4_DISCEN(0);

            break;
        }

        case XLCDC_LAYER_OVR1:
        {
            LCDC_REGS->LCDC_OVR1CFG9 = LCDC_OVR1CFG9_DMA(enable_dma) |
                                        LCDC_OVR1CFG9_REP(1) |
                                        LCDC_OVR1CFG9_CRKEY(0) |
                                        LCDC_OVR1CFG9_DSTKEY(0) |
                                        LCDC_OVR1CFG9_SFACTC(4) |  //A0*As
                                        LCDC_OVR1CFG9_SFACTA(1) |  //1*As
                                        LCDC_OVR1CFG9_DFACTC(6) |  //1-(A0*As)
                                        LCDC_OVR1CFG9_DFACTA(2) |  //1-(A0*As)
                                        LCDC_OVR1CFG9_A0(alpha) |  //A0/=255; i.e. GA
                                        LCDC_OVR1CFG9_A1(0);

            break;
        }

        case XLCDC_LAYER_HEO:
        {
            LCDC_REGS->LCDC_HEOCFG12 = LCDC_HEOCFG12_DMA(enable_dma) |
                                        LCDC_HEOCFG12_REP(1) |
                                        LCDC_HEOCFG12_CRKEY(0) |
                                        LCDC_HEOCFG12_DSTKEY(0) |
                                        LCDC_HEOCFG12_VIDPRI(1) |  //OVR2>HEO>OVR1>BASE
                                        LCDC_HEOCFG12_SFACTC(4) |  //A0*As
                                        LCDC_HEOCFG12_SFACTA(1) |  //1*As
                                        LCDC_HEOCFG12_DFACTC(6) |  //1-(A0*As)
                                        LCDC_HEOCFG12_DFACTA(2) |  //1-(A0*As)
                                        LCDC_HEOCFG12_A0(alpha) |  //A0/=255; i.e. GA
                                        LCDC_HEOCFG12_A1(0);

            break;
        }

        default:
            return 1;
    }

    if(update)
        return XLCDC_UpdateLayerAttributes(layer);
    else
        return 0;
}

bool XLCDC_SetLayerRGBColorMode(XLCDC_LAYER layer, XLCDC_RGB_COLOR_MODE mode, bool update)
{
    uint32_t temp = 0;

    switch(layer)
    {
        case XLCDC_LAYER_BASE:
        {
            temp = LCDC_BASECFG1_GAM(0) |
                   LCDC_BASECFG1_CLUTMODE(XLCDC_CLUT_COLOR_MODE_4BPP);

            if (mode>=0)
                temp |= LCDC_BASECFG1_RGBMODE(mode);
            else if (mode == XLCDC_RGB_COLOR_MODE_CLUT)
                temp |= LCDC_BASECFG1_CLUTEN(1);
            else
                return 1;

            LCDC_REGS->LCDC_BASECFG1 = temp;

            break;
        }

        case XLCDC_LAYER_OVR1:
        {
            temp = LCDC_OVR1CFG1_GAM(0) |
                   LCDC_OVR1CFG1_CLUTMODE(XLCDC_CLUT_COLOR_MODE_4BPP);

            if (mode>=0)
                temp |= LCDC_OVR1CFG1_RGBMODE(mode);
            else if (mode == XLCDC_RGB_COLOR_MODE_CLUT)
                temp |= LCDC_OVR1CFG1_CLUTEN(1);
            else
                return 1;

            LCDC_REGS->LCDC_OVR1CFG1 = temp;

            break;
        }

        case XLCDC_LAYER_HEO:
        {
            temp = LCDC_HEOCFG1_GAM(0) |
                   LCDC_HEOCFG1_CLUTMODE(XLCDC_CLUT_COLOR_MODE_4BPP);

            if (mode>=0)
                temp |= LCDC_HEOCFG1_RGBMODE(mode);
            else if (mode == XLCDC_RGB_COLOR_MODE_CLUT)
                temp |= LCDC_HEOCFG1_CLUTEN(1);
            else
                return 1;

            LCDC_REGS->LCDC_HEOCFG1 = temp;

            break;
        }

        default:
            return 1;
    }

    if(update)
        return XLCDC_UpdateLayerAttributes(layer);
    else
        return 0;
}

bool XLCDC_SetLayerWindowXYPos(XLCDC_LAYER layer, uint32_t xpos, uint32_t ypos, bool update)
{
    switch(layer)
    {
        case XLCDC_LAYER_OVR1:
        {
            LCDC_REGS->LCDC_OVR1CFG2 = LCDC_OVR1CFG2_XPOS(xpos) |
                                        LCDC_OVR1CFG2_YPOS(ypos);

            break;
        }

        case XLCDC_LAYER_HEO:
        {
            LCDC_REGS->LCDC_HEOCFG2 = LCDC_HEOCFG2_XPOS(xpos) |
                                       LCDC_HEOCFG2_YPOS(ypos);

            break;
        }

        default:
            return 1;
    }

    if(update)
        return XLCDC_UpdateLayerAttributes(layer);
    else
        return 0;
}

bool XLCDC_SetLayerWindowXYSize(XLCDC_LAYER layer, uint32_t xsize, uint32_t ysize, bool update)
{
    if (xsize == 0)
        xsize = 1;

    if (ysize == 0)
        ysize = 1;

    switch(layer)
    {
        case XLCDC_LAYER_OVR1:
        {
            LCDC_REGS->LCDC_OVR1CFG3 = LCDC_OVR1CFG3_XSIZE(xsize - 1) |
                                        LCDC_OVR1CFG3_YSIZE(ysize - 1);

            break;
        }

        case XLCDC_LAYER_HEO:
        {
            LCDC_REGS->LCDC_HEOCFG3 = LCDC_HEOCFG3_XSIZE(xsize - 1) |
                                       LCDC_HEOCFG3_YSIZE(ysize - 1);

            LCDC_REGS->LCDC_HEOCFG4 = LCDC_HEOCFG4_XMEMSIZE(xsize - 1) |
                                       LCDC_HEOCFG4_YMEMSIZE(ysize - 1);

            break;
        }

        default:
            return 1;
    }

    if(update)
        return XLCDC_UpdateLayerAttributes(layer);
    else
        return 0;
}

bool XLCDC_SetLayerXStride(XLCDC_LAYER layer, uint32_t xstride, bool update)
{
    switch(layer)
    {
        case XLCDC_LAYER_BASE:
        {
            LCDC_REGS->LCDC_BASECFG2 = LCDC_BASECFG2_XSTRIDE(xstride);

            break;
        }

        case XLCDC_LAYER_OVR1:
        {
            LCDC_REGS->LCDC_OVR1CFG4 = LCDC_OVR1CFG4_XSTRIDE(xstride);

            break;
        }

        case XLCDC_LAYER_HEO:
        {
            LCDC_REGS->LCDC_HEOCFG5 = LCDC_HEOCFG5_XSTRIDE(xstride);

            break;
        }

        default:
            return 1;
    }

    if(update)
        return XLCDC_UpdateLayerAttributes(layer);
    else
        return 0;
}

bool XLCDC_SetLayerPStride(XLCDC_LAYER layer, uint32_t pstride, bool update)
{
    switch(layer)
    {
        case XLCDC_LAYER_OVR1:
        {
            LCDC_REGS->LCDC_OVR1CFG5 = LCDC_OVR1CFG5_PSTRIDE(pstride);

            break;
        }

        case XLCDC_LAYER_HEO:
        {
            LCDC_REGS->LCDC_HEOCFG6 = LCDC_HEOCFG6_PSTRIDE(pstride);
            break;
        }

        default:
            return 1;
    }

    if(update)
        return XLCDC_UpdateLayerAttributes(layer);
    else
        return 0;
}

bool XLCDC_SetLayerAddress(XLCDC_LAYER layer, uint32_t address, bool update)
{
    switch(layer)
    {
        case XLCDC_LAYER_BASE:
        {
            LCDC_REGS->LCDC_BASEFBA = (uint32_t)address;

            break;
        }

        case XLCDC_LAYER_OVR1:
        {
            LCDC_REGS->LCDC_OVR1FBA = (uint32_t)address;

            break;
        }

        case XLCDC_LAYER_HEO:
        {
            LCDC_REGS->LCDC_HEO[0].LCDC_HEOYFBA = (uint32_t)address;

            break;
        }

        default:
            return 1;
    }

    if(update)
        return XLCDC_UpdateLayerAttributes(layer);
    else
        return 0;
}

bool XLCDC_UpdateLayerAttributes(XLCDC_LAYER layer)
{
    while(LCDC_REGS->LCDC_ATTRE);

    switch(layer)
    {
        case XLCDC_LAYER_BASE:
        {
            /* Update Base Layer Attributes */
            LCDC_REGS->LCDC_ATTRE = LCDC_ATTRE_BASE_Msk;
            WAIT_ATTRS_EQ(LCDC_ATTRS_SIP_Msk);

            return 0;
        }

        case XLCDC_LAYER_OVR1:
        {
            /* Update OVR1 Layer Attributes */
            LCDC_REGS->LCDC_ATTRE = LCDC_ATTRE_OVR1_Msk;
            WAIT_ATTRS_EQ(LCDC_ATTRS_SIP_Msk);

            return 0;
        }

        case XLCDC_LAYER_HEO:
        {
            /* Update HEO Layer Attributes */
            LCDC_REGS->LCDC_ATTRE = LCDC_ATTRE_HEO_Msk;
            WAIT_ATTRS_EQ(LCDC_ATTRS_SIP_Msk);

            return 0;
        }

        default:
            break;
    }
    return 1;
}

bool XLCDC_DisplayHEOYCbCrSurface(XLCDC_HEO_YCBCR_SURFACE *surface)
{
    if (surface->windowSizeX == 0  || surface->windowSizeY == 0  ||
        surface->imageSizeX == 0  || surface->imageSizeY == 0    ||
        ((surface->windowStartX + surface->windowSizeX) > 1280) ||
        ((surface->windowStartY + surface->windowSizeY) > 800) ||
        surface->imageAddress[0] == NULL)
    {
        return 1; // Invalid parameters
    }

    if (surface->scaleToWindow)
    {
        float dx = 0, dy = 0;

        dx = (float)surface->windowSizeX / (float)surface->imageSizeX;
        dy = (float)surface->windowSizeY / (float)surface->imageSizeY;

        if (dx > 10 || dx < 0.1 || dy > 10 || dy < 0.1)
        {
            return 1; // Exceeds 10x scaling
        }
    }

    LCDC_REGS->LCDC_HEOCFG1 = LCDC_HEOCFG1_YCCEN(1) |
                               LCDC_HEOCFG1_YCCMODE(surface->colorMode);
    LCDC_REGS->LCDC_HEOCFG2 = LCDC_HEOCFG2_XPOS(surface->windowStartX) |
                               LCDC_HEOCFG2_YPOS(surface->windowStartY);
    LCDC_REGS->LCDC_HEOCFG3 = LCDC_HEOCFG3_XSIZE(surface->windowSizeX - 1) |
                               LCDC_HEOCFG3_YSIZE(surface->windowSizeY - 1);
    LCDC_REGS->LCDC_HEOCFG4 = LCDC_HEOCFG4_XMEMSIZE(surface->imageSizeX - 1) |
                               LCDC_HEOCFG4_YMEMSIZE(surface->imageSizeY - 1);
    LCDC_REGS->LCDC_HEOCFG12 |= LCDC_HEOCFG12_DMA(1);

    if (surface->colorMode == XLCDC_YCBCR_COLOR_MODE_YCBCR_422_PL ||
        surface->colorMode == XLCDC_YCBCR_COLOR_MODE_YCBCR_420_PL)
    {
        LCDC_REGS->LCDC_HEO[0].LCDC_HEOYFBA = (uint32_t)surface->imageAddress[0];
        LCDC_REGS->LCDC_HEO[0].LCDC_HEOCBFBA = (uint32_t)surface->imageAddress[1];
        LCDC_REGS->LCDC_HEO[0].LCDC_HEOCRFBA = (uint32_t)surface->imageAddress[2];
    }
    else if(surface->colorMode == XLCDC_YCBCR_COLOR_MODE_YCBCR_422_SP ||
            surface->colorMode == XLCDC_YCBCR_COLOR_MODE_YCBCR_420_SP)
    {
        LCDC_REGS->LCDC_HEO[0].LCDC_HEOYFBA = (uint32_t)surface->imageAddress[0];
        LCDC_REGS->LCDC_HEO[0].LCDC_HEOCBFBA = (uint32_t)surface->imageAddress[1];
        LCDC_REGS->LCDC_HEO[0].LCDC_HEOCRFBA = (uint32_t)NULL;
    }
    else
    {
        LCDC_REGS->LCDC_HEO[0].LCDC_HEOYFBA = (uint32_t)surface->imageAddress[0];
        LCDC_REGS->LCDC_HEO[0].LCDC_HEOCBFBA = (uint32_t)NULL;
        LCDC_REGS->LCDC_HEO[0].LCDC_HEOCRFBA = (uint32_t)NULL;
    }

    uint32_t hfactor = 0x100000, vfactor = 0x100000;

    if (surface->scaleToWindow)
    {
        hfactor = CALC_SCALING_FACT(surface->imageSizeX, surface->windowSizeX);
        vfactor = CALC_SCALING_FACT(surface->imageSizeY, surface->windowSizeY);
    }

    LCDC_REGS->LCDC_HEOCFG23 = LCDC_HEOCFG23_VXSYEN(1) |
                                LCDC_HEOCFG23_VXSCEN(1) |
                                LCDC_HEOCFG23_HXSYEN(1) |
                                LCDC_HEOCFG23_HXSCEN(1);

    LCDC_REGS->LCDC_HEOCFG30 = LCDC_HEOCFG30_VXSYCFG(1) |
                                LCDC_HEOCFG30_VXSYBICU(1) |
                                LCDC_HEOCFG30_VXSCCFG(1) |
                                LCDC_HEOCFG30_VXSCBICU(1);

    LCDC_REGS->LCDC_HEOCFG31 = LCDC_HEOCFG31_HXSYCFG(1) |
                                LCDC_HEOCFG31_HXSYBICU(1) |
                                LCDC_HEOCFG31_HXSCCFG(1) |
                                LCDC_HEOCFG31_HXSCBICU(1);

    LCDC_REGS->LCDC_HEOCFG24 = LCDC_HEOCFG24_VXSYFACT(vfactor);
    LCDC_REGS->LCDC_HEOCFG25 = LCDC_HEOCFG25_VXSCFACT(vfactor);
    LCDC_REGS->LCDC_HEOCFG26 = LCDC_HEOCFG26_HXSYFACT(hfactor);
    LCDC_REGS->LCDC_HEOCFG27 = LCDC_HEOCFG27_HXSCFACT(hfactor);

    if (surface->colorMode > XLCDC_YCBCR_COLOR_MODE_YCBCR_422_PL)
    {
        LCDC_REGS->LCDC_HEOCFG25 = LCDC_HEOCFG25_VXSCFACT(vfactor/2);
        LCDC_REGS->LCDC_HEOCFG27 = LCDC_HEOCFG27_HXSCFACT(hfactor/2);
    }
    else if (surface->colorMode > XLCDC_YCBCR_COLOR_MODE_AYCBCR_444 &&
             surface->colorMode < XLCDC_YCBCR_COLOR_MODE_YCBCR_420_SP)
    {
        LCDC_REGS->LCDC_HEOCFG27 = LCDC_HEOCFG27_HXSCFACT(hfactor/2);
    }

    LCDC_REGS->LCDC_ATTRE = LCDC_ATTRE_HEO_Msk;
    WAIT_ATTRS_EQ(LCDC_ATTRS_SIP_Msk);

    return 0;
}

void XLCDC_MIPIColorModeSignalEnable(bool enable)
{
    if(enable)
    {
        LCDC_REGS->LCDC_LCDEN = LCDC_LCDEN_CMEN_Msk;
        WAIT_LCDSR_EQ(LCDC_LCDSR_SIPSTS_Msk);
        WAIT_LCDSR_NEQ(LCDC_LCDSR_CMSTS_Msk);
    }
    else
    {
        LCDC_REGS->LCDC_LCDDIS = LCDC_LCDDIS_CMDIS_Msk;
        WAIT_LCDSR_EQ(LCDC_LCDSR_SIPSTS_Msk);
        WAIT_LCDSR_EQ(LCDC_LCDSR_CMSTS_Msk);
    }
}

void XLCDC_Stop(void)
{
    LCDC_REGS->LCDC_LCDDIS = LCDC_LCDDIS_SDDIS_Msk;
    WAIT_LCDSR_EQ(LCDC_LCDSR_SIPSTS_Msk);
    WAIT_LCDSR_NEQ(LCDC_LCDSR_SDSTS_Msk);

    LCDC_REGS->LCDC_LCDDIS = LCDC_LCDDIS_DISPDIS_Msk;
    WAIT_LCDSR_EQ(LCDC_LCDSR_SIPSTS_Msk);
    WAIT_LCDSR_EQ(LCDC_LCDSR_DISPSTS_Msk);

    LCDC_REGS->LCDC_LCDDIS = LCDC_LCDDIS_SYNCDIS_Msk;
    WAIT_LCDSR_EQ(LCDC_LCDSR_SIPSTS_Msk);
    WAIT_LCDSR_EQ(LCDC_LCDSR_LCDSTS_Msk);

    LCDC_REGS->LCDC_LCDDIS = LCDC_LCDDIS_CLKDIS_Msk;
    WAIT_LCDSR_EQ(LCDC_LCDSR_SIPSTS_Msk);
    WAIT_LCDSR_EQ(LCDC_LCDSR_CLKSTS_Msk);
}

void XLCDC_Start(void)
{
    LCDC_REGS->LCDC_LCDEN = LCDC_LCDEN_CLKEN_Msk;
    WAIT_LCDSR_EQ(LCDC_LCDSR_SIPSTS_Msk);
    WAIT_LCDSR_NEQ(LCDC_LCDSR_CLKSTS_Msk);

    LCDC_REGS->LCDC_LCDEN = LCDC_LCDEN_SYNCEN_Msk;
    WAIT_LCDSR_EQ(LCDC_LCDSR_SIPSTS_Msk);
    WAIT_LCDSR_NEQ(LCDC_LCDSR_LCDSTS_Msk);

    LCDC_REGS->LCDC_LCDEN = LCDC_LCDEN_DISPEN_Msk;
    WAIT_LCDSR_EQ(LCDC_LCDSR_SIPSTS_Msk);
    WAIT_LCDSR_NEQ(LCDC_LCDSR_DISPSTS_Msk);

    LCDC_REGS->LCDC_LCDEN = LCDC_LCDEN_SDEN_Msk;
    WAIT_LCDSR_EQ(LCDC_LCDSR_SIPSTS_Msk);
    WAIT_LCDSR_EQ(LCDC_LCDSR_SDSTS_Msk);
}

void XLCDC_Initialize(void)
{
    XLCDC_EnableClocks();
    XLCDC_SetupTimingEngine();
    XLCDC_SetupBaseLayer();
    XLCDC_SetupHEOLayer();
    XLCDC_Start();
}
