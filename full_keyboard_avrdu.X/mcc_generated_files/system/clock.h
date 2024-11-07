
/**
 * CLKCTRL Generated Driver API Header File
 *
 * @file clkctrl.h
 *
 * @defgroup clkctrl CLKCTRL
 *
 * @brief This header file provides APIs for the CLKCTRL driver.
 *
 * @version CLKCTRL Driver Version 1.1.4
 *
 * @version Package Version 2.0.10
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


#ifndef CLOCK_H
#define CLOCK_H

#ifndef F_CPU
#define F_CPU 12000000UL
#endif

#include "ccp.h"

/**
 * @ingroup clkctrl
 * @brief Initializes the CLKCTRL module.
 * @param None.
 * @return None.
 */
void CLOCK_Initialize(void);

/**
 * @ingroup clkctrl
 * @brief Enables the Clock Failure Detection on the main clock.
 * @param CLKCTRL_CFDSRC_t cfd_source - main clock source for CFD 
 * @return None.
 */
void CFD_Enable(CLKCTRL_CFDSRC_t cfd_source);

/**
 * @ingroup clkctrl
 * @brief Disables the Clock Failure Detection on the main clock.
 * @param None. 
 * @return None.
 */
void CFD_Disable(void);

#endif // CLOCK_H