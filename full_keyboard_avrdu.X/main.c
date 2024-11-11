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
#include "mcc_generated_files/system/system.h"
#include "mcc_generated_files/system/pins.h"
#include "usb_core.h"
#include <usb_hid_keycodes.h>
#include "usb_hid_keyboard.h"

#define MAX_KEY_PRESSES_PER_SECOND 5
#define KEY_PRESS_TIME_INTERVAL_MS 1000/MAX_KEY_PRESSES_PER_SECOND
#define NUM_COLUMNS 15
#define NUM_ROWS 5
#define CONSECUTIVE_EQUAL_PIT_INTERRUPTS 5

// Button de-bounce variables
uint64_t milliSeconds = 0;
uint64_t lastInterruptTime[NUM_COLUMNS] = {0};

// Flags to keep track of key presses
volatile bool keyPressFlag = false;
volatile bool columnFlags[NUM_COLUMNS] = {false};

// USB connection variables
RETURN_CODE_t status;
uint8_t prevVbusState = 0;
volatile uint8_t vbusFlag = false;

// USB connection handlers
void CheckUSBConnection(void);
void HandleUSBConnection(void);

// USB callback functions, called every 1 ms
void IterateRows(void);
void KeyPressHandler(uint8_t currentRow);

// Check columns for key presses
void IterateColumns(void);

// Helper functions
void TurnRowOff(uint8_t row);
void TurnRowOn(uint8_t row);
uint8_t ColumnIsActive(uint8_t column);

// Key map
uint8_t keyboard[] = {
    HID_A, HID_B, HID_C, 
    HID_D, HID_E, HID_F, 
    HID_G, HID_H, HID_I, 
    HID_J, HID_K, HID_L,
};
        
int main(void)
{
    USBDevice_StartOfFrameCallbackRegister(IterateRows); // Called every 1 ms
    SYSTEM_Initialize();
    RTC_SetPITIsrCallback(CheckUSBConnection);
    LED0_SetLow();
    ROW0_SetLow(); //active low

    while(1)
    {
        HandleUSBConnection();
    }    
}

void IterateRows(void)   // Iterates columns to measure key presses at every Start of Frame
{

    static volatile uint8_t activeRow = 0;
    // Increase de-bounce counter
    milliSeconds++;
    IterateColumns();
    // Handle key presses in the activeColumn
    //TurnRowOn(activeRow);
    KeyPressHandler(activeRow);
    // Next column
    //TurnRowOff(activeRow);
//    activeRow = (activeRow+1)%NUM_COLUMNS; 
    return;
}

void KeyPressHandler(uint8_t currentRow) // Handles key presses
{
    static volatile bool keyDownFlag = true;
    static volatile uint8_t keyboardIndex = -1;
    static volatile bool modifierFlag = false;
    // Detects any key presses
    if (keyPressFlag)
    {
        // Checks if we need the key press down event
        if (keyDownFlag)
        {
            if (modifierFlag == false)
            {
                // Finds the message_index corresponding to the pressed key
                for (uint8_t currentColumn = 0; currentColumn < NUM_COLUMNS; currentColumn++) {
                    if (columnFlags[currentColumn]) {
                        keyboardIndex = currentColumn + currentRow*NUM_COLUMNS;
                        columnFlags[currentColumn] = false;
                        break;
                    }
                }
            }
//           
            if (SUCCESS == status)
            {
//                // Used to make exclamation mark at the end of the message
//                if ((keypadIndex == 11) && (modifierFlag == false))
//                {
//                    status = USB_HIDKeyModifierDown(HID_MODIFIER_LEFT_SHIFT);
//                    modifierFlag = true;
//                }
//                else
//                {
                    // Sends the keypress down event
                    status = USB_HIDKeyPressDown(keyboard[keyboardIndex]);
                    keyDownFlag = false;
                    modifierFlag = false;
//                }
            }
        }
        else
        {
            if (SUCCESS == status)
            {
                // Sends the keypress up event
                status = USB_HIDKeyPressUp(keyboard[keyboardIndex]);
                
                // Releases the shift key modifier if enabled
                USB_HIDKeyModifierUp(HID_MODIFIER_LEFT_SHIFT);

                // Resets flags
                keyDownFlag = true;
                keyPressFlag = false;
            }
        }
    }
}

void IterateColumns(void){
    uint64_t currentTime = milliSeconds;
    for (int col=0; col < NUM_COLUMNS; col++){
        if (ColumnIsActive(col)){
            // Checks if there has been enough time between two equal key presses, to avoid bouncing and fast spamming
            if (currentTime - lastInterruptTime[col] >= KEY_PRESS_TIME_INTERVAL_MS)
            {
                lastInterruptTime[col] = currentTime;
                keyPressFlag = true;
                columnFlags[col] = true;
            }
        }
    }
}

void HandleUSBConnection(void) {
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
    // If USB error detected, blink LED indicating fault
    if (SUCCESS != status)
    {
        //LED0_Toggle();
    }
}
void CheckUSBConnection(void) {
    // Helper variables for PIT and AC
    static volatile uint8_t PIT_Counter = 0;
    static volatile uint8_t AC_prevState = 0;

    uint8_t AC_currentState = AC0_Read(); // Saves the current state of the AC status register ('1' means above threshold)

    // Makes sure that the AC state has been the same for a certain number of PIT interrupts
    if (PIT_Counter == CONSECUTIVE_EQUAL_PIT_INTERRUPTS)
    {
        if (AC_currentState) // When CMPSTATE is high, the AC output is high which means the VBUS is above the threshold and the pull-up on data+ should be enabled.
        {
            vbusFlag = true;
        }
        else
        {
            vbusFlag = false;
        }
        PIT_Counter++; // Increment the counter to not run start/stop multiple times without an actual state change
    }
    // Increments a counter if the AC has been in the same state for a certain number of PIT interrupts
    else if (AC_currentState == AC_prevState)
    {
        if (PIT_Counter <= CONSECUTIVE_EQUAL_PIT_INTERRUPTS + 1)
        {
            PIT_Counter++;
        }
        else
        {
            ; // Stops counting if the AC has been in the same state for a while.
        }
    }
    else
    {
        PIT_Counter = 0; // Resets the PIT counter if a state change has occurred.
    }
    AC_prevState = AC_currentState;
}

void TurnRowOff(uint8_t row){
    switch (row) {
        case 0: ROW0_SetHigh(); break;
        case 1: ROW1_SetHigh(); break;
        case 2: ROW2_SetHigh(); break;
        case 3: ROW3_SetHigh(); break;
        case 4: ROW4_SetHigh(); break;
        default: COL0_SetHigh(); break;
    }
}
void TurnRowOn(uint8_t row) {
    switch (row) {
        case 0: ROW0_SetLow(); break;
        case 1: ROW1_SetLow(); break;
        case 2: ROW2_SetLow(); break;
        case 3: ROW3_SetLow(); break;
        case 4: ROW4_SetLow(); break;
        default: ROW0_SetLow(); break;
    }
}
uint8_t ColumnIsActive(uint8_t column){
    switch (column) {
        case 0:  return !COL0_GetValue(); break;
        case 1:  return !COL1_GetValue(); break;
        case 2:  return !COL2_GetValue(); break;
        case 3:  return !COL3_GetValue(); break;
        case 4:  return !COL4_GetValue(); break;
        case 5:  return !COL5_GetValue(); break;
        case 6:  return !COL6_GetValue(); break;
        case 7:  return !COL7_GetValue(); break;
        case 8:  return !COL8_GetValue(); break;
        case 9:  return !COL9_GetValue(); break;
        case 10: return !COL10_GetValue(); break;
        case 11: return !COL11_GetValue(); break;
        case 12: return !COL12_GetValue(); break;
        case 13: return !COL13_GetValue(); break;
        case 14: return !COL14_GetValue(); break;
        default: return !COL0_GetValue(); break;
    }
}