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
#include "joystick_interrupt.h"
#include "util/delay.h"

#define LED_USART               (USART0)
#define LED_USART_PORT_ALT      (PORTMUX_USART0_ALT3_gc)

//Number of LEDs in LED-rings
#define NUM_LEDS_OUTER_RING  (60)
#define NUM_LEDS_FOURTH_RING (48)
#define NUM_LEDS_THIRD_RING  (40)
#define NUM_LEDS_SECOND_RING (32)
#define NUM_LEDS_INNER_RING  (24)
#define NUM_ALL_LEDS  (60+48+40+32+24)



// Data types used for configuring the LEDs
#define NEOPIXEL_LED_BYTES   (3)
#define NEOPIXEL_ZERO		((uint8_t) ~0xc0)
#define NEOPIXEL_ONE		((uint8_t) ~0xf0)

void LEDS_SendByte(uint8_t byte);
void LEDS_Array(color_t *array, uint16_t length);
void LEDS_ArrayConst(color_t color, uint16_t length);
void LEDS_Off(uint16_t length);

void LEDS_RedWave(void);
void LEDS_YellowWave(void);
void LEDS_GreenWave(void);
void LEDS_BlueWave(void);

/*
 * Public functions
 */
void LEDS_Init(void)
{
    //Set USART output to PD4
    PORTMUX.USARTROUTEA |= LED_USART_PORT_ALT;
}

void LEDS_PlayAnimation(void)
{
    int8_t joystickDirection = -1;
    
    for (uint8_t dir = LEFT; dir < NUM_DIRECTIONS; dir++) 
    {
        if (directionFlags[dir]) {
            joystickDirection = dir;
            break;
        }
    }
    
    switch (joystickDirection) 
    {
        case RIGHT:
            LEDS_GreenWave();
            break;
        case LEFT:
            LEDS_BlueWave();
            break;
        case DOWN:
            LEDS_YellowWave();
            break;
        case UP:
            LEDS_RedWave();
            break;
        case BUTTON:
            LEDS_ButtonWave();
            break;
        default:
            break;
    }
}

void LEDS_ButtonWave(void)
{
    // Inner ring
    LEDS_Off(NUM_LEDS_OUTER_RING + NUM_LEDS_FOURTH_RING + NUM_LEDS_THIRD_RING + NUM_LEDS_SECOND_RING);
    LEDS_ArrayConst(YELLOW, NUM_LEDS_INNER_RING);
    _delay_ms(20);

    // Second ring
    LEDS_Off(NUM_LEDS_OUTER_RING + NUM_LEDS_FOURTH_RING + NUM_LEDS_THIRD_RING);
    LEDS_ArrayConst(PINK, NUM_LEDS_SECOND_RING);
    _delay_ms(20);

    // Third ring
    LEDS_Off(NUM_LEDS_OUTER_RING + NUM_LEDS_FOURTH_RING);
    LEDS_ArrayConst(RED, NUM_LEDS_THIRD_RING);
    _delay_ms(20);

    // Fourth ring
    LEDS_Off(NUM_LEDS_OUTER_RING);
    LEDS_ArrayConst(BLUE, NUM_LEDS_FOURTH_RING);
    _delay_ms(20);

    // Outer ring
    LEDS_ArrayConst(GREEN, NUM_LEDS_OUTER_RING);
    _delay_ms(20);
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

// Functions for Wave animations
void LEDS_YellowWave(void)
{
    // Inner ring
    LEDS_Off(NUM_LEDS_OUTER_RING+NUM_LEDS_FOURTH_RING+NUM_LEDS_THIRD_RING+NUM_LEDS_SECOND_RING);
    
    LEDS_Off(NUM_LEDS_INNER_RING/3-1);
    LEDS_ArrayConst(YELLOW, NUM_LEDS_INNER_RING/3+3);
    LEDS_Off(NUM_LEDS_INNER_RING/3-2);
    _delay_ms(20);
    
    // Second ring
    LEDS_Off(NUM_LEDS_OUTER_RING+NUM_LEDS_FOURTH_RING+NUM_LEDS_THIRD_RING);
    
    LEDS_Off(NUM_LEDS_SECOND_RING/3-1); 
    LEDS_ArrayConst(YELLOW, NUM_LEDS_SECOND_RING/3+5);
    LEDS_Off(NUM_LEDS_SECOND_RING/3-2);
    _delay_ms(20);
    
    // Third ring
    LEDS_Off(NUM_LEDS_OUTER_RING+NUM_LEDS_FOURTH_RING);
    
    LEDS_Off(NUM_LEDS_THIRD_RING/3-2);
    LEDS_ArrayConst(YELLOW, NUM_LEDS_THIRD_RING/3+6); 
    LEDS_Off(NUM_LEDS_THIRD_RING/3-3);
    _delay_ms(20);
    
    // Fourth ring
    LEDS_Off(NUM_LEDS_OUTER_RING);

    LEDS_Off(NUM_LEDS_FOURTH_RING/3-3);
    LEDS_ArrayConst(YELLOW, NUM_LEDS_FOURTH_RING/3+7);
    LEDS_Off(NUM_LEDS_FOURTH_RING/3-4);
    _delay_ms(20);

    // Outer ring
    LEDS_Off(NUM_LEDS_OUTER_RING/3-4);
    LEDS_ArrayConst(YELLOW, NUM_LEDS_OUTER_RING/3+9);
    LEDS_Off(NUM_LEDS_OUTER_RING/3-5);
    _delay_ms(20);


}
void LEDS_RedWave(void)
{
    // Inner ring
    LEDS_Off(NUM_LEDS_OUTER_RING + NUM_LEDS_FOURTH_RING + NUM_LEDS_THIRD_RING + NUM_LEDS_SECOND_RING);
    LEDS_ArrayConst(RED, NUM_LEDS_INNER_RING/6+1);
    LEDS_Off(2*NUM_LEDS_INNER_RING/3-1);
    LEDS_ArrayConst(RED, NUM_LEDS_INNER_RING/6);
    _delay_ms(20);

    // Second ring
    LEDS_Off(NUM_LEDS_OUTER_RING + NUM_LEDS_FOURTH_RING + NUM_LEDS_THIRD_RING);
    LEDS_ArrayConst(RED, NUM_LEDS_SECOND_RING/6+2);
    LEDS_Off(2*NUM_LEDS_SECOND_RING/3-2);
    LEDS_ArrayConst(RED, NUM_LEDS_SECOND_RING/6+1);
    _delay_ms(20);

    // Third ring
    LEDS_Off(NUM_LEDS_OUTER_RING + NUM_LEDS_FOURTH_RING);
    LEDS_ArrayConst(RED, NUM_LEDS_THIRD_RING/6+3);
    LEDS_Off(2*NUM_LEDS_THIRD_RING/3-3);
    LEDS_ArrayConst(RED, NUM_LEDS_THIRD_RING/6+2);
    _delay_ms(20);

    // Fourth ring
    LEDS_Off(NUM_LEDS_OUTER_RING);
    LEDS_ArrayConst(RED, NUM_LEDS_FOURTH_RING/6+3);
    LEDS_Off(2*NUM_LEDS_FOURTH_RING/3-5);
    LEDS_ArrayConst(RED, NUM_LEDS_FOURTH_RING/6+2);
    _delay_ms(20);

    // Outer ring
    LEDS_ArrayConst(RED, NUM_LEDS_OUTER_RING/6+4);
    LEDS_Off(2*NUM_LEDS_OUTER_RING/3-7);
    LEDS_ArrayConst(RED, NUM_LEDS_OUTER_RING/6+3);
    _delay_ms(20);
}

void LEDS_BlueWave(void)
{
    // Inner ring
    LEDS_Off(NUM_LEDS_OUTER_RING + NUM_LEDS_FOURTH_RING + NUM_LEDS_THIRD_RING + NUM_LEDS_SECOND_RING);
    LEDS_Off(7*NUM_LEDS_INNER_RING/12-1);
    LEDS_ArrayConst(BLUE, NUM_LEDS_INNER_RING/3+2);
    LEDS_Off(NUM_LEDS_INNER_RING/12-1);
    _delay_ms(20);

    // Second ring
    LEDS_Off(NUM_LEDS_OUTER_RING + NUM_LEDS_FOURTH_RING + NUM_LEDS_THIRD_RING);
    LEDS_Off(7*NUM_LEDS_SECOND_RING/12);
    LEDS_ArrayConst(BLUE, NUM_LEDS_SECOND_RING/3+2);
    LEDS_Off(NUM_LEDS_SECOND_RING/12);
    _delay_ms(20);

    // Third ring
    LEDS_Off(NUM_LEDS_OUTER_RING + NUM_LEDS_FOURTH_RING);
    LEDS_Off(7*NUM_LEDS_THIRD_RING/12);
    LEDS_ArrayConst(BLUE, NUM_LEDS_THIRD_RING/3+1);
    LEDS_Off(NUM_LEDS_THIRD_RING/12+1);
    _delay_ms(20);

    // Fourth ring
    LEDS_Off(NUM_LEDS_OUTER_RING);
    LEDS_Off(7*NUM_LEDS_FOURTH_RING/12);
    LEDS_ArrayConst(BLUE, NUM_LEDS_FOURTH_RING/3);
    LEDS_Off(NUM_LEDS_FOURTH_RING/12);
    _delay_ms(20);

    // Outer ring
    LEDS_Off(0);
    LEDS_Off(7*NUM_LEDS_OUTER_RING/12);
    LEDS_ArrayConst(BLUE, NUM_LEDS_OUTER_RING/3);
    LEDS_Off(NUM_LEDS_OUTER_RING/12);
    _delay_ms(20);
}

void LEDS_GreenWave(void)
{
    // Inner ring
    LEDS_Off(NUM_LEDS_OUTER_RING + NUM_LEDS_FOURTH_RING + NUM_LEDS_THIRD_RING + NUM_LEDS_SECOND_RING);
    LEDS_Off(NUM_LEDS_INNER_RING/12);
    LEDS_ArrayConst(GREEN, NUM_LEDS_INNER_RING/3+1);
    LEDS_Off(7*NUM_LEDS_INNER_RING/12-1);
    _delay_ms(20);

    // Second ring
    LEDS_Off(NUM_LEDS_OUTER_RING + NUM_LEDS_FOURTH_RING + NUM_LEDS_THIRD_RING);
    LEDS_Off(NUM_LEDS_SECOND_RING/12+1);
    LEDS_ArrayConst(GREEN, NUM_LEDS_SECOND_RING/3+1);
    LEDS_Off(7*NUM_LEDS_SECOND_RING/12);
    _delay_ms(20);

    // Third ring
    LEDS_Off(NUM_LEDS_OUTER_RING + NUM_LEDS_FOURTH_RING);
    LEDS_Off(NUM_LEDS_THIRD_RING/12+1);
    LEDS_ArrayConst(GREEN, NUM_LEDS_THIRD_RING/3);
    LEDS_Off(7*NUM_LEDS_THIRD_RING/12+1);
    _delay_ms(20);

    // Fourth ring
    LEDS_Off(NUM_LEDS_OUTER_RING);
    LEDS_Off(NUM_LEDS_FOURTH_RING/12+1);
    LEDS_ArrayConst(GREEN, NUM_LEDS_FOURTH_RING/3-1);
    LEDS_Off(7*NUM_LEDS_FOURTH_RING/12);
    _delay_ms(20);

    // Outer ring
    LEDS_Off(NUM_LEDS_OUTER_RING/12+1);
    LEDS_ArrayConst(GREEN, NUM_LEDS_OUTER_RING/3-1);
    LEDS_Off(7*NUM_LEDS_OUTER_RING/12);
    _delay_ms(20);
}
