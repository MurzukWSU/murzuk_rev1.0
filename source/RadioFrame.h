#ifndef RADIO_FRAME_H
#define RADIO_FRAME_H

#include "DataTypes.h"

/********************************************************************************
*---STRUCT RADIO_FRAME---
*
* Description:
*	Comprises one data frame according to the AX25 specification. All data
*	fields are uint8s. Total length = 251 Bytes.
*
*********************************************************************************/	
typedef struct Radio_Frame
{
	uint8 dest_Addr[7];         //Callsign of destination station in ASCII
	uint8 src_Addr[7];          //Callsign of source station in ASCII
	uint8 master_Frame_Count;   //Number of current packet being sent
	uint8 vc_Frame_Count;       //Number of current packet in current virtual channel being sent
	uint8 data[251];            //Contains message bits provided by mainboard
	uint8 time_Stamp[4];        //Time stamp 	
} Radio_Frame;

#endif
