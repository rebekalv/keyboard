 /*
 * MAIN Generated Driver File
 * 
 * @file main.c
 * 
 * @defgroup main MAIN
 * 
 * @brief This is the generated driver implementation file for the MAIN driver.
 *
 * @version MAIN Driver Version 1.0.2
 *
 * @version Package Version: 3.1.2
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
// Generated files
#include "mcc_generated_files/system/system.h"
#include "mcc_generated_files/system/pins.h"

// Custom files
#include "usb.h"
#include "hardware.h"
#include "keyboard.h"

#define NUM_COLUMNS 15
#define NUM_ROWS 5

// Flags to keep track of all key states
volatile bool buttonChangeFlag[NUM_ROWS][NUM_COLUMNS] = {false};
volatile bool buttonPressed[NUM_ROWS][NUM_COLUMNS] = {false};
volatile uint8_t activeRow = 0;

// Flags to keep track of key changes
volatile bool keyChanges = false;
volatile bool keyDown = true;
volatile uint8_t keyboardIndex = -1;
volatile bool layer2Active = false;

// Check columns for key presses, called every 1 ms
void IterateColumns(void);

// Handles keypresses
void KeyPressHandler(uint8_t currentRow);
void KeyUpEvent(void);
void KeyDownEvent(void);
void DetectKeyChanges(uint8_t currentRow);
       
int main(void)
{
    USBDevice_StartOfFrameCallbackRegister(IterateColumns); // Called every 1 ms
    SYSTEM_Initialize();
    RTC_SetPITIsrCallback(CheckUSBConnection);

    while(1)
    {
        HandleUSBConnection();
         
        // Handle key presses in the activeRow
        KeyPressHandler(activeRow);
    }    
}

void KeyPressHandler(uint8_t currentRow) // Handles key presses
{
    DetectKeyChanges(currentRow);
    
    if (keyChanges)
    {
        // Checks if we need the key press down event
        if (keyDown)
        {
            KeyDownEvent();
        }
         // Key press up event
        else
        {
            KeyUpEvent();
        }
    }
}

void KeyUpEvent(void)
{

    if (SUCCESS == status)
    {
        if(layer2Active && IsCustomIndex(keyboardIndex))
        {
            status = USB_HIDKeyPressUp(layer2[keyboardIndex]);
            USB_HIDKeyModifierDown(ALTGR);
        }else
        {
            if(IsModifierIndex(keyboardIndex))
            {
                status = USB_HIDKeyModifierUp(keyboard[keyboardIndex]);
            }
            else
            {
              // Sends the key press up event
               status = USB_HIDKeyPressUp(keyboard[keyboardIndex]);
            }
        }
    }
}

void KeyDownEvent(void)
{
    if (SUCCESS == status)
    {
        if (IsModifierIndex(keyboardIndex))
        {
            status = USB_HIDKeyModifierDown(keyboard[keyboardIndex]);
            if(keyboardIndex == ALTGR_INDEX)
            {
                layer2Active = true;
            }
        }
        else
        {
          // Sends the key press down event
            if(layer2Active && IsCustomIndex(keyboardIndex))
            {
                status = USB_HIDKeyModifierUp(ALTGR);   // release altgr
                status = USB_HIDKeyPressDown(layer2[keyboardIndex]);
            }
            else
            {
                status = USB_HIDKeyPressDown(keyboard[keyboardIndex]);
            }
        }
    }
}

void DetectKeyChanges(uint8_t currentRow){
    
    // Detect button change
    for (uint8_t currentColumn = 0; currentColumn < NUM_COLUMNS; currentColumn++) 
    {
        if(buttonChangeFlag[currentRow][currentColumn])
        {
            if (buttonPressed[currentRow][currentColumn])
            {
                keyDown = true;
            }else
            {
                keyDown = false;
            }
            keyboardIndex = currentColumn + currentRow*NUM_COLUMNS;
            keyChanges = true;
            buttonChangeFlag[currentRow][currentColumn] = false;
            break;
        }
        keyChanges = false;
    }
}

void IterateColumns(void) // called every 1 ms
{  
    // Iterate columns
    for (int col=0; col < NUM_COLUMNS; col++){
        // Check key down event
        if (ColumnIsActive(col)){
                if (buttonPressed[activeRow][col] == false)
                {
                    buttonPressed[activeRow][col] = true;
                    buttonChangeFlag[activeRow][col] = true;
                }
        }
        // Check key up event
        else if (buttonPressed[activeRow][col] == true)
        {
            buttonPressed[activeRow][col] = false;
            buttonChangeFlag[activeRow][col] = true;
        }
    }
    
    // Go to the next row
    TurnRowOff(activeRow);
    activeRow = (activeRow+1)%NUM_ROWS; 
    TurnRowOn(activeRow);
 
    return;
}
