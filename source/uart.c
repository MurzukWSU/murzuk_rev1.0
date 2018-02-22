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

/********************************************************************************
*---FUNCTION---
* Name: uartInitBitrate()
* Description:
*	Initiates UART Bitrate
* Parameters:
*	uint8 uartBaudM - the port alternative to be used
*	uint8 uartBaudE - the UART channel to be used
* Returns:
*	NONE
* Note: See DN112 document for the BaudM and BaudE settings for given sysclock
* speed and selected baudrate
*********************************************************************************/
void uartInitBitrate(uint8 uartBaudM, uint8 uartBaudE) 
{
	/////////////////////////////////////////////////////////////// 
	// This initial code section ensures that the SoC system clock is driven 
	// by the HS XOSC: 
	// Clear CLKCON.OSC to make the SoC operate on the HS XOSC. 
	// Set CLKCON.TICKSPD/CLKSPD = 000 => system clock speed = HS RCOSC speed. 
	CLKCON &= 0x80;
	// Monitor CLKCON.OSC to ensure that the HS XOSC is stable and actually 
	// applied as system clock source before continuing code execution 
	while(CLKCON &0x40);
	// Set SLEEP.OSC_PD to power down the HS RCOSC. 
	SLEEP |= 0x04;
	/////////////////////////////////////////////////////////////// 	
	// Initialize bitrate (U0BAUD.BAUD_M, U0GCR.BAUD_E) 
	U0BAUD = uartBaudM;
	U0GCR = (U0GCR&~0x1F) | uartBaudE;
}

/********************************************************************************
*---FUNCTION---
* Name: uartInitProtocol()
* Description:
*	This function initializes the UART protocol (start/stop bit, data bits,
*	parity, etc.). The application must call this function with an initialized
*	data structure according to the code in Figure 12 of the DN112 note from ti.
* Parameters:
*	UART_PROT_CONFIG* uartProtConfig - pointer to a UART_PROT_CONFIG stuct
* Returns:
*	NONE
* Note: See DN112 document for the BaudM and BaudE settings for given sysclock
* speed and selected baudrate
*********************************************************************************/
void uartInitProtocol(UART_PROT_CONFIG* uartProtConfig) 
{
	// Initialize UART protocol for desired UART (0 or 1) 
	if(uartProtConfig->uartNum == 0) 
	{
		// USART mode = UART (U0CSR.MODE = 1) 
		U0CSR |= 0x80;
		// Start bit level = low => Idle level = high (U0UCR.START = 0) 
		// Start bit level = high => Idle level = low (U0UCR.START = 1) 
		U0UCR = (U0UCR&~0x01) | uartProtConfig->START;
		// Stop bit level = high (U0UCR.STOP = 1) 
		// Stop bit level = low (U0UCR.STOP = 0) 
		U0UCR = (U0UCR&~0x02) | (uartProtConfig->STOP << 1);
		// Number of stop bits = 1 (U0UCR.SPB = 0) 
		// Number of stop bits = 2 (U0UCR.SPB = 1) 
		U0UCR = (U0UCR&~0x04) | (uartProtConfig->SPB << 2);
		// Parity = disabled (U0UCR.PARITY = 0) 
		// Parity = enabled (U0UCR.PARITY = 1) 
		U0UCR = (U0UCR&~0x08) | (uartProtConfig->PARITY << 3);
		// 9-bit data disable = 8 bits transfer (U0UCR.BIT9 = 0) 
		// 9-bit data enable = 9 bits transfer (U0UCR.BIT9 = 1) 
		U0UCR = (U0UCR&~0x10) | (uartProtConfig->BIT9 << 4);
		// Level of bit 9 = 0 (U0UCR.D9 = 0), used when U0UCR.BIT9 = 1 
		// Level of bit 9 = 1 (U0UCR.D9 = 1), used when U0UCR.BIT9 = 1 
		// Parity = Even (U0UCR.D9 = 0), used when U0UCR.PARITY = 1 
		// Parity = Odd (U0UCR.D9 = 1), used when U0UCR.PARITY = 1 
		U0UCR = (U0UCR&~0x20) | (uartProtConfig->D9 << 5);
		// Flow control = disabled (U0UCR.FLOW = 0) 
		// Flow control = enabled (U0UCR.FLOW = 1) 
		U0UCR = (U0UCR&~0x40) | (uartProtConfig->FLOW << 6);
		// Bit order = MSB first (U0GCR.ORDER = 1) 
		// Bit order = LSB first (U0GCR.ORDER = 0) => For PC/Hyperterminal 
		U0GCR = (U0GCR&~0x20) | (uartProtConfig->ORDER << 5);
	}
	else
	{
		// USART mode = UART (U1CSR.MODE = 1) 
		U1CSR |= 0x80;
		// Start bit level = low => Idle level = high (U1UCR.START = 0) 
		// Start bit level = high => Idle level = low (U1UCR.START = 1) 
		U1UCR = (U1UCR&~0x01) | uartProtConfig->START;
		// Stop bit level = high (U1UCR.STOP = 1) 
		// Stop bit level = low (U1UCR.STOP = 0) 
		U1UCR = (U1UCR&~0x02) | (uartProtConfig->STOP << 1);
		// Number of stop bits = 1 (U1UCR.SPB = 0) 
		// Number of stop bits = 2 (U1UCR.SPB = 1) 
		U1UCR = (U1UCR&~0x04) | (uartProtConfig->SPB << 2);
		// Parity = disabled (U1UCR.PARITY = 0) 
		// Parity = enabled (U1UCR.PARITY = 1) 
		U1UCR = (U1UCR&~0x08) | (uartProtConfig->PARITY << 3);
		// 9-bit data enable = 8 bits transfer (U1UCR.BIT9 = 0) 
		// 9-bit data enable = 8 bits transfer (U1UCR.BIT9 = 1) 
		U1UCR = (U1UCR&~0x10) | (uartProtConfig->BIT9 << 4);
		// Level of bit 9 = 0 (U1UCR.D9 = 0), used when U1UCR.BIT9 = 1 
		// Level of bit 9 = 1 (U1UCR.D9 = 1), used when U1UCR.BIT9 = 1 
		// Parity = Even (U1UCR.D9 = 0), used when U1UCR.PARITY = 1 
		// Parity = Odd (U1UCR.D9 = 1), used when U1UCR.PARITY = 1 
		U1UCR = (U1UCR&~0x20) | (uartProtConfig->D9 << 5);
		// Flow control = disabled (U1UCR.FLOW = 0) 
		// Flow control = enabled (U1UCR.FLOW = 1) 
		U1UCR = (U1UCR&~0x40) | (uartProtConfig->FLOW << 6);
		// Bit order = MSB first (U1GCR.ORDER = 1) 
		// Bit order = LSB first (U1GCR.ORDER = 0) => For PC/Hyperterminal 
		U1GCR = (U1GCR&~0x20) | (uartProtConfig->ORDER << 5);
	}
}
