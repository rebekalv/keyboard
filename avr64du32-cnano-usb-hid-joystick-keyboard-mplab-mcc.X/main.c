/*
 * MAIN Generated Driver File
 * 
 * @file main.c
 * 
 * @defgroup main MAIN
 * 
 * @brief Checks USB connection and plays LED animations
 *
 * @version MAIN Driver Version 1.0.0
*/

/*
© [2024] Microchip Technology Inc. and its subsidiaries.

    Subject to your compliance with these terms, you may use Microchip 
    software and any derivatives exclusively with Microchip products. 
    You are responsible for complying with 3rd party license terms  
    applicable to your use of 3rd party software (including open source  
    software) that may accompany Microchip software. SOFTWARE IS ?AS IS.? 
    NO WARRANTIES, WHETHER EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS 
    SOFTWARE, INCLUDING ANY IMPLIED WARRANTIES OF NON-INFRINGEMENT,  
    MERCHANTABILITY, OR FITNESS FOR A PARTICULAR PURPOSE. IN NO EVENT 
    WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY 
    KIND WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF 
    MICROCHIP HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE 
    FORESEEABLE. TO THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP?S 
    TOTAL LIABILITY ON ALL CLAIMS RELATED TO THE SOFTWARE WILL NOT 
    EXCEED AMOUNT OF FEES, IF ANY, YOU PAID DIRECTLY TO MICROCHIP FOR 
    THIS SOFTWARE.
*/

#include "joystick_interrupt.h"
#include "leds.h"

// USB connection variables
RETURN_CODE_t status;
uint8_t prevVbusState = 0;
volatile uint8_t vbusFlag = false;

// USB connection handler
void CheckUSBConnection(void);

int main(void)
{
    // Init
    USBDevice_StartOfFrameCallbackRegister(USB_JoystickHandler); // USB SOF callback function, called every 1 ms
    SYSTEM_Initialize();
    JoystickInit();
    LEDS_Init();
    
    // Animation
    LEDS_ButtonWave();
    
    while(1)
    {
        CheckUSBConnection();
        
        if(joystickPushedFlag){
            LEDS_PlayAnimation();
        }
    }      
}


void CheckUSBConnection(void) {
    // Check if VBUS was true last check, indicating that USB was connected
    if (prevVbusState == true)
    {
        // Handle USB Transfers
        status = USBDevice_Handle();
    }
    // Get current status of VBUS
    uint8_t currentVbusState = vbusFlag;
    // If changes to USB VBUS state
    if (currentVbusState != prevVbusState)
    {
        // If USB has been connected
        if (currentVbusState == true)
        {
            // Start USB operations
            status = USB_Start();
        }
        else
        {
            //Stop USB operations
            status = USB_Stop();
        }
        //Save state
        prevVbusState = currentVbusState;
    }
}

