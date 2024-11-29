/*
* @file joystick_interrupt.c
* 
* @defgroup joystick_input Joystick Input
* 
* @brief Enums and handler for joystick input
* 
* @version Joystick Input Version 1.0.0
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

#define CONSECUTIVE_EQUAL_PIT_INTERRUPTS 5
#define DEBOUNCE_TIME_MS 200
#define HID_AA HID_OPEN_BRACE
#define HID_OE HID_SEMICOLON
#define HID_AE HID_APOSTROPHE

// Joystick debouncing variables
uint64_t milliSeconds = 0;
uint64_t lastInterruptTime[NUM_DIRECTIONS] = {0};

// Flags to keep track of joystick pushes
volatile bool joystickPushedFlag = false;
volatile bool directionFlags[NUM_DIRECTIONS] = {false};
volatile bool keyDownFlag = true;
volatile bool waitFlag = false;
volatile uint8_t activeDirection = -1;
volatile uint8_t letter = HID_ERROR_UNDEFINED;

// Joystick Interrupt Service Routines
void RIGHT_InterruptHandler(void);
void LEFT_InterruptHandler(void);
void DOWN_InterruptHandler(void);
void UP_InterruptHandler(void);
void BUTTON_InterruptHandler(void);

// Joystick Interrupt Handler
void SetInterruptHandlers(void);
// RTC PIT Interrupt Service Routine
void RTC_GetUSBState(void);

// Key Press Handlers
void FindActiveDir(void);
void KeyHandlerRight(void);
void KeyHandlerLeft(void);
void KeyHandlerDown(void);
void KeyHandlerUp(void);
void KeyHandlerButton(void);


/*
 * Public Functions
 */
void JoystickInit(void)
{
    RTC_SetPITIsrCallback(RTC_GetUSBState);
    SetInterruptHandlers();
}

/*
 * Private Functions
 */

void SetInterruptHandlers(void)
{
    RIGHT_SetInterruptHandler(RIGHT_InterruptHandler);
    LEFT_SetInterruptHandler(LEFT_InterruptHandler);
    DOWN_SetInterruptHandler(DOWN_InterruptHandler);
    UP_SetInterruptHandler(UP_InterruptHandler);
    BUTTON_SetInterruptHandler(BUTTON_InterruptHandler);
}

void USB_JoystickHandler(void) // Handles key presses
{
    // Increase debouncing counter
    milliSeconds++;
    
    // Detects any joystick pushes
    if (joystickPushedFlag)
    {
        FindActiveDir();
        switch (activeDirection) {
            case BUTTON:
                // Send END + ENTER
                KeyHandlerButton();
                break;
            case RIGHT:
                // Move right
                KeyHandlerRight();
                break;
            case LEFT:
                // Move left
                KeyHandlerLeft();
                //waitFlag = false;
                break;
            case UP:
                KeyHandlerUp();
                break;
            case DOWN:
                KeyHandlerDown();
                break;
            default:
                break;
        }
    }
}

void FindActiveDir(void)
{
    if (keyDownFlag && !waitFlag)
    {                              
        // Find the joystick direction
        for (uint8_t dir = LEFT; dir < NUM_DIRECTIONS; dir++) 
        {
            if (directionFlags[dir]) 
            {
                activeDirection = dir;
                directionFlags[dir] = false;
                break;
            }
        }
        
    }
}

void KeyHandlerRight(void)
{
    if (keyDownFlag)
    {
        status = USB_HIDKeyPressDown(HID_RIGHT);
        keyDownFlag = false;
    }
    else
    {
        status = USB_HIDKeyPressUp(HID_RIGHT);
        // Reset flags
        joystickPushedFlag = false;
        keyDownFlag = true;
    }
}

void KeyHandlerLeft(void)
{
    if (keyDownFlag)
    {
        status = USB_HIDKeyPressDown(HID_LEFT);
        keyDownFlag = false;
        waitFlag = false;
    }
    else
    {
        status = USB_HIDKeyPressUp(HID_LEFT);
        // Reset flags
        joystickPushedFlag = false;
        keyDownFlag = true;
    }
}

void KeyHandlerDown(void)
{
    if (keyDownFlag)
    {
        if(waitFlag==false)
        {
            status = USB_HIDKeyPressDown(HID_DELETE);
            waitFlag = true;
        }
        else
        {
            //Send next letter in the alphabet
            letter++;
            //If Z, go back to A
            if(letter == HID_Z+1) 
            {
                letter = HID_A;
            }
            status = USB_HIDKeyPressDown(letter);
            waitFlag = false;
        }
        keyDownFlag = false;
    }
    else
    {
        if(waitFlag)
        {
            status = USB_HIDKeyPressUp(HID_DELETE);
        }
        else
        {
            // Sends the keypress up event
            status = USB_HIDKeyPressUp(letter);
            // Move left
            activeDirection = LEFT;
            waitFlag = true;
        }
        keyDownFlag = true;
    }
}

void KeyHandlerUp(void)
{
    if (keyDownFlag)
    {
        if(waitFlag==false)
        {
            status = USB_HIDKeyPressDown(HID_DELETE);
            waitFlag = true;
        }
        else
        {
           //Send prior letter in the alphabet
            letter--;
            //If before A, go back to Z
            if(letter == HID_ERROR_UNDEFINED || letter == HID_POST_FAIL)  
            {
                letter = HID_Z;
            }
            status = USB_HIDKeyPressDown(letter);
            waitFlag = false;
        }
        keyDownFlag = false;
    }
    else
    {
        if(waitFlag)
        {
            status = USB_HIDKeyPressUp(HID_DELETE);
        }
        else
        {
            // Sends the keypress up event
            status = USB_HIDKeyPressUp(letter);
            // Move left
            activeDirection = LEFT;
            waitFlag = true;
        }
        keyDownFlag = true;
    }
}

void KeyHandlerButton(void)
{
    if (keyDownFlag)
    {
        // Send END + ENTER
        if(waitFlag==false)
        {
            status = USB_HIDKeyPressDown(HID_END);
            waitFlag = true;
        }
        else
        {
            status = USB_HIDKeyPressDown(HID_KEYPAD_ENTER); 
            waitFlag = false;
        }
        keyDownFlag = false;
    }
    else
    {
        if(waitFlag)
        {
            status = USB_HIDKeyPressUp(HID_END);
        }else
        {
            // Sends the keypress up event
            status = USB_HIDKeyPressUp(HID_KEYPAD_ENTER);
            // Reset flags
            joystickPushedFlag = false;
        }
        keyDownFlag = true;
    }
}

void RTC_GetUSBState(void)
{
    
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

void RIGHT_InterruptHandler(void)
{
    uint64_t currentTime = milliSeconds;
    // Checks if there has been enough time between two equal key presses, to avoid debounce 
    if (currentTime - lastInterruptTime[RIGHT] >= DEBOUNCE_TIME_MS)
    {
        lastInterruptTime[RIGHT] = currentTime;
        joystickPushedFlag = true;
        directionFlags[RIGHT] = true;
    }
    return;
}
void LEFT_InterruptHandler(void)
{
    uint64_t currentTime = milliSeconds;
    // Checks if there has been enough time between two equal key presses, to avoid debounce 
    if (currentTime - lastInterruptTime[LEFT] >= DEBOUNCE_TIME_MS)
    {
        lastInterruptTime[LEFT] = currentTime;
        joystickPushedFlag = true;
        directionFlags[LEFT] = true;
    }
    return;
}
void DOWN_InterruptHandler(void)
{
    uint64_t currentTime = milliSeconds;
    // Checks if there has been enough time between two equal key presses, to avoid debounce 
    if (currentTime - lastInterruptTime[DOWN] >= DEBOUNCE_TIME_MS)
    {
        lastInterruptTime[DOWN] = currentTime;
        joystickPushedFlag = true;
        directionFlags[DOWN] = true;
    }
    return;
}
void UP_InterruptHandler(void)
{
    uint64_t currentTime = milliSeconds;
    // Checks if there has been enough time between two equal key presses, to avoid debounce 
    if (currentTime - lastInterruptTime[UP] >= DEBOUNCE_TIME_MS)
    {
        lastInterruptTime[UP] = currentTime;
        joystickPushedFlag = true;
        directionFlags[UP] = true;
    }
    return;
}
void BUTTON_InterruptHandler(void)
{
    uint64_t currentTime = milliSeconds;
    // Checks if there has been enough time between two equal key presses, to avoid debounce 
    if (currentTime - lastInterruptTime[BUTTON] >= DEBOUNCE_TIME_MS)
    {
        lastInterruptTime[BUTTON] = currentTime;
        joystickPushedFlag = true;
        directionFlags[BUTTON] = true;
    }
    return;
}
