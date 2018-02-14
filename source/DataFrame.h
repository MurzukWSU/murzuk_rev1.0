#ifndef DATA_FRAME_H
#define DATA_FRAME_H
#include "DataTypes.h"

/********************************************************************************
*---STRUCT DATA_FRAME---
*
* Description:
*	Comprises one data field to be transferred to or from the communications board
*	to mainboard.
*
*********************************************************************************/	
typedef struct Data_Frame
{
	uint8 data[251];  
	uint8 dest_Addr[7];
	uint8 src_Addr[7];
	uint8 master_Frame_Count;
	uint8 vc_Frame_Count;
	uint8 time_Stamp[8];	
} Data_Frame;
#endif
