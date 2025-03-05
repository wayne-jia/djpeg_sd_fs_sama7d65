/*******************************************************************************
  MPLAB Harmony Application Source File

  Company:
    Microchip Technology Inc.

  File Name:
    app.c

  Summary:
    This file contains the source code for the MPLAB Harmony application.

  Description:
    This file contains the source code for the MPLAB Harmony application.  It
    implements the logic of the application's state machine and it may call
    API routines of other MPLAB Harmony modules in the system, such as drivers,
    system services, and middleware.  However, it does not call any of the
    system interfaces (such as the "Initialize" and "Tasks" functions) of any of
    the modules in the system or make any assumptions about when those functions
    are called.  That is the responsibility of the configuration-specific system
    files.
 *******************************************************************************/

//DOM-IGNORE-BEGIN
/*******************************************************************************
* Copyright (C) 2018 Microchip Technology Inc. and its subsidiaries.
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
//DOM-IGNORE-END

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************
#include <string.h>
#include "app.h"
#include "user.h"
#include "definitions.h"
#include "t_800x360.h"

//#define LOG_FPS_CALCULATION

#define MJPEG_FILE_NAME      "mov.mjpeg"
#define SDCARD_MOUNT_NAME    SYS_FS_MEDIA_IDX0_MOUNT_NAME_VOLUME_IDX0
#define MAX_LUMA_WIDTH       800
#define MAX_CHROMA_WIDTH     400
#define JPEG_FILE_MAX_SIZE   91000
#define MAX_READ_SIZE        1024

unsigned char __attribute__ ((section(".region_nocache"), aligned (64))) buf_y[2][MAX_LUMA_WIDTH * MAX_LUMA_WIDTH];
unsigned char __attribute__ ((section(".region_nocache"), aligned (64))) buf_u[2][MAX_CHROMA_WIDTH * MAX_CHROMA_WIDTH];
unsigned char __attribute__ ((section(".region_nocache"), aligned (64))) buf_v[2][MAX_CHROMA_WIDTH * MAX_CHROMA_WIDTH];

typedef struct
{
    uint8_t jpg_buf[JPEG_FILE_MAX_SIZE];
    uint32_t jpg_len;
} pic_desc;

typedef struct
{
    uint8_t buf[MAX_READ_SIZE];
    uint32_t len;
} remain_data;

void HEO_Initialize(void);
extern int djpeg (char *p_jpg, int jpg_len, char *p_y, char *p_u, char *p_v, int *p_width, int *p_height);

// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************


// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    This structure should be initialized by the APP_Initialize function.

    Application strings and buffers are be defined outside this structure.
*/

APP_DATA appData;
static pic_desc pics;
static XLCDC_HEO_YCBCR_SURFACE surface;
static uint8_t pingpong = 0;
static int32_t curRead_pos = 0;
static int32_t nextStart_pos = 0;
static uint8_t g_EndByte = 0;
static bool is_frame_start = false;
static bool is_frame_end = false;
static remain_data remain_buf;

#ifdef LOG_FPS_CALCULATION
static int index = 0;
#endif
// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************

static void APP_SysFSEventHandler(SYS_FS_EVENT event,void* eventData,uintptr_t context)
{
    switch(event)
    {
        /* If the event is mount then check if SDCARD media has been mounted */
        case SYS_FS_EVENT_MOUNT:
            if(strcmp((const char *)eventData, SDCARD_MOUNT_NAME) == 0)
            {
                appData.sdCardMountFlag = true;
                printf("sdCard Mounted\r\n");
            }
            break;

        /* If the event is unmount then check if SDCARD media has been unmount */
        case SYS_FS_EVENT_UNMOUNT:
            if(strcmp((const char *)eventData, SDCARD_MOUNT_NAME) == 0)
            {
                appData.sdCardMountFlag = false;

                appData.state = APP_MOUNT_WAIT;

                LED_OFF();
            }
            break;

        case SYS_FS_EVENT_ERROR:
        default:
            break;
    }
}

// *****************************************************************************
// *****************************************************************************
// Section: Application Local Functions
// *****************************************************************************
// *****************************************************************************


/* TODO:  Add any necessary local functions.
*/


// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void APP_Initialize ( void )

  Remarks:
    See prototype in app.h.
 */

void APP_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    appData.state = APP_MOUNT_WAIT;
    int width = 0, height = 0; 
    /* Register the File System Event handler */
    SYS_FS_EventHandlerSet((void const*)APP_SysFSEventHandler,(uintptr_t)NULL);
    
    surface.colorMode = XLCDC_YCBCR_COLOR_MODE_YCBCR_420_PL;
    surface.imageAddress[0] = &buf_y[pingpong];
    surface.imageAddress[1] = &buf_u[pingpong];
    surface.imageAddress[2] = &buf_v[pingpong];
    surface.imageSizeX = 800;
    surface.imageSizeY = 360;
    surface.windowSizeX = 1280;
    surface.windowSizeY = 576;
    surface.windowStartX = 0;
    surface.windowStartY = 112;
    surface.scaleToWindow = true;

    XLCDC_DisplayHEOYCbCrSurface(&surface);

    // Show a welcome image on YUV screen
    djpeg(_p800x360_jpg, _p800x360_jpg_len, buf_y[pingpong], buf_u[pingpong], buf_v[pingpong], &width, &height);
}

void update_addr(void)
{
#ifdef LOG_FPS_CALCULATION
    static bool is_logging = true;
    if (index == 0 && is_logging) {
        printf(".\r\n");
    }
    if (index == 239 && is_logging) {
        printf("..\r\n");
        is_logging = false;
    }  
#endif
    surface.imageAddress[0] = &buf_y[pingpong];
    surface.imageAddress[1] = &buf_u[pingpong];
    surface.imageAddress[2] = &buf_v[pingpong];
    XLCDC_DisplayHEOYCbCrSurface(&surface);
}

static inline void reset_frameStatus(void)
{
    curRead_pos = 0;
    nextStart_pos = 0;
    g_EndByte = 0;
    is_frame_start = false;
    is_frame_end = false;
}

// **************************************************************************************************
// **************************************************************************************************
// This function is to handle the case that the EOI are in the buffer but not
// at the end of buffer.
// 
// | curRead_pos | ...... | ...  | ...  | New_curRead_pos  |  ... | ....... |     nextStart_pos     |
// |     DATA    |  DATA  | 0xFF | 0xD9 |       0xFF       | 0xD8 |   DATA  | Ready to be read into |
//
// In this case, tha data from New_curRead_pos to the  nextStart_pos should be
// stored locally to be used in the next frame decoding.
// **************************************************************************************************
// **************************************************************************************************
static void endFrame_backUpRemainBuf(int32_t remainBytes)
{
    //printf("endFrame_backUpRemainBuf remainBytes:%d\r\n", remainBytes);
    is_frame_end = true;
    pics.jpg_len = curRead_pos;
    remain_buf.len = remainBytes;
    if (remain_buf.len)
        memcpy(remain_buf.buf, &pics.jpg_buf[curRead_pos], remain_buf.len);
    
    // for (int i=0; i<16; i++) {
    //     if (i == 0)
    //         printf("remain buf[0]: ");

    //     printf("%02x ", remain_buf.buf[i]);
    //     if (i == 15)
    //         printf("\r\n");
    // }
    
}

// *****************************************************************************
// *****************************************************************************
// Pay attention to the curRead_pos & nextStart_pos pointers, they handle all the
// decoding process.
// 
// | curRead_pos |  ...  | ...... | ...  | ...  |     nextStart_pos     |
// |     0xFF    |  0xD8 |  DATA  | 0xFF | 0xD9 | Ready to be read into |
//
// *****************************************************************************
// *****************************************************************************
static void handleRead_Normal(void)
{
    for (int32_t i=curRead_pos; i<nextStart_pos; i++)
    {
        if (i+1 < nextStart_pos)
        {
            if (pics.jpg_buf[i] == 0xFF)
            {
                //printf("curRead_pos:0x%x, buf[%x]: %02x, buf[%x+1]: %02x nextStart_pos:0x%x\r\n", curRead_pos, i, pics.jpg_buf[i], i, pics.jpg_buf[i+1], nextStart_pos);
                if (pics.jpg_buf[i+1] == 0xD8)
                {
                    curRead_pos = i;
                    //printf("@@@@@@@@@@@@@@@@@@@@@ is_frame_start, curRead_pos:0x%x\r\n", curRead_pos);
                    is_frame_start = true;
                    continue;
                }
                else if (pics.jpg_buf[i+1] == 0xD9)
                {
                    curRead_pos = i+2;
                    //printf("i+1 is 0xD9, nextStart_pos:0x%x, curRead_pos:0x%x\r\n", nextStart_pos, curRead_pos);
                    endFrame_backUpRemainBuf(nextStart_pos - curRead_pos);
                    return;
                }
            }
        }
        else
        {
            //printf("i reach end buf[%d]:%02x. nextStart_pos:%d nBytesRead:%d\r\n", i, pics.jpg_buf[i], nextStart_pos, nBytesRead);
        }
    }
    curRead_pos = nextStart_pos;
}

// The last byte of the previous buffer is 0xFF, the current buffer should be handled specially
static void handleRead_LastFF()
{
    int32_t len = 0;
    //printf("++++++++++++++++++++++++handleRead_LastFF nextStart_pos:0x%x jpg_buf[nextStart_pos]:%02x\r\n", nextStart_pos, pics.jpg_buf[nextStart_pos]);
    if (pics.jpg_buf[curRead_pos] == 0xD9)
    {
        len = nextStart_pos - curRead_pos - 1;
        curRead_pos++;
        endFrame_backUpRemainBuf(len);
    }
    else
    {
        if (pics.jpg_buf[curRead_pos] == 0xD8)
        {
            //printf("@@@@@@***********@@@@ handleRead_LastFF is_frame_start, curRead_pos:0x%x\r\n", curRead_pos);
            is_frame_start = true;
        }
        handleRead_Normal();
    }
}

/******************************************************************************
  Function:
    void APP_Tasks ( void )

  Remarks:
    See prototype in app.h.
 */
void APP_Tasks ( void )
{
    int width = 0, height = 0, i; 
    uint8_t oneByte = 0;
    
    /* Check the application's current state. */
    switch ( appData.state )
    {
        case APP_MOUNT_WAIT:
            /* Wait for SDCARD to be Auto Mounted */
            if(appData.sdCardMountFlag == true)
            {
                appData.state = APP_SET_CURRENT_DRIVE;
            }
            break;

        case APP_SET_CURRENT_DRIVE:
            if(SYS_FS_CurrentDriveSet(SDCARD_MOUNT_NAME) == SYS_FS_RES_FAILURE)
            {
                /* Error while setting current drive */
                appData.state = APP_ERROR;
            }
            else
            {
                /* Open a file for reading. */
                appData.state = APP_OPEN_FILE;
            }

            break;

        case APP_OPEN_FILE:
            appData.fileHandle = SYS_FS_FileOpen(MJPEG_FILE_NAME,
                    (SYS_FS_FILE_OPEN_READ));
            if(appData.fileHandle == SYS_FS_HANDLE_INVALID)
            {
                /* Could not open the file. Error out*/
                appData.state = APP_ERROR;
                printf("Could not open the file\r\n");
            }
            else
            {
                //printf("open the file ok, size:%d\r\n", SYS_FS_FileSize(appData.fileHandle));
                reset_frameStatus();
                appData.state = APP_READ_FILE;
            }
            break;

        case APP_READ_FILE:
            if (remain_buf.len)
            {
                reset_frameStatus();
                memcpy(&pics.jpg_buf[curRead_pos], remain_buf.buf, remain_buf.len);
                nextStart_pos += remain_buf.len;
                remain_buf.len = 0;

                // printf("curRead_pos:%d\r\n", curRead_pos);
                // for (int i=0; i<16; i++) {
                //     if (i == 0)
                //         printf("jpg_buf cp from remain buf[0]: ");
            
                //     printf("%02x ", pics.jpg_buf[i]);
                //     if (i == 15)
                //         printf("\r\n");
                // }
            }
                
            appData.nBytesRead = SYS_FS_FileRead(appData.fileHandle, (void *)&pics.jpg_buf[nextStart_pos], MAX_READ_SIZE);
            if (appData.nBytesRead == -1)
            {
                printf("There was an error while reading the file\r\n");
                appData.state = APP_ERROR;
            }
            else if (appData.nBytesRead == 0)
            {
                appData.state = APP_CLOSE_FILE;
            }
            else
            {
                nextStart_pos += appData.nBytesRead;  // nextStart_pos only should be plused here!!!
                oneByte = pics.jpg_buf[nextStart_pos - 1];
                if (g_EndByte == 0xFF)
                    handleRead_LastFF();
                else
                    handleRead_Normal();

                g_EndByte = oneByte;

                if (is_frame_end)
                {
                    if (!is_frame_start)
                    {
                        printf("Invalid input file format of mjpeg\r\n");
                        appData.state = APP_ERROR;
                    }
                    else
                    {
                        appData.state = APP_PLAY_DEMO;
                    } 
                }
            }
            
            break;

        case APP_PLAY_DEMO:
            pingpong = 1 - pingpong;
            djpeg(pics.jpg_buf, pics.jpg_len, buf_y[pingpong], buf_u[pingpong], buf_v[pingpong], &width, &height);
            update_addr();
            reset_frameStatus();
#ifdef LOG_FPS_CALCULATION
            index++;
#endif
            appData.state = APP_READ_FILE;
            break;

        case APP_ERROR:
        case APP_CLOSE_FILE:
            /* The application comes here when the demo has failed. */
            SYS_FS_FileClose(appData.fileHandle);
            appData.state = APP_OPEN_FILE;
            break;

        case APP_TEST:
            djpeg(pics.jpg_buf, pics.jpg_len, buf_y[pingpong], buf_u[pingpong], buf_v[pingpong], &width, &height);
            appData.state = APP_ERROR;
            break;

        default:
            break;
    }
}



/*******************************************************************************
 End of File
 */
