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
� [2024] Microchip Technology Inc. and its subsidiaries.

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
#include "util/delay.h"

#define MAX_KEY_PRESSES_PER_SECOND 5
#define KEY_PRESS_TIME_INTERVAL_MS 1000/MAX_KEY_PRESSES_PER_SECOND
#define NUM_COLUMNS 15
#define NUM_ROWS 5
#define CONSECUTIVE_EQUAL_PIT_INTERRUPTS 5

// Norwegian redefines
#define APOSTROF        HID_BACKSLASH
#define BACKSLASH       HID_EQUAL
#define STRAIGHT_LINE   HID_GRAVE_TILDE
#define TWO_DOTS        HID_CLOSE_BRACE
#define AA              HID_OPEN_BRACE
#define OE              HID_SEMICOLON    
#define AE              HID_APOSTROPHE
#define CROCODILE_SIGN  HID_AT102
#define WINDOWS         HID_MODIFIER_LEFT_UI       
#define QUESTION        HID_UNDERSCORE


// Modifiers
#define ALT             HID_MODIFIER_LEFT_ALT
#define CTRL            HID_MODIFIER_LEFT_CTRL
#define SHIFT_L         HID_MODIFIER_LEFT_SHIFT
#define SHIFT_R         HID_MODIFIER_RIGHT_SHIFT
#define ALTGR           HID_MODIFIER_RIGHT_ALT
#define ALTGR_INDEX     69

// Custom encoding
#define LEDS_UP         HID_KEYPAD_PLUS
#define LEDS_DOWN       HID_KEYPAD_MINUS
#define CHANGE_LEDS     HID_RIGHT_GUI       // to be implemented
#define NONE            HID_KEY_NONE


// Key map layer 1
uint8_t keyboard[] = {
    HID_ESCAPE, HID_1, HID_2, HID_3, HID_4, HID_5, HID_6, HID_7, HID_8, HID_9, HID_0, QUESTION, BACKSLASH, HID_BACKSPACE, HID_DELETE,
    HID_TAB, HID_Q, HID_W, HID_E, HID_R, HID_T, HID_Y, HID_U, HID_I, HID_O, HID_P, AA, TWO_DOTS, HID_RETURN, HID_HOME,
    HID_CAPS_LOCK, HID_A, HID_S, HID_D, HID_F, HID_G, HID_H, HID_J, HID_K, HID_L, OE, AE, APOSTROF, NONE, HID_END,
    SHIFT_L, CROCODILE_SIGN, HID_Z, HID_X, HID_C, HID_V, HID_B, HID_N, HID_M, HID_COMMA, HID_DOT, HID_SLASH, SHIFT_R, HID_UP, CHANGE_LEDS,
    CTRL, WINDOWS, ALT, NONE, NONE, NONE, HID_SPACEBAR, NONE, NONE, ALTGR, LEDS_DOWN, LEDS_UP, HID_LEFT, HID_DOWN, HID_RIGHT,
};

// Modifier index list
const uint8_t modifierIndexes[] = {45, 57, 60, 61, 62, 69};
const uint8_t numberOfModifiers = sizeof(modifierIndexes) / sizeof(modifierIndexes[0]);

// Keymap layer 2
uint8_t layer2[] = {
    NONE, NONE, NONE, NONE, NONE, NONE,  NONE, NONE, NONE, NONE, NONE, STRAIGHT_LINE, NONE, NONE, NONE,
    NONE, NONE, NONE, NONE, NONE, NONE,  NONE, NONE, NONE, NONE, NONE, NONE, NONE, NONE, NONE,
    NONE, NONE, NONE, NONE, NONE, NONE,  NONE, NONE, NONE, NONE, NONE, NONE, NONE, NONE, NONE,
    NONE, NONE, NONE, NONE, NONE, NONE,  NONE, NONE, NONE, NONE, NONE, NONE, NONE, NONE, NONE,
    NONE, NONE, NONE, NONE, NONE, NONE,  NONE, NONE, NONE, NONE, NONE, NONE, NONE, NONE, NONE,
};

// Layer 2 index list
const uint8_t customIndexes[] = {11};
const uint8_t numberOfCustomIndexes = sizeof(customIndexes) / sizeof(customIndexes[0]);

// Flags to keep track of key presses
volatile bool buttonChangeFlag[NUM_ROWS][NUM_COLUMNS] = {false};
volatile bool buttonPressed[NUM_ROWS][NUM_COLUMNS] = {false};
volatile uint8_t activeRow = 0;

// USB connection variables
RETURN_CODE_t status;
uint8_t prevVbusState = 0;
volatile uint8_t vbusFlag = false;

// USB connection handlers
void CheckUSBConnection(void);
void HandleUSBConnection(void);

// Check columns for key presses, called every 1 ms
void IterateColumns(void);

// Handles keypresses
void KeyPressHandler(uint8_t currentRow);

// Helper functions
void TurnRowOff(uint8_t row);
void TurnRowOn(uint8_t row);
uint8_t ColumnIsActive(uint8_t column);
bool IsModifierIndex(uint8_t index);
bool IsCustomIndex(uint8_t index);

       
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
    static volatile bool keyChangeFlag = false;
    static volatile bool keyDownFlag = true;
    static volatile uint8_t keyboardIndex = -1;
    static volatile bool altgrActive = false;
    static volatile bool skip = false;

    
    // Detect button change
    for (uint8_t currentColumn = 0; currentColumn < NUM_COLUMNS; currentColumn++) 
    {
        if(buttonChangeFlag[currentRow][currentColumn])
        {
            if (buttonPressed[currentRow][currentColumn])
            {
                keyDownFlag = true;
            }else
            {
                keyDownFlag = false;
            }
            keyboardIndex = currentColumn + currentRow*NUM_COLUMNS;
            keyChangeFlag = true;
            buttonChangeFlag[currentRow][currentColumn] = false;
            break;
        }
        keyChangeFlag = false;
    }
    
    if (keyChangeFlag)
    {
        // Checks if we need the key press down event
        if (keyDownFlag)
        {
            if (SUCCESS == status)
            {
                if (IsModifierIndex(keyboardIndex))
                {
                    status = USB_HIDKeyModifierDown(keyboard[keyboardIndex]);
                    if(keyboardIndex == ALTGR_INDEX)
                    {
                        altgrActive = true;
                    }
                }
                else
                {
                  // Sends the keypress down event
                    if(altgrActive && IsCustomIndex(keyboardIndex))
                    {
                        LED0_SetHigh();
                        status = USB_HIDKeyModifierUp(ALTGR);
                        status = USB_HIDKeyPressDown(layer2[keyboardIndex]);
                    }
                    else
                    {
                        status = USB_HIDKeyPressDown(keyboard[keyboardIndex]);
                    }
                }
            }
        }
         // Key press up event
        else
        {
            if (SUCCESS == status)
            {
                if(altgrActive && IsCustomIndex(keyboardIndex))
                {
                    status = USB_HIDKeyPressUp(layer2[keyboardIndex]);
                    skip = true;
                }else
                {
                    if(IsModifierIndex(keyboardIndex))
                    {
                        if((keyboardIndex == ALTGR_INDEX) && (skip))
                        {
                            altgrActive = false;
                            skip = false;
                            LED0_SetLow();
                        }
                        else
                        {
                            status = USB_HIDKeyModifierUp(keyboard[keyboardIndex]);
                        }
                    }
                    else
                    {
                      // Sends the keypress up event
                       status = USB_HIDKeyPressUp(keyboard[keyboardIndex]);
                    }
                }
            }
        }
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
bool IsModifierIndex(uint8_t index) {
    for (uint8_t i = 0; i < numberOfModifiers; i++) {
        if (index == modifierIndexes[i]) {
            return true;
        }
    }
    return false;
}
bool IsCustomIndex(uint8_t index) {
    for (uint8_t i = 0; i < numberOfCustomIndexes; i++) {
        if (index == customIndexes[i]) {
            return true;
        }
    }
    return false;
}