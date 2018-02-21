                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.9 #10185 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module uart
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _uartInitBitrate_PARM_2
                                     12 	.globl _uartMapPort_PARM_2
                                     13 	.globl _MODE
                                     14 	.globl _RE
                                     15 	.globl _SLAVE
                                     16 	.globl _FE
                                     17 	.globl _ERR
                                     18 	.globl _RX_BYTE
                                     19 	.globl _TX_BYTE
                                     20 	.globl _ACTIVE
                                     21 	.globl _B_7
                                     22 	.globl _B_6
                                     23 	.globl _B_5
                                     24 	.globl _B_4
                                     25 	.globl _B_3
                                     26 	.globl _B_2
                                     27 	.globl _B_1
                                     28 	.globl _B_0
                                     29 	.globl _WDTIF
                                     30 	.globl _P1IF
                                     31 	.globl _UTX1IF
                                     32 	.globl _UTX0IF
                                     33 	.globl _P2IF
                                     34 	.globl _ACC_7
                                     35 	.globl _ACC_6
                                     36 	.globl _ACC_5
                                     37 	.globl _ACC_4
                                     38 	.globl _ACC_3
                                     39 	.globl _ACC_2
                                     40 	.globl _ACC_1
                                     41 	.globl _ACC_0
                                     42 	.globl _OVFIM
                                     43 	.globl _T4CH1IF
                                     44 	.globl _T4CH0IF
                                     45 	.globl _T4OVFIF
                                     46 	.globl _T3CH1IF
                                     47 	.globl _T3CH0IF
                                     48 	.globl _T3OVFIF
                                     49 	.globl _CY
                                     50 	.globl _AC
                                     51 	.globl _F0
                                     52 	.globl _RS1
                                     53 	.globl _RS0
                                     54 	.globl _OV
                                     55 	.globl _F1
                                     56 	.globl _P
                                     57 	.globl _STIF
                                     58 	.globl _P0IF
                                     59 	.globl _T4IF
                                     60 	.globl _T3IF
                                     61 	.globl _T2IF
                                     62 	.globl _T1IF
                                     63 	.globl _DMAIF
                                     64 	.globl _P0IE
                                     65 	.globl _T4IE
                                     66 	.globl _T3IE
                                     67 	.globl _T2IE
                                     68 	.globl _T1IE
                                     69 	.globl _DMAIE
                                     70 	.globl _EA
                                     71 	.globl _STIE
                                     72 	.globl _ENCIE
                                     73 	.globl _URX1IE
                                     74 	.globl _URX0IE
                                     75 	.globl _ADCIE
                                     76 	.globl _RFTXRXIE
                                     77 	.globl _P2_7
                                     78 	.globl _P2_6
                                     79 	.globl _P2_5
                                     80 	.globl _P2_4
                                     81 	.globl _P2_3
                                     82 	.globl _P2_2
                                     83 	.globl _P2_1
                                     84 	.globl _P2_0
                                     85 	.globl _ENCIF_1
                                     86 	.globl _ENCIF_0
                                     87 	.globl _P1_7
                                     88 	.globl _P1_6
                                     89 	.globl _P1_5
                                     90 	.globl _P1_4
                                     91 	.globl _P1_3
                                     92 	.globl _P1_2
                                     93 	.globl _P1_1
                                     94 	.globl _P1_0
                                     95 	.globl _URX1IF
                                     96 	.globl _ADCIF
                                     97 	.globl _URX0IF
                                     98 	.globl _IT1
                                     99 	.globl _RFTXRXIF
                                    100 	.globl _IT0
                                    101 	.globl _P0_7
                                    102 	.globl _P0_6
                                    103 	.globl _P0_5
                                    104 	.globl _P0_4
                                    105 	.globl _P0_3
                                    106 	.globl _P0_2
                                    107 	.globl _P0_1
                                    108 	.globl _P0_0
                                    109 	.globl _P2DIR
                                    110 	.globl _P1DIR
                                    111 	.globl _P0DIR
                                    112 	.globl _U1GCR
                                    113 	.globl _U1UCR
                                    114 	.globl _U1BAUD
                                    115 	.globl _U1DBUF
                                    116 	.globl _U1CSR
                                    117 	.globl _P2INP
                                    118 	.globl _P1INP
                                    119 	.globl _P2SEL
                                    120 	.globl _P1SEL
                                    121 	.globl _P0SEL
                                    122 	.globl _ADCCFG
                                    123 	.globl _PERCFG
                                    124 	.globl _B
                                    125 	.globl _T4CC1
                                    126 	.globl _T4CCTL1
                                    127 	.globl _T4CC0
                                    128 	.globl _T4CCTL0
                                    129 	.globl _T4CTL
                                    130 	.globl _T4CNT
                                    131 	.globl _RFIF
                                    132 	.globl _IRCON2
                                    133 	.globl _T1CCTL2
                                    134 	.globl _T1CCTL1
                                    135 	.globl _T1CCTL0
                                    136 	.globl _T1CTL
                                    137 	.globl _T1CNTH
                                    138 	.globl _T1CNTL
                                    139 	.globl _RFST
                                    140 	.globl _ACC
                                    141 	.globl _T1CC2H
                                    142 	.globl _T1CC2L
                                    143 	.globl _T1CC1H
                                    144 	.globl _T1CC1L
                                    145 	.globl _T1CC0H
                                    146 	.globl _T1CC0L
                                    147 	.globl _RFD
                                    148 	.globl _TIMIF
                                    149 	.globl _DMAREQ
                                    150 	.globl _DMAARM
                                    151 	.globl _DMA0CFGH
                                    152 	.globl _DMA0CFGL
                                    153 	.globl _DMA1CFGH
                                    154 	.globl _DMA1CFGL
                                    155 	.globl _DMAIRQ
                                    156 	.globl _PSW
                                    157 	.globl _T3CC1
                                    158 	.globl _T3CCTL1
                                    159 	.globl _T3CC0
                                    160 	.globl _T3CCTL0
                                    161 	.globl _T3CTL
                                    162 	.globl _T3CNT
                                    163 	.globl _WDCTL
                                    164 	.globl __SFRC8
                                    165 	.globl _MEMCTR
                                    166 	.globl _CLKCON
                                    167 	.globl _U0GCR
                                    168 	.globl _U0UCR
                                    169 	.globl __SFRC3
                                    170 	.globl _U0BAUD
                                    171 	.globl _U0DBUF
                                    172 	.globl _IRCON
                                    173 	.globl __SFRBF
                                    174 	.globl _SLEEP
                                    175 	.globl _RNDH
                                    176 	.globl _RNDL
                                    177 	.globl _ADCH
                                    178 	.globl _ADCL
                                    179 	.globl _IP1
                                    180 	.globl _IEN1
                                    181 	.globl __SFRB7
                                    182 	.globl _ADCCON3
                                    183 	.globl _ADCCON2
                                    184 	.globl _ADCCON1
                                    185 	.globl _ENCCS
                                    186 	.globl _ENCDO
                                    187 	.globl _ENCDI
                                    188 	.globl __SFRB0
                                    189 	.globl _FWDATA
                                    190 	.globl _FCTL
                                    191 	.globl _FADDRH
                                    192 	.globl _FADDRL
                                    193 	.globl _FWT
                                    194 	.globl __SFRAA
                                    195 	.globl _IP0
                                    196 	.globl _IEN0
                                    197 	.globl __SFRA7
                                    198 	.globl _WORTIME1
                                    199 	.globl _WORTIME0
                                    200 	.globl _WOREVT1
                                    201 	.globl _WOREVT0
                                    202 	.globl _WORCTRL
                                    203 	.globl _WORIRQ
                                    204 	.globl _P2
                                    205 	.globl __SFR9F
                                    206 	.globl _T2CTL
                                    207 	.globl _T2PR
                                    208 	.globl _T2CT
                                    209 	.globl _S1CON
                                    210 	.globl _IEN2
                                    211 	.globl __SFR99
                                    212 	.globl _S0CON
                                    213 	.globl __SFR97
                                    214 	.globl __SFR96
                                    215 	.globl __SFR95
                                    216 	.globl __SFR94
                                    217 	.globl __XPAGE
                                    218 	.globl _MPAGE
                                    219 	.globl _DPS
                                    220 	.globl _RFIM
                                    221 	.globl _P1
                                    222 	.globl _P0INP
                                    223 	.globl __SFR8E
                                    224 	.globl _P1IEN
                                    225 	.globl _PICTL
                                    226 	.globl _P2IFG
                                    227 	.globl _P1IFG
                                    228 	.globl _P0IFG
                                    229 	.globl _TCON
                                    230 	.globl _PCON
                                    231 	.globl _U0CSR
                                    232 	.globl _DPH1
                                    233 	.globl _DPL1
                                    234 	.globl _DPH0
                                    235 	.globl _DPL0
                                    236 	.globl _SP
                                    237 	.globl _P0
                                    238 	.globl _X_P2DIR
                                    239 	.globl _X_P1DIR
                                    240 	.globl _X_P0DIR
                                    241 	.globl _X_U1GCR
                                    242 	.globl _X_U1UCR
                                    243 	.globl _X_U1BAUD
                                    244 	.globl _X_U1DBUF
                                    245 	.globl _X_U1CSR
                                    246 	.globl _X_P2INP
                                    247 	.globl _X_P1INP
                                    248 	.globl _X_P2SEL
                                    249 	.globl _X_P1SEL
                                    250 	.globl _X_P0SEL
                                    251 	.globl _X_ADCCFG
                                    252 	.globl _X_PERCFG
                                    253 	.globl __NA_B
                                    254 	.globl _X_T4CC1
                                    255 	.globl _X_T4CCTL1
                                    256 	.globl _X_T4CC0
                                    257 	.globl _X_T4CCTL0
                                    258 	.globl _X_T4CTL
                                    259 	.globl _X_T4CNT
                                    260 	.globl _X_RFIF
                                    261 	.globl __NA_IRCON2
                                    262 	.globl _X_T1CCTL2
                                    263 	.globl _X_T1CCTL1
                                    264 	.globl _X_T1CCTL0
                                    265 	.globl _X_T1CTL
                                    266 	.globl _X_T1CNTH
                                    267 	.globl _X_T1CNTL
                                    268 	.globl _X_RFST
                                    269 	.globl __NA_ACC
                                    270 	.globl _X_T1CC2H
                                    271 	.globl _X_T1CC2L
                                    272 	.globl _X_T1CC1H
                                    273 	.globl _X_T1CC1L
                                    274 	.globl _X_T1CC0H
                                    275 	.globl _X_T1CC0L
                                    276 	.globl _X_RFD
                                    277 	.globl _X_TIMIF
                                    278 	.globl _X_DMAREQ
                                    279 	.globl _X_DMAARM
                                    280 	.globl _X_DMA0CFGH
                                    281 	.globl _X_DMA0CFGL
                                    282 	.globl _X_DMA1CFGH
                                    283 	.globl _X_DMA1CFGL
                                    284 	.globl _X_DMAIRQ
                                    285 	.globl __NA_PSW
                                    286 	.globl _X_T3CC1
                                    287 	.globl _X_T3CCTL1
                                    288 	.globl _X_T3CC0
                                    289 	.globl _X_T3CCTL0
                                    290 	.globl _X_T3CTL
                                    291 	.globl _X_T3CNT
                                    292 	.globl _X_WDCTL
                                    293 	.globl __X_SFRC8
                                    294 	.globl _X_MEMCTR
                                    295 	.globl _X_CLKCON
                                    296 	.globl _X_U0GCR
                                    297 	.globl _X_U0UCR
                                    298 	.globl __X_SFRC3
                                    299 	.globl _X_U0BAUD
                                    300 	.globl _X_U0DBUF
                                    301 	.globl __NA_IRCON
                                    302 	.globl __X_SFRBF
                                    303 	.globl _X_SLEEP
                                    304 	.globl _X_RNDH
                                    305 	.globl _X_RNDL
                                    306 	.globl _X_ADCH
                                    307 	.globl _X_ADCL
                                    308 	.globl __NA_IP1
                                    309 	.globl __NA_IEN1
                                    310 	.globl __X_SFRB7
                                    311 	.globl _X_ADCCON3
                                    312 	.globl _X_ADCCON2
                                    313 	.globl _X_ADCCON1
                                    314 	.globl _X_ENCCS
                                    315 	.globl _X_ENCDO
                                    316 	.globl _X_ENCDI
                                    317 	.globl __X_SFRB0
                                    318 	.globl _X_FWDATA
                                    319 	.globl _X_FCTL
                                    320 	.globl _X_FADDRH
                                    321 	.globl _X_FADDRL
                                    322 	.globl _X_FWT
                                    323 	.globl __X_SFRAA
                                    324 	.globl __NA_IP0
                                    325 	.globl __NA_IEN0
                                    326 	.globl __X_SFRA7
                                    327 	.globl _X_WORTIME1
                                    328 	.globl _X_WORTIME0
                                    329 	.globl _X_WOREVT1
                                    330 	.globl _X_WOREVT0
                                    331 	.globl _X_WORCTRL
                                    332 	.globl _X_WORIRQ
                                    333 	.globl __NA_P2
                                    334 	.globl __X_SFR9F
                                    335 	.globl _X_T2CTL
                                    336 	.globl _X_T2PR
                                    337 	.globl _X_T2CT
                                    338 	.globl __NA_S1CON
                                    339 	.globl __NA_IEN2
                                    340 	.globl __X_SFR99
                                    341 	.globl __NA_S0CON
                                    342 	.globl __X_SFR97
                                    343 	.globl __X_SFR96
                                    344 	.globl __X_SFR95
                                    345 	.globl __X_SFR94
                                    346 	.globl _X_MPAGE
                                    347 	.globl __NA_DPS
                                    348 	.globl _X_RFIM
                                    349 	.globl __NA_P1
                                    350 	.globl _X_P0INP
                                    351 	.globl __X_SFR8E
                                    352 	.globl _X_P1IEN
                                    353 	.globl _X_PICTL
                                    354 	.globl _X_P2IFG
                                    355 	.globl _X_P1IFG
                                    356 	.globl _X_P0IFG
                                    357 	.globl __NA_TCON
                                    358 	.globl __NA_PCON
                                    359 	.globl _X_U0CSR
                                    360 	.globl __NA_DPH1
                                    361 	.globl __NA_DPL1
                                    362 	.globl __NA_DPH0
                                    363 	.globl __NA_DPL0
                                    364 	.globl __NA_SP
                                    365 	.globl __NA_P0
                                    366 	.globl _I2SCLKF2
                                    367 	.globl _I2SCLKF1
                                    368 	.globl _I2SCLKF0
                                    369 	.globl _I2SSTAT
                                    370 	.globl _I2SWCNT
                                    371 	.globl _I2SDATH
                                    372 	.globl _I2SDATL
                                    373 	.globl _I2SCFG1
                                    374 	.globl _I2SCFG0
                                    375 	.globl _VCO_VC_DAC
                                    376 	.globl _PKTSTATUS
                                    377 	.globl _MARCSTATE
                                    378 	.globl _RSSI
                                    379 	.globl _LQI
                                    380 	.globl _FREQEST
                                    381 	.globl _VERSION
                                    382 	.globl _PARTNUM
                                    383 	.globl __XREGDF35
                                    384 	.globl __XREGDF34
                                    385 	.globl __XREGDF33
                                    386 	.globl __XREGDF32
                                    387 	.globl _IOCFG0
                                    388 	.globl _IOCFG1
                                    389 	.globl _IOCFG2
                                    390 	.globl _PA_TABLE0
                                    391 	.globl _PA_TABLE1
                                    392 	.globl _PA_TABLE2
                                    393 	.globl _PA_TABLE3
                                    394 	.globl _PA_TABLE4
                                    395 	.globl _PA_TABLE5
                                    396 	.globl _PA_TABLE6
                                    397 	.globl _PA_TABLE7
                                    398 	.globl __XREGDF26
                                    399 	.globl _TEST0
                                    400 	.globl _TEST1
                                    401 	.globl _TEST2
                                    402 	.globl __XREGDF22
                                    403 	.globl __XREGDF21
                                    404 	.globl __XREGDF20
                                    405 	.globl _FSCAL0
                                    406 	.globl _FSCAL1
                                    407 	.globl _FSCAL2
                                    408 	.globl _FSCAL3
                                    409 	.globl _FREND0
                                    410 	.globl _FREND1
                                    411 	.globl _AGCCTRL0
                                    412 	.globl _AGCCTRL1
                                    413 	.globl _AGCCTRL2
                                    414 	.globl _BSCFG
                                    415 	.globl _FOCCFG
                                    416 	.globl _MCSM0
                                    417 	.globl _MCSM1
                                    418 	.globl _MCSM2
                                    419 	.globl _DEVIATN
                                    420 	.globl _MDMCFG0
                                    421 	.globl _MDMCFG1
                                    422 	.globl _MDMCFG2
                                    423 	.globl _MDMCFG3
                                    424 	.globl _MDMCFG4
                                    425 	.globl _FREQ0
                                    426 	.globl _FREQ1
                                    427 	.globl _FREQ2
                                    428 	.globl _FSCTRL0
                                    429 	.globl _FSCTRL1
                                    430 	.globl _CHANNR
                                    431 	.globl _ADDR
                                    432 	.globl _PKTCTRL0
                                    433 	.globl _PKTCTRL1
                                    434 	.globl _PKTLEN
                                    435 	.globl _SYNC0
                                    436 	.globl _SYNC1
                                    437 	.globl _MDMCTRL0H
                                    438 	.globl _uartMapPort
                                    439 	.globl _uartInitBitrate
                                    440 	.globl _uartInitProtocol
                                    441 ;--------------------------------------------------------
                                    442 ; special function registers
                                    443 ;--------------------------------------------------------
                                    444 	.area RSEG    (ABS,DATA)
      000000                        445 	.org 0x0000
                           000080   446 _P0	=	0x0080
                           000081   447 _SP	=	0x0081
                           000082   448 _DPL0	=	0x0082
                           000083   449 _DPH0	=	0x0083
                           000084   450 _DPL1	=	0x0084
                           000085   451 _DPH1	=	0x0085
                           000086   452 _U0CSR	=	0x0086
                           000087   453 _PCON	=	0x0087
                           000088   454 _TCON	=	0x0088
                           000089   455 _P0IFG	=	0x0089
                           00008A   456 _P1IFG	=	0x008a
                           00008B   457 _P2IFG	=	0x008b
                           00008C   458 _PICTL	=	0x008c
                           00008D   459 _P1IEN	=	0x008d
                           00008E   460 __SFR8E	=	0x008e
                           00008F   461 _P0INP	=	0x008f
                           000090   462 _P1	=	0x0090
                           000091   463 _RFIM	=	0x0091
                           000092   464 _DPS	=	0x0092
                           000093   465 _MPAGE	=	0x0093
                           000093   466 __XPAGE	=	0x0093
                           000094   467 __SFR94	=	0x0094
                           000095   468 __SFR95	=	0x0095
                           000096   469 __SFR96	=	0x0096
                           000097   470 __SFR97	=	0x0097
                           000098   471 _S0CON	=	0x0098
                           000099   472 __SFR99	=	0x0099
                           00009A   473 _IEN2	=	0x009a
                           00009B   474 _S1CON	=	0x009b
                           00009C   475 _T2CT	=	0x009c
                           00009D   476 _T2PR	=	0x009d
                           00009E   477 _T2CTL	=	0x009e
                           00009F   478 __SFR9F	=	0x009f
                           0000A0   479 _P2	=	0x00a0
                           0000A1   480 _WORIRQ	=	0x00a1
                           0000A2   481 _WORCTRL	=	0x00a2
                           0000A3   482 _WOREVT0	=	0x00a3
                           0000A4   483 _WOREVT1	=	0x00a4
                           0000A5   484 _WORTIME0	=	0x00a5
                           0000A6   485 _WORTIME1	=	0x00a6
                           0000A7   486 __SFRA7	=	0x00a7
                           0000A8   487 _IEN0	=	0x00a8
                           0000A9   488 _IP0	=	0x00a9
                           0000AA   489 __SFRAA	=	0x00aa
                           0000AB   490 _FWT	=	0x00ab
                           0000AC   491 _FADDRL	=	0x00ac
                           0000AD   492 _FADDRH	=	0x00ad
                           0000AE   493 _FCTL	=	0x00ae
                           0000AF   494 _FWDATA	=	0x00af
                           0000B0   495 __SFRB0	=	0x00b0
                           0000B1   496 _ENCDI	=	0x00b1
                           0000B2   497 _ENCDO	=	0x00b2
                           0000B3   498 _ENCCS	=	0x00b3
                           0000B4   499 _ADCCON1	=	0x00b4
                           0000B5   500 _ADCCON2	=	0x00b5
                           0000B6   501 _ADCCON3	=	0x00b6
                           0000B7   502 __SFRB7	=	0x00b7
                           0000B8   503 _IEN1	=	0x00b8
                           0000B9   504 _IP1	=	0x00b9
                           0000BA   505 _ADCL	=	0x00ba
                           0000BB   506 _ADCH	=	0x00bb
                           0000BC   507 _RNDL	=	0x00bc
                           0000BD   508 _RNDH	=	0x00bd
                           0000BE   509 _SLEEP	=	0x00be
                           0000BF   510 __SFRBF	=	0x00bf
                           0000C0   511 _IRCON	=	0x00c0
                           0000C1   512 _U0DBUF	=	0x00c1
                           0000C2   513 _U0BAUD	=	0x00c2
                           0000C3   514 __SFRC3	=	0x00c3
                           0000C4   515 _U0UCR	=	0x00c4
                           0000C5   516 _U0GCR	=	0x00c5
                           0000C6   517 _CLKCON	=	0x00c6
                           0000C7   518 _MEMCTR	=	0x00c7
                           0000C8   519 __SFRC8	=	0x00c8
                           0000C9   520 _WDCTL	=	0x00c9
                           0000CA   521 _T3CNT	=	0x00ca
                           0000CB   522 _T3CTL	=	0x00cb
                           0000CC   523 _T3CCTL0	=	0x00cc
                           0000CD   524 _T3CC0	=	0x00cd
                           0000CE   525 _T3CCTL1	=	0x00ce
                           0000CF   526 _T3CC1	=	0x00cf
                           0000D0   527 _PSW	=	0x00d0
                           0000D1   528 _DMAIRQ	=	0x00d1
                           0000D2   529 _DMA1CFGL	=	0x00d2
                           0000D3   530 _DMA1CFGH	=	0x00d3
                           0000D4   531 _DMA0CFGL	=	0x00d4
                           0000D5   532 _DMA0CFGH	=	0x00d5
                           0000D6   533 _DMAARM	=	0x00d6
                           0000D7   534 _DMAREQ	=	0x00d7
                           0000D8   535 _TIMIF	=	0x00d8
                           0000D9   536 _RFD	=	0x00d9
                           0000DA   537 _T1CC0L	=	0x00da
                           0000DB   538 _T1CC0H	=	0x00db
                           0000DC   539 _T1CC1L	=	0x00dc
                           0000DD   540 _T1CC1H	=	0x00dd
                           0000DE   541 _T1CC2L	=	0x00de
                           0000DF   542 _T1CC2H	=	0x00df
                           0000E0   543 _ACC	=	0x00e0
                           0000E1   544 _RFST	=	0x00e1
                           0000E2   545 _T1CNTL	=	0x00e2
                           0000E3   546 _T1CNTH	=	0x00e3
                           0000E4   547 _T1CTL	=	0x00e4
                           0000E5   548 _T1CCTL0	=	0x00e5
                           0000E6   549 _T1CCTL1	=	0x00e6
                           0000E7   550 _T1CCTL2	=	0x00e7
                           0000E8   551 _IRCON2	=	0x00e8
                           0000E9   552 _RFIF	=	0x00e9
                           0000EA   553 _T4CNT	=	0x00ea
                           0000EB   554 _T4CTL	=	0x00eb
                           0000EC   555 _T4CCTL0	=	0x00ec
                           0000ED   556 _T4CC0	=	0x00ed
                           0000EE   557 _T4CCTL1	=	0x00ee
                           0000EF   558 _T4CC1	=	0x00ef
                           0000F0   559 _B	=	0x00f0
                           0000F1   560 _PERCFG	=	0x00f1
                           0000F2   561 _ADCCFG	=	0x00f2
                           0000F3   562 _P0SEL	=	0x00f3
                           0000F4   563 _P1SEL	=	0x00f4
                           0000F5   564 _P2SEL	=	0x00f5
                           0000F6   565 _P1INP	=	0x00f6
                           0000F7   566 _P2INP	=	0x00f7
                           0000F8   567 _U1CSR	=	0x00f8
                           0000F9   568 _U1DBUF	=	0x00f9
                           0000FA   569 _U1BAUD	=	0x00fa
                           0000FB   570 _U1UCR	=	0x00fb
                           0000FC   571 _U1GCR	=	0x00fc
                           0000FD   572 _P0DIR	=	0x00fd
                           0000FE   573 _P1DIR	=	0x00fe
                           0000FF   574 _P2DIR	=	0x00ff
                                    575 ;--------------------------------------------------------
                                    576 ; special function bits
                                    577 ;--------------------------------------------------------
                                    578 	.area RSEG    (ABS,DATA)
      000000                        579 	.org 0x0000
                           000080   580 _P0_0	=	0x0080
                           000081   581 _P0_1	=	0x0081
                           000082   582 _P0_2	=	0x0082
                           000083   583 _P0_3	=	0x0083
                           000084   584 _P0_4	=	0x0084
                           000085   585 _P0_5	=	0x0085
                           000086   586 _P0_6	=	0x0086
                           000087   587 _P0_7	=	0x0087
                           000088   588 _IT0	=	0x0088
                           000089   589 _RFTXRXIF	=	0x0089
                           00008A   590 _IT1	=	0x008a
                           00008B   591 _URX0IF	=	0x008b
                           00008D   592 _ADCIF	=	0x008d
                           00008F   593 _URX1IF	=	0x008f
                           000090   594 _P1_0	=	0x0090
                           000091   595 _P1_1	=	0x0091
                           000092   596 _P1_2	=	0x0092
                           000093   597 _P1_3	=	0x0093
                           000094   598 _P1_4	=	0x0094
                           000095   599 _P1_5	=	0x0095
                           000096   600 _P1_6	=	0x0096
                           000097   601 _P1_7	=	0x0097
                           000098   602 _ENCIF_0	=	0x0098
                           000099   603 _ENCIF_1	=	0x0099
                           0000A0   604 _P2_0	=	0x00a0
                           0000A1   605 _P2_1	=	0x00a1
                           0000A2   606 _P2_2	=	0x00a2
                           0000A3   607 _P2_3	=	0x00a3
                           0000A4   608 _P2_4	=	0x00a4
                           0000A5   609 _P2_5	=	0x00a5
                           0000A6   610 _P2_6	=	0x00a6
                           0000A7   611 _P2_7	=	0x00a7
                           0000A8   612 _RFTXRXIE	=	0x00a8
                           0000A9   613 _ADCIE	=	0x00a9
                           0000AA   614 _URX0IE	=	0x00aa
                           0000AB   615 _URX1IE	=	0x00ab
                           0000AC   616 _ENCIE	=	0x00ac
                           0000AD   617 _STIE	=	0x00ad
                           0000AF   618 _EA	=	0x00af
                           0000B8   619 _DMAIE	=	0x00b8
                           0000B9   620 _T1IE	=	0x00b9
                           0000BA   621 _T2IE	=	0x00ba
                           0000BB   622 _T3IE	=	0x00bb
                           0000BC   623 _T4IE	=	0x00bc
                           0000BD   624 _P0IE	=	0x00bd
                           0000C0   625 _DMAIF	=	0x00c0
                           0000C1   626 _T1IF	=	0x00c1
                           0000C2   627 _T2IF	=	0x00c2
                           0000C3   628 _T3IF	=	0x00c3
                           0000C4   629 _T4IF	=	0x00c4
                           0000C5   630 _P0IF	=	0x00c5
                           0000C7   631 _STIF	=	0x00c7
                           0000D0   632 _P	=	0x00d0
                           0000D1   633 _F1	=	0x00d1
                           0000D2   634 _OV	=	0x00d2
                           0000D3   635 _RS0	=	0x00d3
                           0000D4   636 _RS1	=	0x00d4
                           0000D5   637 _F0	=	0x00d5
                           0000D6   638 _AC	=	0x00d6
                           0000D7   639 _CY	=	0x00d7
                           0000D8   640 _T3OVFIF	=	0x00d8
                           0000D9   641 _T3CH0IF	=	0x00d9
                           0000DA   642 _T3CH1IF	=	0x00da
                           0000DB   643 _T4OVFIF	=	0x00db
                           0000DC   644 _T4CH0IF	=	0x00dc
                           0000DD   645 _T4CH1IF	=	0x00dd
                           0000DE   646 _OVFIM	=	0x00de
                           0000E0   647 _ACC_0	=	0x00e0
                           0000E1   648 _ACC_1	=	0x00e1
                           0000E2   649 _ACC_2	=	0x00e2
                           0000E3   650 _ACC_3	=	0x00e3
                           0000E4   651 _ACC_4	=	0x00e4
                           0000E5   652 _ACC_5	=	0x00e5
                           0000E6   653 _ACC_6	=	0x00e6
                           0000E7   654 _ACC_7	=	0x00e7
                           0000E8   655 _P2IF	=	0x00e8
                           0000E9   656 _UTX0IF	=	0x00e9
                           0000EA   657 _UTX1IF	=	0x00ea
                           0000EB   658 _P1IF	=	0x00eb
                           0000EC   659 _WDTIF	=	0x00ec
                           0000F0   660 _B_0	=	0x00f0
                           0000F1   661 _B_1	=	0x00f1
                           0000F2   662 _B_2	=	0x00f2
                           0000F3   663 _B_3	=	0x00f3
                           0000F4   664 _B_4	=	0x00f4
                           0000F5   665 _B_5	=	0x00f5
                           0000F6   666 _B_6	=	0x00f6
                           0000F7   667 _B_7	=	0x00f7
                           0000F8   668 _ACTIVE	=	0x00f8
                           0000F9   669 _TX_BYTE	=	0x00f9
                           0000FA   670 _RX_BYTE	=	0x00fa
                           0000FB   671 _ERR	=	0x00fb
                           0000FC   672 _FE	=	0x00fc
                           0000FD   673 _SLAVE	=	0x00fd
                           0000FE   674 _RE	=	0x00fe
                           0000FF   675 _MODE	=	0x00ff
                                    676 ;--------------------------------------------------------
                                    677 ; overlayable register banks
                                    678 ;--------------------------------------------------------
                                    679 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        680 	.ds 8
                                    681 ;--------------------------------------------------------
                                    682 ; internal ram data
                                    683 ;--------------------------------------------------------
                                    684 	.area DSEG    (DATA)
                                    685 ;--------------------------------------------------------
                                    686 ; overlayable items in internal ram 
                                    687 ;--------------------------------------------------------
                                    688 	.area	OSEG    (OVR,DATA)
      00001C                        689 _uartMapPort_PARM_2:
      00001C                        690 	.ds 1
                                    691 	.area	OSEG    (OVR,DATA)
      00001C                        692 _uartInitBitrate_PARM_2:
      00001C                        693 	.ds 1
                                    694 	.area	OSEG    (OVR,DATA)
                                    695 ;--------------------------------------------------------
                                    696 ; indirectly addressable internal ram data
                                    697 ;--------------------------------------------------------
                                    698 	.area ISEG    (DATA)
                                    699 ;--------------------------------------------------------
                                    700 ; absolute internal ram data
                                    701 ;--------------------------------------------------------
                                    702 	.area IABS    (ABS,DATA)
                                    703 	.area IABS    (ABS,DATA)
                                    704 ;--------------------------------------------------------
                                    705 ; bit data
                                    706 ;--------------------------------------------------------
                                    707 	.area BSEG    (BIT)
                                    708 ;--------------------------------------------------------
                                    709 ; paged external ram data
                                    710 ;--------------------------------------------------------
                                    711 	.area PSEG    (PAG,XDATA)
                                    712 ;--------------------------------------------------------
                                    713 ; external ram data
                                    714 ;--------------------------------------------------------
                                    715 	.area XSEG    (XDATA)
                           00DF02   716 _MDMCTRL0H	=	0xdf02
                           00DF00   717 _SYNC1	=	0xdf00
                           00DF01   718 _SYNC0	=	0xdf01
                           00DF02   719 _PKTLEN	=	0xdf02
                           00DF03   720 _PKTCTRL1	=	0xdf03
                           00DF04   721 _PKTCTRL0	=	0xdf04
                           00DF05   722 _ADDR	=	0xdf05
                           00DF06   723 _CHANNR	=	0xdf06
                           00DF07   724 _FSCTRL1	=	0xdf07
                           00DF08   725 _FSCTRL0	=	0xdf08
                           00DF09   726 _FREQ2	=	0xdf09
                           00DF0A   727 _FREQ1	=	0xdf0a
                           00DF0B   728 _FREQ0	=	0xdf0b
                           00DF0C   729 _MDMCFG4	=	0xdf0c
                           00DF0D   730 _MDMCFG3	=	0xdf0d
                           00DF0E   731 _MDMCFG2	=	0xdf0e
                           00DF0F   732 _MDMCFG1	=	0xdf0f
                           00DF10   733 _MDMCFG0	=	0xdf10
                           00DF11   734 _DEVIATN	=	0xdf11
                           00DF12   735 _MCSM2	=	0xdf12
                           00DF13   736 _MCSM1	=	0xdf13
                           00DF14   737 _MCSM0	=	0xdf14
                           00DF15   738 _FOCCFG	=	0xdf15
                           00DF16   739 _BSCFG	=	0xdf16
                           00DF17   740 _AGCCTRL2	=	0xdf17
                           00DF18   741 _AGCCTRL1	=	0xdf18
                           00DF19   742 _AGCCTRL0	=	0xdf19
                           00DF1A   743 _FREND1	=	0xdf1a
                           00DF1B   744 _FREND0	=	0xdf1b
                           00DF1C   745 _FSCAL3	=	0xdf1c
                           00DF1D   746 _FSCAL2	=	0xdf1d
                           00DF1E   747 _FSCAL1	=	0xdf1e
                           00DF1F   748 _FSCAL0	=	0xdf1f
                           00DF20   749 __XREGDF20	=	0xdf20
                           00DF21   750 __XREGDF21	=	0xdf21
                           00DF22   751 __XREGDF22	=	0xdf22
                           00DF23   752 _TEST2	=	0xdf23
                           00DF24   753 _TEST1	=	0xdf24
                           00DF25   754 _TEST0	=	0xdf25
                           00DF26   755 __XREGDF26	=	0xdf26
                           00DF27   756 _PA_TABLE7	=	0xdf27
                           00DF28   757 _PA_TABLE6	=	0xdf28
                           00DF29   758 _PA_TABLE5	=	0xdf29
                           00DF2A   759 _PA_TABLE4	=	0xdf2a
                           00DF2B   760 _PA_TABLE3	=	0xdf2b
                           00DF2C   761 _PA_TABLE2	=	0xdf2c
                           00DF2D   762 _PA_TABLE1	=	0xdf2d
                           00DF2E   763 _PA_TABLE0	=	0xdf2e
                           00DF2F   764 _IOCFG2	=	0xdf2f
                           00DF30   765 _IOCFG1	=	0xdf30
                           00DF31   766 _IOCFG0	=	0xdf31
                           00DF32   767 __XREGDF32	=	0xdf32
                           00DF33   768 __XREGDF33	=	0xdf33
                           00DF34   769 __XREGDF34	=	0xdf34
                           00DF35   770 __XREGDF35	=	0xdf35
                           00DF36   771 _PARTNUM	=	0xdf36
                           00DF37   772 _VERSION	=	0xdf37
                           00DF38   773 _FREQEST	=	0xdf38
                           00DF39   774 _LQI	=	0xdf39
                           00DF3A   775 _RSSI	=	0xdf3a
                           00DF3B   776 _MARCSTATE	=	0xdf3b
                           00DF3C   777 _PKTSTATUS	=	0xdf3c
                           00DF3D   778 _VCO_VC_DAC	=	0xdf3d
                           00DF40   779 _I2SCFG0	=	0xdf40
                           00DF41   780 _I2SCFG1	=	0xdf41
                           00DF42   781 _I2SDATL	=	0xdf42
                           00DF43   782 _I2SDATH	=	0xdf43
                           00DF44   783 _I2SWCNT	=	0xdf44
                           00DF45   784 _I2SSTAT	=	0xdf45
                           00DF46   785 _I2SCLKF0	=	0xdf46
                           00DF47   786 _I2SCLKF1	=	0xdf47
                           00DF48   787 _I2SCLKF2	=	0xdf48
                           00DF80   788 __NA_P0	=	0xdf80
                           00DF81   789 __NA_SP	=	0xdf81
                           00DF82   790 __NA_DPL0	=	0xdf82
                           00DF83   791 __NA_DPH0	=	0xdf83
                           00DF84   792 __NA_DPL1	=	0xdf84
                           00DF85   793 __NA_DPH1	=	0xdf85
                           00DF86   794 _X_U0CSR	=	0xdf86
                           00DF87   795 __NA_PCON	=	0xdf87
                           00DF88   796 __NA_TCON	=	0xdf88
                           00DF89   797 _X_P0IFG	=	0xdf89
                           00DF8A   798 _X_P1IFG	=	0xdf8a
                           00DF8B   799 _X_P2IFG	=	0xdf8b
                           00DF8C   800 _X_PICTL	=	0xdf8c
                           00DF8D   801 _X_P1IEN	=	0xdf8d
                           00DF8E   802 __X_SFR8E	=	0xdf8e
                           00DF8F   803 _X_P0INP	=	0xdf8f
                           00DF90   804 __NA_P1	=	0xdf90
                           00DF91   805 _X_RFIM	=	0xdf91
                           00DF92   806 __NA_DPS	=	0xdf92
                           00DF93   807 _X_MPAGE	=	0xdf93
                           00DF94   808 __X_SFR94	=	0xdf94
                           00DF95   809 __X_SFR95	=	0xdf95
                           00DF96   810 __X_SFR96	=	0xdf96
                           00DF97   811 __X_SFR97	=	0xdf97
                           00DF98   812 __NA_S0CON	=	0xdf98
                           00DF99   813 __X_SFR99	=	0xdf99
                           00DF9A   814 __NA_IEN2	=	0xdf9a
                           00DF9B   815 __NA_S1CON	=	0xdf9b
                           00DF9C   816 _X_T2CT	=	0xdf9c
                           00DF9D   817 _X_T2PR	=	0xdf9d
                           00DF9E   818 _X_T2CTL	=	0xdf9e
                           00DF9F   819 __X_SFR9F	=	0xdf9f
                           00DFA0   820 __NA_P2	=	0xdfa0
                           00DFA1   821 _X_WORIRQ	=	0xdfa1
                           00DFA2   822 _X_WORCTRL	=	0xdfa2
                           00DFA3   823 _X_WOREVT0	=	0xdfa3
                           00DFA4   824 _X_WOREVT1	=	0xdfa4
                           00DFA5   825 _X_WORTIME0	=	0xdfa5
                           00DFA6   826 _X_WORTIME1	=	0xdfa6
                           00DFA7   827 __X_SFRA7	=	0xdfa7
                           00DFA8   828 __NA_IEN0	=	0xdfa8
                           00DFA9   829 __NA_IP0	=	0xdfa9
                           00DFAA   830 __X_SFRAA	=	0xdfaa
                           00DFAB   831 _X_FWT	=	0xdfab
                           00DFAC   832 _X_FADDRL	=	0xdfac
                           00DFAD   833 _X_FADDRH	=	0xdfad
                           00DFAE   834 _X_FCTL	=	0xdfae
                           00DFAF   835 _X_FWDATA	=	0xdfaf
                           00DFB0   836 __X_SFRB0	=	0xdfb0
                           00DFB1   837 _X_ENCDI	=	0xdfb1
                           00DFB2   838 _X_ENCDO	=	0xdfb2
                           00DFB3   839 _X_ENCCS	=	0xdfb3
                           00DFB4   840 _X_ADCCON1	=	0xdfb4
                           00DFB5   841 _X_ADCCON2	=	0xdfb5
                           00DFB6   842 _X_ADCCON3	=	0xdfb6
                           00DFB7   843 __X_SFRB7	=	0xdfb7
                           00DFB8   844 __NA_IEN1	=	0xdfb8
                           00DFB9   845 __NA_IP1	=	0xdfb9
                           00DFBA   846 _X_ADCL	=	0xdfba
                           00DFBB   847 _X_ADCH	=	0xdfbb
                           00DFBC   848 _X_RNDL	=	0xdfbc
                           00DFBD   849 _X_RNDH	=	0xdfbd
                           00DFBE   850 _X_SLEEP	=	0xdfbe
                           00DFBF   851 __X_SFRBF	=	0xdfbf
                           00DFC0   852 __NA_IRCON	=	0xdfc0
                           00DFC1   853 _X_U0DBUF	=	0xdfc1
                           00DFC2   854 _X_U0BAUD	=	0xdfc2
                           00DFC3   855 __X_SFRC3	=	0xdfc3
                           00DFC4   856 _X_U0UCR	=	0xdfc4
                           00DFC5   857 _X_U0GCR	=	0xdfc5
                           00DFC6   858 _X_CLKCON	=	0xdfc6
                           00DFC7   859 _X_MEMCTR	=	0xdfc7
                           00DFC8   860 __X_SFRC8	=	0xdfc8
                           00DFC9   861 _X_WDCTL	=	0xdfc9
                           00DFCA   862 _X_T3CNT	=	0xdfca
                           00DFCB   863 _X_T3CTL	=	0xdfcb
                           00DFCC   864 _X_T3CCTL0	=	0xdfcc
                           00DFCD   865 _X_T3CC0	=	0xdfcd
                           00DFCE   866 _X_T3CCTL1	=	0xdfce
                           00DFCF   867 _X_T3CC1	=	0xdfcf
                           00DFD0   868 __NA_PSW	=	0xdfd0
                           00DFD1   869 _X_DMAIRQ	=	0xdfd1
                           00DFD2   870 _X_DMA1CFGL	=	0xdfd2
                           00DFD3   871 _X_DMA1CFGH	=	0xdfd3
                           00DFD4   872 _X_DMA0CFGL	=	0xdfd4
                           00DFD5   873 _X_DMA0CFGH	=	0xdfd5
                           00DFD6   874 _X_DMAARM	=	0xdfd6
                           00DFD7   875 _X_DMAREQ	=	0xdfd7
                           00DFD8   876 _X_TIMIF	=	0xdfd8
                           00DFD9   877 _X_RFD	=	0xdfd9
                           00DFDA   878 _X_T1CC0L	=	0xdfda
                           00DFDB   879 _X_T1CC0H	=	0xdfdb
                           00DFDC   880 _X_T1CC1L	=	0xdfdc
                           00DFDD   881 _X_T1CC1H	=	0xdfdd
                           00DFDE   882 _X_T1CC2L	=	0xdfde
                           00DFDF   883 _X_T1CC2H	=	0xdfdf
                           00DFE0   884 __NA_ACC	=	0xdfe0
                           00DFE1   885 _X_RFST	=	0xdfe1
                           00DFE2   886 _X_T1CNTL	=	0xdfe2
                           00DFE3   887 _X_T1CNTH	=	0xdfe3
                           00DFE4   888 _X_T1CTL	=	0xdfe4
                           00DFE5   889 _X_T1CCTL0	=	0xdfe5
                           00DFE6   890 _X_T1CCTL1	=	0xdfe6
                           00DFE7   891 _X_T1CCTL2	=	0xdfe7
                           00DFE8   892 __NA_IRCON2	=	0xdfe8
                           00DFE9   893 _X_RFIF	=	0xdfe9
                           00DFEA   894 _X_T4CNT	=	0xdfea
                           00DFEB   895 _X_T4CTL	=	0xdfeb
                           00DFEC   896 _X_T4CCTL0	=	0xdfec
                           00DFED   897 _X_T4CC0	=	0xdfed
                           00DFEE   898 _X_T4CCTL1	=	0xdfee
                           00DFEF   899 _X_T4CC1	=	0xdfef
                           00DFF0   900 __NA_B	=	0xdff0
                           00DFF1   901 _X_PERCFG	=	0xdff1
                           00DFF2   902 _X_ADCCFG	=	0xdff2
                           00DFF3   903 _X_P0SEL	=	0xdff3
                           00DFF4   904 _X_P1SEL	=	0xdff4
                           00DFF5   905 _X_P2SEL	=	0xdff5
                           00DFF6   906 _X_P1INP	=	0xdff6
                           00DFF7   907 _X_P2INP	=	0xdff7
                           00DFF8   908 _X_U1CSR	=	0xdff8
                           00DFF9   909 _X_U1DBUF	=	0xdff9
                           00DFFA   910 _X_U1BAUD	=	0xdffa
                           00DFFB   911 _X_U1UCR	=	0xdffb
                           00DFFC   912 _X_U1GCR	=	0xdffc
                           00DFFD   913 _X_P0DIR	=	0xdffd
                           00DFFE   914 _X_P1DIR	=	0xdffe
                           00DFFF   915 _X_P2DIR	=	0xdfff
                                    916 ;--------------------------------------------------------
                                    917 ; absolute external ram data
                                    918 ;--------------------------------------------------------
                                    919 	.area XABS    (ABS,XDATA)
                                    920 ;--------------------------------------------------------
                                    921 ; external initialized ram data
                                    922 ;--------------------------------------------------------
                                    923 	.area XISEG   (XDATA)
                                    924 	.area HOME    (CODE)
                                    925 	.area GSINIT0 (CODE)
                                    926 	.area GSINIT1 (CODE)
                                    927 	.area GSINIT2 (CODE)
                                    928 	.area GSINIT3 (CODE)
                                    929 	.area GSINIT4 (CODE)
                                    930 	.area GSINIT5 (CODE)
                                    931 	.area GSINIT  (CODE)
                                    932 	.area GSFINAL (CODE)
                                    933 	.area CSEG    (CODE)
                                    934 ;--------------------------------------------------------
                                    935 ; global & static initialisations
                                    936 ;--------------------------------------------------------
                                    937 	.area HOME    (CODE)
                                    938 	.area GSINIT  (CODE)
                                    939 	.area GSFINAL (CODE)
                                    940 	.area GSINIT  (CODE)
                                    941 ;--------------------------------------------------------
                                    942 ; Home
                                    943 ;--------------------------------------------------------
                                    944 	.area HOME    (CODE)
                                    945 	.area HOME    (CODE)
                                    946 ;--------------------------------------------------------
                                    947 ; code
                                    948 ;--------------------------------------------------------
                                    949 	.area CSEG    (CODE)
                                    950 ;------------------------------------------------------------
                                    951 ;Allocation info for local variables in function 'uartMapPort'
                                    952 ;------------------------------------------------------------
                                    953 ;uartNum                   Allocated with name '_uartMapPort_PARM_2'
                                    954 ;uartPortAlt               Allocated to registers r7 
                                    955 ;------------------------------------------------------------
                                    956 ;	uart.c:16: void uartMapPort(uint8 uartPortAlt, uint8 uartNum)
                                    957 ;	-----------------------------------------
                                    958 ;	 function uartMapPort
                                    959 ;	-----------------------------------------
      0008A2                        960 _uartMapPort:
                           000007   961 	ar7 = 0x07
                           000006   962 	ar6 = 0x06
                           000005   963 	ar5 = 0x05
                           000004   964 	ar4 = 0x04
                           000003   965 	ar3 = 0x03
                           000002   966 	ar2 = 0x02
                           000001   967 	ar1 = 0x01
                           000000   968 	ar0 = 0x00
      0008A2 AF 82            [24]  969 	mov	r7,dpl
                                    970 ;	uart.c:19: if(uartPortAlt == 1)
      0008A4 BF 01 20         [24]  971 	cjne	r7,#0x01,00108$
                                    972 ;	uart.c:22: if(uartNum == 0)
      0008A7 E5 1C            [12]  973 	mov	a,_uartMapPort_PARM_2
      0008A9 70 0E            [24]  974 	jnz	00102$
                                    975 ;	uart.c:25: PERCFG &= ~0x01;
      0008AB 53 F1 FE         [24]  976 	anl	_PERCFG,#0xfe
                                    977 ;	uart.c:28: P0SEL |= 0x3C;
      0008AE AE F3            [24]  978 	mov	r6,_P0SEL
      0008B0 43 06 3C         [24]  979 	orl	ar6,#0x3c
      0008B3 8E F3            [24]  980 	mov	_P0SEL,r6
                                    981 ;	uart.c:30: P1SEL &= ~0x3C;
      0008B5 53 F4 C3         [24]  982 	anl	_P1SEL,#0xc3
      0008B8 22               [24]  983 	ret
      0008B9                        984 00102$:
                                    985 ;	uart.c:36: PERCFG &= ~0x02;
      0008B9 53 F1 FD         [24]  986 	anl	_PERCFG,#0xfd
                                    987 ;	uart.c:39: P0SEL |= 0x3C;
      0008BC AE F3            [24]  988 	mov	r6,_P0SEL
      0008BE 43 06 3C         [24]  989 	orl	ar6,#0x3c
      0008C1 8E F3            [24]  990 	mov	_P0SEL,r6
                                    991 ;	uart.c:41: P1SEL &= ~0xF0;
      0008C3 53 F4 0F         [24]  992 	anl	_P1SEL,#0x0f
      0008C6 22               [24]  993 	ret
      0008C7                        994 00108$:
                                    995 ;	uart.c:48: if(uartNum == 0)
      0008C7 E5 1C            [12]  996 	mov	a,_uartMapPort_PARM_2
                                    997 ;	uart.c:51: PERCFG |= 0x01;
      0008C9 70 12            [24]  998 	jnz	00105$
      0008CB AE F1            [24]  999 	mov	r6,_PERCFG
      0008CD 43 06 01         [24] 1000 	orl	ar6,#0x01
      0008D0 8E F1            [24] 1001 	mov	_PERCFG,r6
                                   1002 ;	uart.c:53: P1SEL |= 0x3C;
      0008D2 AE F4            [24] 1003 	mov	r6,_P1SEL
      0008D4 43 06 3C         [24] 1004 	orl	ar6,#0x3c
      0008D7 8E F4            [24] 1005 	mov	_P1SEL,r6
                                   1006 ;	uart.c:55: P0SEL &= ~0x3C;
      0008D9 53 F3 C3         [24] 1007 	anl	_P0SEL,#0xc3
      0008DC 22               [24] 1008 	ret
      0008DD                       1009 00105$:
                                   1010 ;	uart.c:61: PERCFG |= 0x02;
      0008DD AE F1            [24] 1011 	mov	r6,_PERCFG
      0008DF 43 06 02         [24] 1012 	orl	ar6,#0x02
      0008E2 8E F1            [24] 1013 	mov	_PERCFG,r6
                                   1014 ;	uart.c:64: P0SEL |= 0xF0;
      0008E4 AE F3            [24] 1015 	mov	r6,_P0SEL
      0008E6 43 06 F0         [24] 1016 	orl	ar6,#0xf0
      0008E9 8E F3            [24] 1017 	mov	_P0SEL,r6
                                   1018 ;	uart.c:66: P0SEL &= ~0x3C;
      0008EB 53 F3 C3         [24] 1019 	anl	_P0SEL,#0xc3
                                   1020 ;	uart.c:70: }
      0008EE 22               [24] 1021 	ret
                                   1022 ;------------------------------------------------------------
                                   1023 ;Allocation info for local variables in function 'uartInitBitrate'
                                   1024 ;------------------------------------------------------------
                                   1025 ;uartBaudE                 Allocated with name '_uartInitBitrate_PARM_2'
                                   1026 ;uartBaudM                 Allocated to registers r7 
                                   1027 ;------------------------------------------------------------
                                   1028 ;	uart.c:85: void uartInitBitrate(uint8 uartBaudM, uint8 uartBaudE) 
                                   1029 ;	-----------------------------------------
                                   1030 ;	 function uartInitBitrate
                                   1031 ;	-----------------------------------------
      0008EF                       1032 _uartInitBitrate:
      0008EF AF 82            [24] 1033 	mov	r7,dpl
                                   1034 ;	uart.c:92: CLKCON &= 0x80;
      0008F1 53 C6 80         [24] 1035 	anl	_CLKCON,#0x80
                                   1036 ;	uart.c:95: while(CLKCON &0x40);
      0008F4                       1037 00101$:
      0008F4 AD C6            [24] 1038 	mov	r5,_CLKCON
      0008F6 7E 00            [12] 1039 	mov	r6,#0x00
      0008F8 ED               [12] 1040 	mov	a,r5
      0008F9 20 E6 F8         [24] 1041 	jb	acc.6,00101$
                                   1042 ;	uart.c:97: SLEEP |= 0x04;
      0008FC AD BE            [24] 1043 	mov	r5,_SLEEP
      0008FE 43 05 04         [24] 1044 	orl	ar5,#0x04
      000901 8D BE            [24] 1045 	mov	_SLEEP,r5
                                   1046 ;	uart.c:100: U0BAUD = uartBaudM;
      000903 8F C2            [24] 1047 	mov	_U0BAUD,r7
                                   1048 ;	uart.c:101: U0GCR = (U0GCR&~0x1F) | uartBaudE;
      000905 74 E0            [12] 1049 	mov	a,#0xe0
      000907 55 C5            [12] 1050 	anl	a,_U0GCR
      000909 45 1C            [12] 1051 	orl	a,_uartInitBitrate_PARM_2
      00090B F5 C5            [12] 1052 	mov	_U0GCR,a
                                   1053 ;	uart.c:102: }
      00090D 22               [24] 1054 	ret
                                   1055 ;------------------------------------------------------------
                                   1056 ;Allocation info for local variables in function 'uartInitProtocol'
                                   1057 ;------------------------------------------------------------
                                   1058 ;uartProtConfig            Allocated to registers r5 r6 r7 
                                   1059 ;------------------------------------------------------------
                                   1060 ;	uart.c:118: void uartInitProtocol(UART_PROT_CONFIG* uartProtConfig) 
                                   1061 ;	-----------------------------------------
                                   1062 ;	 function uartInitProtocol
                                   1063 ;	-----------------------------------------
      00090E                       1064 _uartInitProtocol:
      00090E AD 82            [24] 1065 	mov	r5,dpl
      000910 AE 83            [24] 1066 	mov	r6,dph
      000912 AF F0            [24] 1067 	mov	r7,b
                                   1068 ;	uart.c:121: if(uartProtConfig->uartNum == 0) 
      000914 8D 02            [24] 1069 	mov	ar2,r5
      000916 8E 03            [24] 1070 	mov	ar3,r6
      000918 8F 04            [24] 1071 	mov	ar4,r7
      00091A 8A 82            [24] 1072 	mov	dpl,r2
      00091C 8B 83            [24] 1073 	mov	dph,r3
      00091E 8C F0            [24] 1074 	mov	b,r4
      000920 12 0D DA         [24] 1075 	lcall	__gptrget
      000923 30 E0 03         [24] 1076 	jnb	acc.0,00109$
      000926 02 0A 20         [24] 1077 	ljmp	00102$
      000929                       1078 00109$:
                                   1079 ;	uart.c:124: U0CSR |= 0x80;
      000929 AB 86            [24] 1080 	mov	r3,_U0CSR
      00092B 43 03 80         [24] 1081 	orl	ar3,#0x80
      00092E 8B 86            [24] 1082 	mov	_U0CSR,r3
                                   1083 ;	uart.c:127: U0UCR = (U0UCR&~0x01) | uartProtConfig->START;
      000930 74 FE            [12] 1084 	mov	a,#0xfe
      000932 55 C4            [12] 1085 	anl	a,_U0UCR
      000934 FC               [12] 1086 	mov	r4,a
      000935 8D 01            [24] 1087 	mov	ar1,r5
      000937 8E 02            [24] 1088 	mov	ar2,r6
      000939 8F 03            [24] 1089 	mov	ar3,r7
      00093B 89 82            [24] 1090 	mov	dpl,r1
      00093D 8A 83            [24] 1091 	mov	dph,r2
      00093F 8B F0            [24] 1092 	mov	b,r3
      000941 12 0D DA         [24] 1093 	lcall	__gptrget
      000944 03               [12] 1094 	rr	a
      000945 54 01            [12] 1095 	anl	a,#0x01
      000947 4C               [12] 1096 	orl	a,r4
      000948 F5 C4            [12] 1097 	mov	_U0UCR,a
                                   1098 ;	uart.c:130: U0UCR = (U0UCR&~0x02) | (uartProtConfig->STOP << 1);
      00094A 74 FD            [12] 1099 	mov	a,#0xfd
      00094C 55 C4            [12] 1100 	anl	a,_U0UCR
      00094E FC               [12] 1101 	mov	r4,a
      00094F 8D 01            [24] 1102 	mov	ar1,r5
      000951 8E 02            [24] 1103 	mov	ar2,r6
      000953 8F 03            [24] 1104 	mov	ar3,r7
      000955 89 82            [24] 1105 	mov	dpl,r1
      000957 8A 83            [24] 1106 	mov	dph,r2
      000959 8B F0            [24] 1107 	mov	b,r3
      00095B 12 0D DA         [24] 1108 	lcall	__gptrget
      00095E 03               [12] 1109 	rr	a
      00095F 03               [12] 1110 	rr	a
      000960 54 01            [12] 1111 	anl	a,#0x01
      000962 25 E0            [12] 1112 	add	a,acc
      000964 4C               [12] 1113 	orl	a,r4
      000965 F5 C4            [12] 1114 	mov	_U0UCR,a
                                   1115 ;	uart.c:133: U0UCR = (U0UCR&~0x04) | (uartProtConfig->SPB << 2);
      000967 74 FB            [12] 1116 	mov	a,#0xfb
      000969 55 C4            [12] 1117 	anl	a,_U0UCR
      00096B FC               [12] 1118 	mov	r4,a
      00096C 8D 01            [24] 1119 	mov	ar1,r5
      00096E 8E 02            [24] 1120 	mov	ar2,r6
      000970 8F 03            [24] 1121 	mov	ar3,r7
      000972 89 82            [24] 1122 	mov	dpl,r1
      000974 8A 83            [24] 1123 	mov	dph,r2
      000976 8B F0            [24] 1124 	mov	b,r3
      000978 12 0D DA         [24] 1125 	lcall	__gptrget
      00097B C4               [12] 1126 	swap	a
      00097C 23               [12] 1127 	rl	a
      00097D 54 01            [12] 1128 	anl	a,#0x01
      00097F 25 E0            [12] 1129 	add	a,acc
      000981 25 E0            [12] 1130 	add	a,acc
      000983 4C               [12] 1131 	orl	a,r4
      000984 F5 C4            [12] 1132 	mov	_U0UCR,a
                                   1133 ;	uart.c:136: U0UCR = (U0UCR&~0x08) | (uartProtConfig->PARITY << 3);
      000986 74 F7            [12] 1134 	mov	a,#0xf7
      000988 55 C4            [12] 1135 	anl	a,_U0UCR
      00098A FC               [12] 1136 	mov	r4,a
      00098B 8D 01            [24] 1137 	mov	ar1,r5
      00098D 8E 02            [24] 1138 	mov	ar2,r6
      00098F 8F 03            [24] 1139 	mov	ar3,r7
      000991 89 82            [24] 1140 	mov	dpl,r1
      000993 8A 83            [24] 1141 	mov	dph,r2
      000995 8B F0            [24] 1142 	mov	b,r3
      000997 12 0D DA         [24] 1143 	lcall	__gptrget
      00099A C4               [12] 1144 	swap	a
      00099B 54 01            [12] 1145 	anl	a,#0x01
      00099D C4               [12] 1146 	swap	a
      00099E 03               [12] 1147 	rr	a
      00099F 54 F8            [12] 1148 	anl	a,#0xf8
      0009A1 4C               [12] 1149 	orl	a,r4
      0009A2 F5 C4            [12] 1150 	mov	_U0UCR,a
                                   1151 ;	uart.c:139: U0UCR = (U0UCR&~0x10) | (uartProtConfig->BIT9 << 4);
      0009A4 74 EF            [12] 1152 	mov	a,#0xef
      0009A6 55 C4            [12] 1153 	anl	a,_U0UCR
      0009A8 FC               [12] 1154 	mov	r4,a
      0009A9 8D 01            [24] 1155 	mov	ar1,r5
      0009AB 8E 02            [24] 1156 	mov	ar2,r6
      0009AD 8F 03            [24] 1157 	mov	ar3,r7
      0009AF 89 82            [24] 1158 	mov	dpl,r1
      0009B1 8A 83            [24] 1159 	mov	dph,r2
      0009B3 8B F0            [24] 1160 	mov	b,r3
      0009B5 12 0D DA         [24] 1161 	lcall	__gptrget
      0009B8 C4               [12] 1162 	swap	a
      0009B9 03               [12] 1163 	rr	a
      0009BA 54 01            [12] 1164 	anl	a,#0x01
      0009BC C4               [12] 1165 	swap	a
      0009BD 54 F0            [12] 1166 	anl	a,#0xf0
      0009BF 4C               [12] 1167 	orl	a,r4
      0009C0 F5 C4            [12] 1168 	mov	_U0UCR,a
                                   1169 ;	uart.c:144: U0UCR = (U0UCR&~0x20) | (uartProtConfig->D9 << 5);
      0009C2 74 DF            [12] 1170 	mov	a,#0xdf
      0009C4 55 C4            [12] 1171 	anl	a,_U0UCR
      0009C6 FC               [12] 1172 	mov	r4,a
      0009C7 8D 01            [24] 1173 	mov	ar1,r5
      0009C9 8E 02            [24] 1174 	mov	ar2,r6
      0009CB 8F 03            [24] 1175 	mov	ar3,r7
      0009CD 89 82            [24] 1176 	mov	dpl,r1
      0009CF 8A 83            [24] 1177 	mov	dph,r2
      0009D1 8B F0            [24] 1178 	mov	b,r3
      0009D3 12 0D DA         [24] 1179 	lcall	__gptrget
      0009D6 23               [12] 1180 	rl	a
      0009D7 23               [12] 1181 	rl	a
      0009D8 54 01            [12] 1182 	anl	a,#0x01
      0009DA C4               [12] 1183 	swap	a
      0009DB 23               [12] 1184 	rl	a
      0009DC 54 E0            [12] 1185 	anl	a,#0xe0
      0009DE 4C               [12] 1186 	orl	a,r4
      0009DF F5 C4            [12] 1187 	mov	_U0UCR,a
                                   1188 ;	uart.c:147: U0UCR = (U0UCR&~0x40) | (uartProtConfig->FLOW << 6);
      0009E1 74 BF            [12] 1189 	mov	a,#0xbf
      0009E3 55 C4            [12] 1190 	anl	a,_U0UCR
      0009E5 FC               [12] 1191 	mov	r4,a
      0009E6 8D 01            [24] 1192 	mov	ar1,r5
      0009E8 8E 02            [24] 1193 	mov	ar2,r6
      0009EA 8F 03            [24] 1194 	mov	ar3,r7
      0009EC 89 82            [24] 1195 	mov	dpl,r1
      0009EE 8A 83            [24] 1196 	mov	dph,r2
      0009F0 8B F0            [24] 1197 	mov	b,r3
      0009F2 12 0D DA         [24] 1198 	lcall	__gptrget
      0009F5 23               [12] 1199 	rl	a
      0009F6 54 01            [12] 1200 	anl	a,#0x01
      0009F8 03               [12] 1201 	rr	a
      0009F9 03               [12] 1202 	rr	a
      0009FA 54 C0            [12] 1203 	anl	a,#0xc0
      0009FC 4C               [12] 1204 	orl	a,r4
      0009FD F5 C4            [12] 1205 	mov	_U0UCR,a
                                   1206 ;	uart.c:150: U0GCR = (U0GCR&~0x20) | (uartProtConfig->ORDER << 5);
      0009FF 74 DF            [12] 1207 	mov	a,#0xdf
      000A01 55 C5            [12] 1208 	anl	a,_U0GCR
      000A03 FC               [12] 1209 	mov	r4,a
      000A04 74 01            [12] 1210 	mov	a,#0x01
      000A06 2D               [12] 1211 	add	a,r5
      000A07 F9               [12] 1212 	mov	r1,a
      000A08 E4               [12] 1213 	clr	a
      000A09 3E               [12] 1214 	addc	a,r6
      000A0A FA               [12] 1215 	mov	r2,a
      000A0B 8F 03            [24] 1216 	mov	ar3,r7
      000A0D 89 82            [24] 1217 	mov	dpl,r1
      000A0F 8A 83            [24] 1218 	mov	dph,r2
      000A11 8B F0            [24] 1219 	mov	b,r3
      000A13 12 0D DA         [24] 1220 	lcall	__gptrget
      000A16 54 01            [12] 1221 	anl	a,#0x01
      000A18 C4               [12] 1222 	swap	a
      000A19 23               [12] 1223 	rl	a
      000A1A 54 E0            [12] 1224 	anl	a,#0xe0
      000A1C 4C               [12] 1225 	orl	a,r4
      000A1D F5 C5            [12] 1226 	mov	_U0GCR,a
      000A1F 22               [24] 1227 	ret
      000A20                       1228 00102$:
                                   1229 ;	uart.c:155: U1CSR |= 0x80;
      000A20 AB F8            [24] 1230 	mov	r3,_U1CSR
      000A22 43 03 80         [24] 1231 	orl	ar3,#0x80
      000A25 8B F8            [24] 1232 	mov	_U1CSR,r3
                                   1233 ;	uart.c:158: U1UCR = (U1UCR&~0x01) | uartProtConfig->START;
      000A27 74 FE            [12] 1234 	mov	a,#0xfe
      000A29 55 FB            [12] 1235 	anl	a,_U1UCR
      000A2B FC               [12] 1236 	mov	r4,a
      000A2C 8D 01            [24] 1237 	mov	ar1,r5
      000A2E 8E 02            [24] 1238 	mov	ar2,r6
      000A30 8F 03            [24] 1239 	mov	ar3,r7
      000A32 89 82            [24] 1240 	mov	dpl,r1
      000A34 8A 83            [24] 1241 	mov	dph,r2
      000A36 8B F0            [24] 1242 	mov	b,r3
      000A38 12 0D DA         [24] 1243 	lcall	__gptrget
      000A3B 03               [12] 1244 	rr	a
      000A3C 54 01            [12] 1245 	anl	a,#0x01
      000A3E 4C               [12] 1246 	orl	a,r4
      000A3F F5 FB            [12] 1247 	mov	_U1UCR,a
                                   1248 ;	uart.c:161: U1UCR = (U1UCR&~0x02) | (uartProtConfig->STOP << 1);
      000A41 74 FD            [12] 1249 	mov	a,#0xfd
      000A43 55 FB            [12] 1250 	anl	a,_U1UCR
      000A45 FC               [12] 1251 	mov	r4,a
      000A46 8D 01            [24] 1252 	mov	ar1,r5
      000A48 8E 02            [24] 1253 	mov	ar2,r6
      000A4A 8F 03            [24] 1254 	mov	ar3,r7
      000A4C 89 82            [24] 1255 	mov	dpl,r1
      000A4E 8A 83            [24] 1256 	mov	dph,r2
      000A50 8B F0            [24] 1257 	mov	b,r3
      000A52 12 0D DA         [24] 1258 	lcall	__gptrget
      000A55 03               [12] 1259 	rr	a
      000A56 03               [12] 1260 	rr	a
      000A57 54 01            [12] 1261 	anl	a,#0x01
      000A59 25 E0            [12] 1262 	add	a,acc
      000A5B 4C               [12] 1263 	orl	a,r4
      000A5C F5 FB            [12] 1264 	mov	_U1UCR,a
                                   1265 ;	uart.c:164: U1UCR = (U1UCR&~0x04) | (uartProtConfig->SPB << 2);
      000A5E 74 FB            [12] 1266 	mov	a,#0xfb
      000A60 55 FB            [12] 1267 	anl	a,_U1UCR
      000A62 FC               [12] 1268 	mov	r4,a
      000A63 8D 01            [24] 1269 	mov	ar1,r5
      000A65 8E 02            [24] 1270 	mov	ar2,r6
      000A67 8F 03            [24] 1271 	mov	ar3,r7
      000A69 89 82            [24] 1272 	mov	dpl,r1
      000A6B 8A 83            [24] 1273 	mov	dph,r2
      000A6D 8B F0            [24] 1274 	mov	b,r3
      000A6F 12 0D DA         [24] 1275 	lcall	__gptrget
      000A72 C4               [12] 1276 	swap	a
      000A73 23               [12] 1277 	rl	a
      000A74 54 01            [12] 1278 	anl	a,#0x01
      000A76 25 E0            [12] 1279 	add	a,acc
      000A78 25 E0            [12] 1280 	add	a,acc
      000A7A 4C               [12] 1281 	orl	a,r4
      000A7B F5 FB            [12] 1282 	mov	_U1UCR,a
                                   1283 ;	uart.c:167: U1UCR = (U1UCR&~0x08) | (uartProtConfig->PARITY << 3);
      000A7D 74 F7            [12] 1284 	mov	a,#0xf7
      000A7F 55 FB            [12] 1285 	anl	a,_U1UCR
      000A81 FC               [12] 1286 	mov	r4,a
      000A82 8D 01            [24] 1287 	mov	ar1,r5
      000A84 8E 02            [24] 1288 	mov	ar2,r6
      000A86 8F 03            [24] 1289 	mov	ar3,r7
      000A88 89 82            [24] 1290 	mov	dpl,r1
      000A8A 8A 83            [24] 1291 	mov	dph,r2
      000A8C 8B F0            [24] 1292 	mov	b,r3
      000A8E 12 0D DA         [24] 1293 	lcall	__gptrget
      000A91 C4               [12] 1294 	swap	a
      000A92 54 01            [12] 1295 	anl	a,#0x01
      000A94 C4               [12] 1296 	swap	a
      000A95 03               [12] 1297 	rr	a
      000A96 54 F8            [12] 1298 	anl	a,#0xf8
      000A98 4C               [12] 1299 	orl	a,r4
      000A99 F5 FB            [12] 1300 	mov	_U1UCR,a
                                   1301 ;	uart.c:170: U1UCR = (U1UCR&~0x10) | (uartProtConfig->BIT9 << 4);
      000A9B 74 EF            [12] 1302 	mov	a,#0xef
      000A9D 55 FB            [12] 1303 	anl	a,_U1UCR
      000A9F FC               [12] 1304 	mov	r4,a
      000AA0 8D 01            [24] 1305 	mov	ar1,r5
      000AA2 8E 02            [24] 1306 	mov	ar2,r6
      000AA4 8F 03            [24] 1307 	mov	ar3,r7
      000AA6 89 82            [24] 1308 	mov	dpl,r1
      000AA8 8A 83            [24] 1309 	mov	dph,r2
      000AAA 8B F0            [24] 1310 	mov	b,r3
      000AAC 12 0D DA         [24] 1311 	lcall	__gptrget
      000AAF C4               [12] 1312 	swap	a
      000AB0 03               [12] 1313 	rr	a
      000AB1 54 01            [12] 1314 	anl	a,#0x01
      000AB3 C4               [12] 1315 	swap	a
      000AB4 54 F0            [12] 1316 	anl	a,#0xf0
      000AB6 4C               [12] 1317 	orl	a,r4
      000AB7 F5 FB            [12] 1318 	mov	_U1UCR,a
                                   1319 ;	uart.c:175: U1UCR = (U1UCR&~0x20) | (uartProtConfig->D9 << 5);
      000AB9 74 DF            [12] 1320 	mov	a,#0xdf
      000ABB 55 FB            [12] 1321 	anl	a,_U1UCR
      000ABD FC               [12] 1322 	mov	r4,a
      000ABE 8D 01            [24] 1323 	mov	ar1,r5
      000AC0 8E 02            [24] 1324 	mov	ar2,r6
      000AC2 8F 03            [24] 1325 	mov	ar3,r7
      000AC4 89 82            [24] 1326 	mov	dpl,r1
      000AC6 8A 83            [24] 1327 	mov	dph,r2
      000AC8 8B F0            [24] 1328 	mov	b,r3
      000ACA 12 0D DA         [24] 1329 	lcall	__gptrget
      000ACD 23               [12] 1330 	rl	a
      000ACE 23               [12] 1331 	rl	a
      000ACF 54 01            [12] 1332 	anl	a,#0x01
      000AD1 C4               [12] 1333 	swap	a
      000AD2 23               [12] 1334 	rl	a
      000AD3 54 E0            [12] 1335 	anl	a,#0xe0
      000AD5 4C               [12] 1336 	orl	a,r4
      000AD6 F5 FB            [12] 1337 	mov	_U1UCR,a
                                   1338 ;	uart.c:178: U1UCR = (U1UCR&~0x40) | (uartProtConfig->FLOW << 6);
      000AD8 74 BF            [12] 1339 	mov	a,#0xbf
      000ADA 55 FB            [12] 1340 	anl	a,_U1UCR
      000ADC FC               [12] 1341 	mov	r4,a
      000ADD 8D 01            [24] 1342 	mov	ar1,r5
      000ADF 8E 02            [24] 1343 	mov	ar2,r6
      000AE1 8F 03            [24] 1344 	mov	ar3,r7
      000AE3 89 82            [24] 1345 	mov	dpl,r1
      000AE5 8A 83            [24] 1346 	mov	dph,r2
      000AE7 8B F0            [24] 1347 	mov	b,r3
      000AE9 12 0D DA         [24] 1348 	lcall	__gptrget
      000AEC 23               [12] 1349 	rl	a
      000AED 54 01            [12] 1350 	anl	a,#0x01
      000AEF 03               [12] 1351 	rr	a
      000AF0 03               [12] 1352 	rr	a
      000AF1 54 C0            [12] 1353 	anl	a,#0xc0
      000AF3 F9               [12] 1354 	mov	r1,a
      000AF4 4C               [12] 1355 	orl	a,r4
      000AF5 F5 FB            [12] 1356 	mov	_U1UCR,a
                                   1357 ;	uart.c:181: U1GCR = (U1GCR&~0x20) | (uartProtConfig->ORDER << 5);
      000AF7 74 DF            [12] 1358 	mov	a,#0xdf
      000AF9 55 FC            [12] 1359 	anl	a,_U1GCR
      000AFB FC               [12] 1360 	mov	r4,a
      000AFC 0D               [12] 1361 	inc	r5
      000AFD BD 00 01         [24] 1362 	cjne	r5,#0x00,00110$
      000B00 0E               [12] 1363 	inc	r6
      000B01                       1364 00110$:
      000B01 8D 82            [24] 1365 	mov	dpl,r5
      000B03 8E 83            [24] 1366 	mov	dph,r6
      000B05 8F F0            [24] 1367 	mov	b,r7
      000B07 12 0D DA         [24] 1368 	lcall	__gptrget
      000B0A 54 01            [12] 1369 	anl	a,#0x01
      000B0C C4               [12] 1370 	swap	a
      000B0D 23               [12] 1371 	rl	a
      000B0E 54 E0            [12] 1372 	anl	a,#0xe0
      000B10 4C               [12] 1373 	orl	a,r4
      000B11 F5 FC            [12] 1374 	mov	_U1GCR,a
                                   1375 ;	uart.c:183: }
      000B13 22               [24] 1376 	ret
                                   1377 	.area CSEG    (CODE)
                                   1378 	.area CONST   (CODE)
                                   1379 	.area XINIT   (CODE)
                                   1380 	.area CABS    (ABS,CODE)
