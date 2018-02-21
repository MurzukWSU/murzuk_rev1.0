                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.9 #10185 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module dma
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _uartStartTxDmaChan_PARM_5
                                     12 	.globl _uartStartTxDmaChan_PARM_4
                                     13 	.globl _uartStartTxDmaChan_PARM_3
                                     14 	.globl _uartStartTxDmaChan_PARM_2
                                     15 	.globl _uartStartRxDmaChan_PARM_5
                                     16 	.globl _uartStartRxDmaChan_PARM_4
                                     17 	.globl _uartStartRxDmaChan_PARM_3
                                     18 	.globl _uartStartRxDmaChan_PARM_2
                                     19 	.globl _MODE
                                     20 	.globl _RE
                                     21 	.globl _SLAVE
                                     22 	.globl _FE
                                     23 	.globl _ERR
                                     24 	.globl _RX_BYTE
                                     25 	.globl _TX_BYTE
                                     26 	.globl _ACTIVE
                                     27 	.globl _B_7
                                     28 	.globl _B_6
                                     29 	.globl _B_5
                                     30 	.globl _B_4
                                     31 	.globl _B_3
                                     32 	.globl _B_2
                                     33 	.globl _B_1
                                     34 	.globl _B_0
                                     35 	.globl _WDTIF
                                     36 	.globl _P1IF
                                     37 	.globl _UTX1IF
                                     38 	.globl _UTX0IF
                                     39 	.globl _P2IF
                                     40 	.globl _ACC_7
                                     41 	.globl _ACC_6
                                     42 	.globl _ACC_5
                                     43 	.globl _ACC_4
                                     44 	.globl _ACC_3
                                     45 	.globl _ACC_2
                                     46 	.globl _ACC_1
                                     47 	.globl _ACC_0
                                     48 	.globl _OVFIM
                                     49 	.globl _T4CH1IF
                                     50 	.globl _T4CH0IF
                                     51 	.globl _T4OVFIF
                                     52 	.globl _T3CH1IF
                                     53 	.globl _T3CH0IF
                                     54 	.globl _T3OVFIF
                                     55 	.globl _CY
                                     56 	.globl _AC
                                     57 	.globl _F0
                                     58 	.globl _RS1
                                     59 	.globl _RS0
                                     60 	.globl _OV
                                     61 	.globl _F1
                                     62 	.globl _P
                                     63 	.globl _STIF
                                     64 	.globl _P0IF
                                     65 	.globl _T4IF
                                     66 	.globl _T3IF
                                     67 	.globl _T2IF
                                     68 	.globl _T1IF
                                     69 	.globl _DMAIF
                                     70 	.globl _P0IE
                                     71 	.globl _T4IE
                                     72 	.globl _T3IE
                                     73 	.globl _T2IE
                                     74 	.globl _T1IE
                                     75 	.globl _DMAIE
                                     76 	.globl _EA
                                     77 	.globl _STIE
                                     78 	.globl _ENCIE
                                     79 	.globl _URX1IE
                                     80 	.globl _URX0IE
                                     81 	.globl _ADCIE
                                     82 	.globl _RFTXRXIE
                                     83 	.globl _P2_7
                                     84 	.globl _P2_6
                                     85 	.globl _P2_5
                                     86 	.globl _P2_4
                                     87 	.globl _P2_3
                                     88 	.globl _P2_2
                                     89 	.globl _P2_1
                                     90 	.globl _P2_0
                                     91 	.globl _ENCIF_1
                                     92 	.globl _ENCIF_0
                                     93 	.globl _P1_7
                                     94 	.globl _P1_6
                                     95 	.globl _P1_5
                                     96 	.globl _P1_4
                                     97 	.globl _P1_3
                                     98 	.globl _P1_2
                                     99 	.globl _P1_1
                                    100 	.globl _P1_0
                                    101 	.globl _URX1IF
                                    102 	.globl _ADCIF
                                    103 	.globl _URX0IF
                                    104 	.globl _IT1
                                    105 	.globl _RFTXRXIF
                                    106 	.globl _IT0
                                    107 	.globl _P0_7
                                    108 	.globl _P0_6
                                    109 	.globl _P0_5
                                    110 	.globl _P0_4
                                    111 	.globl _P0_3
                                    112 	.globl _P0_2
                                    113 	.globl _P0_1
                                    114 	.globl _P0_0
                                    115 	.globl _P2DIR
                                    116 	.globl _P1DIR
                                    117 	.globl _P0DIR
                                    118 	.globl _U1GCR
                                    119 	.globl _U1UCR
                                    120 	.globl _U1BAUD
                                    121 	.globl _U1DBUF
                                    122 	.globl _U1CSR
                                    123 	.globl _P2INP
                                    124 	.globl _P1INP
                                    125 	.globl _P2SEL
                                    126 	.globl _P1SEL
                                    127 	.globl _P0SEL
                                    128 	.globl _ADCCFG
                                    129 	.globl _PERCFG
                                    130 	.globl _B
                                    131 	.globl _T4CC1
                                    132 	.globl _T4CCTL1
                                    133 	.globl _T4CC0
                                    134 	.globl _T4CCTL0
                                    135 	.globl _T4CTL
                                    136 	.globl _T4CNT
                                    137 	.globl _RFIF
                                    138 	.globl _IRCON2
                                    139 	.globl _T1CCTL2
                                    140 	.globl _T1CCTL1
                                    141 	.globl _T1CCTL0
                                    142 	.globl _T1CTL
                                    143 	.globl _T1CNTH
                                    144 	.globl _T1CNTL
                                    145 	.globl _RFST
                                    146 	.globl _ACC
                                    147 	.globl _T1CC2H
                                    148 	.globl _T1CC2L
                                    149 	.globl _T1CC1H
                                    150 	.globl _T1CC1L
                                    151 	.globl _T1CC0H
                                    152 	.globl _T1CC0L
                                    153 	.globl _RFD
                                    154 	.globl _TIMIF
                                    155 	.globl _DMAREQ
                                    156 	.globl _DMAARM
                                    157 	.globl _DMA0CFGH
                                    158 	.globl _DMA0CFGL
                                    159 	.globl _DMA1CFGH
                                    160 	.globl _DMA1CFGL
                                    161 	.globl _DMAIRQ
                                    162 	.globl _PSW
                                    163 	.globl _T3CC1
                                    164 	.globl _T3CCTL1
                                    165 	.globl _T3CC0
                                    166 	.globl _T3CCTL0
                                    167 	.globl _T3CTL
                                    168 	.globl _T3CNT
                                    169 	.globl _WDCTL
                                    170 	.globl __SFRC8
                                    171 	.globl _MEMCTR
                                    172 	.globl _CLKCON
                                    173 	.globl _U0GCR
                                    174 	.globl _U0UCR
                                    175 	.globl __SFRC3
                                    176 	.globl _U0BAUD
                                    177 	.globl _U0DBUF
                                    178 	.globl _IRCON
                                    179 	.globl __SFRBF
                                    180 	.globl _SLEEP
                                    181 	.globl _RNDH
                                    182 	.globl _RNDL
                                    183 	.globl _ADCH
                                    184 	.globl _ADCL
                                    185 	.globl _IP1
                                    186 	.globl _IEN1
                                    187 	.globl __SFRB7
                                    188 	.globl _ADCCON3
                                    189 	.globl _ADCCON2
                                    190 	.globl _ADCCON1
                                    191 	.globl _ENCCS
                                    192 	.globl _ENCDO
                                    193 	.globl _ENCDI
                                    194 	.globl __SFRB0
                                    195 	.globl _FWDATA
                                    196 	.globl _FCTL
                                    197 	.globl _FADDRH
                                    198 	.globl _FADDRL
                                    199 	.globl _FWT
                                    200 	.globl __SFRAA
                                    201 	.globl _IP0
                                    202 	.globl _IEN0
                                    203 	.globl __SFRA7
                                    204 	.globl _WORTIME1
                                    205 	.globl _WORTIME0
                                    206 	.globl _WOREVT1
                                    207 	.globl _WOREVT0
                                    208 	.globl _WORCTRL
                                    209 	.globl _WORIRQ
                                    210 	.globl _P2
                                    211 	.globl __SFR9F
                                    212 	.globl _T2CTL
                                    213 	.globl _T2PR
                                    214 	.globl _T2CT
                                    215 	.globl _S1CON
                                    216 	.globl _IEN2
                                    217 	.globl __SFR99
                                    218 	.globl _S0CON
                                    219 	.globl __SFR97
                                    220 	.globl __SFR96
                                    221 	.globl __SFR95
                                    222 	.globl __SFR94
                                    223 	.globl __XPAGE
                                    224 	.globl _MPAGE
                                    225 	.globl _DPS
                                    226 	.globl _RFIM
                                    227 	.globl _P1
                                    228 	.globl _P0INP
                                    229 	.globl __SFR8E
                                    230 	.globl _P1IEN
                                    231 	.globl _PICTL
                                    232 	.globl _P2IFG
                                    233 	.globl _P1IFG
                                    234 	.globl _P0IFG
                                    235 	.globl _TCON
                                    236 	.globl _PCON
                                    237 	.globl _U0CSR
                                    238 	.globl _DPH1
                                    239 	.globl _DPL1
                                    240 	.globl _DPH0
                                    241 	.globl _DPL0
                                    242 	.globl _SP
                                    243 	.globl _P0
                                    244 	.globl _X_P2DIR
                                    245 	.globl _X_P1DIR
                                    246 	.globl _X_P0DIR
                                    247 	.globl _X_U1GCR
                                    248 	.globl _X_U1UCR
                                    249 	.globl _X_U1BAUD
                                    250 	.globl _X_U1DBUF
                                    251 	.globl _X_U1CSR
                                    252 	.globl _X_P2INP
                                    253 	.globl _X_P1INP
                                    254 	.globl _X_P2SEL
                                    255 	.globl _X_P1SEL
                                    256 	.globl _X_P0SEL
                                    257 	.globl _X_ADCCFG
                                    258 	.globl _X_PERCFG
                                    259 	.globl __NA_B
                                    260 	.globl _X_T4CC1
                                    261 	.globl _X_T4CCTL1
                                    262 	.globl _X_T4CC0
                                    263 	.globl _X_T4CCTL0
                                    264 	.globl _X_T4CTL
                                    265 	.globl _X_T4CNT
                                    266 	.globl _X_RFIF
                                    267 	.globl __NA_IRCON2
                                    268 	.globl _X_T1CCTL2
                                    269 	.globl _X_T1CCTL1
                                    270 	.globl _X_T1CCTL0
                                    271 	.globl _X_T1CTL
                                    272 	.globl _X_T1CNTH
                                    273 	.globl _X_T1CNTL
                                    274 	.globl _X_RFST
                                    275 	.globl __NA_ACC
                                    276 	.globl _X_T1CC2H
                                    277 	.globl _X_T1CC2L
                                    278 	.globl _X_T1CC1H
                                    279 	.globl _X_T1CC1L
                                    280 	.globl _X_T1CC0H
                                    281 	.globl _X_T1CC0L
                                    282 	.globl _X_RFD
                                    283 	.globl _X_TIMIF
                                    284 	.globl _X_DMAREQ
                                    285 	.globl _X_DMAARM
                                    286 	.globl _X_DMA0CFGH
                                    287 	.globl _X_DMA0CFGL
                                    288 	.globl _X_DMA1CFGH
                                    289 	.globl _X_DMA1CFGL
                                    290 	.globl _X_DMAIRQ
                                    291 	.globl __NA_PSW
                                    292 	.globl _X_T3CC1
                                    293 	.globl _X_T3CCTL1
                                    294 	.globl _X_T3CC0
                                    295 	.globl _X_T3CCTL0
                                    296 	.globl _X_T3CTL
                                    297 	.globl _X_T3CNT
                                    298 	.globl _X_WDCTL
                                    299 	.globl __X_SFRC8
                                    300 	.globl _X_MEMCTR
                                    301 	.globl _X_CLKCON
                                    302 	.globl _X_U0GCR
                                    303 	.globl _X_U0UCR
                                    304 	.globl __X_SFRC3
                                    305 	.globl _X_U0BAUD
                                    306 	.globl _X_U0DBUF
                                    307 	.globl __NA_IRCON
                                    308 	.globl __X_SFRBF
                                    309 	.globl _X_SLEEP
                                    310 	.globl _X_RNDH
                                    311 	.globl _X_RNDL
                                    312 	.globl _X_ADCH
                                    313 	.globl _X_ADCL
                                    314 	.globl __NA_IP1
                                    315 	.globl __NA_IEN1
                                    316 	.globl __X_SFRB7
                                    317 	.globl _X_ADCCON3
                                    318 	.globl _X_ADCCON2
                                    319 	.globl _X_ADCCON1
                                    320 	.globl _X_ENCCS
                                    321 	.globl _X_ENCDO
                                    322 	.globl _X_ENCDI
                                    323 	.globl __X_SFRB0
                                    324 	.globl _X_FWDATA
                                    325 	.globl _X_FCTL
                                    326 	.globl _X_FADDRH
                                    327 	.globl _X_FADDRL
                                    328 	.globl _X_FWT
                                    329 	.globl __X_SFRAA
                                    330 	.globl __NA_IP0
                                    331 	.globl __NA_IEN0
                                    332 	.globl __X_SFRA7
                                    333 	.globl _X_WORTIME1
                                    334 	.globl _X_WORTIME0
                                    335 	.globl _X_WOREVT1
                                    336 	.globl _X_WOREVT0
                                    337 	.globl _X_WORCTRL
                                    338 	.globl _X_WORIRQ
                                    339 	.globl __NA_P2
                                    340 	.globl __X_SFR9F
                                    341 	.globl _X_T2CTL
                                    342 	.globl _X_T2PR
                                    343 	.globl _X_T2CT
                                    344 	.globl __NA_S1CON
                                    345 	.globl __NA_IEN2
                                    346 	.globl __X_SFR99
                                    347 	.globl __NA_S0CON
                                    348 	.globl __X_SFR97
                                    349 	.globl __X_SFR96
                                    350 	.globl __X_SFR95
                                    351 	.globl __X_SFR94
                                    352 	.globl _X_MPAGE
                                    353 	.globl __NA_DPS
                                    354 	.globl _X_RFIM
                                    355 	.globl __NA_P1
                                    356 	.globl _X_P0INP
                                    357 	.globl __X_SFR8E
                                    358 	.globl _X_P1IEN
                                    359 	.globl _X_PICTL
                                    360 	.globl _X_P2IFG
                                    361 	.globl _X_P1IFG
                                    362 	.globl _X_P0IFG
                                    363 	.globl __NA_TCON
                                    364 	.globl __NA_PCON
                                    365 	.globl _X_U0CSR
                                    366 	.globl __NA_DPH1
                                    367 	.globl __NA_DPL1
                                    368 	.globl __NA_DPH0
                                    369 	.globl __NA_DPL0
                                    370 	.globl __NA_SP
                                    371 	.globl __NA_P0
                                    372 	.globl _I2SCLKF2
                                    373 	.globl _I2SCLKF1
                                    374 	.globl _I2SCLKF0
                                    375 	.globl _I2SSTAT
                                    376 	.globl _I2SWCNT
                                    377 	.globl _I2SDATH
                                    378 	.globl _I2SDATL
                                    379 	.globl _I2SCFG1
                                    380 	.globl _I2SCFG0
                                    381 	.globl _VCO_VC_DAC
                                    382 	.globl _PKTSTATUS
                                    383 	.globl _MARCSTATE
                                    384 	.globl _RSSI
                                    385 	.globl _LQI
                                    386 	.globl _FREQEST
                                    387 	.globl _VERSION
                                    388 	.globl _PARTNUM
                                    389 	.globl __XREGDF35
                                    390 	.globl __XREGDF34
                                    391 	.globl __XREGDF33
                                    392 	.globl __XREGDF32
                                    393 	.globl _IOCFG0
                                    394 	.globl _IOCFG1
                                    395 	.globl _IOCFG2
                                    396 	.globl _PA_TABLE0
                                    397 	.globl _PA_TABLE1
                                    398 	.globl _PA_TABLE2
                                    399 	.globl _PA_TABLE3
                                    400 	.globl _PA_TABLE4
                                    401 	.globl _PA_TABLE5
                                    402 	.globl _PA_TABLE6
                                    403 	.globl _PA_TABLE7
                                    404 	.globl __XREGDF26
                                    405 	.globl _TEST0
                                    406 	.globl _TEST1
                                    407 	.globl _TEST2
                                    408 	.globl __XREGDF22
                                    409 	.globl __XREGDF21
                                    410 	.globl __XREGDF20
                                    411 	.globl _FSCAL0
                                    412 	.globl _FSCAL1
                                    413 	.globl _FSCAL2
                                    414 	.globl _FSCAL3
                                    415 	.globl _FREND0
                                    416 	.globl _FREND1
                                    417 	.globl _AGCCTRL0
                                    418 	.globl _AGCCTRL1
                                    419 	.globl _AGCCTRL2
                                    420 	.globl _BSCFG
                                    421 	.globl _FOCCFG
                                    422 	.globl _MCSM0
                                    423 	.globl _MCSM1
                                    424 	.globl _MCSM2
                                    425 	.globl _DEVIATN
                                    426 	.globl _MDMCFG0
                                    427 	.globl _MDMCFG1
                                    428 	.globl _MDMCFG2
                                    429 	.globl _MDMCFG3
                                    430 	.globl _MDMCFG4
                                    431 	.globl _FREQ0
                                    432 	.globl _FREQ1
                                    433 	.globl _FREQ2
                                    434 	.globl _FSCTRL0
                                    435 	.globl _FSCTRL1
                                    436 	.globl _CHANNR
                                    437 	.globl _ADDR
                                    438 	.globl _PKTCTRL0
                                    439 	.globl _PKTCTRL1
                                    440 	.globl _PKTLEN
                                    441 	.globl _SYNC0
                                    442 	.globl _SYNC1
                                    443 	.globl _MDMCTRL0H
                                    444 	.globl _uartStartRxDmaChan
                                    445 	.globl _uartStartTxDmaChan
                                    446 ;--------------------------------------------------------
                                    447 ; special function registers
                                    448 ;--------------------------------------------------------
                                    449 	.area RSEG    (ABS,DATA)
      000000                        450 	.org 0x0000
                           000080   451 _P0	=	0x0080
                           000081   452 _SP	=	0x0081
                           000082   453 _DPL0	=	0x0082
                           000083   454 _DPH0	=	0x0083
                           000084   455 _DPL1	=	0x0084
                           000085   456 _DPH1	=	0x0085
                           000086   457 _U0CSR	=	0x0086
                           000087   458 _PCON	=	0x0087
                           000088   459 _TCON	=	0x0088
                           000089   460 _P0IFG	=	0x0089
                           00008A   461 _P1IFG	=	0x008a
                           00008B   462 _P2IFG	=	0x008b
                           00008C   463 _PICTL	=	0x008c
                           00008D   464 _P1IEN	=	0x008d
                           00008E   465 __SFR8E	=	0x008e
                           00008F   466 _P0INP	=	0x008f
                           000090   467 _P1	=	0x0090
                           000091   468 _RFIM	=	0x0091
                           000092   469 _DPS	=	0x0092
                           000093   470 _MPAGE	=	0x0093
                           000093   471 __XPAGE	=	0x0093
                           000094   472 __SFR94	=	0x0094
                           000095   473 __SFR95	=	0x0095
                           000096   474 __SFR96	=	0x0096
                           000097   475 __SFR97	=	0x0097
                           000098   476 _S0CON	=	0x0098
                           000099   477 __SFR99	=	0x0099
                           00009A   478 _IEN2	=	0x009a
                           00009B   479 _S1CON	=	0x009b
                           00009C   480 _T2CT	=	0x009c
                           00009D   481 _T2PR	=	0x009d
                           00009E   482 _T2CTL	=	0x009e
                           00009F   483 __SFR9F	=	0x009f
                           0000A0   484 _P2	=	0x00a0
                           0000A1   485 _WORIRQ	=	0x00a1
                           0000A2   486 _WORCTRL	=	0x00a2
                           0000A3   487 _WOREVT0	=	0x00a3
                           0000A4   488 _WOREVT1	=	0x00a4
                           0000A5   489 _WORTIME0	=	0x00a5
                           0000A6   490 _WORTIME1	=	0x00a6
                           0000A7   491 __SFRA7	=	0x00a7
                           0000A8   492 _IEN0	=	0x00a8
                           0000A9   493 _IP0	=	0x00a9
                           0000AA   494 __SFRAA	=	0x00aa
                           0000AB   495 _FWT	=	0x00ab
                           0000AC   496 _FADDRL	=	0x00ac
                           0000AD   497 _FADDRH	=	0x00ad
                           0000AE   498 _FCTL	=	0x00ae
                           0000AF   499 _FWDATA	=	0x00af
                           0000B0   500 __SFRB0	=	0x00b0
                           0000B1   501 _ENCDI	=	0x00b1
                           0000B2   502 _ENCDO	=	0x00b2
                           0000B3   503 _ENCCS	=	0x00b3
                           0000B4   504 _ADCCON1	=	0x00b4
                           0000B5   505 _ADCCON2	=	0x00b5
                           0000B6   506 _ADCCON3	=	0x00b6
                           0000B7   507 __SFRB7	=	0x00b7
                           0000B8   508 _IEN1	=	0x00b8
                           0000B9   509 _IP1	=	0x00b9
                           0000BA   510 _ADCL	=	0x00ba
                           0000BB   511 _ADCH	=	0x00bb
                           0000BC   512 _RNDL	=	0x00bc
                           0000BD   513 _RNDH	=	0x00bd
                           0000BE   514 _SLEEP	=	0x00be
                           0000BF   515 __SFRBF	=	0x00bf
                           0000C0   516 _IRCON	=	0x00c0
                           0000C1   517 _U0DBUF	=	0x00c1
                           0000C2   518 _U0BAUD	=	0x00c2
                           0000C3   519 __SFRC3	=	0x00c3
                           0000C4   520 _U0UCR	=	0x00c4
                           0000C5   521 _U0GCR	=	0x00c5
                           0000C6   522 _CLKCON	=	0x00c6
                           0000C7   523 _MEMCTR	=	0x00c7
                           0000C8   524 __SFRC8	=	0x00c8
                           0000C9   525 _WDCTL	=	0x00c9
                           0000CA   526 _T3CNT	=	0x00ca
                           0000CB   527 _T3CTL	=	0x00cb
                           0000CC   528 _T3CCTL0	=	0x00cc
                           0000CD   529 _T3CC0	=	0x00cd
                           0000CE   530 _T3CCTL1	=	0x00ce
                           0000CF   531 _T3CC1	=	0x00cf
                           0000D0   532 _PSW	=	0x00d0
                           0000D1   533 _DMAIRQ	=	0x00d1
                           0000D2   534 _DMA1CFGL	=	0x00d2
                           0000D3   535 _DMA1CFGH	=	0x00d3
                           0000D4   536 _DMA0CFGL	=	0x00d4
                           0000D5   537 _DMA0CFGH	=	0x00d5
                           0000D6   538 _DMAARM	=	0x00d6
                           0000D7   539 _DMAREQ	=	0x00d7
                           0000D8   540 _TIMIF	=	0x00d8
                           0000D9   541 _RFD	=	0x00d9
                           0000DA   542 _T1CC0L	=	0x00da
                           0000DB   543 _T1CC0H	=	0x00db
                           0000DC   544 _T1CC1L	=	0x00dc
                           0000DD   545 _T1CC1H	=	0x00dd
                           0000DE   546 _T1CC2L	=	0x00de
                           0000DF   547 _T1CC2H	=	0x00df
                           0000E0   548 _ACC	=	0x00e0
                           0000E1   549 _RFST	=	0x00e1
                           0000E2   550 _T1CNTL	=	0x00e2
                           0000E3   551 _T1CNTH	=	0x00e3
                           0000E4   552 _T1CTL	=	0x00e4
                           0000E5   553 _T1CCTL0	=	0x00e5
                           0000E6   554 _T1CCTL1	=	0x00e6
                           0000E7   555 _T1CCTL2	=	0x00e7
                           0000E8   556 _IRCON2	=	0x00e8
                           0000E9   557 _RFIF	=	0x00e9
                           0000EA   558 _T4CNT	=	0x00ea
                           0000EB   559 _T4CTL	=	0x00eb
                           0000EC   560 _T4CCTL0	=	0x00ec
                           0000ED   561 _T4CC0	=	0x00ed
                           0000EE   562 _T4CCTL1	=	0x00ee
                           0000EF   563 _T4CC1	=	0x00ef
                           0000F0   564 _B	=	0x00f0
                           0000F1   565 _PERCFG	=	0x00f1
                           0000F2   566 _ADCCFG	=	0x00f2
                           0000F3   567 _P0SEL	=	0x00f3
                           0000F4   568 _P1SEL	=	0x00f4
                           0000F5   569 _P2SEL	=	0x00f5
                           0000F6   570 _P1INP	=	0x00f6
                           0000F7   571 _P2INP	=	0x00f7
                           0000F8   572 _U1CSR	=	0x00f8
                           0000F9   573 _U1DBUF	=	0x00f9
                           0000FA   574 _U1BAUD	=	0x00fa
                           0000FB   575 _U1UCR	=	0x00fb
                           0000FC   576 _U1GCR	=	0x00fc
                           0000FD   577 _P0DIR	=	0x00fd
                           0000FE   578 _P1DIR	=	0x00fe
                           0000FF   579 _P2DIR	=	0x00ff
                                    580 ;--------------------------------------------------------
                                    581 ; special function bits
                                    582 ;--------------------------------------------------------
                                    583 	.area RSEG    (ABS,DATA)
      000000                        584 	.org 0x0000
                           000080   585 _P0_0	=	0x0080
                           000081   586 _P0_1	=	0x0081
                           000082   587 _P0_2	=	0x0082
                           000083   588 _P0_3	=	0x0083
                           000084   589 _P0_4	=	0x0084
                           000085   590 _P0_5	=	0x0085
                           000086   591 _P0_6	=	0x0086
                           000087   592 _P0_7	=	0x0087
                           000088   593 _IT0	=	0x0088
                           000089   594 _RFTXRXIF	=	0x0089
                           00008A   595 _IT1	=	0x008a
                           00008B   596 _URX0IF	=	0x008b
                           00008D   597 _ADCIF	=	0x008d
                           00008F   598 _URX1IF	=	0x008f
                           000090   599 _P1_0	=	0x0090
                           000091   600 _P1_1	=	0x0091
                           000092   601 _P1_2	=	0x0092
                           000093   602 _P1_3	=	0x0093
                           000094   603 _P1_4	=	0x0094
                           000095   604 _P1_5	=	0x0095
                           000096   605 _P1_6	=	0x0096
                           000097   606 _P1_7	=	0x0097
                           000098   607 _ENCIF_0	=	0x0098
                           000099   608 _ENCIF_1	=	0x0099
                           0000A0   609 _P2_0	=	0x00a0
                           0000A1   610 _P2_1	=	0x00a1
                           0000A2   611 _P2_2	=	0x00a2
                           0000A3   612 _P2_3	=	0x00a3
                           0000A4   613 _P2_4	=	0x00a4
                           0000A5   614 _P2_5	=	0x00a5
                           0000A6   615 _P2_6	=	0x00a6
                           0000A7   616 _P2_7	=	0x00a7
                           0000A8   617 _RFTXRXIE	=	0x00a8
                           0000A9   618 _ADCIE	=	0x00a9
                           0000AA   619 _URX0IE	=	0x00aa
                           0000AB   620 _URX1IE	=	0x00ab
                           0000AC   621 _ENCIE	=	0x00ac
                           0000AD   622 _STIE	=	0x00ad
                           0000AF   623 _EA	=	0x00af
                           0000B8   624 _DMAIE	=	0x00b8
                           0000B9   625 _T1IE	=	0x00b9
                           0000BA   626 _T2IE	=	0x00ba
                           0000BB   627 _T3IE	=	0x00bb
                           0000BC   628 _T4IE	=	0x00bc
                           0000BD   629 _P0IE	=	0x00bd
                           0000C0   630 _DMAIF	=	0x00c0
                           0000C1   631 _T1IF	=	0x00c1
                           0000C2   632 _T2IF	=	0x00c2
                           0000C3   633 _T3IF	=	0x00c3
                           0000C4   634 _T4IF	=	0x00c4
                           0000C5   635 _P0IF	=	0x00c5
                           0000C7   636 _STIF	=	0x00c7
                           0000D0   637 _P	=	0x00d0
                           0000D1   638 _F1	=	0x00d1
                           0000D2   639 _OV	=	0x00d2
                           0000D3   640 _RS0	=	0x00d3
                           0000D4   641 _RS1	=	0x00d4
                           0000D5   642 _F0	=	0x00d5
                           0000D6   643 _AC	=	0x00d6
                           0000D7   644 _CY	=	0x00d7
                           0000D8   645 _T3OVFIF	=	0x00d8
                           0000D9   646 _T3CH0IF	=	0x00d9
                           0000DA   647 _T3CH1IF	=	0x00da
                           0000DB   648 _T4OVFIF	=	0x00db
                           0000DC   649 _T4CH0IF	=	0x00dc
                           0000DD   650 _T4CH1IF	=	0x00dd
                           0000DE   651 _OVFIM	=	0x00de
                           0000E0   652 _ACC_0	=	0x00e0
                           0000E1   653 _ACC_1	=	0x00e1
                           0000E2   654 _ACC_2	=	0x00e2
                           0000E3   655 _ACC_3	=	0x00e3
                           0000E4   656 _ACC_4	=	0x00e4
                           0000E5   657 _ACC_5	=	0x00e5
                           0000E6   658 _ACC_6	=	0x00e6
                           0000E7   659 _ACC_7	=	0x00e7
                           0000E8   660 _P2IF	=	0x00e8
                           0000E9   661 _UTX0IF	=	0x00e9
                           0000EA   662 _UTX1IF	=	0x00ea
                           0000EB   663 _P1IF	=	0x00eb
                           0000EC   664 _WDTIF	=	0x00ec
                           0000F0   665 _B_0	=	0x00f0
                           0000F1   666 _B_1	=	0x00f1
                           0000F2   667 _B_2	=	0x00f2
                           0000F3   668 _B_3	=	0x00f3
                           0000F4   669 _B_4	=	0x00f4
                           0000F5   670 _B_5	=	0x00f5
                           0000F6   671 _B_6	=	0x00f6
                           0000F7   672 _B_7	=	0x00f7
                           0000F8   673 _ACTIVE	=	0x00f8
                           0000F9   674 _TX_BYTE	=	0x00f9
                           0000FA   675 _RX_BYTE	=	0x00fa
                           0000FB   676 _ERR	=	0x00fb
                           0000FC   677 _FE	=	0x00fc
                           0000FD   678 _SLAVE	=	0x00fd
                           0000FE   679 _RE	=	0x00fe
                           0000FF   680 _MODE	=	0x00ff
                                    681 ;--------------------------------------------------------
                                    682 ; overlayable register banks
                                    683 ;--------------------------------------------------------
                                    684 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        685 	.ds 8
                                    686 ;--------------------------------------------------------
                                    687 ; internal ram data
                                    688 ;--------------------------------------------------------
                                    689 	.area DSEG    (DATA)
                                    690 ;--------------------------------------------------------
                                    691 ; overlayable items in internal ram 
                                    692 ;--------------------------------------------------------
                                    693 	.area	OSEG    (OVR,DATA)
      00001C                        694 _uartStartRxDmaChan_PARM_2:
      00001C                        695 	.ds 3
      00001F                        696 _uartStartRxDmaChan_PARM_3:
      00001F                        697 	.ds 1
      000020                        698 _uartStartRxDmaChan_PARM_4:
      000020                        699 	.ds 3
      000023                        700 _uartStartRxDmaChan_PARM_5:
      000023                        701 	.ds 2
      000025                        702 _uartStartRxDmaChan_uartNum_1_6:
      000025                        703 	.ds 1
                                    704 	.area	OSEG    (OVR,DATA)
      00001C                        705 _uartStartTxDmaChan_PARM_2:
      00001C                        706 	.ds 3
      00001F                        707 _uartStartTxDmaChan_PARM_3:
      00001F                        708 	.ds 1
      000020                        709 _uartStartTxDmaChan_PARM_4:
      000020                        710 	.ds 3
      000023                        711 _uartStartTxDmaChan_PARM_5:
      000023                        712 	.ds 2
      000025                        713 _uartStartTxDmaChan_uartNum_1_12:
      000025                        714 	.ds 1
      000026                        715 _uartStartTxDmaChan_sloc0_1_0:
      000026                        716 	.ds 3
      000029                        717 _uartStartTxDmaChan_sloc1_1_0:
      000029                        718 	.ds 3
                                    719 ;--------------------------------------------------------
                                    720 ; indirectly addressable internal ram data
                                    721 ;--------------------------------------------------------
                                    722 	.area ISEG    (DATA)
                                    723 ;--------------------------------------------------------
                                    724 ; absolute internal ram data
                                    725 ;--------------------------------------------------------
                                    726 	.area IABS    (ABS,DATA)
                                    727 	.area IABS    (ABS,DATA)
                                    728 ;--------------------------------------------------------
                                    729 ; bit data
                                    730 ;--------------------------------------------------------
                                    731 	.area BSEG    (BIT)
                                    732 ;--------------------------------------------------------
                                    733 ; paged external ram data
                                    734 ;--------------------------------------------------------
                                    735 	.area PSEG    (PAG,XDATA)
                                    736 ;--------------------------------------------------------
                                    737 ; external ram data
                                    738 ;--------------------------------------------------------
                                    739 	.area XSEG    (XDATA)
                           00DF02   740 _MDMCTRL0H	=	0xdf02
                           00DF00   741 _SYNC1	=	0xdf00
                           00DF01   742 _SYNC0	=	0xdf01
                           00DF02   743 _PKTLEN	=	0xdf02
                           00DF03   744 _PKTCTRL1	=	0xdf03
                           00DF04   745 _PKTCTRL0	=	0xdf04
                           00DF05   746 _ADDR	=	0xdf05
                           00DF06   747 _CHANNR	=	0xdf06
                           00DF07   748 _FSCTRL1	=	0xdf07
                           00DF08   749 _FSCTRL0	=	0xdf08
                           00DF09   750 _FREQ2	=	0xdf09
                           00DF0A   751 _FREQ1	=	0xdf0a
                           00DF0B   752 _FREQ0	=	0xdf0b
                           00DF0C   753 _MDMCFG4	=	0xdf0c
                           00DF0D   754 _MDMCFG3	=	0xdf0d
                           00DF0E   755 _MDMCFG2	=	0xdf0e
                           00DF0F   756 _MDMCFG1	=	0xdf0f
                           00DF10   757 _MDMCFG0	=	0xdf10
                           00DF11   758 _DEVIATN	=	0xdf11
                           00DF12   759 _MCSM2	=	0xdf12
                           00DF13   760 _MCSM1	=	0xdf13
                           00DF14   761 _MCSM0	=	0xdf14
                           00DF15   762 _FOCCFG	=	0xdf15
                           00DF16   763 _BSCFG	=	0xdf16
                           00DF17   764 _AGCCTRL2	=	0xdf17
                           00DF18   765 _AGCCTRL1	=	0xdf18
                           00DF19   766 _AGCCTRL0	=	0xdf19
                           00DF1A   767 _FREND1	=	0xdf1a
                           00DF1B   768 _FREND0	=	0xdf1b
                           00DF1C   769 _FSCAL3	=	0xdf1c
                           00DF1D   770 _FSCAL2	=	0xdf1d
                           00DF1E   771 _FSCAL1	=	0xdf1e
                           00DF1F   772 _FSCAL0	=	0xdf1f
                           00DF20   773 __XREGDF20	=	0xdf20
                           00DF21   774 __XREGDF21	=	0xdf21
                           00DF22   775 __XREGDF22	=	0xdf22
                           00DF23   776 _TEST2	=	0xdf23
                           00DF24   777 _TEST1	=	0xdf24
                           00DF25   778 _TEST0	=	0xdf25
                           00DF26   779 __XREGDF26	=	0xdf26
                           00DF27   780 _PA_TABLE7	=	0xdf27
                           00DF28   781 _PA_TABLE6	=	0xdf28
                           00DF29   782 _PA_TABLE5	=	0xdf29
                           00DF2A   783 _PA_TABLE4	=	0xdf2a
                           00DF2B   784 _PA_TABLE3	=	0xdf2b
                           00DF2C   785 _PA_TABLE2	=	0xdf2c
                           00DF2D   786 _PA_TABLE1	=	0xdf2d
                           00DF2E   787 _PA_TABLE0	=	0xdf2e
                           00DF2F   788 _IOCFG2	=	0xdf2f
                           00DF30   789 _IOCFG1	=	0xdf30
                           00DF31   790 _IOCFG0	=	0xdf31
                           00DF32   791 __XREGDF32	=	0xdf32
                           00DF33   792 __XREGDF33	=	0xdf33
                           00DF34   793 __XREGDF34	=	0xdf34
                           00DF35   794 __XREGDF35	=	0xdf35
                           00DF36   795 _PARTNUM	=	0xdf36
                           00DF37   796 _VERSION	=	0xdf37
                           00DF38   797 _FREQEST	=	0xdf38
                           00DF39   798 _LQI	=	0xdf39
                           00DF3A   799 _RSSI	=	0xdf3a
                           00DF3B   800 _MARCSTATE	=	0xdf3b
                           00DF3C   801 _PKTSTATUS	=	0xdf3c
                           00DF3D   802 _VCO_VC_DAC	=	0xdf3d
                           00DF40   803 _I2SCFG0	=	0xdf40
                           00DF41   804 _I2SCFG1	=	0xdf41
                           00DF42   805 _I2SDATL	=	0xdf42
                           00DF43   806 _I2SDATH	=	0xdf43
                           00DF44   807 _I2SWCNT	=	0xdf44
                           00DF45   808 _I2SSTAT	=	0xdf45
                           00DF46   809 _I2SCLKF0	=	0xdf46
                           00DF47   810 _I2SCLKF1	=	0xdf47
                           00DF48   811 _I2SCLKF2	=	0xdf48
                           00DF80   812 __NA_P0	=	0xdf80
                           00DF81   813 __NA_SP	=	0xdf81
                           00DF82   814 __NA_DPL0	=	0xdf82
                           00DF83   815 __NA_DPH0	=	0xdf83
                           00DF84   816 __NA_DPL1	=	0xdf84
                           00DF85   817 __NA_DPH1	=	0xdf85
                           00DF86   818 _X_U0CSR	=	0xdf86
                           00DF87   819 __NA_PCON	=	0xdf87
                           00DF88   820 __NA_TCON	=	0xdf88
                           00DF89   821 _X_P0IFG	=	0xdf89
                           00DF8A   822 _X_P1IFG	=	0xdf8a
                           00DF8B   823 _X_P2IFG	=	0xdf8b
                           00DF8C   824 _X_PICTL	=	0xdf8c
                           00DF8D   825 _X_P1IEN	=	0xdf8d
                           00DF8E   826 __X_SFR8E	=	0xdf8e
                           00DF8F   827 _X_P0INP	=	0xdf8f
                           00DF90   828 __NA_P1	=	0xdf90
                           00DF91   829 _X_RFIM	=	0xdf91
                           00DF92   830 __NA_DPS	=	0xdf92
                           00DF93   831 _X_MPAGE	=	0xdf93
                           00DF94   832 __X_SFR94	=	0xdf94
                           00DF95   833 __X_SFR95	=	0xdf95
                           00DF96   834 __X_SFR96	=	0xdf96
                           00DF97   835 __X_SFR97	=	0xdf97
                           00DF98   836 __NA_S0CON	=	0xdf98
                           00DF99   837 __X_SFR99	=	0xdf99
                           00DF9A   838 __NA_IEN2	=	0xdf9a
                           00DF9B   839 __NA_S1CON	=	0xdf9b
                           00DF9C   840 _X_T2CT	=	0xdf9c
                           00DF9D   841 _X_T2PR	=	0xdf9d
                           00DF9E   842 _X_T2CTL	=	0xdf9e
                           00DF9F   843 __X_SFR9F	=	0xdf9f
                           00DFA0   844 __NA_P2	=	0xdfa0
                           00DFA1   845 _X_WORIRQ	=	0xdfa1
                           00DFA2   846 _X_WORCTRL	=	0xdfa2
                           00DFA3   847 _X_WOREVT0	=	0xdfa3
                           00DFA4   848 _X_WOREVT1	=	0xdfa4
                           00DFA5   849 _X_WORTIME0	=	0xdfa5
                           00DFA6   850 _X_WORTIME1	=	0xdfa6
                           00DFA7   851 __X_SFRA7	=	0xdfa7
                           00DFA8   852 __NA_IEN0	=	0xdfa8
                           00DFA9   853 __NA_IP0	=	0xdfa9
                           00DFAA   854 __X_SFRAA	=	0xdfaa
                           00DFAB   855 _X_FWT	=	0xdfab
                           00DFAC   856 _X_FADDRL	=	0xdfac
                           00DFAD   857 _X_FADDRH	=	0xdfad
                           00DFAE   858 _X_FCTL	=	0xdfae
                           00DFAF   859 _X_FWDATA	=	0xdfaf
                           00DFB0   860 __X_SFRB0	=	0xdfb0
                           00DFB1   861 _X_ENCDI	=	0xdfb1
                           00DFB2   862 _X_ENCDO	=	0xdfb2
                           00DFB3   863 _X_ENCCS	=	0xdfb3
                           00DFB4   864 _X_ADCCON1	=	0xdfb4
                           00DFB5   865 _X_ADCCON2	=	0xdfb5
                           00DFB6   866 _X_ADCCON3	=	0xdfb6
                           00DFB7   867 __X_SFRB7	=	0xdfb7
                           00DFB8   868 __NA_IEN1	=	0xdfb8
                           00DFB9   869 __NA_IP1	=	0xdfb9
                           00DFBA   870 _X_ADCL	=	0xdfba
                           00DFBB   871 _X_ADCH	=	0xdfbb
                           00DFBC   872 _X_RNDL	=	0xdfbc
                           00DFBD   873 _X_RNDH	=	0xdfbd
                           00DFBE   874 _X_SLEEP	=	0xdfbe
                           00DFBF   875 __X_SFRBF	=	0xdfbf
                           00DFC0   876 __NA_IRCON	=	0xdfc0
                           00DFC1   877 _X_U0DBUF	=	0xdfc1
                           00DFC2   878 _X_U0BAUD	=	0xdfc2
                           00DFC3   879 __X_SFRC3	=	0xdfc3
                           00DFC4   880 _X_U0UCR	=	0xdfc4
                           00DFC5   881 _X_U0GCR	=	0xdfc5
                           00DFC6   882 _X_CLKCON	=	0xdfc6
                           00DFC7   883 _X_MEMCTR	=	0xdfc7
                           00DFC8   884 __X_SFRC8	=	0xdfc8
                           00DFC9   885 _X_WDCTL	=	0xdfc9
                           00DFCA   886 _X_T3CNT	=	0xdfca
                           00DFCB   887 _X_T3CTL	=	0xdfcb
                           00DFCC   888 _X_T3CCTL0	=	0xdfcc
                           00DFCD   889 _X_T3CC0	=	0xdfcd
                           00DFCE   890 _X_T3CCTL1	=	0xdfce
                           00DFCF   891 _X_T3CC1	=	0xdfcf
                           00DFD0   892 __NA_PSW	=	0xdfd0
                           00DFD1   893 _X_DMAIRQ	=	0xdfd1
                           00DFD2   894 _X_DMA1CFGL	=	0xdfd2
                           00DFD3   895 _X_DMA1CFGH	=	0xdfd3
                           00DFD4   896 _X_DMA0CFGL	=	0xdfd4
                           00DFD5   897 _X_DMA0CFGH	=	0xdfd5
                           00DFD6   898 _X_DMAARM	=	0xdfd6
                           00DFD7   899 _X_DMAREQ	=	0xdfd7
                           00DFD8   900 _X_TIMIF	=	0xdfd8
                           00DFD9   901 _X_RFD	=	0xdfd9
                           00DFDA   902 _X_T1CC0L	=	0xdfda
                           00DFDB   903 _X_T1CC0H	=	0xdfdb
                           00DFDC   904 _X_T1CC1L	=	0xdfdc
                           00DFDD   905 _X_T1CC1H	=	0xdfdd
                           00DFDE   906 _X_T1CC2L	=	0xdfde
                           00DFDF   907 _X_T1CC2H	=	0xdfdf
                           00DFE0   908 __NA_ACC	=	0xdfe0
                           00DFE1   909 _X_RFST	=	0xdfe1
                           00DFE2   910 _X_T1CNTL	=	0xdfe2
                           00DFE3   911 _X_T1CNTH	=	0xdfe3
                           00DFE4   912 _X_T1CTL	=	0xdfe4
                           00DFE5   913 _X_T1CCTL0	=	0xdfe5
                           00DFE6   914 _X_T1CCTL1	=	0xdfe6
                           00DFE7   915 _X_T1CCTL2	=	0xdfe7
                           00DFE8   916 __NA_IRCON2	=	0xdfe8
                           00DFE9   917 _X_RFIF	=	0xdfe9
                           00DFEA   918 _X_T4CNT	=	0xdfea
                           00DFEB   919 _X_T4CTL	=	0xdfeb
                           00DFEC   920 _X_T4CCTL0	=	0xdfec
                           00DFED   921 _X_T4CC0	=	0xdfed
                           00DFEE   922 _X_T4CCTL1	=	0xdfee
                           00DFEF   923 _X_T4CC1	=	0xdfef
                           00DFF0   924 __NA_B	=	0xdff0
                           00DFF1   925 _X_PERCFG	=	0xdff1
                           00DFF2   926 _X_ADCCFG	=	0xdff2
                           00DFF3   927 _X_P0SEL	=	0xdff3
                           00DFF4   928 _X_P1SEL	=	0xdff4
                           00DFF5   929 _X_P2SEL	=	0xdff5
                           00DFF6   930 _X_P1INP	=	0xdff6
                           00DFF7   931 _X_P2INP	=	0xdff7
                           00DFF8   932 _X_U1CSR	=	0xdff8
                           00DFF9   933 _X_U1DBUF	=	0xdff9
                           00DFFA   934 _X_U1BAUD	=	0xdffa
                           00DFFB   935 _X_U1UCR	=	0xdffb
                           00DFFC   936 _X_U1GCR	=	0xdffc
                           00DFFD   937 _X_P0DIR	=	0xdffd
                           00DFFE   938 _X_P1DIR	=	0xdffe
                           00DFFF   939 _X_P2DIR	=	0xdfff
                                    940 ;--------------------------------------------------------
                                    941 ; absolute external ram data
                                    942 ;--------------------------------------------------------
                                    943 	.area XABS    (ABS,XDATA)
                                    944 ;--------------------------------------------------------
                                    945 ; external initialized ram data
                                    946 ;--------------------------------------------------------
                                    947 	.area XISEG   (XDATA)
                                    948 	.area HOME    (CODE)
                                    949 	.area GSINIT0 (CODE)
                                    950 	.area GSINIT1 (CODE)
                                    951 	.area GSINIT2 (CODE)
                                    952 	.area GSINIT3 (CODE)
                                    953 	.area GSINIT4 (CODE)
                                    954 	.area GSINIT5 (CODE)
                                    955 	.area GSINIT  (CODE)
                                    956 	.area GSFINAL (CODE)
                                    957 	.area CSEG    (CODE)
                                    958 ;--------------------------------------------------------
                                    959 ; global & static initialisations
                                    960 ;--------------------------------------------------------
                                    961 	.area HOME    (CODE)
                                    962 	.area GSINIT  (CODE)
                                    963 	.area GSFINAL (CODE)
                                    964 	.area GSINIT  (CODE)
                                    965 ;--------------------------------------------------------
                                    966 ; Home
                                    967 ;--------------------------------------------------------
                                    968 	.area HOME    (CODE)
                                    969 	.area HOME    (CODE)
                                    970 ;--------------------------------------------------------
                                    971 ; code
                                    972 ;--------------------------------------------------------
                                    973 	.area CSEG    (CODE)
                                    974 ;------------------------------------------------------------
                                    975 ;Allocation info for local variables in function 'uartStartRxDmaChan'
                                    976 ;------------------------------------------------------------
                                    977 ;uartDmaRxDescr            Allocated with name '_uartStartRxDmaChan_PARM_2'
                                    978 ;uartDmaRxChan             Allocated with name '_uartStartRxDmaChan_PARM_3'
                                    979 ;uartRxBuf                 Allocated with name '_uartStartRxDmaChan_PARM_4'
                                    980 ;uartRxBufSize             Allocated with name '_uartStartRxDmaChan_PARM_5'
                                    981 ;uartNum                   Allocated with name '_uartStartRxDmaChan_uartNum_1_6'
                                    982 ;------------------------------------------------------------
                                    983 ;	dma.c:21: void uartStartRxDmaChan(uint8     uartNum,
                                    984 ;	-----------------------------------------
                                    985 ;	 function uartStartRxDmaChan
                                    986 ;	-----------------------------------------
      000465                        987 _uartStartRxDmaChan:
                           000007   988 	ar7 = 0x07
                           000006   989 	ar6 = 0x06
                           000005   990 	ar5 = 0x05
                           000004   991 	ar4 = 0x04
                           000003   992 	ar3 = 0x03
                           000002   993 	ar2 = 0x02
                           000001   994 	ar1 = 0x01
                           000000   995 	ar0 = 0x00
      000465 85 82 25         [24]  996 	mov	_uartStartRxDmaChan_uartNum_1_6,dpl
                                    997 ;	dma.c:29: uartDmaRxDescr->DESTADDRH = (uint16) uartRxBuf >> 8;
      000468 AC 1C            [24]  998 	mov	r4,_uartStartRxDmaChan_PARM_2
      00046A AD 1D            [24]  999 	mov	r5,(_uartStartRxDmaChan_PARM_2 + 1)
      00046C AE 1E            [24] 1000 	mov	r6,(_uartStartRxDmaChan_PARM_2 + 2)
      00046E 74 02            [12] 1001 	mov	a,#0x02
      000470 2C               [12] 1002 	add	a,r4
      000471 F9               [12] 1003 	mov	r1,a
      000472 E4               [12] 1004 	clr	a
      000473 3D               [12] 1005 	addc	a,r5
      000474 FA               [12] 1006 	mov	r2,a
      000475 8E 03            [24] 1007 	mov	ar3,r6
      000477 AF 21            [24] 1008 	mov	r7,(_uartStartRxDmaChan_PARM_4 + 1)
      000479 8F 00            [24] 1009 	mov	ar0,r7
      00047B 89 82            [24] 1010 	mov	dpl,r1
      00047D 8A 83            [24] 1011 	mov	dph,r2
      00047F 8B F0            [24] 1012 	mov	b,r3
      000481 E8               [12] 1013 	mov	a,r0
      000482 12 0C 69         [24] 1014 	lcall	__gptrput
                                   1015 ;	dma.c:30: uartDmaRxDescr->DESTADDRL = (uint16) uartRxBuf;
      000485 74 03            [12] 1016 	mov	a,#0x03
      000487 2C               [12] 1017 	add	a,r4
      000488 FA               [12] 1018 	mov	r2,a
      000489 E4               [12] 1019 	clr	a
      00048A 3D               [12] 1020 	addc	a,r5
      00048B FB               [12] 1021 	mov	r3,a
      00048C 8E 07            [24] 1022 	mov	ar7,r6
      00048E A9 20            [24] 1023 	mov	r1,_uartStartRxDmaChan_PARM_4
      000490 8A 82            [24] 1024 	mov	dpl,r2
      000492 8B 83            [24] 1025 	mov	dph,r3
      000494 8F F0            [24] 1026 	mov	b,r7
      000496 E9               [12] 1027 	mov	a,r1
      000497 12 0C 69         [24] 1028 	lcall	__gptrput
                                   1029 ;	dma.c:31: uartDmaRxDescr->SRCADDRH  = 0xDF;
      00049A 8C 82            [24] 1030 	mov	dpl,r4
      00049C 8D 83            [24] 1031 	mov	dph,r5
      00049E 8E F0            [24] 1032 	mov	b,r6
      0004A0 74 DF            [12] 1033 	mov	a,#0xdf
      0004A2 12 0C 69         [24] 1034 	lcall	__gptrput
                                   1035 ;	dma.c:32: uartDmaRxDescr->SRCADDRL  = (uartNum == 0) ? 0xC1:0xF9;
      0004A5 74 01            [12] 1036 	mov	a,#0x01
      0004A7 2C               [12] 1037 	add	a,r4
      0004A8 FA               [12] 1038 	mov	r2,a
      0004A9 E4               [12] 1039 	clr	a
      0004AA 3D               [12] 1040 	addc	a,r5
      0004AB FB               [12] 1041 	mov	r3,a
      0004AC 8E 07            [24] 1042 	mov	ar7,r6
      0004AE E5 25            [12] 1043 	mov	a,_uartStartRxDmaChan_uartNum_1_6
      0004B0 70 05            [24] 1044 	jnz	00109$
      0004B2 78 C1            [12] 1045 	mov	r0,#0xc1
      0004B4 F9               [12] 1046 	mov	r1,a
      0004B5 80 04            [24] 1047 	sjmp	00110$
      0004B7                       1048 00109$:
      0004B7 78 F9            [12] 1049 	mov	r0,#0xf9
      0004B9 79 00            [12] 1050 	mov	r1,#0x00
      0004BB                       1051 00110$:
      0004BB 8A 82            [24] 1052 	mov	dpl,r2
      0004BD 8B 83            [24] 1053 	mov	dph,r3
      0004BF 8F F0            [24] 1054 	mov	b,r7
      0004C1 E8               [12] 1055 	mov	a,r0
      0004C2 12 0C 69         [24] 1056 	lcall	__gptrput
                                   1057 ;	dma.c:33: uartDmaRxDescr->LENH      = (uartRxBufSize >> 8) & 0xFF;
      0004C5 74 04            [12] 1058 	mov	a,#0x04
      0004C7 2C               [12] 1059 	add	a,r4
      0004C8 FA               [12] 1060 	mov	r2,a
      0004C9 E4               [12] 1061 	clr	a
      0004CA 3D               [12] 1062 	addc	a,r5
      0004CB FB               [12] 1063 	mov	r3,a
      0004CC 8E 07            [24] 1064 	mov	ar7,r6
      0004CE A9 24            [24] 1065 	mov	r1,(_uartStartRxDmaChan_PARM_5 + 1)
      0004D0 53 01 1F         [24] 1066 	anl	ar1,#0x1f
      0004D3 8A 82            [24] 1067 	mov	dpl,r2
      0004D5 8B 83            [24] 1068 	mov	dph,r3
      0004D7 8F F0            [24] 1069 	mov	b,r7
      0004D9 E9               [12] 1070 	mov	a,r1
      0004DA C4               [12] 1071 	swap	a
      0004DB 03               [12] 1072 	rr	a
      0004DC 54 F8            [12] 1073 	anl	a,#(0xf8&0xf8)
      0004DE C0 F0            [24] 1074 	push	b
      0004E0 C0 E0            [24] 1075 	push	acc
      0004E2 12 0D DA         [24] 1076 	lcall	__gptrget
      0004E5 D0 F0            [24] 1077 	pop	b
      0004E7 54 07            [12] 1078 	anl	a,#0x07
      0004E9 45 F0            [12] 1079 	orl	a,b
      0004EB D0 F0            [24] 1080 	pop	b
      0004ED 12 0C 69         [24] 1081 	lcall	__gptrput
                                   1082 ;	dma.c:34: uartDmaRxDescr->LENL      = uartRxBufSize & 0xFF;
      0004F0 74 05            [12] 1083 	mov	a,#0x05
      0004F2 2C               [12] 1084 	add	a,r4
      0004F3 FA               [12] 1085 	mov	r2,a
      0004F4 E4               [12] 1086 	clr	a
      0004F5 3D               [12] 1087 	addc	a,r5
      0004F6 FB               [12] 1088 	mov	r3,a
      0004F7 8E 07            [24] 1089 	mov	ar7,r6
      0004F9 A9 23            [24] 1090 	mov	r1,_uartStartRxDmaChan_PARM_5
      0004FB 8A 82            [24] 1091 	mov	dpl,r2
      0004FD 8B 83            [24] 1092 	mov	dph,r3
      0004FF 8F F0            [24] 1093 	mov	b,r7
      000501 E9               [12] 1094 	mov	a,r1
      000502 12 0C 69         [24] 1095 	lcall	__gptrput
                                   1096 ;	dma.c:36: uartDmaRxDescr->VLEN      = 0x00;               //Used fixed length DMA transfer count
      000505 74 04            [12] 1097 	mov	a,#0x04
      000507 2C               [12] 1098 	add	a,r4
      000508 FA               [12] 1099 	mov	r2,a
      000509 E4               [12] 1100 	clr	a
      00050A 3D               [12] 1101 	addc	a,r5
      00050B FB               [12] 1102 	mov	r3,a
      00050C 8E 07            [24] 1103 	mov	ar7,r6
      00050E 8A 82            [24] 1104 	mov	dpl,r2
      000510 8B 83            [24] 1105 	mov	dph,r3
      000512 8F F0            [24] 1106 	mov	b,r7
      000514 12 0D DA         [24] 1107 	lcall	__gptrget
      000517 54 F8            [12] 1108 	anl	a,#0xf8
      000519 12 0C 69         [24] 1109 	lcall	__gptrput
                                   1110 ;	dma.c:37: uartDmaRxDescr->WORDSIZE  = 0x00;               //Perform 1-byte transfer
      00051C 74 06            [12] 1111 	mov	a,#0x06
      00051E 2C               [12] 1112 	add	a,r4
      00051F FA               [12] 1113 	mov	r2,a
      000520 E4               [12] 1114 	clr	a
      000521 3D               [12] 1115 	addc	a,r5
      000522 FB               [12] 1116 	mov	r3,a
      000523 8E 07            [24] 1117 	mov	ar7,r6
      000525 8A 82            [24] 1118 	mov	dpl,r2
      000527 8B 83            [24] 1119 	mov	dph,r3
      000529 8F F0            [24] 1120 	mov	b,r7
      00052B 12 0D DA         [24] 1121 	lcall	__gptrget
      00052E 54 FE            [12] 1122 	anl	a,#0xfe
      000530 12 0C 69         [24] 1123 	lcall	__gptrput
                                   1124 ;	dma.c:38: uartDmaRxDescr->TMODE     = 0x00;               //Single byte transfer per DMA trigger
      000533 74 06            [12] 1125 	mov	a,#0x06
      000535 2C               [12] 1126 	add	a,r4
      000536 FA               [12] 1127 	mov	r2,a
      000537 E4               [12] 1128 	clr	a
      000538 3D               [12] 1129 	addc	a,r5
      000539 FB               [12] 1130 	mov	r3,a
      00053A 8E 07            [24] 1131 	mov	ar7,r6
      00053C 8A 82            [24] 1132 	mov	dpl,r2
      00053E 8B 83            [24] 1133 	mov	dph,r3
      000540 8F F0            [24] 1134 	mov	b,r7
      000542 12 0D DA         [24] 1135 	lcall	__gptrget
      000545 54 F9            [12] 1136 	anl	a,#0xf9
      000547 12 0C 69         [24] 1137 	lcall	__gptrput
                                   1138 ;	dma.c:39: uartDmaRxDescr->TRIG      = 14 + (2 * uartNum); //DMA trigger = USARTx RX complete
      00054A 74 06            [12] 1139 	mov	a,#0x06
      00054C 2C               [12] 1140 	add	a,r4
      00054D FA               [12] 1141 	mov	r2,a
      00054E E4               [12] 1142 	clr	a
      00054F 3D               [12] 1143 	addc	a,r5
      000550 FB               [12] 1144 	mov	r3,a
      000551 8E 07            [24] 1145 	mov	ar7,r6
      000553 E5 25            [12] 1146 	mov	a,_uartStartRxDmaChan_uartNum_1_6
      000555 25 E0            [12] 1147 	add	a,acc
      000557 24 0E            [12] 1148 	add	a,#0x0e
      000559 F9               [12] 1149 	mov	r1,a
      00055A 8A 82            [24] 1150 	mov	dpl,r2
      00055C 8B 83            [24] 1151 	mov	dph,r3
      00055E 8F F0            [24] 1152 	mov	b,r7
      000560 C4               [12] 1153 	swap	a
      000561 03               [12] 1154 	rr	a
      000562 54 F8            [12] 1155 	anl	a,#(0xf8&0xf8)
      000564 C0 F0            [24] 1156 	push	b
      000566 C0 E0            [24] 1157 	push	acc
      000568 12 0D DA         [24] 1158 	lcall	__gptrget
      00056B D0 F0            [24] 1159 	pop	b
      00056D 54 07            [12] 1160 	anl	a,#0x07
      00056F 45 F0            [12] 1161 	orl	a,b
      000571 D0 F0            [24] 1162 	pop	b
      000573 12 0C 69         [24] 1163 	lcall	__gptrput
                                   1164 ;	dma.c:40: uartDmaRxDescr->SRCINC    = 0x00;               //Do not increment source pointer
      000576 74 07            [12] 1165 	mov	a,#0x07
      000578 2C               [12] 1166 	add	a,r4
      000579 FA               [12] 1167 	mov	r2,a
      00057A E4               [12] 1168 	clr	a
      00057B 3D               [12] 1169 	addc	a,r5
      00057C FB               [12] 1170 	mov	r3,a
      00057D 8E 07            [24] 1171 	mov	ar7,r6
      00057F 8A 82            [24] 1172 	mov	dpl,r2
      000581 8B 83            [24] 1173 	mov	dph,r3
      000583 8F F0            [24] 1174 	mov	b,r7
      000585 12 0D DA         [24] 1175 	lcall	__gptrget
      000588 54 FC            [12] 1176 	anl	a,#0xfc
      00058A 12 0C 69         [24] 1177 	lcall	__gptrput
                                   1178 ;	dma.c:42: uartDmaRxDescr->DESTINC   = 0x01;      		//Increment destination pointer by
      00058D 74 07            [12] 1179 	mov	a,#0x07
      00058F 2C               [12] 1180 	add	a,r4
      000590 FA               [12] 1181 	mov	r2,a
      000591 E4               [12] 1182 	clr	a
      000592 3D               [12] 1183 	addc	a,r5
      000593 FB               [12] 1184 	mov	r3,a
      000594 8E 07            [24] 1185 	mov	ar7,r6
      000596 8A 82            [24] 1186 	mov	dpl,r2
      000598 8B 83            [24] 1187 	mov	dph,r3
      00059A 8F F0            [24] 1188 	mov	b,r7
      00059C 12 0D DA         [24] 1189 	lcall	__gptrget
      00059F 54 F3            [12] 1190 	anl	a,#0xf3
      0005A1 44 04            [12] 1191 	orl	a,#0x04
      0005A3 12 0C 69         [24] 1192 	lcall	__gptrput
                                   1193 ;	dma.c:44: uartDmaRxDescr->IRQMASK	  = 0x01;		//Enable DMA interrupt to the CPU
      0005A6 74 07            [12] 1194 	mov	a,#0x07
      0005A8 2C               [12] 1195 	add	a,r4
      0005A9 FA               [12] 1196 	mov	r2,a
      0005AA E4               [12] 1197 	clr	a
      0005AB 3D               [12] 1198 	addc	a,r5
      0005AC FB               [12] 1199 	mov	r3,a
      0005AD 8E 07            [24] 1200 	mov	ar7,r6
      0005AF 8A 82            [24] 1201 	mov	dpl,r2
      0005B1 8B 83            [24] 1202 	mov	dph,r3
      0005B3 8F F0            [24] 1203 	mov	b,r7
      0005B5 12 0D DA         [24] 1204 	lcall	__gptrget
      0005B8 44 10            [12] 1205 	orl	a,#0x10
      0005BA 12 0C 69         [24] 1206 	lcall	__gptrput
                                   1207 ;	dma.c:45: uartDmaRxDescr->M8	  = 0x00;		//Use all 8 bits for transfer count
      0005BD 74 07            [12] 1208 	mov	a,#0x07
      0005BF 2C               [12] 1209 	add	a,r4
      0005C0 FA               [12] 1210 	mov	r2,a
      0005C1 E4               [12] 1211 	clr	a
      0005C2 3D               [12] 1212 	addc	a,r5
      0005C3 FB               [12] 1213 	mov	r3,a
      0005C4 8E 07            [24] 1214 	mov	ar7,r6
      0005C6 8A 82            [24] 1215 	mov	dpl,r2
      0005C8 8B 83            [24] 1216 	mov	dph,r3
      0005CA 8F F0            [24] 1217 	mov	b,r7
      0005CC 12 0D DA         [24] 1218 	lcall	__gptrget
      0005CF 54 DF            [12] 1219 	anl	a,#0xdf
      0005D1 12 0C 69         [24] 1220 	lcall	__gptrput
                                   1221 ;	dma.c:46: uartDmaRxDescr->PRIORITY  = 0x00;		//DMA memory access has low priority
      0005D4 74 07            [12] 1222 	mov	a,#0x07
      0005D6 2C               [12] 1223 	add	a,r4
      0005D7 FC               [12] 1224 	mov	r4,a
      0005D8 E4               [12] 1225 	clr	a
      0005D9 3D               [12] 1226 	addc	a,r5
      0005DA FD               [12] 1227 	mov	r5,a
      0005DB 8C 82            [24] 1228 	mov	dpl,r4
      0005DD 8D 83            [24] 1229 	mov	dph,r5
      0005DF 8E F0            [24] 1230 	mov	b,r6
      0005E1 12 0D DA         [24] 1231 	lcall	__gptrget
      0005E4 54 3F            [12] 1232 	anl	a,#0x3f
      0005E6 12 0C 69         [24] 1233 	lcall	__gptrput
                                   1234 ;	dma.c:49: if(uartDmaRxChan < 1)
      0005E9 74 FF            [12] 1235 	mov	a,#0x100 - 0x01
      0005EB 25 1F            [12] 1236 	add	a,_uartStartRxDmaChan_PARM_3
      0005ED 40 0B            [24] 1237 	jc	00102$
                                   1238 ;	dma.c:51: DMA0CFGH = (uint8) ((uint16) uartDmaRxDescr >> 8);
      0005EF AE 1C            [24] 1239 	mov	r6,_uartStartRxDmaChan_PARM_2
      0005F1 AF 1D            [24] 1240 	mov	r7,(_uartStartRxDmaChan_PARM_2 + 1)
      0005F3 8F D5            [24] 1241 	mov	_DMA0CFGH,r7
                                   1242 ;	dma.c:52: DMA0CFGL = (uint8) ((uint16) uartDmaRxDescr & 0x00FF);
      0005F5 85 1C D4         [24] 1243 	mov	_DMA0CFGL,_uartStartRxDmaChan_PARM_2
      0005F8 80 09            [24] 1244 	sjmp	00103$
      0005FA                       1245 00102$:
                                   1246 ;	dma.c:56: DMA1CFGH = (uint8) ((uint16) uartDmaRxDescr >> 8);
      0005FA AE 1C            [24] 1247 	mov	r6,_uartStartRxDmaChan_PARM_2
      0005FC AF 1D            [24] 1248 	mov	r7,(_uartStartRxDmaChan_PARM_2 + 1)
      0005FE 8F D3            [24] 1249 	mov	_DMA1CFGH,r7
                                   1250 ;	dma.c:57: DMA1CFGL = (uint8) ((uint16) uartDmaRxDescr & 0x00FF);
      000600 85 1C D2         [24] 1251 	mov	_DMA1CFGL,_uartStartRxDmaChan_PARM_2
      000603                       1252 00103$:
                                   1253 ;	dma.c:61: DMAARM = ((1 << uartDmaRxChan) & 0x1F);
      000603 AF 1F            [24] 1254 	mov	r7,_uartStartRxDmaChan_PARM_3
      000605 8F F0            [24] 1255 	mov	b,r7
      000607 05 F0            [12] 1256 	inc	b
      000609 74 01            [12] 1257 	mov	a,#0x01
      00060B 80 02            [24] 1258 	sjmp	00124$
      00060D                       1259 00122$:
      00060D 25 E0            [12] 1260 	add	a,acc
      00060F                       1261 00124$:
      00060F D5 F0 FB         [24] 1262 	djnz	b,00122$
      000612 FF               [12] 1263 	mov	r7,a
      000613 74 1F            [12] 1264 	mov	a,#0x1f
      000615 5F               [12] 1265 	anl	a,r7
      000616 F5 D6            [12] 1266 	mov	_DMAARM,a
                                   1267 ;	dma.c:62: __asm__("NOP");__asm__("NOP");__asm__("NOP");__asm__("NOP");__asm__("NOP");
      000618 00               [12] 1268 	NOP
      000619 00               [12] 1269 	NOP
      00061A 00               [12] 1270 	NOP
      00061B 00               [12] 1271 	NOP
      00061C 00               [12] 1272 	NOP
                                   1273 ;	dma.c:63: __asm__("NOP");__asm__("NOP");__asm__("NOP");__asm__("NOP");__asm__("NOP");
      00061D 00               [12] 1274 	NOP
      00061E 00               [12] 1275 	NOP
      00061F 00               [12] 1276 	NOP
      000620 00               [12] 1277 	NOP
      000621 00               [12] 1278 	NOP
                                   1279 ;	dma.c:64: __asm__("NOP");__asm__("NOP");__asm__("NOP");__asm__("NOP");__asm__("NOP");
      000622 00               [12] 1280 	NOP
      000623 00               [12] 1281 	NOP
      000624 00               [12] 1282 	NOP
      000625 00               [12] 1283 	NOP
      000626 00               [12] 1284 	NOP
                                   1285 ;	dma.c:65: __asm__("NOP");__asm__("NOP");__asm__("NOP");__asm__("NOP");__asm__("NOP");
      000627 00               [12] 1286 	NOP
      000628 00               [12] 1287 	NOP
      000629 00               [12] 1288 	NOP
      00062A 00               [12] 1289 	NOP
      00062B 00               [12] 1290 	NOP
                                   1291 ;	dma.c:66: __asm__("NOP");__asm__("NOP");__asm__("NOP");__asm__("NOP");__asm__("NOP");
      00062C 00               [12] 1292 	NOP
      00062D 00               [12] 1293 	NOP
      00062E 00               [12] 1294 	NOP
      00062F 00               [12] 1295 	NOP
      000630 00               [12] 1296 	NOP
                                   1297 ;	dma.c:67: __asm__("NOP");__asm__("NOP");__asm__("NOP");__asm__("NOP");__asm__("NOP");
      000631 00               [12] 1298 	NOP
      000632 00               [12] 1299 	NOP
      000633 00               [12] 1300 	NOP
      000634 00               [12] 1301 	NOP
      000635 00               [12] 1302 	NOP
                                   1303 ;	dma.c:68: __asm__("NOP");__asm__("NOP");__asm__("NOP");__asm__("NOP");__asm__("NOP");
      000636 00               [12] 1304 	NOP
      000637 00               [12] 1305 	NOP
      000638 00               [12] 1306 	NOP
      000639 00               [12] 1307 	NOP
      00063A 00               [12] 1308 	NOP
                                   1309 ;	dma.c:69: __asm__("NOP");__asm__("NOP");__asm__("NOP");__asm__("NOP");__asm__("NOP");
      00063B 00               [12] 1310 	NOP
      00063C 00               [12] 1311 	NOP
      00063D 00               [12] 1312 	NOP
      00063E 00               [12] 1313 	NOP
      00063F 00               [12] 1314 	NOP
                                   1315 ;	dma.c:70: __asm__("NOP");__asm__("NOP");__asm__("NOP");__asm__("NOP");__asm__("NOP");
      000640 00               [12] 1316 	NOP
      000641 00               [12] 1317 	NOP
      000642 00               [12] 1318 	NOP
      000643 00               [12] 1319 	NOP
      000644 00               [12] 1320 	NOP
                                   1321 ;	dma.c:74: IEN0  |= 0x80;
      000645 AE A8            [24] 1322 	mov	r6,_IEN0
      000647 43 06 80         [24] 1323 	orl	ar6,#0x80
      00064A 8E A8            [24] 1324 	mov	_IEN0,r6
                                   1325 ;	dma.c:75: IEN1  |= 0x01;
      00064C AE B8            [24] 1326 	mov	r6,_IEN1
      00064E 7F 00            [12] 1327 	mov	r7,#0x00
      000650 43 06 01         [24] 1328 	orl	ar6,#0x01
      000653 8E B8            [24] 1329 	mov	_IEN1,r6
                                   1330 ;	dma.c:76: IRCON &= ~0x01;
      000655 53 C0 FE         [24] 1331 	anl	_IRCON,#0xfe
                                   1332 ;	dma.c:79: if(uartNum == 0)
      000658 E5 25            [12] 1333 	mov	a,_uartStartRxDmaChan_uartNum_1_6
                                   1334 ;	dma.c:81: U0CSR |= 0x40;
      00065A 70 08            [24] 1335 	jnz	00105$
      00065C AE 86            [24] 1336 	mov	r6,_U0CSR
      00065E 43 06 40         [24] 1337 	orl	ar6,#0x40
      000661 8E 86            [24] 1338 	mov	_U0CSR,r6
      000663 22               [24] 1339 	ret
      000664                       1340 00105$:
                                   1341 ;	dma.c:85: U1CSR |= 0x40;
      000664 AE F8            [24] 1342 	mov	r6,_U1CSR
      000666 43 06 40         [24] 1343 	orl	ar6,#0x40
      000669 8E F8            [24] 1344 	mov	_U1CSR,r6
                                   1345 ;	dma.c:92: }
      00066B 22               [24] 1346 	ret
                                   1347 ;------------------------------------------------------------
                                   1348 ;Allocation info for local variables in function 'uartStartTxDmaChan'
                                   1349 ;------------------------------------------------------------
                                   1350 ;uartDmaTxDescr            Allocated with name '_uartStartTxDmaChan_PARM_2'
                                   1351 ;uartDmaTxChan             Allocated with name '_uartStartTxDmaChan_PARM_3'
                                   1352 ;uartTxBuf                 Allocated with name '_uartStartTxDmaChan_PARM_4'
                                   1353 ;shortuartTxBufSize        Allocated with name '_uartStartTxDmaChan_PARM_5'
                                   1354 ;uartNum                   Allocated with name '_uartStartTxDmaChan_uartNum_1_12'
                                   1355 ;sloc0                     Allocated with name '_uartStartTxDmaChan_sloc0_1_0'
                                   1356 ;sloc1                     Allocated with name '_uartStartTxDmaChan_sloc1_1_0'
                                   1357 ;------------------------------------------------------------
                                   1358 ;	dma.c:114: void uartStartTxDmaChan
                                   1359 ;	-----------------------------------------
                                   1360 ;	 function uartStartTxDmaChan
                                   1361 ;	-----------------------------------------
      00066C                       1362 _uartStartTxDmaChan:
      00066C 85 82 25         [24] 1363 	mov	_uartStartTxDmaChan_uartNum_1_12,dpl
                                   1364 ;	dma.c:125: uartDmaTxDescr->SRCADDRH = (unsigned short)(uartTxBuf + 1) >> 8;
      00066F AC 1C            [24] 1365 	mov	r4,_uartStartTxDmaChan_PARM_2
      000671 AD 1D            [24] 1366 	mov	r5,(_uartStartTxDmaChan_PARM_2 + 1)
      000673 AE 1E            [24] 1367 	mov	r6,(_uartStartTxDmaChan_PARM_2 + 2)
      000675 74 01            [12] 1368 	mov	a,#0x01
      000677 25 20            [12] 1369 	add	a,_uartStartTxDmaChan_PARM_4
      000679 F5 26            [12] 1370 	mov	_uartStartTxDmaChan_sloc0_1_0,a
      00067B E4               [12] 1371 	clr	a
      00067C 35 21            [12] 1372 	addc	a,(_uartStartTxDmaChan_PARM_4 + 1)
      00067E F5 27            [12] 1373 	mov	(_uartStartTxDmaChan_sloc0_1_0 + 1),a
      000680 85 22 28         [24] 1374 	mov	(_uartStartTxDmaChan_sloc0_1_0 + 2),(_uartStartTxDmaChan_PARM_4 + 2)
      000683 AF 27            [24] 1375 	mov	r7,(_uartStartTxDmaChan_sloc0_1_0 + 1)
      000685 8F 00            [24] 1376 	mov	ar0,r7
      000687 8C 82            [24] 1377 	mov	dpl,r4
      000689 8D 83            [24] 1378 	mov	dph,r5
      00068B 8E F0            [24] 1379 	mov	b,r6
      00068D E8               [12] 1380 	mov	a,r0
      00068E 12 0C 69         [24] 1381 	lcall	__gptrput
                                   1382 ;	dma.c:126: uartDmaTxDescr->SRCADDRL = (unsigned short)(uartTxBuf + 1);
      000691 74 01            [12] 1383 	mov	a,#0x01
      000693 2C               [12] 1384 	add	a,r4
      000694 F5 29            [12] 1385 	mov	_uartStartTxDmaChan_sloc1_1_0,a
      000696 E4               [12] 1386 	clr	a
      000697 3D               [12] 1387 	addc	a,r5
      000698 F5 2A            [12] 1388 	mov	(_uartStartTxDmaChan_sloc1_1_0 + 1),a
      00069A 8E 2B            [24] 1389 	mov	(_uartStartTxDmaChan_sloc1_1_0 + 2),r6
      00069C A9 26            [24] 1390 	mov	r1,_uartStartTxDmaChan_sloc0_1_0
      00069E 85 29 82         [24] 1391 	mov	dpl,_uartStartTxDmaChan_sloc1_1_0
      0006A1 85 2A 83         [24] 1392 	mov	dph,(_uartStartTxDmaChan_sloc1_1_0 + 1)
      0006A4 85 2B F0         [24] 1393 	mov	b,(_uartStartTxDmaChan_sloc1_1_0 + 2)
      0006A7 E9               [12] 1394 	mov	a,r1
      0006A8 12 0C 69         [24] 1395 	lcall	__gptrput
                                   1396 ;	dma.c:127: uartDmaTxDescr->DESTADDRH = 0xDF;
      0006AB 74 02            [12] 1397 	mov	a,#0x02
      0006AD 2C               [12] 1398 	add	a,r4
      0006AE FA               [12] 1399 	mov	r2,a
      0006AF E4               [12] 1400 	clr	a
      0006B0 3D               [12] 1401 	addc	a,r5
      0006B1 FB               [12] 1402 	mov	r3,a
      0006B2 8E 07            [24] 1403 	mov	ar7,r6
      0006B4 8A 82            [24] 1404 	mov	dpl,r2
      0006B6 8B 83            [24] 1405 	mov	dph,r3
      0006B8 8F F0            [24] 1406 	mov	b,r7
      0006BA 74 DF            [12] 1407 	mov	a,#0xdf
      0006BC 12 0C 69         [24] 1408 	lcall	__gptrput
                                   1409 ;	dma.c:128: uartDmaTxDescr->DESTADDRL = (uartNum == 0) ? 0xC1 : 0xF9;
      0006BF 74 03            [12] 1410 	mov	a,#0x03
      0006C1 2C               [12] 1411 	add	a,r4
      0006C2 FA               [12] 1412 	mov	r2,a
      0006C3 E4               [12] 1413 	clr	a
      0006C4 3D               [12] 1414 	addc	a,r5
      0006C5 FB               [12] 1415 	mov	r3,a
      0006C6 8E 07            [24] 1416 	mov	ar7,r6
      0006C8 E5 25            [12] 1417 	mov	a,_uartStartTxDmaChan_uartNum_1_12
      0006CA 70 05            [24] 1418 	jnz	00109$
      0006CC 78 C1            [12] 1419 	mov	r0,#0xc1
      0006CE F9               [12] 1420 	mov	r1,a
      0006CF 80 04            [24] 1421 	sjmp	00110$
      0006D1                       1422 00109$:
      0006D1 78 F9            [12] 1423 	mov	r0,#0xf9
      0006D3 79 00            [12] 1424 	mov	r1,#0x00
      0006D5                       1425 00110$:
      0006D5 8A 82            [24] 1426 	mov	dpl,r2
      0006D7 8B 83            [24] 1427 	mov	dph,r3
      0006D9 8F F0            [24] 1428 	mov	b,r7
      0006DB E8               [12] 1429 	mov	a,r0
      0006DC 12 0C 69         [24] 1430 	lcall	__gptrput
                                   1431 ;	dma.c:129: uartDmaTxDescr->LENH = ((shortuartTxBufSize - 1) >> 8) & 0xFF;
      0006DF 74 04            [12] 1432 	mov	a,#0x04
      0006E1 2C               [12] 1433 	add	a,r4
      0006E2 FA               [12] 1434 	mov	r2,a
      0006E3 E4               [12] 1435 	clr	a
      0006E4 3D               [12] 1436 	addc	a,r5
      0006E5 FB               [12] 1437 	mov	r3,a
      0006E6 8E 07            [24] 1438 	mov	ar7,r6
      0006E8 E5 23            [12] 1439 	mov	a,_uartStartTxDmaChan_PARM_5
      0006EA 24 FF            [12] 1440 	add	a,#0xff
      0006EC E5 24            [12] 1441 	mov	a,(_uartStartTxDmaChan_PARM_5 + 1)
      0006EE 34 FF            [12] 1442 	addc	a,#0xff
      0006F0 F8               [12] 1443 	mov	r0,a
      0006F1 53 00 1F         [24] 1444 	anl	ar0,#0x1f
      0006F4 8A 82            [24] 1445 	mov	dpl,r2
      0006F6 8B 83            [24] 1446 	mov	dph,r3
      0006F8 8F F0            [24] 1447 	mov	b,r7
      0006FA E8               [12] 1448 	mov	a,r0
      0006FB C4               [12] 1449 	swap	a
      0006FC 03               [12] 1450 	rr	a
      0006FD 54 F8            [12] 1451 	anl	a,#(0xf8&0xf8)
      0006FF C0 F0            [24] 1452 	push	b
      000701 C0 E0            [24] 1453 	push	acc
      000703 12 0D DA         [24] 1454 	lcall	__gptrget
      000706 D0 F0            [24] 1455 	pop	b
      000708 54 07            [12] 1456 	anl	a,#0x07
      00070A 45 F0            [12] 1457 	orl	a,b
      00070C D0 F0            [24] 1458 	pop	b
      00070E 12 0C 69         [24] 1459 	lcall	__gptrput
                                   1460 ;	dma.c:130: uartDmaTxDescr->LENL = (shortuartTxBufSize - 1) & 0xFF;
      000711 74 05            [12] 1461 	mov	a,#0x05
      000713 2C               [12] 1462 	add	a,r4
      000714 FA               [12] 1463 	mov	r2,a
      000715 E4               [12] 1464 	clr	a
      000716 3D               [12] 1465 	addc	a,r5
      000717 FB               [12] 1466 	mov	r3,a
      000718 8E 07            [24] 1467 	mov	ar7,r6
      00071A A9 23            [24] 1468 	mov	r1,_uartStartTxDmaChan_PARM_5
      00071C 19               [12] 1469 	dec	r1
      00071D 8A 82            [24] 1470 	mov	dpl,r2
      00071F 8B 83            [24] 1471 	mov	dph,r3
      000721 8F F0            [24] 1472 	mov	b,r7
      000723 E9               [12] 1473 	mov	a,r1
      000724 12 0C 69         [24] 1474 	lcall	__gptrput
                                   1475 ;	dma.c:131: uartDmaTxDescr->VLEN = 0x00;
      000727 74 04            [12] 1476 	mov	a,#0x04
      000729 2C               [12] 1477 	add	a,r4
      00072A FA               [12] 1478 	mov	r2,a
      00072B E4               [12] 1479 	clr	a
      00072C 3D               [12] 1480 	addc	a,r5
      00072D FB               [12] 1481 	mov	r3,a
      00072E 8E 07            [24] 1482 	mov	ar7,r6
      000730 8A 82            [24] 1483 	mov	dpl,r2
      000732 8B 83            [24] 1484 	mov	dph,r3
      000734 8F F0            [24] 1485 	mov	b,r7
      000736 12 0D DA         [24] 1486 	lcall	__gptrget
      000739 54 F8            [12] 1487 	anl	a,#0xf8
      00073B 12 0C 69         [24] 1488 	lcall	__gptrput
                                   1489 ;	dma.c:133: uartDmaTxDescr->WORDSIZE = 0x00;
      00073E 74 06            [12] 1490 	mov	a,#0x06
      000740 2C               [12] 1491 	add	a,r4
      000741 FA               [12] 1492 	mov	r2,a
      000742 E4               [12] 1493 	clr	a
      000743 3D               [12] 1494 	addc	a,r5
      000744 FB               [12] 1495 	mov	r3,a
      000745 8E 07            [24] 1496 	mov	ar7,r6
      000747 8A 82            [24] 1497 	mov	dpl,r2
      000749 8B 83            [24] 1498 	mov	dph,r3
      00074B 8F F0            [24] 1499 	mov	b,r7
      00074D 12 0D DA         [24] 1500 	lcall	__gptrget
      000750 54 FE            [12] 1501 	anl	a,#0xfe
      000752 12 0C 69         [24] 1502 	lcall	__gptrput
                                   1503 ;	dma.c:135: uartDmaTxDescr->TMODE = 0x00;  // Single byte transfer per DMA trigger
      000755 74 06            [12] 1504 	mov	a,#0x06
      000757 2C               [12] 1505 	add	a,r4
      000758 FA               [12] 1506 	mov	r2,a
      000759 E4               [12] 1507 	clr	a
      00075A 3D               [12] 1508 	addc	a,r5
      00075B FB               [12] 1509 	mov	r3,a
      00075C 8E 07            [24] 1510 	mov	ar7,r6
      00075E 8A 82            [24] 1511 	mov	dpl,r2
      000760 8B 83            [24] 1512 	mov	dph,r3
      000762 8F F0            [24] 1513 	mov	b,r7
      000764 12 0D DA         [24] 1514 	lcall	__gptrget
      000767 54 F9            [12] 1515 	anl	a,#0xf9
      000769 12 0C 69         [24] 1516 	lcall	__gptrput
                                   1517 ;	dma.c:136: uartDmaTxDescr->TRIG = 15 + (2 * uartNum);
      00076C 74 06            [12] 1518 	mov	a,#0x06
      00076E 2C               [12] 1519 	add	a,r4
      00076F FA               [12] 1520 	mov	r2,a
      000770 E4               [12] 1521 	clr	a
      000771 3D               [12] 1522 	addc	a,r5
      000772 FB               [12] 1523 	mov	r3,a
      000773 8E 07            [24] 1524 	mov	ar7,r6
      000775 E5 25            [12] 1525 	mov	a,_uartStartTxDmaChan_uartNum_1_12
      000777 25 E0            [12] 1526 	add	a,acc
      000779 24 0F            [12] 1527 	add	a,#0x0f
      00077B F9               [12] 1528 	mov	r1,a
      00077C 8A 82            [24] 1529 	mov	dpl,r2
      00077E 8B 83            [24] 1530 	mov	dph,r3
      000780 8F F0            [24] 1531 	mov	b,r7
      000782 C4               [12] 1532 	swap	a
      000783 03               [12] 1533 	rr	a
      000784 54 F8            [12] 1534 	anl	a,#(0xf8&0xf8)
      000786 C0 F0            [24] 1535 	push	b
      000788 C0 E0            [24] 1536 	push	acc
      00078A 12 0D DA         [24] 1537 	lcall	__gptrget
      00078D D0 F0            [24] 1538 	pop	b
      00078F 54 07            [12] 1539 	anl	a,#0x07
      000791 45 F0            [12] 1540 	orl	a,b
      000793 D0 F0            [24] 1541 	pop	b
      000795 12 0C 69         [24] 1542 	lcall	__gptrput
                                   1543 ;	dma.c:138: uartDmaTxDescr->SRCINC = 0x01;
      000798 74 07            [12] 1544 	mov	a,#0x07
      00079A 2C               [12] 1545 	add	a,r4
      00079B FA               [12] 1546 	mov	r2,a
      00079C E4               [12] 1547 	clr	a
      00079D 3D               [12] 1548 	addc	a,r5
      00079E FB               [12] 1549 	mov	r3,a
      00079F 8E 07            [24] 1550 	mov	ar7,r6
      0007A1 8A 82            [24] 1551 	mov	dpl,r2
      0007A3 8B 83            [24] 1552 	mov	dph,r3
      0007A5 8F F0            [24] 1553 	mov	b,r7
      0007A7 12 0D DA         [24] 1554 	lcall	__gptrget
      0007AA 54 FC            [12] 1555 	anl	a,#0xfc
      0007AC 44 01            [12] 1556 	orl	a,#0x01
      0007AE 12 0C 69         [24] 1557 	lcall	__gptrput
                                   1558 ;	dma.c:141: uartDmaTxDescr->DESTINC = 0x00;
      0007B1 74 07            [12] 1559 	mov	a,#0x07
      0007B3 2C               [12] 1560 	add	a,r4
      0007B4 FA               [12] 1561 	mov	r2,a
      0007B5 E4               [12] 1562 	clr	a
      0007B6 3D               [12] 1563 	addc	a,r5
      0007B7 FB               [12] 1564 	mov	r3,a
      0007B8 8E 07            [24] 1565 	mov	ar7,r6
      0007BA 8A 82            [24] 1566 	mov	dpl,r2
      0007BC 8B 83            [24] 1567 	mov	dph,r3
      0007BE 8F F0            [24] 1568 	mov	b,r7
      0007C0 12 0D DA         [24] 1569 	lcall	__gptrget
      0007C3 54 F3            [12] 1570 	anl	a,#0xf3
      0007C5 12 0C 69         [24] 1571 	lcall	__gptrput
                                   1572 ;	dma.c:144: uartDmaTxDescr->IRQMASK = 0x01;
      0007C8 74 07            [12] 1573 	mov	a,#0x07
      0007CA 2C               [12] 1574 	add	a,r4
      0007CB FA               [12] 1575 	mov	r2,a
      0007CC E4               [12] 1576 	clr	a
      0007CD 3D               [12] 1577 	addc	a,r5
      0007CE FB               [12] 1578 	mov	r3,a
      0007CF 8E 07            [24] 1579 	mov	ar7,r6
      0007D1 8A 82            [24] 1580 	mov	dpl,r2
      0007D3 8B 83            [24] 1581 	mov	dph,r3
      0007D5 8F F0            [24] 1582 	mov	b,r7
      0007D7 12 0D DA         [24] 1583 	lcall	__gptrget
      0007DA 44 10            [12] 1584 	orl	a,#0x10
      0007DC 12 0C 69         [24] 1585 	lcall	__gptrput
                                   1586 ;	dma.c:146: uartDmaTxDescr->M8 = 0x00;
      0007DF 74 07            [12] 1587 	mov	a,#0x07
      0007E1 2C               [12] 1588 	add	a,r4
      0007E2 FA               [12] 1589 	mov	r2,a
      0007E3 E4               [12] 1590 	clr	a
      0007E4 3D               [12] 1591 	addc	a,r5
      0007E5 FB               [12] 1592 	mov	r3,a
      0007E6 8E 07            [24] 1593 	mov	ar7,r6
      0007E8 8A 82            [24] 1594 	mov	dpl,r2
      0007EA 8B 83            [24] 1595 	mov	dph,r3
      0007EC 8F F0            [24] 1596 	mov	b,r7
      0007EE 12 0D DA         [24] 1597 	lcall	__gptrget
      0007F1 54 DF            [12] 1598 	anl	a,#0xdf
      0007F3 12 0C 69         [24] 1599 	lcall	__gptrput
                                   1600 ;	dma.c:148: uartDmaTxDescr->PRIORITY = 0x00;
      0007F6 74 07            [12] 1601 	mov	a,#0x07
      0007F8 2C               [12] 1602 	add	a,r4
      0007F9 FC               [12] 1603 	mov	r4,a
      0007FA E4               [12] 1604 	clr	a
      0007FB 3D               [12] 1605 	addc	a,r5
      0007FC FD               [12] 1606 	mov	r5,a
      0007FD 8C 82            [24] 1607 	mov	dpl,r4
      0007FF 8D 83            [24] 1608 	mov	dph,r5
      000801 8E F0            [24] 1609 	mov	b,r6
      000803 12 0D DA         [24] 1610 	lcall	__gptrget
      000806 54 3F            [12] 1611 	anl	a,#0x3f
      000808 12 0C 69         [24] 1612 	lcall	__gptrput
                                   1613 ;	dma.c:151: if (uartDmaTxChan <1)
      00080B 74 FF            [12] 1614 	mov	a,#0x100 - 0x01
      00080D 25 1F            [12] 1615 	add	a,_uartStartTxDmaChan_PARM_3
      00080F 40 0B            [24] 1616 	jc	00102$
                                   1617 ;	dma.c:153: DMA0CFGH = (unsigned char)((unsigned short)uartDmaTxDescr >> 8);
      000811 AE 1C            [24] 1618 	mov	r6,_uartStartTxDmaChan_PARM_2
      000813 AF 1D            [24] 1619 	mov	r7,(_uartStartTxDmaChan_PARM_2 + 1)
      000815 8F D5            [24] 1620 	mov	_DMA0CFGH,r7
                                   1621 ;	dma.c:154: DMA0CFGL = (unsigned char)((unsigned short)uartDmaTxDescr & 0x00FF);
      000817 85 1C D4         [24] 1622 	mov	_DMA0CFGL,_uartStartTxDmaChan_PARM_2
      00081A 80 09            [24] 1623 	sjmp	00103$
      00081C                       1624 00102$:
                                   1625 ;	dma.c:158: DMA1CFGH = (unsigned char)((unsigned short)uartDmaTxDescr >> 8);
      00081C AE 1C            [24] 1626 	mov	r6,_uartStartTxDmaChan_PARM_2
      00081E AF 1D            [24] 1627 	mov	r7,(_uartStartTxDmaChan_PARM_2 + 1)
      000820 8F D3            [24] 1628 	mov	_DMA1CFGH,r7
                                   1629 ;	dma.c:159: DMA1CFGL = (unsigned char)((unsigned short)uartDmaTxDescr & 0x00FF);
      000822 85 1C D2         [24] 1630 	mov	_DMA1CFGL,_uartStartTxDmaChan_PARM_2
      000825                       1631 00103$:
                                   1632 ;	dma.c:162: DMAARM = ((1 << uartDmaTxChan) & 0x1F);
      000825 AF 1F            [24] 1633 	mov	r7,_uartStartTxDmaChan_PARM_3
      000827 8F F0            [24] 1634 	mov	b,r7
      000829 05 F0            [12] 1635 	inc	b
      00082B 74 01            [12] 1636 	mov	a,#0x01
      00082D 80 02            [24] 1637 	sjmp	00124$
      00082F                       1638 00122$:
      00082F 25 E0            [12] 1639 	add	a,acc
      000831                       1640 00124$:
      000831 D5 F0 FB         [24] 1641 	djnz	b,00122$
      000834 FF               [12] 1642 	mov	r7,a
      000835 74 1F            [12] 1643 	mov	a,#0x1f
      000837 5F               [12] 1644 	anl	a,r7
      000838 F5 D6            [12] 1645 	mov	_DMAARM,a
                                   1646 ;	dma.c:163: __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP");
      00083A 00               [12] 1647 	NOP
      00083B 00               [12] 1648 	NOP
      00083C 00               [12] 1649 	NOP
      00083D 00               [12] 1650 	NOP
      00083E 00               [12] 1651 	NOP
      00083F 00               [12] 1652 	NOP
      000840 00               [12] 1653 	NOP
                                   1654 ;	dma.c:164: __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP");
      000841 00               [12] 1655 	NOP
      000842 00               [12] 1656 	NOP
      000843 00               [12] 1657 	NOP
      000844 00               [12] 1658 	NOP
      000845 00               [12] 1659 	NOP
      000846 00               [12] 1660 	NOP
      000847 00               [12] 1661 	NOP
                                   1662 ;	dma.c:165: __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP");
      000848 00               [12] 1663 	NOP
      000849 00               [12] 1664 	NOP
      00084A 00               [12] 1665 	NOP
      00084B 00               [12] 1666 	NOP
      00084C 00               [12] 1667 	NOP
      00084D 00               [12] 1668 	NOP
      00084E 00               [12] 1669 	NOP
                                   1670 ;	dma.c:166: __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP");
      00084F 00               [12] 1671 	NOP
      000850 00               [12] 1672 	NOP
      000851 00               [12] 1673 	NOP
      000852 00               [12] 1674 	NOP
      000853 00               [12] 1675 	NOP
      000854 00               [12] 1676 	NOP
      000855 00               [12] 1677 	NOP
                                   1678 ;	dma.c:167: __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP");
      000856 00               [12] 1679 	NOP
      000857 00               [12] 1680 	NOP
      000858 00               [12] 1681 	NOP
      000859 00               [12] 1682 	NOP
      00085A 00               [12] 1683 	NOP
      00085B 00               [12] 1684 	NOP
      00085C 00               [12] 1685 	NOP
                                   1686 ;	dma.c:168: __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP"); __asm__("NOP");
      00085D 00               [12] 1687 	NOP
      00085E 00               [12] 1688 	NOP
      00085F 00               [12] 1689 	NOP
      000860 00               [12] 1690 	NOP
      000861 00               [12] 1691 	NOP
      000862 00               [12] 1692 	NOP
      000863 00               [12] 1693 	NOP
                                   1694 ;	dma.c:169: __asm__("NOP"); __asm__("NOP"); __asm__("NOP");
      000864 00               [12] 1695 	NOP
      000865 00               [12] 1696 	NOP
      000866 00               [12] 1697 	NOP
                                   1698 ;	dma.c:172: IEN0 |= 0x80; IEN1 |= 0x01; IRCON &= ~0x01;
      000867 AE A8            [24] 1699 	mov	r6,_IEN0
      000869 43 06 80         [24] 1700 	orl	ar6,#0x80
      00086C 8E A8            [24] 1701 	mov	_IEN0,r6
      00086E AE B8            [24] 1702 	mov	r6,_IEN1
      000870 7F 00            [12] 1703 	mov	r7,#0x00
      000872 43 06 01         [24] 1704 	orl	ar6,#0x01
      000875 8E B8            [24] 1705 	mov	_IEN1,r6
      000877 53 C0 FE         [24] 1706 	anl	_IRCON,#0xfe
                                   1707 ;	dma.c:174: if (uartNum == 0)
      00087A E5 25            [12] 1708 	mov	a,_uartStartTxDmaChan_uartNum_1_12
      00087C 70 12            [24] 1709 	jnz	00105$
                                   1710 ;	dma.c:176: U0DBUF = uartTxBuf[0];
      00087E AD 20            [24] 1711 	mov	r5,_uartStartTxDmaChan_PARM_4
      000880 AE 21            [24] 1712 	mov	r6,(_uartStartTxDmaChan_PARM_4 + 1)
      000882 AF 22            [24] 1713 	mov	r7,(_uartStartTxDmaChan_PARM_4 + 2)
      000884 8D 82            [24] 1714 	mov	dpl,r5
      000886 8E 83            [24] 1715 	mov	dph,r6
      000888 8F F0            [24] 1716 	mov	b,r7
      00088A 12 0D DA         [24] 1717 	lcall	__gptrget
      00088D F5 C1            [12] 1718 	mov	_U0DBUF,a
      00088F 22               [24] 1719 	ret
      000890                       1720 00105$:
                                   1721 ;	dma.c:180: U1DBUF = uartTxBuf[0];
      000890 AD 20            [24] 1722 	mov	r5,_uartStartTxDmaChan_PARM_4
      000892 AE 21            [24] 1723 	mov	r6,(_uartStartTxDmaChan_PARM_4 + 1)
      000894 AF 22            [24] 1724 	mov	r7,(_uartStartTxDmaChan_PARM_4 + 2)
      000896 8D 82            [24] 1725 	mov	dpl,r5
      000898 8E 83            [24] 1726 	mov	dph,r6
      00089A 8F F0            [24] 1727 	mov	b,r7
      00089C 12 0D DA         [24] 1728 	lcall	__gptrget
      00089F F5 F9            [12] 1729 	mov	_U1DBUF,a
                                   1730 ;	dma.c:187: }
      0008A1 22               [24] 1731 	ret
                                   1732 	.area CSEG    (CODE)
                                   1733 	.area CONST   (CODE)
                                   1734 	.area XINIT   (CODE)
                                   1735 	.area CABS    (ABS,CODE)
