/*
© [2025] Microchip Technology Inc. and its subsidiaries.

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

#include <xc.h>

// Set the USART0 module to the options selected in the user interface.

int8_t USART0_Initialize(void) {
    // BAUD 128; 
    USART0.BAUD = 0x80;
    // RXCIE disabled; TXCIE enabled; DREIE disabled; RXSIE disabled; LBME disabled; ABEIE disabled; RS485 DISABLE; 
    USART0.CTRLA = 0x40;
    // RXEN disabled; TXEN disabled; SFDEN disabled; ODME disabled; RXMODE NORMAL; MPCM disabled; 
    USART0.CTRLB = 0x0;
    // CMODE MSPI; PMODE DISABLED; SBMODE 1BIT; CHSIZE 5BIT; UDORD disabled; UCPHA disabled; 
    USART0.CTRLC = 0xC0;
    // ABW WDW0; 
    USART0.CTRLD = 0x0;
    // DBGRUN disabled; 
    USART0.DBGCTRL = 0x0;
    // IREI disabled; 
    USART0.EVCTRL = 0x0;
    // RXPL 0x0; 
    USART0.RXPLCTRL = 0x0;
    // TXCIF disabled; RXSIF disabled; ISFIF disabled; BDF disabled; WFB disabled; 
    USART0.STATUS = 0x20;
    // DATA8 disabled; 
    USART0.TXDATAH = 0x0;
    // DATA 0x0; 
    USART0.TXDATAL = 0x0;
    // TXPL 0x0; 
    USART0.TXPLCTRL = 0x0;
    return 0;
}
