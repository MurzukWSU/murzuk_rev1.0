#include "cc1110.h"
#include "Radio.h"

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include <time.h>

void main(void)
{
	//Call Initialization functions
	initConfigRegisters();
	initClock();
	initRFStateMach();

	while(1)
	{	
				
	}
	
}

/********************************************************************************
*---FUNCTION---
* Name: initConfigRegisters()
* Description:
*	Configures the the SoC control registers as imported from SmartRFStudio.
* Parameters:
*	NONE
* Returns:
*	NONE
*********************************************************************************/	
void initConfigRegisters(void)
{
	//Set up control and radio registers for operation
	PKTCTRL0  = 0x04; //Packet control register
	PKTCTRL1  = 0x00; //Packet control register
	FSCTRL1   = 0x06; //Frequency synthesizer control register
	FREQ2     = 0x10; //Frequency control word, high byte
	FREQ1     = 0xCE; //Frequency control word, middle byte
	FREQ0     = 0xC4; //Frequency control word, low byte
	MDMCFG4   = 0xF5; //Modem configuration
	MDMCFG3   = 0x83; //Modem configuration
	MDMCFG2   = 0x03; //Modem configuration
	DEVIATN   = 0x15; //Modem deviation setting
	MCSM0	  = 0x18; //Main radio control state machine configuration
	FOCCFG    = 0x17; //Frequency offset compensation configuration
	FSCAL3    = 0xE9; //Frequency synthesizer calibration
	FSCAL2    = 0x2A; //Frequency synthesizer calibration
	FSCAL1    = 0x00; //Frequency synthesizer calibration
	FSCAL0    = 0x1F; //Frequency synthesizer calibration
	TEST1     = 0x31; //Various test settings
	TEST0     = 0x09; //Various test settings
	PA_TABLE0 = 0x60; //PA power setting 0
	IOCFG0    = 0x06; //Radio test signal configuration (P1_5)
	PKTLEN    = 2;	  //Packet length

}

/********************************************************************************
*---FUNCTION---
* Name: initClock()
* Description:
*	Configures the clock to run off the 26 MHz HS-XOSC.
* Parameters:
*	NONE
* Returns:
*	NONE
*********************************************************************************/	
void initClock(void)
{
	//Configure clock to run off of HS-XOSC (26 MHz) oscillator
	CLKCON &= ~0x40;
	//Wait for clock to be stable
	while(CLKCON & 0x40);
}

/********************************************************************************
*---FUNCTION---
* Name: initRFStateMach()
* Description:
*	Issues SIDLE and SCAL command strobes to set-up RFST for operation.
* Parameters:
*	NONE
* Returns:
*	NONE
*********************************************************************************/	
void initRFStateMach(void)
{
	//Issue SIDLE command strobe to put radio in idle-mode
	RFST = SIDLE;

	//Issue freq. synt. calibration command
	RFST = SCAL; //Note MCSM0 register is set to auto-calibrate freq. synt.
		     //on every transition from idle-mode to rx-mode/tx-mode

	//Clear RFTXRXIF (RX/TX interrupt flag)
	RFTXRXIF = 0;
}



/********************************************************************************
*---FUNCTION---
* Name: construct_AX25_Packet()
* Description:
*	Constructs an AX25_Frame to be transmitted.
* Parameters:
*	Data_Frame* frame
* Returns:
*	AX25_Frame* - Pointer to the constructed AX25_Frame
*********************************************************************************/
AX25_Frame* construct_AX25_Packet(Data_Frame* frame)
{
	uint8 ts_Ind = 0;
	//Allocate memory for new AX25_Frame
	AX25_Frame* new_Frame_Ptr           = (AX25_Frame *)malloc(sizeof(AX25_Frame));
	
	//Set the frame start byte
	new_Frame_Ptr->frame_Start          = AX25_FRAME_START;
	
	//Copy the source and destination addresses from the Data_Frame
	memcpy(new_Frame_Ptr->src_Addr, frame->src_Addr, sizeof(frame->src_Addr));
	memcpy(new_Frame_Ptr->dest_Addr, frame->dest_Addr, sizeof(frame->dest_Addr));

	//Set control, protocol ident., and frame ID bytes
	new_Frame_Ptr->control              = AX25_CONTROL;
	new_Frame_Ptr->proto_Ident          = AX25_PROTO_IDENT;
	new_Frame_Ptr->frame_ID             = AX25_FRAME_ID;

	//Set the frame count bytes and first header pointer byte
	new_Frame_Ptr->master_Frame_Count   = frame->master_Frame_Count;
	new_Frame_Ptr->vc_Frame_Count       = frame->vc_Frame_Count;
	new_Frame_Ptr->first_Header_Pointer = AX25_1ST_HEADER_PTR;
	
	//Copy the data field from the Data_Frame
	memcpy(new_Frame_Ptr->data, frame->data, sizeof(frame->data));
	
	//Set the frame status byte
	new_Frame_Ptr->frame_Status         = 0xF0;

	//Copy the time stamp bytes from the Data_Frame
	memcpy(new_Frame_Ptr->time_Stamp, frame->time_Stamp, sizeof(frame->time_Stamp));	

	//Set the frame end byte
	new_Frame_Ptr->frame_End            = AX25_FRAME_END;

	return new_Frame_Ptr;
}

/********************************************************************************
*---FUNCTION---
* Name: decomm_AX25_Packet()
* Description:
*	Extracts the data field from an AX25 packet and other pertinent fields.
* Parameters:
*	AX25_Frame* - pointer to the frame to be decommutated
* Returns:
*	Data_Frame* - data field (and other fields) from the AX25 frame
*********************************************************************************/	
Data_Frame* decomm_AX25_Packet(AX25_Frame *frame)
{
	//Extract data bits from AX25 Packet
	Data_Frame* dataFrame = (Data_Frame *) malloc (sizeof(Data_Frame));
	
	//Copy data bits from AX25_Frame to Data_Frame	
	memcpy(dataFrame->data, frame->data, sizeof(frame->data));
	
	//Copy destination address bytes from AX25_Frame to Data_Frame
	memcpy(dataFrame->dest_Addr, frame->dest_Addr, sizeof(frame->dest_Addr));

	//Copy source address bytes from AX25_Frame to Data_Frame
	memcpy(dataFrame->src_Addr, frame->src_Addr, sizeof(frame->src_Addr));

	//Set master and virtual frame count bytes in Data_Frame
	dataFrame->master_Frame_Count = frame->master_Frame_Count;	
	dataFrame->vc_Frame_Count = frame->vc_Frame_Count;	

	//Copy time stamp information from AX25_Frame to Data_Frame
	memcpy(dataFrame->time_Stamp, frame->time_Stamp, sizeof(uint8) * 8);	
	
	//Decomm'd AX25_Frame is no longer needed so free the memory
	free(frame);

	return dataFrame;	
}



