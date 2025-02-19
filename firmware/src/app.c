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

//#define LOG_FPS_CALCULATION

#define SDCARD_MOUNT_NAME    SYS_FS_MEDIA_IDX0_MOUNT_NAME_VOLUME_IDX0
#define MAX_LUMA_WIDTH       1280
#define MAX_CHROMA_WIDTH     800
#define JPEG_FILE_NUM        443
#define JPEG_FILE_MAX_SIZE   62000
#define START_PIC_NUM        1001
#define END_PIC_NUM          (START_PIC_NUM + JPEG_FILE_NUM - 1)

unsigned char __attribute__ ((section(".region_nocache"), aligned (64))) buf_y[2][MAX_LUMA_WIDTH * MAX_LUMA_WIDTH];
unsigned char __attribute__ ((section(".region_nocache"), aligned (64))) buf_u[2][MAX_CHROMA_WIDTH * MAX_CHROMA_WIDTH];
unsigned char __attribute__ ((section(".region_nocache"), aligned (64))) buf_v[2][MAX_CHROMA_WIDTH * MAX_CHROMA_WIDTH];

typedef struct
{
    uint8_t jpg_buf[JPEG_FILE_MAX_SIZE];
    uint32_t jpg_len;
} pic_desc;

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
static uint32_t jpg_index = START_PIC_NUM;
static uint8_t jpg_file_name[10];
static uint8_t firstjpg[JPEG_FILE_MAX_SIZE];
static XLCDC_HEO_YCBCR_SURFACE surface;
static uint8_t pingpong = 0;

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
    surface.imageSizeX = 1280;
    surface.imageSizeY = 720;
    surface.windowSizeX = 1280;
    surface.windowSizeY = 720;
    surface.windowStartX = 0;
    surface.windowStartY = 80;
    surface.scaleToWindow = false;

    XLCDC_DisplayHEOYCbCrSurface(&surface);
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
/******************************************************************************
  Function:
    void APP_Tasks ( void )

  Remarks:
    See prototype in app.h.
 */

void APP_Tasks ( void )
{
    int width = 0, height = 0, i; 
    
    uint8_t* tptr = NULL;
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
#if 1
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
            sprintf(jpg_file_name, "images/%d.jpg", jpg_index);
            appData.fileHandle = SYS_FS_FileOpen(jpg_file_name,
                    (SYS_FS_FILE_OPEN_READ));
            if(appData.fileHandle == SYS_FS_HANDLE_INVALID)
            {
                /* Could not open the file. Error out*/
                appData.state = APP_ERROR;
                printf("Could not open the file\r\n");
            }
            else
            {
                pics.jpg_len = SYS_FS_FileSize(appData.fileHandle);
                appData.state = APP_READ_FILE;
            }
            break;

        case APP_READ_FILE:
            appData.nBytesRead = SYS_FS_FileRead(appData.fileHandle, (void *)pics.jpg_buf, pics.jpg_len);        
            if (appData.nBytesRead == -1)
            {
                printf("There was an error while reading the file\r\n");
                SYS_FS_FileClose(appData.fileHandle);
                appData.state = APP_ERROR;
            }
            else if (appData.nBytesRead == 0)
            {
                printf("read 0 len from file[%s]\r\n", jpg_file_name);
                appData.state = APP_ERROR;
            }
            else
            {
                jpg_index++;
                if (jpg_index > END_PIC_NUM)
                    jpg_index = START_PIC_NUM;
                SYS_FS_FileClose(appData.fileHandle);
                appData.state = APP_PLAY_DEMO;            
            }
            break;

        case APP_CYCLE_READ:    

            break;

        case APP_PLAY_DEMO:
            pingpong = 1 - pingpong;
            djpeg(pics.jpg_buf, pics.jpg_len, buf_y[pingpong], buf_u[pingpong], buf_v[pingpong], &width, &height);
            update_addr();
#ifdef LOG_FPS_CALCULATION
            index++;
#endif
            appData.state = APP_OPEN_FILE;
            break;

        case APP_ERROR:
            /* The application comes here when the demo has failed. */

            break;

        case APP_TEST:
            // printf("dcode %d.jpg\r\n\r\n", START_PIC_NUM+0);
            // for (i=0; i<pics[0].jpg_len; i++)
            // {
            //     printf("0x%02x, ", pics[0].jpg_buf[i]);
            //     if ((i + 1) % 12 == 0)
            //         printf("\r\n");
            // }
            // printf("\r\n\r\n");

            djpeg(pics.jpg_buf, pics.jpg_len, buf_y[pingpong], buf_u[pingpong], buf_v[pingpong], &width, &height);
            appData.state = APP_ERROR;
            break;
#endif
        default:
            break;
    }
}



/*******************************************************************************
 End of File
 */
