#ifndef UART_H
#define UART_H

#include "cc1110.h"
#include "DataTypes.h"

#define SIZE_OF_UART_RX_BUFFER 300
#define SIZE_OF_UART_TX_BUFFER 300

typedef struct UART_PROT_CONFIG {
	uint8 uartNum	: 1;
	uint8 START     : 1;
	uint8 STOP	: 1;
	uint8 SPB	: 1;
	uint8 PARITY	: 1;
	uint8 BIT9	: 1;
	uint8 D9	: 1;
	uint8 FLOW	: 1;
	uint8 ORDER	: 1;

} UART_PORT_CONFIG;


uint8 __xdata uartRxBuffer[SIZE_OF_UART_RX_BUFFER];
uint8 __xdata uartTxBuffer[SIZE_OF_UART_TX_BUFFER];
uint8 __xdata uartRxIndex, uartTxIndex;

struct UART_PROT_CONFIG __xdata uartProtConfig;

//---FUNCTION PROTOTYPES---
void uartMapPort (uint8 uartPortAlt, uint8 uartNum);
#endif
