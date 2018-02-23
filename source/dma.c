#include "cc1110.h"
#include "dma.h"
#include "uart.h"
#include "DataTypes.h"


/********************************************************************************
*---FUNCTION---
* Name: uartStartRxDmaChan()
* Description:
*	Initiates a DMA based reception of a Data Frame worth of bytes.
* Parameters:
*	uint8     uartNum     	 - the UART channel to be used
*	DMA_DESC* uartDmaRxDescr - pointer to the DMA descriptor
*	uint8     uartDmaRxChan  - the DMA Rx channel to be used
*	uint8*    uartRxBuf	 - address of the UART RX Buffer
*	uint16	  uartRxBufSize  - size of the UART RX Buffer
* Returns:
*	NONE
*********************************************************************************/
void uartStartRxDmaChan(uint8     uartNum,
	DMA_DESC* uartDmaRxDescr,
	uint8     uartDmaRxChan,
	uint8*    uartRxBuf,
	uint16    uartRxBufSize)
{
	//Source = UxDBUF, destination = allocated UART RX buffer
	//Number of DMA byte transfer = UART RX buffer size.
	uartDmaRxDescr->DESTADDRH = (uint16)uartRxBuf >> 8;
	uartDmaRxDescr->DESTADDRL = (uint16)uartRxBuf;
	uartDmaRxDescr->SRCADDRH = 0xDF;
	uartDmaRxDescr->SRCADDRL = (uartNum == 0) ? 0xC1 : 0xF9;
	uartDmaRxDescr->LENH = (uartRxBufSize >> 8) & 0xFF;
	uartDmaRxDescr->LENL = uartRxBufSize & 0xFF;

	uartDmaRxDescr->VLEN = 0x00;               //Used fixed length DMA transfer count
	uartDmaRxDescr->WORDSIZE = 0x00;               //Perform 1-byte transfer
	uartDmaRxDescr->TMODE = 0x00;               //Single byte transfer per DMA trigger
	uartDmaRxDescr->TRIG = 14 + (2 * uartNum); //DMA trigger = USARTx RX complete
	uartDmaRxDescr->SRCINC = 0x00;               //Do not increment source pointer
												 //points to USART UxDBUF register
	uartDmaRxDescr->DESTINC = 0x01;      		//Increment destination pointer by
												//1 byte address after each transfer
	uartDmaRxDescr->IRQMASK = 0x01;		//Enable DMA interrupt to the CPU
	uartDmaRxDescr->M8 = 0x00;		//Use all 8 bits for transfer count
	uartDmaRxDescr->PRIORITY = 0x00;		//DMA memory access has low priority

											//Link DMA descriptor with its corresponding DMA configuration register
	if (uartDmaRxChan < 1)
	{
		DMA0CFGH = (uint8)((uint16)uartDmaRxDescr >> 8);
		DMA0CFGL = (uint8)((uint16)uartDmaRxDescr & 0x00FF);
	}
	else
	{
		DMA1CFGH = (uint8)((uint16)uartDmaRxDescr >> 8);
		DMA1CFGL = (uint8)((uint16)uartDmaRxDescr & 0x00FF);
	}

	//Arm DMA channel and apply 45 NOP's for loading DMA configuration
	DMAARM = ((1 << uartDmaRxChan) & 0x1F);
	__asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP");
	__asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP");
	__asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP");
	__asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP");
	__asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP");
	__asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP");
	__asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP");
	__asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP");
	__asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP");

	//Enable the DMA interrupt (IEN1.DMAIE = IEN0.EA = 1),
	//and clear potential pending DMA interrupt requests (IRCON.DMAIF = 0)
	IEN0 |= 0x80;
	IEN1 |= 0x01;
	IRCON &= ~0x01;

	//Enable UARTx RX
	if (uartNum == 0)
	{
		U0CSR |= 0x40;
	}
	else
	{
		U1CSR |= 0x40;
	}

	//At this point the UART generates a DMA trigger each time it has received a byte,
	//leading to a DMA transfer from UxDBUF to the allocated RX target buffer. Once
	//the DMA controller has completed the defined range of transfer, the CPU vectors
	//its execution to the UART RX re-start using DMA ISR
}

/********************************************************************************
*---FUNCTION---
* Name: uartStartTxDmaChan()
* Description:
*	This function sets up a designated DMA channel for UART TX and starts
*	the UART TX session. Before this function is called the application must
*	perform initialization by executing the code in Figure 3 (uartMapPort()),
*	Figure 11 (uartInitBitrate()), Figure 12 (uart buffer allocation),
*	and Figure 13 (uartInitProtocol())
*	See DN112 design note from ti for more details.
*
* Parameters:
*	unsigned char uartNum - determines whether UART0 or UART1 is used
*	DMA_DESC *uartDmaTxDescr - pointer to a struct containing DMA parameters
*	unsigned char uartDmaTxChan - gives DMA channel for Tx
*	unsigned char* uartTxBuf - pointer to buffer
*	uint16uartTxBufSize - buffer size
* Returns:
*	NONE
*********************************************************************************/
void uartStartTxDmaChan
(
	unsigned char uartNum,
	DMA_DESC *uartDmaTxDescr,
	unsigned char uartDmaTxChan,
	unsigned char* uartTxBuf,
	uint16 uartTxBufSize
)
{
	// Source = allocated UART TX buffer, destination = UxDBUF 
	// Number of DMA byte transfers = UART TX buffer size. 
	uartDmaTxDescr->SRCADDRH = (uint16)(uartTxBuf + 1) >> 8;
	uartDmaTxDescr->SRCADDRL = (uint16)(uartTxBuf + 1);
	uartDmaTxDescr->DESTADDRH = 0xDF;
	uartDmaTxDescr->DESTADDRL = (uartNum == 0) ? 0xC1 : 0xF9;
	uartDmaTxDescr->LENH = ((uartTxBufSize - 1) >> 8) & 0xFF;
	uartDmaTxDescr->LENL = (uartTxBufSize - 1) & 0xFF;
	uartDmaTxDescr->VLEN = 0x00;
	// Use fixed length DMA transfer count
	uartDmaTxDescr->WORDSIZE = 0x00;
	// Perfrom 1-byte DMA transfers
	uartDmaTxDescr->TMODE = 0x00;  // Single byte transfer per DMA trigger
	uartDmaTxDescr->TRIG = 15 + (2 * uartNum);
	// DMA trigger = USARTx TX complete
	uartDmaTxDescr->SRCINC = 0x01;
	// Increment source pointer by 1 byte
	// address after each transfer.
	uartDmaTxDescr->DESTINC = 0x00;
	// Do not increment destination pointer:
	// points to USART UxDBUF register.
	uartDmaTxDescr->IRQMASK = 0x01;
	// Enable DMA interrupt to the CPU
	uartDmaTxDescr->M8 = 0x00;
	// Use all 8 bits for transfer count
	uartDmaTxDescr->PRIORITY = 0x00;
	// DMA memory access has low priority
	// Link DMA descriptor with its corresponding DMA configuration register. 
	if (uartDmaTxChan <1)
	{
		DMA0CFGH = (unsigned char)((uint16)uartDmaTxDescr >> 8);
		DMA0CFGL = (unsigned char)((uint16)uartDmaTxDescr & 0x00FF);
	}
	else
	{
		DMA1CFGH = (unsigned char)((uint16)uartDmaTxDescr >> 8);
		DMA1CFGL = (unsigned char)((uint16)uartDmaTxDescr & 0x00FF);
	}
	// Arm DMA channel and apply 45 NOP's for loading DMA configuration 
	DMAARM = ((1 << uartDmaTxChan) & 0x1F);
	__asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP");
	__asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP");
	__asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP");
	__asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP");
	__asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP");
	__asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP");
	__asm__("NOP"); __asm__("NOP"); __asm__("NOP");
	// Enable the DMA interrupt (IEN1.DMAIE = IEN0.EA = 1), 
	// and clear potential pending DMA interrupt requests (IRCON.DMAIF = 0). 
	IEN0 |= 0x80; IEN1 |= 0x01; IRCON &= ~0x01;
	// Send the very first UART byte to trigger a UART TX session: 
	if (uartNum == 0)
	{
		U0DBUF = uartTxBuf[0];
	}
	else
	{
		U1DBUF = uartTxBuf[0];
	}
	// At this point the UART generates a DMA trigger each time it has 
	// transmitted a byte, leading to a DMA transfer from the allocated 
	// TX source buffer to UxDBUF. Once the DMA controller has completed 
	// the defined range of transfers, the CPU vectors its execution to 
	// the DMA ISR in Figure 23. 
}

/********************************************************************************
*---FUNCTION---
* Name: rfdStartRxDmaChan()
* Description:
*	This function starts a DMA transfer from the RFD register into xdata
* 	memory	
* Parameters:
*	DMA_DESC *rfdDmaRxDescr - pointer to a struct containing DMA parameters
*	uint8 rfdDmaRxChan - gives DMA channel for Rx
*	uint8* rfdRxBuf - pointer to buffer
*	uint16 rfdRxBufSize - buffer size
* Returns:
*	NONE
*********************************************************************************/
void rfdStartRxDmaChan
(
	DMA_DESC* rfdDmaRxDescr,
	uint8 rfdDmaRxChan,
	uint8* rfdRxBuf,
	uint16 rfdRxBufSize
)
{

	//Source = RFD, destination = allocated RFD RX buffer
	//Number of DMA byte transfer = RFD RX buffer size.
	rfdDmaRxDescr->DESTADDRH = (uint16) rfdRxBuf >> 8;
	rfdDmaRxDescr->DESTADDRL = (uint16) rfdRxBuf;
	rfdDmaRxDescr->SRCADDRH  = 0xDF;
	rfdDmaRxDescr->SRCADDRL  = 0xD9;
	rfdDmaRxDescr->LENH      = (rfdRxBufSize >> 8) & 0xFF;
	rfdDmaRxDescr->LENL      = rfdRxBufSize & 0xFF;
	
	rfdDmaRxDescr->VLEN      = 0x00;               //Used fixed length DMA transfer count
	rfdDmaRxDescr->WORDSIZE  = 0x00;               //Perform 1-byte transfer
	rfdDmaRxDescr->TMODE     = 0x00;               //Single byte transfer per DMA trigger
	rfdDmaRxDescr->TRIG      = 19;                 //DMA trigger = RFD transfer complete
	rfdDmaRxDescr->SRCINC    = 0x00;               //Do not increment source pointer
	 					                                     //points to RFD register
	rfdDmaRxDescr->DESTINC   = 0x01;      	       //Increment destination pointer by
	 					                                     //1 byte address after each transfer
	rfdDmaRxDescr->IRQMASK	 = 0x01;	             //Enable DMA interrupt to the CPU
	rfdDmaRxDescr->M8	       = 0x00;	             //Use all 8 bits for transfer count
	rfdDmaRxDescr->PRIORITY  = 0x02;	             //DMA memory access has low priority

	//Link DMA descriptor with its corresponding DMA configuration register
	DMA1CFGH = (uint8) ((uint16) rfdDmaRxDescr >> 8);
	DMA1CFGL = (uint8) ((uint16) rfdDmaRxDescr & 0x00FF);

	//Arm DMA channel and apply 45 NOP's for loading DMA configuration
	DMAARM = ((1 << rfdDmaRxChan) & 0x1F);
	__asm__("NOP");__asm__("NOP");__asm__("NOP");__asm__("NOP");__asm__("NOP");
	__asm__("NOP");__asm__("NOP");__asm__("NOP");__asm__("NOP");__asm__("NOP");
	__asm__("NOP");__asm__("NOP");__asm__("NOP");__asm__("NOP");__asm__("NOP");
	__asm__("NOP");__asm__("NOP");__asm__("NOP");__asm__("NOP");__asm__("NOP");
	__asm__("NOP");__asm__("NOP");__asm__("NOP");__asm__("NOP");__asm__("NOP");
	__asm__("NOP");__asm__("NOP");__asm__("NOP");__asm__("NOP");__asm__("NOP");
	__asm__("NOP");__asm__("NOP");__asm__("NOP");__asm__("NOP");__asm__("NOP");
	__asm__("NOP");__asm__("NOP");__asm__("NOP");__asm__("NOP");__asm__("NOP");
	__asm__("NOP");__asm__("NOP");__asm__("NOP");__asm__("NOP");__asm__("NOP");

	//Enable the DMA interrupt (IEN1.DMAIE = IEN0.EA = 1),
	//and clear potential pending DMA interrupt requests (IRCON.DMAIF = 0)
	IEN0  |= 0x80;
	IEN1  |= 0x01;
	IRCON &= ~0x01;

	//Stobe SRX
	RFST = SRX;

}

/********************************************************************************
*---FUNCTION---
* Name: rfdStartTxDmaChan()
* Description:
*	This function starts a DMA transfer from xdata into the RFD register
* 
* Parameters:
*	DMA_DESC *rfdDmaTxDescr - pointer to a struct containing DMA parameters
*	uint8 rfdDmaTxChan - gives DMA channel for Tx
*	uint8* rfdRxBuf - pointer to buffer
*	uint16 rfdRxBufSize - buffer size
* Returns:
*	NONE
*********************************************************************************/
void rfdStartTxDmaChan
(
	DMA_DESC* rfdDmaTxDescr,
	uint8 rfdDmaTxChan,
	uint8* rfdTxBuf,
	uint16 rfdTxBufSize
)
{

	//Source = RFD buffer in xdata, destination = RFD
	//Number of DMA byte transfer = RFD TX buffer size.
	
	rfdDmaTxDescr->DESTADDRH = 0xDF;
	rfdDmaTxDescr->DESTADDRL = 0xD9;
	rfdDmaTxDescr->SRCADDRH  = (uint16)rfdTxBuf >> 8;
	rfdDmaTxDescr->SRCADDRL  = (uint16)rfdTxBuf;
	rfdDmaTxDescr->LENH      = (rfdTxBufSize >> 8) & 0xFF;
	rfdDmaTxDescr->LENL      = rfdTxBufSize & 0xFF;

	rfdDmaTxDescr->VLEN      = 0x00;            //Used fixed length DMA transfer count
	rfdDmaTxDescr->WORDSIZE  = 0x00;            //Perform 1-byte transfer
	rfdDmaTxDescr->TMODE     = 0x00;            //Single byte transfer per DMA trigger
	rfdDmaTxDescr->TRIG      = 19;              //DMA trigger = RFD TX complete
	rfdDmaTxDescr->SRCINC    = 1;               //Do increment source pointer
												                      //points to RFD register
	rfdDmaTxDescr->DESTINC   = 0x00;      	    //Do not increment destination pointer by
												                      //1 byte address after each transfer
	rfdDmaTxDescr->IRQMASK   = 0x00;	          //Disable DMA interrupt to the CPU
	rfdDmaTxDescr->M8        = 0x00;	          //Use all 8 bits for transfer count
	rfdDmaTxDescr->PRIORITY  = 0x02;	          //DMA memory access has high priority

	//Link DMA descriptor with its corresponding DMA configuration register
	// 0 for RX, 1 for TX
	DMA1CFGH = (uint8)((uint16)rfdDmaTxDescr >> 8);
	DMA1CFGL = (uint8)((uint16)rfdDmaTxDescr & 0x00FF);

	//Arm DMA channel and apply 45 NOP's for loading DMA configuration
	DMAARM = ((1 << rfdDmaTxChan) & 0x1F);
	__asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP");
	__asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP");
	__asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP");
	__asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP");
	__asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP");
	__asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP");
	__asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP");
	__asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP");
	__asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP");

	//Enable the DMA interrupt (IEN1.DMAIE = IEN0.EA = 1),
	//and clear potential pending DMA interrupt requests (IRCON.DMAIF = 0)
	IEN0 |= 0x80;
	IEN1 |= 0x01;
	IRCON &= ~0x01;

	//Stobe STX
	RFST = STX;

}

