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

/* 
 * File: keyboard.h
 * Author: M70309
 * Comments:
 * Revision history: 
 */

// This is a guard condition so that contents of this file are not included
// more than once.  
#ifndef KEYBOARD_H
#define	KEYBOARD_H

#include <usb_hid_keycodes.h>
#include "usb_hid_keyboard.h"

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


extern const uint8_t keyboard[];
extern const uint8_t layer2[];

bool IsModifierIndex(uint8_t index);
bool IsCustomIndex(uint8_t index);

#endif	/* KEYBOARD_H */

