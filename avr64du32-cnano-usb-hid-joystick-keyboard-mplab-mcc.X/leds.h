/*
* @file leds.h
* 
* @defgroup neopixel_led_commands Neopixel LED Commands
* 
* @brief Enums and defines for colors and LED commands
* 
* @version Neopixel LED Commands Version 1.0.0
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
  
#ifndef LEDS_H
#define	LEDS_H

#include <avr/io.h>
#include "mcc_generated_files/system/clock.h"
#include "mcc_generated_files/system/pins.h"

typedef __uint24 uint24_t;
typedef union {
	struct {
		uint8_t g;
		uint8_t r;
		uint8_t b;
	};
	uint24_t channel;   // entire color value (grb)
	uint8_t array[3];   // [g, r, b]
} color_t;

void LEDS_Init(void);
void LEDS_PlayAnimation(void);
void LEDS_ButtonWave(void);

#endif	/* LEDS_H */