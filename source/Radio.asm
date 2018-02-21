;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.9 #10185 (MINGW32)
;--------------------------------------------------------
	.module Radio
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _free
	.globl _malloc
	.globl _memcpy
	.globl _MODE
	.globl _RE
	.globl _SLAVE
	.globl _FE
	.globl _ERR
	.globl _RX_BYTE
	.globl _TX_BYTE
	.globl _ACTIVE
	.globl _B_7
	.globl _B_6
	.globl _B_5
	.globl _B_4
	.globl _B_3
	.globl _B_2
	.globl _B_1
	.globl _B_0
	.globl _WDTIF
	.globl _P1IF
	.globl _UTX1IF
	.globl _UTX0IF
	.globl _P2IF
	.globl _ACC_7
	.globl _ACC_6
	.globl _ACC_5
	.globl _ACC_4
	.globl _ACC_3
	.globl _ACC_2
	.globl _ACC_1
	.globl _ACC_0
	.globl _OVFIM
	.globl _T4CH1IF
	.globl _T4CH0IF
	.globl _T4OVFIF
	.globl _T3CH1IF
	.globl _T3CH0IF
	.globl _T3OVFIF
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _STIF
	.globl _P0IF
	.globl _T4IF
	.globl _T3IF
	.globl _T2IF
	.globl _T1IF
	.globl _DMAIF
	.globl _P0IE
	.globl _T4IE
	.globl _T3IE
	.globl _T2IE
	.globl _T1IE
	.globl _DMAIE
	.globl _EA
	.globl _STIE
	.globl _ENCIE
	.globl _URX1IE
	.globl _URX0IE
	.globl _ADCIE
	.globl _RFTXRXIE
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _ENCIF_1
	.globl _ENCIF_0
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _URX1IF
	.globl _ADCIF
	.globl _URX0IF
	.globl _IT1
	.globl _RFTXRXIF
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _P2DIR
	.globl _P1DIR
	.globl _P0DIR
	.globl _U1GCR
	.globl _U1UCR
	.globl _U1BAUD
	.globl _U1DBUF
	.globl _U1CSR
	.globl _P2INP
	.globl _P1INP
	.globl _P2SEL
	.globl _P1SEL
	.globl _P0SEL
	.globl _ADCCFG
	.globl _PERCFG
	.globl _B
	.globl _T4CC1
	.globl _T4CCTL1
	.globl _T4CC0
	.globl _T4CCTL0
	.globl _T4CTL
	.globl _T4CNT
	.globl _RFIF
	.globl _IRCON2
	.globl _T1CCTL2
	.globl _T1CCTL1
	.globl _T1CCTL0
	.globl _T1CTL
	.globl _T1CNTH
	.globl _T1CNTL
	.globl _RFST
	.globl _ACC
	.globl _T1CC2H
	.globl _T1CC2L
	.globl _T1CC1H
	.globl _T1CC1L
	.globl _T1CC0H
	.globl _T1CC0L
	.globl _RFD
	.globl _TIMIF
	.globl _DMAREQ
	.globl _DMAARM
	.globl _DMA0CFGH
	.globl _DMA0CFGL
	.globl _DMA1CFGH
	.globl _DMA1CFGL
	.globl _DMAIRQ
	.globl _PSW
	.globl _T3CC1
	.globl _T3CCTL1
	.globl _T3CC0
	.globl _T3CCTL0
	.globl _T3CTL
	.globl _T3CNT
	.globl _WDCTL
	.globl __SFRC8
	.globl _MEMCTR
	.globl _CLKCON
	.globl _U0GCR
	.globl _U0UCR
	.globl __SFRC3
	.globl _U0BAUD
	.globl _U0DBUF
	.globl _IRCON
	.globl __SFRBF
	.globl _SLEEP
	.globl _RNDH
	.globl _RNDL
	.globl _ADCH
	.globl _ADCL
	.globl _IP1
	.globl _IEN1
	.globl __SFRB7
	.globl _ADCCON3
	.globl _ADCCON2
	.globl _ADCCON1
	.globl _ENCCS
	.globl _ENCDO
	.globl _ENCDI
	.globl __SFRB0
	.globl _FWDATA
	.globl _FCTL
	.globl _FADDRH
	.globl _FADDRL
	.globl _FWT
	.globl __SFRAA
	.globl _IP0
	.globl _IEN0
	.globl __SFRA7
	.globl _WORTIME1
	.globl _WORTIME0
	.globl _WOREVT1
	.globl _WOREVT0
	.globl _WORCTRL
	.globl _WORIRQ
	.globl _P2
	.globl __SFR9F
	.globl _T2CTL
	.globl _T2PR
	.globl _T2CT
	.globl _S1CON
	.globl _IEN2
	.globl __SFR99
	.globl _S0CON
	.globl __SFR97
	.globl __SFR96
	.globl __SFR95
	.globl __SFR94
	.globl __XPAGE
	.globl _MPAGE
	.globl _DPS
	.globl _RFIM
	.globl _P1
	.globl _P0INP
	.globl __SFR8E
	.globl _P1IEN
	.globl _PICTL
	.globl _P2IFG
	.globl _P1IFG
	.globl _P0IFG
	.globl _TCON
	.globl _PCON
	.globl _U0CSR
	.globl _DPH1
	.globl _DPL1
	.globl _DPH0
	.globl _DPL0
	.globl _SP
	.globl _P0
	.globl _uartProtConfig
	.globl _uartTxBuffer
	.globl _uartRxBuffer
	.globl _uartTxIndex
	.globl _uartRxIndex
	.globl _uartDmaRxTxCh
	.globl _X_P2DIR
	.globl _X_P1DIR
	.globl _X_P0DIR
	.globl _X_U1GCR
	.globl _X_U1UCR
	.globl _X_U1BAUD
	.globl _X_U1DBUF
	.globl _X_U1CSR
	.globl _X_P2INP
	.globl _X_P1INP
	.globl _X_P2SEL
	.globl _X_P1SEL
	.globl _X_P0SEL
	.globl _X_ADCCFG
	.globl _X_PERCFG
	.globl __NA_B
	.globl _X_T4CC1
	.globl _X_T4CCTL1
	.globl _X_T4CC0
	.globl _X_T4CCTL0
	.globl _X_T4CTL
	.globl _X_T4CNT
	.globl _X_RFIF
	.globl __NA_IRCON2
	.globl _X_T1CCTL2
	.globl _X_T1CCTL1
	.globl _X_T1CCTL0
	.globl _X_T1CTL
	.globl _X_T1CNTH
	.globl _X_T1CNTL
	.globl _X_RFST
	.globl __NA_ACC
	.globl _X_T1CC2H
	.globl _X_T1CC2L
	.globl _X_T1CC1H
	.globl _X_T1CC1L
	.globl _X_T1CC0H
	.globl _X_T1CC0L
	.globl _X_RFD
	.globl _X_TIMIF
	.globl _X_DMAREQ
	.globl _X_DMAARM
	.globl _X_DMA0CFGH
	.globl _X_DMA0CFGL
	.globl _X_DMA1CFGH
	.globl _X_DMA1CFGL
	.globl _X_DMAIRQ
	.globl __NA_PSW
	.globl _X_T3CC1
	.globl _X_T3CCTL1
	.globl _X_T3CC0
	.globl _X_T3CCTL0
	.globl _X_T3CTL
	.globl _X_T3CNT
	.globl _X_WDCTL
	.globl __X_SFRC8
	.globl _X_MEMCTR
	.globl _X_CLKCON
	.globl _X_U0GCR
	.globl _X_U0UCR
	.globl __X_SFRC3
	.globl _X_U0BAUD
	.globl _X_U0DBUF
	.globl __NA_IRCON
	.globl __X_SFRBF
	.globl _X_SLEEP
	.globl _X_RNDH
	.globl _X_RNDL
	.globl _X_ADCH
	.globl _X_ADCL
	.globl __NA_IP1
	.globl __NA_IEN1
	.globl __X_SFRB7
	.globl _X_ADCCON3
	.globl _X_ADCCON2
	.globl _X_ADCCON1
	.globl _X_ENCCS
	.globl _X_ENCDO
	.globl _X_ENCDI
	.globl __X_SFRB0
	.globl _X_FWDATA
	.globl _X_FCTL
	.globl _X_FADDRH
	.globl _X_FADDRL
	.globl _X_FWT
	.globl __X_SFRAA
	.globl __NA_IP0
	.globl __NA_IEN0
	.globl __X_SFRA7
	.globl _X_WORTIME1
	.globl _X_WORTIME0
	.globl _X_WOREVT1
	.globl _X_WOREVT0
	.globl _X_WORCTRL
	.globl _X_WORIRQ
	.globl __NA_P2
	.globl __X_SFR9F
	.globl _X_T2CTL
	.globl _X_T2PR
	.globl _X_T2CT
	.globl __NA_S1CON
	.globl __NA_IEN2
	.globl __X_SFR99
	.globl __NA_S0CON
	.globl __X_SFR97
	.globl __X_SFR96
	.globl __X_SFR95
	.globl __X_SFR94
	.globl _X_MPAGE
	.globl __NA_DPS
	.globl _X_RFIM
	.globl __NA_P1
	.globl _X_P0INP
	.globl __X_SFR8E
	.globl _X_P1IEN
	.globl _X_PICTL
	.globl _X_P2IFG
	.globl _X_P1IFG
	.globl _X_P0IFG
	.globl __NA_TCON
	.globl __NA_PCON
	.globl _X_U0CSR
	.globl __NA_DPH1
	.globl __NA_DPL1
	.globl __NA_DPH0
	.globl __NA_DPL0
	.globl __NA_SP
	.globl __NA_P0
	.globl _I2SCLKF2
	.globl _I2SCLKF1
	.globl _I2SCLKF0
	.globl _I2SSTAT
	.globl _I2SWCNT
	.globl _I2SDATH
	.globl _I2SDATL
	.globl _I2SCFG1
	.globl _I2SCFG0
	.globl _VCO_VC_DAC
	.globl _PKTSTATUS
	.globl _MARCSTATE
	.globl _RSSI
	.globl _LQI
	.globl _FREQEST
	.globl _VERSION
	.globl _PARTNUM
	.globl __XREGDF35
	.globl __XREGDF34
	.globl __XREGDF33
	.globl __XREGDF32
	.globl _IOCFG0
	.globl _IOCFG1
	.globl _IOCFG2
	.globl _PA_TABLE0
	.globl _PA_TABLE1
	.globl _PA_TABLE2
	.globl _PA_TABLE3
	.globl _PA_TABLE4
	.globl _PA_TABLE5
	.globl _PA_TABLE6
	.globl _PA_TABLE7
	.globl __XREGDF26
	.globl _TEST0
	.globl _TEST1
	.globl _TEST2
	.globl __XREGDF22
	.globl __XREGDF21
	.globl __XREGDF20
	.globl _FSCAL0
	.globl _FSCAL1
	.globl _FSCAL2
	.globl _FSCAL3
	.globl _FREND0
	.globl _FREND1
	.globl _AGCCTRL0
	.globl _AGCCTRL1
	.globl _AGCCTRL2
	.globl _BSCFG
	.globl _FOCCFG
	.globl _MCSM0
	.globl _MCSM1
	.globl _MCSM2
	.globl _DEVIATN
	.globl _MDMCFG0
	.globl _MDMCFG1
	.globl _MDMCFG2
	.globl _MDMCFG3
	.globl _MDMCFG4
	.globl _FREQ0
	.globl _FREQ1
	.globl _FREQ2
	.globl _FSCTRL0
	.globl _FSCTRL1
	.globl _CHANNR
	.globl _ADDR
	.globl _PKTCTRL0
	.globl _PKTCTRL1
	.globl _PKTLEN
	.globl _SYNC0
	.globl _SYNC1
	.globl _MDMCTRL0H
	.globl _initConfigRegisters
	.globl _initClock
	.globl _initRFStateMach
	.globl _construct_AX25_Packet
	.globl _decomm_AX25_Packet
	.globl _DMA_ISR_RX
	.globl _DMA_ISR_TX
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL0	=	0x0082
_DPH0	=	0x0083
_DPL1	=	0x0084
_DPH1	=	0x0085
_U0CSR	=	0x0086
_PCON	=	0x0087
_TCON	=	0x0088
_P0IFG	=	0x0089
_P1IFG	=	0x008a
_P2IFG	=	0x008b
_PICTL	=	0x008c
_P1IEN	=	0x008d
__SFR8E	=	0x008e
_P0INP	=	0x008f
_P1	=	0x0090
_RFIM	=	0x0091
_DPS	=	0x0092
_MPAGE	=	0x0093
__XPAGE	=	0x0093
__SFR94	=	0x0094
__SFR95	=	0x0095
__SFR96	=	0x0096
__SFR97	=	0x0097
_S0CON	=	0x0098
__SFR99	=	0x0099
_IEN2	=	0x009a
_S1CON	=	0x009b
_T2CT	=	0x009c
_T2PR	=	0x009d
_T2CTL	=	0x009e
__SFR9F	=	0x009f
_P2	=	0x00a0
_WORIRQ	=	0x00a1
_WORCTRL	=	0x00a2
_WOREVT0	=	0x00a3
_WOREVT1	=	0x00a4
_WORTIME0	=	0x00a5
_WORTIME1	=	0x00a6
__SFRA7	=	0x00a7
_IEN0	=	0x00a8
_IP0	=	0x00a9
__SFRAA	=	0x00aa
_FWT	=	0x00ab
_FADDRL	=	0x00ac
_FADDRH	=	0x00ad
_FCTL	=	0x00ae
_FWDATA	=	0x00af
__SFRB0	=	0x00b0
_ENCDI	=	0x00b1
_ENCDO	=	0x00b2
_ENCCS	=	0x00b3
_ADCCON1	=	0x00b4
_ADCCON2	=	0x00b5
_ADCCON3	=	0x00b6
__SFRB7	=	0x00b7
_IEN1	=	0x00b8
_IP1	=	0x00b9
_ADCL	=	0x00ba
_ADCH	=	0x00bb
_RNDL	=	0x00bc
_RNDH	=	0x00bd
_SLEEP	=	0x00be
__SFRBF	=	0x00bf
_IRCON	=	0x00c0
_U0DBUF	=	0x00c1
_U0BAUD	=	0x00c2
__SFRC3	=	0x00c3
_U0UCR	=	0x00c4
_U0GCR	=	0x00c5
_CLKCON	=	0x00c6
_MEMCTR	=	0x00c7
__SFRC8	=	0x00c8
_WDCTL	=	0x00c9
_T3CNT	=	0x00ca
_T3CTL	=	0x00cb
_T3CCTL0	=	0x00cc
_T3CC0	=	0x00cd
_T3CCTL1	=	0x00ce
_T3CC1	=	0x00cf
_PSW	=	0x00d0
_DMAIRQ	=	0x00d1
_DMA1CFGL	=	0x00d2
_DMA1CFGH	=	0x00d3
_DMA0CFGL	=	0x00d4
_DMA0CFGH	=	0x00d5
_DMAARM	=	0x00d6
_DMAREQ	=	0x00d7
_TIMIF	=	0x00d8
_RFD	=	0x00d9
_T1CC0L	=	0x00da
_T1CC0H	=	0x00db
_T1CC1L	=	0x00dc
_T1CC1H	=	0x00dd
_T1CC2L	=	0x00de
_T1CC2H	=	0x00df
_ACC	=	0x00e0
_RFST	=	0x00e1
_T1CNTL	=	0x00e2
_T1CNTH	=	0x00e3
_T1CTL	=	0x00e4
_T1CCTL0	=	0x00e5
_T1CCTL1	=	0x00e6
_T1CCTL2	=	0x00e7
_IRCON2	=	0x00e8
_RFIF	=	0x00e9
_T4CNT	=	0x00ea
_T4CTL	=	0x00eb
_T4CCTL0	=	0x00ec
_T4CC0	=	0x00ed
_T4CCTL1	=	0x00ee
_T4CC1	=	0x00ef
_B	=	0x00f0
_PERCFG	=	0x00f1
_ADCCFG	=	0x00f2
_P0SEL	=	0x00f3
_P1SEL	=	0x00f4
_P2SEL	=	0x00f5
_P1INP	=	0x00f6
_P2INP	=	0x00f7
_U1CSR	=	0x00f8
_U1DBUF	=	0x00f9
_U1BAUD	=	0x00fa
_U1UCR	=	0x00fb
_U1GCR	=	0x00fc
_P0DIR	=	0x00fd
_P1DIR	=	0x00fe
_P2DIR	=	0x00ff
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_RFTXRXIF	=	0x0089
_IT1	=	0x008a
_URX0IF	=	0x008b
_ADCIF	=	0x008d
_URX1IF	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_ENCIF_0	=	0x0098
_ENCIF_1	=	0x0099
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_RFTXRXIE	=	0x00a8
_ADCIE	=	0x00a9
_URX0IE	=	0x00aa
_URX1IE	=	0x00ab
_ENCIE	=	0x00ac
_STIE	=	0x00ad
_EA	=	0x00af
_DMAIE	=	0x00b8
_T1IE	=	0x00b9
_T2IE	=	0x00ba
_T3IE	=	0x00bb
_T4IE	=	0x00bc
_P0IE	=	0x00bd
_DMAIF	=	0x00c0
_T1IF	=	0x00c1
_T2IF	=	0x00c2
_T3IF	=	0x00c3
_T4IF	=	0x00c4
_P0IF	=	0x00c5
_STIF	=	0x00c7
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_T3OVFIF	=	0x00d8
_T3CH0IF	=	0x00d9
_T3CH1IF	=	0x00da
_T4OVFIF	=	0x00db
_T4CH0IF	=	0x00dc
_T4CH1IF	=	0x00dd
_OVFIM	=	0x00de
_ACC_0	=	0x00e0
_ACC_1	=	0x00e1
_ACC_2	=	0x00e2
_ACC_3	=	0x00e3
_ACC_4	=	0x00e4
_ACC_5	=	0x00e5
_ACC_6	=	0x00e6
_ACC_7	=	0x00e7
_P2IF	=	0x00e8
_UTX0IF	=	0x00e9
_UTX1IF	=	0x00ea
_P1IF	=	0x00eb
_WDTIF	=	0x00ec
_B_0	=	0x00f0
_B_1	=	0x00f1
_B_2	=	0x00f2
_B_3	=	0x00f3
_B_4	=	0x00f4
_B_5	=	0x00f5
_B_6	=	0x00f6
_B_7	=	0x00f7
_ACTIVE	=	0x00f8
_TX_BYTE	=	0x00f9
_RX_BYTE	=	0x00fa
_ERR	=	0x00fb
_FE	=	0x00fc
_SLAVE	=	0x00fd
_RE	=	0x00fe
_MODE	=	0x00ff
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_construct_AX25_Packet_frame_1_65:
	.ds 3
_construct_AX25_Packet_new_Frame_Ptr_1_66:
	.ds 3
_decomm_AX25_Packet_frame_1_67:
	.ds 3
_decomm_AX25_Packet_dataFrame_1_68:
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_MDMCTRL0H	=	0xdf02
_SYNC1	=	0xdf00
_SYNC0	=	0xdf01
_PKTLEN	=	0xdf02
_PKTCTRL1	=	0xdf03
_PKTCTRL0	=	0xdf04
_ADDR	=	0xdf05
_CHANNR	=	0xdf06
_FSCTRL1	=	0xdf07
_FSCTRL0	=	0xdf08
_FREQ2	=	0xdf09
_FREQ1	=	0xdf0a
_FREQ0	=	0xdf0b
_MDMCFG4	=	0xdf0c
_MDMCFG3	=	0xdf0d
_MDMCFG2	=	0xdf0e
_MDMCFG1	=	0xdf0f
_MDMCFG0	=	0xdf10
_DEVIATN	=	0xdf11
_MCSM2	=	0xdf12
_MCSM1	=	0xdf13
_MCSM0	=	0xdf14
_FOCCFG	=	0xdf15
_BSCFG	=	0xdf16
_AGCCTRL2	=	0xdf17
_AGCCTRL1	=	0xdf18
_AGCCTRL0	=	0xdf19
_FREND1	=	0xdf1a
_FREND0	=	0xdf1b
_FSCAL3	=	0xdf1c
_FSCAL2	=	0xdf1d
_FSCAL1	=	0xdf1e
_FSCAL0	=	0xdf1f
__XREGDF20	=	0xdf20
__XREGDF21	=	0xdf21
__XREGDF22	=	0xdf22
_TEST2	=	0xdf23
_TEST1	=	0xdf24
_TEST0	=	0xdf25
__XREGDF26	=	0xdf26
_PA_TABLE7	=	0xdf27
_PA_TABLE6	=	0xdf28
_PA_TABLE5	=	0xdf29
_PA_TABLE4	=	0xdf2a
_PA_TABLE3	=	0xdf2b
_PA_TABLE2	=	0xdf2c
_PA_TABLE1	=	0xdf2d
_PA_TABLE0	=	0xdf2e
_IOCFG2	=	0xdf2f
_IOCFG1	=	0xdf30
_IOCFG0	=	0xdf31
__XREGDF32	=	0xdf32
__XREGDF33	=	0xdf33
__XREGDF34	=	0xdf34
__XREGDF35	=	0xdf35
_PARTNUM	=	0xdf36
_VERSION	=	0xdf37
_FREQEST	=	0xdf38
_LQI	=	0xdf39
_RSSI	=	0xdf3a
_MARCSTATE	=	0xdf3b
_PKTSTATUS	=	0xdf3c
_VCO_VC_DAC	=	0xdf3d
_I2SCFG0	=	0xdf40
_I2SCFG1	=	0xdf41
_I2SDATL	=	0xdf42
_I2SDATH	=	0xdf43
_I2SWCNT	=	0xdf44
_I2SSTAT	=	0xdf45
_I2SCLKF0	=	0xdf46
_I2SCLKF1	=	0xdf47
_I2SCLKF2	=	0xdf48
__NA_P0	=	0xdf80
__NA_SP	=	0xdf81
__NA_DPL0	=	0xdf82
__NA_DPH0	=	0xdf83
__NA_DPL1	=	0xdf84
__NA_DPH1	=	0xdf85
_X_U0CSR	=	0xdf86
__NA_PCON	=	0xdf87
__NA_TCON	=	0xdf88
_X_P0IFG	=	0xdf89
_X_P1IFG	=	0xdf8a
_X_P2IFG	=	0xdf8b
_X_PICTL	=	0xdf8c
_X_P1IEN	=	0xdf8d
__X_SFR8E	=	0xdf8e
_X_P0INP	=	0xdf8f
__NA_P1	=	0xdf90
_X_RFIM	=	0xdf91
__NA_DPS	=	0xdf92
_X_MPAGE	=	0xdf93
__X_SFR94	=	0xdf94
__X_SFR95	=	0xdf95
__X_SFR96	=	0xdf96
__X_SFR97	=	0xdf97
__NA_S0CON	=	0xdf98
__X_SFR99	=	0xdf99
__NA_IEN2	=	0xdf9a
__NA_S1CON	=	0xdf9b
_X_T2CT	=	0xdf9c
_X_T2PR	=	0xdf9d
_X_T2CTL	=	0xdf9e
__X_SFR9F	=	0xdf9f
__NA_P2	=	0xdfa0
_X_WORIRQ	=	0xdfa1
_X_WORCTRL	=	0xdfa2
_X_WOREVT0	=	0xdfa3
_X_WOREVT1	=	0xdfa4
_X_WORTIME0	=	0xdfa5
_X_WORTIME1	=	0xdfa6
__X_SFRA7	=	0xdfa7
__NA_IEN0	=	0xdfa8
__NA_IP0	=	0xdfa9
__X_SFRAA	=	0xdfaa
_X_FWT	=	0xdfab
_X_FADDRL	=	0xdfac
_X_FADDRH	=	0xdfad
_X_FCTL	=	0xdfae
_X_FWDATA	=	0xdfaf
__X_SFRB0	=	0xdfb0
_X_ENCDI	=	0xdfb1
_X_ENCDO	=	0xdfb2
_X_ENCCS	=	0xdfb3
_X_ADCCON1	=	0xdfb4
_X_ADCCON2	=	0xdfb5
_X_ADCCON3	=	0xdfb6
__X_SFRB7	=	0xdfb7
__NA_IEN1	=	0xdfb8
__NA_IP1	=	0xdfb9
_X_ADCL	=	0xdfba
_X_ADCH	=	0xdfbb
_X_RNDL	=	0xdfbc
_X_RNDH	=	0xdfbd
_X_SLEEP	=	0xdfbe
__X_SFRBF	=	0xdfbf
__NA_IRCON	=	0xdfc0
_X_U0DBUF	=	0xdfc1
_X_U0BAUD	=	0xdfc2
__X_SFRC3	=	0xdfc3
_X_U0UCR	=	0xdfc4
_X_U0GCR	=	0xdfc5
_X_CLKCON	=	0xdfc6
_X_MEMCTR	=	0xdfc7
__X_SFRC8	=	0xdfc8
_X_WDCTL	=	0xdfc9
_X_T3CNT	=	0xdfca
_X_T3CTL	=	0xdfcb
_X_T3CCTL0	=	0xdfcc
_X_T3CC0	=	0xdfcd
_X_T3CCTL1	=	0xdfce
_X_T3CC1	=	0xdfcf
__NA_PSW	=	0xdfd0
_X_DMAIRQ	=	0xdfd1
_X_DMA1CFGL	=	0xdfd2
_X_DMA1CFGH	=	0xdfd3
_X_DMA0CFGL	=	0xdfd4
_X_DMA0CFGH	=	0xdfd5
_X_DMAARM	=	0xdfd6
_X_DMAREQ	=	0xdfd7
_X_TIMIF	=	0xdfd8
_X_RFD	=	0xdfd9
_X_T1CC0L	=	0xdfda
_X_T1CC0H	=	0xdfdb
_X_T1CC1L	=	0xdfdc
_X_T1CC1H	=	0xdfdd
_X_T1CC2L	=	0xdfde
_X_T1CC2H	=	0xdfdf
__NA_ACC	=	0xdfe0
_X_RFST	=	0xdfe1
_X_T1CNTL	=	0xdfe2
_X_T1CNTH	=	0xdfe3
_X_T1CTL	=	0xdfe4
_X_T1CCTL0	=	0xdfe5
_X_T1CCTL1	=	0xdfe6
_X_T1CCTL2	=	0xdfe7
__NA_IRCON2	=	0xdfe8
_X_RFIF	=	0xdfe9
_X_T4CNT	=	0xdfea
_X_T4CTL	=	0xdfeb
_X_T4CCTL0	=	0xdfec
_X_T4CC0	=	0xdfed
_X_T4CCTL1	=	0xdfee
_X_T4CC1	=	0xdfef
__NA_B	=	0xdff0
_X_PERCFG	=	0xdff1
_X_ADCCFG	=	0xdff2
_X_P0SEL	=	0xdff3
_X_P1SEL	=	0xdff4
_X_P2SEL	=	0xdff5
_X_P1INP	=	0xdff6
_X_P2INP	=	0xdff7
_X_U1CSR	=	0xdff8
_X_U1DBUF	=	0xdff9
_X_U1BAUD	=	0xdffa
_X_U1UCR	=	0xdffb
_X_U1GCR	=	0xdffc
_X_P0DIR	=	0xdffd
_X_P1DIR	=	0xdffe
_X_P2DIR	=	0xdfff
_uartDmaRxTxCh	=	0xf228
_uartRxIndex	=	0xf226
_uartTxIndex	=	0xf227
_uartRxBuffer	=	0xf000
_uartTxBuffer	=	0xf113
_uartProtConfig	=	0xf237
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_DMA_ISR_RX
	.ds	5
	ljmp	_DMA_ISR_TX
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	Radio.c:35: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	Radio.c:38: initConfigRegisters();
	lcall	_initConfigRegisters
;	Radio.c:39: initClock();
	lcall	_initClock
;	Radio.c:40: initRFStateMach();
	lcall	_initRFStateMach
;	Radio.c:43: while(1)
00102$:
;	Radio.c:48: }
	sjmp	00102$
;------------------------------------------------------------
;Allocation info for local variables in function 'initConfigRegisters'
;------------------------------------------------------------
;	Radio.c:60: void initConfigRegisters(void)
;	-----------------------------------------
;	 function initConfigRegisters
;	-----------------------------------------
_initConfigRegisters:
;	Radio.c:63: PKTCTRL0  = 0x04; //Packet control register
	mov	dptr,#_PKTCTRL0
	mov	a,#0x04
	movx	@dptr,a
;	Radio.c:64: PKTCTRL1  = 0x00; //Packet control register
	mov	dptr,#_PKTCTRL1
	clr	a
	movx	@dptr,a
;	Radio.c:65: FSCTRL1   = 0x06; //Frequency synthesizer control register
	mov	dptr,#_FSCTRL1
	mov	a,#0x06
	movx	@dptr,a
;	Radio.c:66: FREQ2     = 0x10; //Frequency control word, high byte
	mov	dptr,#_FREQ2
	mov	a,#0x10
	movx	@dptr,a
;	Radio.c:67: FREQ1     = 0xCE; //Frequency control word, middle byte
	mov	dptr,#_FREQ1
	mov	a,#0xce
	movx	@dptr,a
;	Radio.c:68: FREQ0     = 0xC4; //Frequency control word, low byte
	mov	dptr,#_FREQ0
	mov	a,#0xc4
	movx	@dptr,a
;	Radio.c:69: MDMCFG4   = 0xF5; //Modem configuration
	mov	dptr,#_MDMCFG4
	mov	a,#0xf5
	movx	@dptr,a
;	Radio.c:70: MDMCFG3   = 0x83; //Modem configuration
	mov	dptr,#_MDMCFG3
	mov	a,#0x83
	movx	@dptr,a
;	Radio.c:71: MDMCFG2   = 0x03; //Modem configuration
	mov	dptr,#_MDMCFG2
	mov	a,#0x03
	movx	@dptr,a
;	Radio.c:72: DEVIATN   = 0x15; //Modem deviation setting
	mov	dptr,#_DEVIATN
	mov	a,#0x15
	movx	@dptr,a
;	Radio.c:73: MCSM0	  = 0x18; //Main radio control state machine configuration
	mov	dptr,#_MCSM0
	mov	a,#0x18
	movx	@dptr,a
;	Radio.c:74: FOCCFG    = 0x17; //Frequency offset compensation configuration
	mov	dptr,#_FOCCFG
	dec	a
	movx	@dptr,a
;	Radio.c:75: FSCAL3    = 0xE9; //Frequency synthesizer calibration
	mov	dptr,#_FSCAL3
	mov	a,#0xe9
	movx	@dptr,a
;	Radio.c:76: FSCAL2    = 0x2A; //Frequency synthesizer calibration
	mov	dptr,#_FSCAL2
	mov	a,#0x2a
	movx	@dptr,a
;	Radio.c:77: FSCAL1    = 0x00; //Frequency synthesizer calibration
	mov	dptr,#_FSCAL1
	clr	a
	movx	@dptr,a
;	Radio.c:78: FSCAL0    = 0x1F; //Frequency synthesizer calibration
	mov	dptr,#_FSCAL0
	mov	a,#0x1f
	movx	@dptr,a
;	Radio.c:79: TEST1     = 0x31; //Various test settings
	mov	dptr,#_TEST1
	mov	a,#0x31
	movx	@dptr,a
;	Radio.c:80: TEST0     = 0x09; //Various test settings
	mov	dptr,#_TEST0
	mov	a,#0x09
	movx	@dptr,a
;	Radio.c:81: PA_TABLE0 = 0x60; //PA power setting 0
	mov	dptr,#_PA_TABLE0
	mov	a,#0x60
	movx	@dptr,a
;	Radio.c:82: IOCFG0    = 0x06; //Radio test signal configuration (P1_5)
	mov	dptr,#_IOCFG0
	swap	a
	movx	@dptr,a
;	Radio.c:83: PKTLEN    = 2;	  //Packet length
	mov	dptr,#_PKTLEN
	mov	a,#0x02
	movx	@dptr,a
;	Radio.c:85: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'initClock'
;------------------------------------------------------------
;	Radio.c:97: void initClock(void)
;	-----------------------------------------
;	 function initClock
;	-----------------------------------------
_initClock:
;	Radio.c:100: CLKCON &= ~0x40;
	anl	_CLKCON,#0xbf
;	Radio.c:102: while(CLKCON & 0x40);
00101$:
	mov	r6,_CLKCON
	mov	r7,#0x00
	mov	a,r6
	jb	acc.6,00101$
;	Radio.c:103: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'initRFStateMach'
;------------------------------------------------------------
;	Radio.c:115: void initRFStateMach(void)
;	-----------------------------------------
;	 function initRFStateMach
;	-----------------------------------------
_initRFStateMach:
;	Radio.c:118: RFST = SIDLE;
	mov	_RFST,#0x04
;	Radio.c:121: RFST = SCAL; //Note MCSM0 register is set to auto-calibrate freq. synt.
	mov	_RFST,#0x01
;	Radio.c:125: RFTXRXIF = 0;
;	assignBit
	clr	_RFTXRXIF
;	Radio.c:126: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'construct_AX25_Packet'
;------------------------------------------------------------
;frame                     Allocated with name '_construct_AX25_Packet_frame_1_65'
;ts_Ind                    Allocated to registers 
;new_Frame_Ptr             Allocated with name '_construct_AX25_Packet_new_Frame_Ptr_1_66'
;------------------------------------------------------------
;	Radio.c:140: AX25_Frame* construct_AX25_Packet(Data_Frame* frame)
;	-----------------------------------------
;	 function construct_AX25_Packet
;	-----------------------------------------
_construct_AX25_Packet:
	mov	_construct_AX25_Packet_frame_1_65,dpl
	mov	(_construct_AX25_Packet_frame_1_65 + 1),dph
	mov	(_construct_AX25_Packet_frame_1_65 + 2),b
;	Radio.c:144: AX25_Frame* new_Frame_Ptr           = (AX25_Frame *)malloc(sizeof(AX25_Frame));
	mov	dptr,#0x011a
	lcall	_malloc
	mov	r3,dpl
	mov	r4,dph
	mov	_construct_AX25_Packet_new_Frame_Ptr_1_66,r3
	mov	(_construct_AX25_Packet_new_Frame_Ptr_1_66 + 1),r4
	mov	(_construct_AX25_Packet_new_Frame_Ptr_1_66 + 2),#0x00
;	Radio.c:147: new_Frame_Ptr->frame_Start          = AX25_FRAME_START;
	mov	dpl,_construct_AX25_Packet_new_Frame_Ptr_1_66
	mov	dph,(_construct_AX25_Packet_new_Frame_Ptr_1_66 + 1)
	mov	b,(_construct_AX25_Packet_new_Frame_Ptr_1_66 + 2)
	mov	a,#0xfe
	lcall	__gptrput
;	Radio.c:150: memcpy(new_Frame_Ptr->src_Addr, frame->src_Addr, sizeof(frame->src_Addr));
	mov	a,#0x08
	add	a,_construct_AX25_Packet_new_Frame_Ptr_1_66
	mov	r0,a
	clr	a
	addc	a,(_construct_AX25_Packet_new_Frame_Ptr_1_66 + 1)
	mov	r1,a
	mov	r7,(_construct_AX25_Packet_new_Frame_Ptr_1_66 + 2)
	mov	a,#0x02
	add	a,_construct_AX25_Packet_frame_1_65
	mov	r4,a
	mov	a,#0x01
	addc	a,(_construct_AX25_Packet_frame_1_65 + 1)
	mov	r5,a
	mov	r6,(_construct_AX25_Packet_frame_1_65 + 2)
	mov	_memcpy_PARM_2,r4
	mov	(_memcpy_PARM_2 + 1),r5
	mov	(_memcpy_PARM_2 + 2),r6
	mov	_memcpy_PARM_3,#0x07
	mov	(_memcpy_PARM_3 + 1),#0x00
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	lcall	_memcpy
;	Radio.c:151: memcpy(new_Frame_Ptr->dest_Addr, frame->dest_Addr, sizeof(frame->dest_Addr));
	mov	a,#0x01
	add	a,_construct_AX25_Packet_new_Frame_Ptr_1_66
	mov	r5,a
	clr	a
	addc	a,(_construct_AX25_Packet_new_Frame_Ptr_1_66 + 1)
	mov	r6,a
	mov	r7,(_construct_AX25_Packet_new_Frame_Ptr_1_66 + 2)
	mov	a,#0xfb
	add	a,_construct_AX25_Packet_frame_1_65
	mov	r2,a
	clr	a
	addc	a,(_construct_AX25_Packet_frame_1_65 + 1)
	mov	r3,a
	mov	r4,(_construct_AX25_Packet_frame_1_65 + 2)
	mov	_memcpy_PARM_2,r2
	mov	(_memcpy_PARM_2 + 1),r3
	mov	(_memcpy_PARM_2 + 2),r4
	mov	_memcpy_PARM_3,#0x07
	mov	(_memcpy_PARM_3 + 1),#0x00
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_memcpy
;	Radio.c:154: new_Frame_Ptr->control              = AX25_CONTROL;
	mov	a,#0x0f
	add	a,_construct_AX25_Packet_new_Frame_Ptr_1_66
	mov	r5,a
	clr	a
	addc	a,(_construct_AX25_Packet_new_Frame_Ptr_1_66 + 1)
	mov	r6,a
	mov	r7,(_construct_AX25_Packet_new_Frame_Ptr_1_66 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x03
	lcall	__gptrput
;	Radio.c:155: new_Frame_Ptr->proto_Ident          = AX25_PROTO_IDENT;
	mov	a,#0x10
	add	a,_construct_AX25_Packet_new_Frame_Ptr_1_66
	mov	r5,a
	clr	a
	addc	a,(_construct_AX25_Packet_new_Frame_Ptr_1_66 + 1)
	mov	r6,a
	mov	r7,(_construct_AX25_Packet_new_Frame_Ptr_1_66 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0xf0
	lcall	__gptrput
;	Radio.c:156: new_Frame_Ptr->frame_ID             = AX25_FRAME_ID;
	mov	a,#0x11
	add	a,_construct_AX25_Packet_new_Frame_Ptr_1_66
	mov	r5,a
	clr	a
	addc	a,(_construct_AX25_Packet_new_Frame_Ptr_1_66 + 1)
	mov	r6,a
	mov	r7,(_construct_AX25_Packet_new_Frame_Ptr_1_66 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	Radio.c:159: new_Frame_Ptr->master_Frame_Count   = frame->master_Frame_Count;
	mov	a,#0x12
	add	a,_construct_AX25_Packet_new_Frame_Ptr_1_66
	mov	r5,a
	clr	a
	addc	a,(_construct_AX25_Packet_new_Frame_Ptr_1_66 + 1)
	mov	r6,a
	mov	r7,(_construct_AX25_Packet_new_Frame_Ptr_1_66 + 2)
	mov	a,#0x09
	add	a,_construct_AX25_Packet_frame_1_65
	mov	r2,a
	mov	a,#0x01
	addc	a,(_construct_AX25_Packet_frame_1_65 + 1)
	mov	r3,a
	mov	r4,(_construct_AX25_Packet_frame_1_65 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	Radio.c:160: new_Frame_Ptr->vc_Frame_Count       = frame->vc_Frame_Count;
	mov	a,#0x13
	add	a,_construct_AX25_Packet_new_Frame_Ptr_1_66
	mov	r5,a
	clr	a
	addc	a,(_construct_AX25_Packet_new_Frame_Ptr_1_66 + 1)
	mov	r6,a
	mov	r7,(_construct_AX25_Packet_new_Frame_Ptr_1_66 + 2)
	mov	a,#0x0a
	add	a,_construct_AX25_Packet_frame_1_65
	mov	r2,a
	mov	a,#0x01
	addc	a,(_construct_AX25_Packet_frame_1_65 + 1)
	mov	r3,a
	mov	r4,(_construct_AX25_Packet_frame_1_65 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	Radio.c:161: new_Frame_Ptr->first_Header_Pointer = AX25_1ST_HEADER_PTR;
	mov	a,#0x14
	add	a,_construct_AX25_Packet_new_Frame_Ptr_1_66
	mov	r5,a
	clr	a
	addc	a,(_construct_AX25_Packet_new_Frame_Ptr_1_66 + 1)
	mov	r6,a
	mov	r7,(_construct_AX25_Packet_new_Frame_Ptr_1_66 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0xfe
	lcall	__gptrput
;	Radio.c:164: memcpy(new_Frame_Ptr->data, frame->data, sizeof(frame->data));
	mov	a,#0x15
	add	a,_construct_AX25_Packet_new_Frame_Ptr_1_66
	mov	r5,a
	clr	a
	addc	a,(_construct_AX25_Packet_new_Frame_Ptr_1_66 + 1)
	mov	r6,a
	mov	r7,(_construct_AX25_Packet_new_Frame_Ptr_1_66 + 2)
	mov	r2,_construct_AX25_Packet_frame_1_65
	mov	r3,(_construct_AX25_Packet_frame_1_65 + 1)
	mov	r4,(_construct_AX25_Packet_frame_1_65 + 2)
	mov	_memcpy_PARM_2,r2
	mov	(_memcpy_PARM_2 + 1),r3
	mov	(_memcpy_PARM_2 + 2),r4
	mov	_memcpy_PARM_3,#0xfb
	mov	(_memcpy_PARM_3 + 1),#0x00
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_memcpy
;	Radio.c:167: new_Frame_Ptr->frame_Status         = 0xF0;
	mov	a,#0x10
	add	a,_construct_AX25_Packet_new_Frame_Ptr_1_66
	mov	r5,a
	mov	a,#0x01
	addc	a,(_construct_AX25_Packet_new_Frame_Ptr_1_66 + 1)
	mov	r6,a
	mov	r7,(_construct_AX25_Packet_new_Frame_Ptr_1_66 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0xf0
	lcall	__gptrput
;	Radio.c:170: memcpy(new_Frame_Ptr->time_Stamp, frame->time_Stamp, sizeof(frame->time_Stamp));	
	mov	a,#0x11
	add	a,_construct_AX25_Packet_new_Frame_Ptr_1_66
	mov	r5,a
	mov	a,#0x01
	addc	a,(_construct_AX25_Packet_new_Frame_Ptr_1_66 + 1)
	mov	r6,a
	mov	r7,(_construct_AX25_Packet_new_Frame_Ptr_1_66 + 2)
	mov	a,#0x0b
	add	a,_construct_AX25_Packet_frame_1_65
	mov	r2,a
	mov	a,#0x01
	addc	a,(_construct_AX25_Packet_frame_1_65 + 1)
	mov	r3,a
	mov	r4,(_construct_AX25_Packet_frame_1_65 + 2)
	mov	_memcpy_PARM_2,r2
	mov	(_memcpy_PARM_2 + 1),r3
	mov	(_memcpy_PARM_2 + 2),r4
	mov	_memcpy_PARM_3,#0x08
	mov	(_memcpy_PARM_3 + 1),#0x00
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_memcpy
;	Radio.c:173: new_Frame_Ptr->frame_End            = AX25_FRAME_END;
	mov	a,#0x19
	add	a,_construct_AX25_Packet_new_Frame_Ptr_1_66
	mov	r5,a
	mov	a,#0x01
	addc	a,(_construct_AX25_Packet_new_Frame_Ptr_1_66 + 1)
	mov	r6,a
	mov	r7,(_construct_AX25_Packet_new_Frame_Ptr_1_66 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0xfe
	lcall	__gptrput
;	Radio.c:175: return new_Frame_Ptr;
	mov	dpl,_construct_AX25_Packet_new_Frame_Ptr_1_66
	mov	dph,(_construct_AX25_Packet_new_Frame_Ptr_1_66 + 1)
	mov	b,(_construct_AX25_Packet_new_Frame_Ptr_1_66 + 2)
;	Radio.c:176: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'decomm_AX25_Packet'
;------------------------------------------------------------
;frame                     Allocated with name '_decomm_AX25_Packet_frame_1_67'
;dataFrame                 Allocated with name '_decomm_AX25_Packet_dataFrame_1_68'
;------------------------------------------------------------
;	Radio.c:188: Data_Frame* decomm_AX25_Packet(AX25_Frame *frame)
;	-----------------------------------------
;	 function decomm_AX25_Packet
;	-----------------------------------------
_decomm_AX25_Packet:
	mov	_decomm_AX25_Packet_frame_1_67,dpl
	mov	(_decomm_AX25_Packet_frame_1_67 + 1),dph
	mov	(_decomm_AX25_Packet_frame_1_67 + 2),b
;	Radio.c:191: Data_Frame* dataFrame = (Data_Frame *) malloc (sizeof(Data_Frame));
	mov	dptr,#0x0113
	lcall	_malloc
	mov	r3,dpl
	mov	r4,dph
	mov	_decomm_AX25_Packet_dataFrame_1_68,r3
	mov	(_decomm_AX25_Packet_dataFrame_1_68 + 1),r4
	mov	(_decomm_AX25_Packet_dataFrame_1_68 + 2),#0x00
;	Radio.c:194: memcpy(dataFrame->data, frame->data, sizeof(frame->data));
	mov	r0,_decomm_AX25_Packet_dataFrame_1_68
	mov	r1,(_decomm_AX25_Packet_dataFrame_1_68 + 1)
	mov	r4,(_decomm_AX25_Packet_dataFrame_1_68 + 2)
	mov	a,#0x15
	add	a,_decomm_AX25_Packet_frame_1_67
	mov	r2,a
	clr	a
	addc	a,(_decomm_AX25_Packet_frame_1_67 + 1)
	mov	r3,a
	mov	r7,(_decomm_AX25_Packet_frame_1_67 + 2)
	mov	_memcpy_PARM_2,r2
	mov	(_memcpy_PARM_2 + 1),r3
	mov	(_memcpy_PARM_2 + 2),r7
	mov	_memcpy_PARM_3,#0xfb
	mov	(_memcpy_PARM_3 + 1),#0x00
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	_memcpy
;	Radio.c:197: memcpy(dataFrame->dest_Addr, frame->dest_Addr, sizeof(frame->dest_Addr));
	mov	a,#0xfb
	add	a,_decomm_AX25_Packet_dataFrame_1_68
	mov	r5,a
	clr	a
	addc	a,(_decomm_AX25_Packet_dataFrame_1_68 + 1)
	mov	r6,a
	mov	r7,(_decomm_AX25_Packet_dataFrame_1_68 + 2)
	mov	a,#0x01
	add	a,_decomm_AX25_Packet_frame_1_67
	mov	r2,a
	clr	a
	addc	a,(_decomm_AX25_Packet_frame_1_67 + 1)
	mov	r3,a
	mov	r4,(_decomm_AX25_Packet_frame_1_67 + 2)
	mov	_memcpy_PARM_2,r2
	mov	(_memcpy_PARM_2 + 1),r3
	mov	(_memcpy_PARM_2 + 2),r4
	mov	_memcpy_PARM_3,#0x07
	mov	(_memcpy_PARM_3 + 1),#0x00
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_memcpy
;	Radio.c:200: memcpy(dataFrame->src_Addr, frame->src_Addr, sizeof(frame->src_Addr));
	mov	a,#0x02
	add	a,_decomm_AX25_Packet_dataFrame_1_68
	mov	r5,a
	mov	a,#0x01
	addc	a,(_decomm_AX25_Packet_dataFrame_1_68 + 1)
	mov	r6,a
	mov	r7,(_decomm_AX25_Packet_dataFrame_1_68 + 2)
	mov	a,#0x08
	add	a,_decomm_AX25_Packet_frame_1_67
	mov	r2,a
	clr	a
	addc	a,(_decomm_AX25_Packet_frame_1_67 + 1)
	mov	r3,a
	mov	r4,(_decomm_AX25_Packet_frame_1_67 + 2)
	mov	_memcpy_PARM_2,r2
	mov	(_memcpy_PARM_2 + 1),r3
	mov	(_memcpy_PARM_2 + 2),r4
	mov	_memcpy_PARM_3,#0x07
	mov	(_memcpy_PARM_3 + 1),#0x00
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_memcpy
;	Radio.c:203: dataFrame->master_Frame_Count = frame->master_Frame_Count;	
	mov	a,#0x09
	add	a,_decomm_AX25_Packet_dataFrame_1_68
	mov	r5,a
	mov	a,#0x01
	addc	a,(_decomm_AX25_Packet_dataFrame_1_68 + 1)
	mov	r6,a
	mov	r7,(_decomm_AX25_Packet_dataFrame_1_68 + 2)
	mov	a,#0x12
	add	a,_decomm_AX25_Packet_frame_1_67
	mov	r2,a
	clr	a
	addc	a,(_decomm_AX25_Packet_frame_1_67 + 1)
	mov	r3,a
	mov	r4,(_decomm_AX25_Packet_frame_1_67 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	Radio.c:204: dataFrame->vc_Frame_Count = frame->vc_Frame_Count;	
	mov	a,#0x0a
	add	a,_decomm_AX25_Packet_dataFrame_1_68
	mov	r5,a
	mov	a,#0x01
	addc	a,(_decomm_AX25_Packet_dataFrame_1_68 + 1)
	mov	r6,a
	mov	r7,(_decomm_AX25_Packet_dataFrame_1_68 + 2)
	mov	a,#0x13
	add	a,_decomm_AX25_Packet_frame_1_67
	mov	r2,a
	clr	a
	addc	a,(_decomm_AX25_Packet_frame_1_67 + 1)
	mov	r3,a
	mov	r4,(_decomm_AX25_Packet_frame_1_67 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
;	Radio.c:207: memcpy(dataFrame->time_Stamp, frame->time_Stamp, sizeof(uint8) * 8);	
	mov	a,#0x0b
	add	a,_decomm_AX25_Packet_dataFrame_1_68
	mov	r5,a
	mov	a,#0x01
	addc	a,(_decomm_AX25_Packet_dataFrame_1_68 + 1)
	mov	r6,a
	mov	r7,(_decomm_AX25_Packet_dataFrame_1_68 + 2)
	mov	a,#0x11
	add	a,_decomm_AX25_Packet_frame_1_67
	mov	r2,a
	mov	a,#0x01
	addc	a,(_decomm_AX25_Packet_frame_1_67 + 1)
	mov	r3,a
	mov	r4,(_decomm_AX25_Packet_frame_1_67 + 2)
	mov	_memcpy_PARM_2,r2
	mov	(_memcpy_PARM_2 + 1),r3
	mov	(_memcpy_PARM_2 + 2),r4
	mov	_memcpy_PARM_3,#0x08
	mov	(_memcpy_PARM_3 + 1),#0x00
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_memcpy
;	Radio.c:210: free(frame);
	mov	r5,_decomm_AX25_Packet_frame_1_67
	mov	r6,(_decomm_AX25_Packet_frame_1_67 + 1)
	mov	r7,(_decomm_AX25_Packet_frame_1_67 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_free
;	Radio.c:212: return dataFrame;	
	mov	dpl,_decomm_AX25_Packet_dataFrame_1_68
	mov	dph,(_decomm_AX25_Packet_dataFrame_1_68 + 1)
	mov	b,(_decomm_AX25_Packet_dataFrame_1_68 + 2)
;	Radio.c:213: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DMA_ISR_RX'
;------------------------------------------------------------
;	Radio.c:230: void DMA_ISR_RX(void) __interrupt (1)
;	-----------------------------------------
;	 function DMA_ISR_RX
;	-----------------------------------------
_DMA_ISR_RX:
	push	acc
	push	ar7
	push	ar6
	push	psw
	mov	psw,#0x00
;	Radio.c:232: IRCON &= ~0x01;
	anl	_IRCON,#0xfe
;	Radio.c:234: if(DMAIRQ & 0x01)
	mov	r6,_DMAIRQ
	mov	r7,#0x00
	mov	a,r6
	jnb	acc.0,00103$
;	Radio.c:239: DMAIRQ &= ~0x01;
	anl	_DMAIRQ,#0xfe
;	Radio.c:240: DMAARM |= 0x01;
	mov	r6,_DMAARM
	mov	r7,#0x00
	orl	ar6,#0x01
	mov	_DMAARM,r6
00103$:
;	Radio.c:242: }
	pop	psw
	pop	ar6
	pop	ar7
	pop	acc
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'DMA_ISR_TX'
;------------------------------------------------------------
;	Radio.c:260: void DMA_ISR_TX(void) __interrupt (2)
;	-----------------------------------------
;	 function DMA_ISR_TX
;	-----------------------------------------
_DMA_ISR_TX:
	push	acc
	push	dpl
	push	dph
	push	ar7
	push	ar6
	push	psw
	mov	psw,#0x00
;	Radio.c:262: IRCON &= ~0x01;
	anl	_IRCON,#0xfe
;	Radio.c:263: if(DMAIRQ &0x02) 
	mov	r6,_DMAIRQ
	mov	r7,#0x00
	mov	a,r6
	jnb	acc.1,00106$
;	Radio.c:265: DMAIRQ &= ~0x02;
	anl	_DMAIRQ,#0xfd
;	Radio.c:272: DMAARM |=0x02;
	mov	r6,_DMAARM
	mov	r7,#0x00
	orl	ar6,#0x02
	mov	_DMAARM,r6
;	Radio.c:273: if(uartProtConfig.uartNum ==0) 
	mov	dptr,#_uartProtConfig
	movx	a,@dptr
	jb	acc.0,00102$
;	Radio.c:275: U0DBUF = uartTxBuffer[0];
	mov	dptr,#_uartTxBuffer
	movx	a,@dptr
	mov	_U0DBUF,a
	sjmp	00106$
00102$:
;	Radio.c:279: U1DBUF = uartTxBuffer[0];
	mov	dptr,#_uartTxBuffer
	movx	a,@dptr
	mov	_U1DBUF,a
00106$:
;	Radio.c:282: }
	pop	psw
	pop	ar6
	pop	ar7
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded push/pop b
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
