#ifndef RADIO_H
#define RADIO_H

#include "AX25Frame.h"
#include "DataFrame.h"
#include "DataTypes.h"
#include "uart.h"
#include "dma.h"

//Define RFST constant values
#define SFSTXON               0x00
#define SCAL                  0x01
#define SRX                   0x02
#define STX                   0x03
#define SIDLE                 0x04

//Define UART Protocol Configuration xdata address
#define UART_PROT_CONFIG_ADDR DMA_DESCRS_ADDR + 15 

//Set-Up
void        initConfigRegisters 	(void);
void        initClock           	(void);
void        initRFStateMach     	(void);

//Frame Manipulation
Data_Frame* decomm_AX25_Packet  	(struct AX25_Frame *frame);

//Helper Functions For AX25 Frame Construction
AX25_Frame* construct_AX25_Packet       (Data_Frame* frame);

#endif
