#ifndef DMA_H
#define DMA_H

#include "cc1110.h"
#include "DataTypes.h"
#include "uart.h"

#define DMA_DESCRS_ADDR UART_TX_INDEX_ADDR + 1 

/********************************************************************************
*---STRUCT DMA_DESC---
*
* Description:
*	Contains all information necessary to configure the corresponding DMA
*	channel.
*
*********************************************************************************/	
typedef struct DMA_DESC
{
	uint8 SRCADDRH;     //High byte of the source address
	uint8 SRCADDRL;     //Low byte of the source address
	uint8 DESTADDRH;    //High byte of the destination address
	uint8 DESTADDRL;    //Low byte of the destination address
	uint8 VLEN     : 3; //Length configuration
	uint8 LENH     : 5; //High byte of fixed length
	uint8 LENL     : 8; //Low byte of fixed length
	uint8 WORDSIZE : 1; //Number of bytes per transfer element
	uint8 TMODE    : 2; //DMA trigger mode (e.g single or repeated)
	uint8 TRIG     : 5; //DMA trigger; UART RX/TX
	uint8 SRCINC   : 2; //Number of source address increments
	uint8 DESTINC  : 2; //Number of destination address increments
	uint8 IRQMASK  : 1; //DMA interrupt mask
	uint8 M8       : 1; //Number of desired bit transfers in byte mode
	uint8 PRIORITY : 2; //The DMA memory access priority
} DMA_DESC;

//---FUNCTION PROTOTYPES---
void uartStartRxDmaChan(uint8     uartNum,
		        DMA_DESC* uartDmaRxDescr,
		        uint8     uartDmaRxChan,
			uint8*    uartRxBuf,
			uint16    uartRxBufSize);


#endif