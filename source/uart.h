#ifndef UART_H
#define UART_H

#include "cc1110.h"
#include "DataTypes.h"

#define SIZE_OF_UART_RX_BUFFER 275
#define SIZE_OF_UART_TX_BUFFER 275
#define UART_RX_BUFFER_ADDR    0xF000
#define UART_TX_BUFFER_ADDR    UART_RX_BUFFER_ADDR + SIZE_OF_UART_RX_BUFFER
#define UART_RX_INDEX_ADDR     UART_TX_BUFFER_ADDR + SIZE_OF_UART_TX_BUFFER
#define UART_TX_INDEX_ADDR     UART_RX_INDEX_ADDR  + 1

/********************************************************************************
*---STRUCT UART_PROT_CONFIG---
*
* Description:
*	Contains all information necessary to configure the UART Protocol for
*	transmission of Data Frames.
*
*********************************************************************************/	
typedef struct UART_PROT_CONFIG
{
	uint8 uartNum	: 1;
	uint8 START     : 1;
	uint8 STOP	: 1;
	uint8 SPB	: 1;
	uint8 PARITY	: 1;
	uint8 BIT9	: 1;
	uint8 D9	: 1;
	uint8 FLOW	: 1;
	uint8 ORDER	: 1;

} UART_PROT_CONFIG;



//---FUNCTION PROTOTYPES---
void uartMapPort (uint8 uartPortAlt, uint8 uartNum);
void uartInitBitrate(uint8 uartBaudM, uint8 uartBaudE);
void uartInitProtocol(UART_PROT_CONFIG* uartProtConfig);

#endif
