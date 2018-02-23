#ifndef RADIO_H
#define RADIO_H

#include "cc1110.h"
#include "RadioFrame.h"
#include "DataFrame.h"
#include "DataTypes.h"
#include "uart.h"
#include "dma.h"

//Define size of RFD TX/RX BUFFERS
#define SIZE_OF_RFD_RX_BUFFER 282
#define SIZE_OF_RFD_TX_BUFFER 282 

//Define RFD TX/RX Buffer xdata Addresses
#define RFD_RX_BUFFER_ADDR    0xF200 
#define RFD_TX_BUFFER_ADDR    0xF300

//Define RFD TX/RX Buffer Index xdata Addresses
#define RFD_RX_INDEX_ADDR     0xF502
#define RFD_TX_INDEX_ADDR     0xF503

//Define UART Protocol Configuration xdata address
#define UART_PROT_CONFIG_ADDR 0xF400 

//Set-Up
void        initConfigRegisters 	(void);
void        initClock           	(void);
void        initRFStateMach     	(void);

//Frame Manipulation
Data_Frame* decomm_AX25_Packet  	(struct Radio_Frame *frame);

//Helper Functions For AX25 Frame Construction
Radio_Frame* construct_AX25_Packet       (Data_Frame* frame);

#endif
