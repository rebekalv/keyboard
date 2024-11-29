/*
* @file joystick_interrupt.h
* 
* @defgroup joystick_input Joystick Input
* 
* @brief Enums and handler for joystick input
* 
* @version Joystick Input Version 1.0.0
*/

/* Microchip Technology Inc. and its subsidiaries.  You may use this software 
 * and any derivatives exclusively with Microchip products. 
 * 
 * THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS".  NO WARRANTIES, WHETHER 
 * EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED 
 * WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A 
 * PARTICULAR PURPOSE, OR ITS INTERACTION WITH MICROCHIP PRODUCTS, COMBINATION 
 * WITH ANY OTHER PRODUCTS, OR USE IN ANY APPLICATION. 
 *
 * IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
 * INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND 
 * WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS 
 * BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE.  TO THE 
 * FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS 
 * IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF 
 * ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
 *
 * MICROCHIP PROVIDES THIS SOFTWARE CONDITIONALLY UPON YOUR ACCEPTANCE OF THESE 
 * TERMS. 
 */
  
#ifndef JOYSTICK_INTERRUPTS_H
#define	JOYSTICK_INTERRUPTS_H

#include "mcc_generated_files/system/system.h"
#include "usb_core.h"
#include <usb_hid_keycodes.h>
#include "usb_hid_keyboard.h"

#define NUM_DIRECTIONS 5
// Joystick directions
enum 
{
    LEFT = 0, 
    RIGHT = 1, 
    UP, 
    DOWN, 
    BUTTON
};

// Flags to indicate pushed joystick direction
extern volatile bool directionFlags[NUM_DIRECTIONS];
extern volatile bool joystickPushedFlag;

//USB status variable
extern RETURN_CODE_t status;
extern volatile uint8_t vbusFlag;

void JoystickInit(void);
// USB SOF callback function, called every 1 ms
void USB_JoystickHandler(void);


#endif	/* JOYSTICK_INTERRUPTS_H */

