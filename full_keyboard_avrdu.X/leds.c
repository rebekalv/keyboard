/*
* @file leds.c
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

#include "leds.h"
#include "util/delay.h"

#define LED_USART               (USART0)
#define LED_USART_PORT_ALT      (PORTMUX_USART0_ALT3_gc)

// Color codes
#define PINK        (color_t){.r = 0x78, .g = 0x10, .b = 0x10} 
#define YELLOW      (color_t){.r = 0x58, .g = 0x20, .b = 0x2} 
#define RED         (color_t){.r = 0x40, .g = 0, .b = 0}
#define BLUE        (color_t){.r = 0, .g = 0, .b = 0x40}
#define WHITE       (color_t){.r = 0x40, .g = 0x30, .b = 0x30}
#define GREEN       (color_t){.r = 0, .g = 0x40, .b = 0}
#define BLANK       (color_t){.r = 0, .g = 0, .b = 0}

// Data types used for configuring the LEDs
#define NEOPIXEL_LED_BYTES   (3)
#define NEOPIXEL_ZERO		((uint8_t) ~0xc0)
#define NEOPIXEL_ONE		((uint8_t) ~0xf0)

void LEDS_SendByte(uint8_t byte);
void LEDS_Single(color_t color);
void LEDS_Array(color_t *array, uint16_t length);
void LEDS_ArrayConst(color_t color, uint16_t length);
void LEDS_Off(uint16_t length);

/*
 * Public functions
 */
void LEDS_Init(void)
{
    //Set USART output to PD4
    PORTMUX.USARTROUTEA |= LED_USART_PORT_ALT;
}

/*
 * Private functions
 */
void LEDS_Single(color_t color)
{
    LEDS_SendByte(color.g);  // NeoPixel wants colors in green-then-red-then-blue order
    LEDS_SendByte(color.r);
    LEDS_SendByte(color.b);
}

void LEDS_Array(color_t *array, uint16_t length)
{
	uint8_t *ptr = (uint8_t *) array;
	for(uint16_t idx = 0; idx < length * NEOPIXEL_LED_BYTES; idx++) 
    {
		LEDS_SendByte(ptr[idx]);
	}
}

void LEDS_ArrayConst(color_t color, uint16_t length)
{
	while(length--) 
    {
		LEDS_Single(color);
	}
}

void LEDS_Off(uint16_t length)
{
    color_t colorOff = {.channel = 0};
	LEDS_ArrayConst(colorOff, length);
}


void LEDS_SendByte(uint8_t byte)
{
    // Sends one byte/color, either .g, .r or .b.
	for (uint8_t i = 0; i <8; i++)
	{
		while(!(LED_USART.STATUS & USART_DREIF_bm)) 
        {
			// Wait for empty buffer
		}
		
		// Write from MSB to LSB
		if (byte & 0x80) 
        {
			LED_USART.TXDATAL = NEOPIXEL_ONE;
		} else {
			LED_USART.TXDATAL = NEOPIXEL_ZERO;
		}
		byte <<= 1;
	}
}
