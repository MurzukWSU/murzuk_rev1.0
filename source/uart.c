#include "cc1110.h"
#include "uart.h"

/********************************************************************************
*---FUNCTION---
* Name: uartMapPort()
* Description:
*	Configures the I/O pin mapping for UART transmission in accordance with
*	the CC1110 datasheet.
* Parameters:
*	uint8 uartPortAlt - the port alternative to be used
*	uint8 uartNum     - the UART channel to be used
* Returns:
*	NONE
*********************************************************************************/	
void uartMapPort(uint8 uartPortAlt, uint8 uartNum)
{
	//If UART Port Alternative 1 desired
	if(uartPortAlt == 1)
	{
		//If UART0 desired
		if(uartNum == 0)
		{
			//Configure UART0 for Alternative 1 => Port P0 (PERCFG.U0CFG = 0)
			PERCFG &= ~0x01;
			//Configure relevent Port P0 pins for peripheral function:
			//P0SEL.SELP0_2/3/4/5 = 1 => RX = P0_2, TX = P0_3, CT = P0_4, RT = P0_5
			P0SEL |= 0x3C;
			//Configure relevant Port P1 pins back to GPIO function
			P1SEL &= ~0x3C;
		}
		//Else (UART1 desired)
		else
		{
			//Configure UART1 for Alternative 1 => PORT P0 (PERCFG.U1CFG = 0)
			PERCFG &= ~0x02;
			//Configure relevent Port P0 pins for peripheral function:
			//P0SEL.SELP0_2/3/4/5 = 1 => CT = P0_2, RT = P0_3, TX = P0_4, RX = P0_5
			P0SEL |= 0x3C;
			//Configure relevant Port P1 pins back to GPIO function
			P1SEL &= ~0xF0;
		}
	}
	//Else (UART Port Alternative 2 desired
	else
	{
		
		if(uartNum == 0)
		{
			//Configure UART0 for Alternative 2 => Port P1 (PERCFG.U0CFG = 1)
			PERCFG |= 0x01;
			//P1SEL.SELP1_2/3/4/5 = 1 => CT = P1_2, RT = P1_3, RX = P1_4, TX = P1_5
			P1SEL |= 0x3C;
			//Configure relevant Port P0 pins back to GPIO function
			P0SEL &= ~0x3C;
		}
		//Else (UART1 desired)
		else
		{
			//Configure UART1 for Alternative 2 => PORT P1 (PERCFG.U1CFG = 1)
			PERCFG |= 0x02;
			//Configure relevent Port P0 pins for peripheral function:
			//P1SEL.SELP1_4/5/6/7 = 1 => CT = P1_4, RT = P1_5, TX = P1_6, RX = P1_7
			P0SEL |= 0xF0;
			//Configure relevant Port P0 pins back to GPIO function
			P0SEL &= ~0x3C;
		}
	}
	
}
