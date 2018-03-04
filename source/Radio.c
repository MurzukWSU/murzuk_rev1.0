#include "cc1110.h"
#include "ioCCxx10_bitdef.h"
#include "Radio.h"
#include "DataTypes.h"
#include "uart.h"
#include "RadioFrame.h"
#include "DataFrame.h"

#include <stdint.h>
#include <string.h>
#include <stdlib.h>


void main(void)
{
	uint8 index = 0;
 	PERCFG = (PERCFG & ~PERCFG_U0CFG) | PERCFG_U1CFG;
  	// P0SEL.SELP0_2/3/4/5 = 1 => RX = P0_2, TX = P0_3, CT = P0_4, RT = P0_5
  	P0SEL |= 0x20 | 0x10 | 0x08 | 0x04;
	
	//Configure clock
	SLEEP &= ~SLEEP_OSC_PD;
  	while( !(SLEEP & SLEEP_XOSC_S) );
  	CLKCON = (CLKCON & ~(CLKCON_CLKSPD | CLKCON_OSC)) | CLKSPD_DIV_1;
  	while (CLKCON & CLKCON_OSC);
  	SLEEP |= SLEEP_OSC_PD;

  	//Initialise bitrate = 57.6 kbps (U0BAUD.BAUD_M = 34, U0GCR.BAUD_E = 11)
  	U0BAUD = 34;
  	U0GCR = (U0GCR&~U0GCR_BAUD_E) | 11;

  	//Initialise UART protocol (start/stop bit, data bits, parity, etc.):

  	//USART mode = UART (U0CSR.MODE = 1)
  	U0CSR |= U0CSR_MODE;

  	//Start bit level = low => Idle level = high  (U0UCR.START = 0)
  	U0UCR &= ~U0UCR_START;

  	//Stop bit level = high (U0UCR.STOP = 1)
  	U0UCR |= U0UCR_STOP;

  	//Number of stop bits = 1 (U0UCR.SPB = 0)
  	U0UCR &= ~U0UCR_SPB;

  	//Parity = disabled (U0UCR.PARITY = 0)
  	U0UCR &= ~U0UCR_PARITY;

  	//9-bit data enable = 8 bits transfer (U0UCR.BIT9 = 0)
  	U0UCR &= ~U0UCR_BIT9;

  	//Level of bit 9 = 0 (U0UCR.D9 = 0), used when U0UCR.BIT9 = 1
  	//Level of bit 9 = 1 (U0UCR.D9 = 1), used when U0UCR.BIT9 = 1
  	//Parity = Even (U0UCR.D9 = 0), used when U0UCR.PARITY = 1
  	//Parity = Odd (U0UCR.D9 = 1), used when U0UCR.PARITY = 1
  	U0UCR &= ~U0UCR_D9;

  	//Flow control = disabled (U0UCR.FLOW = 0)
  	U0UCR &= ~U0UCR_FLOW;

  	//Bit order = LSB first (U0GCR.ORDER = 0)
  	U0GCR &= ~U0GCR_ORDER;
	
	while(1)
	{	
		U0DBUF = 0x55;
		while(!UTX0IF);
		UTX0IF = 0;
	}
	
}

/********************************************************************************
*---FUNCTION---
* Name: initConfigRegisters()
* Description:
*	Configures the SoC control registers as imported from SmartRFStudio.
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
	PKTLEN    = 255;  //Packet length

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
* Name: construct_Radio_Packet()
* Description:
*	Constructs an Radio_Frame to be transmitted.
* Parameters:
*	Data_Frame* frame
* Returns:
*	Radio_Frame* - Pointer to the constructed AX25_Frame
*********************************************************************************/
Radio_Frame* construct_Radio_Packet(Data_Frame* frame)
{
	//Allocate memory for new AX25_Frame
	Radio_Frame* new_Frame_Ptr           = (Radio_Frame *)malloc(sizeof(Radio_Frame));
	
	//Copy the source and destination addresses from the Data_Frame
	memcpy(new_Frame_Ptr->src_Addr, frame->src_Addr, sizeof(frame->src_Addr));
	memcpy(new_Frame_Ptr->dest_Addr, frame->dest_Addr, sizeof(frame->dest_Addr));


	//Set the frame count bytes and first header pointer byte
	new_Frame_Ptr->master_Frame_Count   = frame->master_Frame_Count;
	new_Frame_Ptr->vc_Frame_Count       = frame->vc_Frame_Count;
	
	//Copy the data field from the Data_Frame
	memcpy(new_Frame_Ptr->data, frame->data, sizeof(frame->data));

	//Copy the time stamp bytes from the Data_Frame
	memcpy(new_Frame_Ptr->time_Stamp, frame->time_Stamp, sizeof(frame->time_Stamp));	

	return new_Frame_Ptr;
}

/********************************************************************************
*---FUNCTION---
* Name: decomm_Radio_Packet()
* Description:
*	Extracts the data field from an Radio packet and other pertinent fields.
* Parameters:
*	Radio_Frame* - pointer to the frame to be decommutated
* Returns:
*	Data_Frame* - data field (and other fields) from the Radio frame
*********************************************************************************/	
Data_Frame* decomm_Radio_Packet(Radio_Frame *frame)
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
	memcpy(dataFrame->time_Stamp, frame->time_Stamp, sizeof(frame->time_Stamp));	
	
	//Decomm'd AX25_Frame is no longer needed so free the memory
	free(frame);

	return dataFrame;	
}

