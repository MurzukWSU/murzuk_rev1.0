#ifndef UART_H
#define UART_H

#include "cc1110.h"
#include "DataTypes.h"

#define SIZE_OF_UART_RX_BUFFER 200
#define SIZE_OF_UART_TX_BUFFER 200
#define UART_RX_BUFFER_ADDR    0xF000
#define UART_TX_BUFFER_ADDR    0xF100
#define UART_RX_INDEX_ADDR     0xF500 
#define UART_TX_INDEX_ADDR     0xF501 

#endif
