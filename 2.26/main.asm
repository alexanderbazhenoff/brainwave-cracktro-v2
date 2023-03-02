; This Source Code Form is subject to the terms of the MIT
; License. If a copy of the MPL was not distributed with
; this file, You can obtain one at:
; https://github.com/alexanderbazhenoff/brainwave-cracktro-v2/blob/main/LICENSE

        ORG #6000
        DUP #40
        DS 0,#100
        EDUP
        ORG #6000
        MACRO DISPLIN
        DISPLAY "+"
        DUP 47
        DISPLAY /L,"-"
        EDUP
        DISPLAY /L,"+"
        ENDM
        MACRO POI16D
        DUP 16
        DISPLAY /L,"."
        EDUP
        ENDM
        DISPLIN
 DISPLAY "|   bra!nwave crack7r0 v2.26 c0ded b4 alx^bw.   |"
        DISPLIN
 DISPLAY
 DISPLAY "WARNING! addr of resident 4 STS.............#5D3B"

GA      EQU 9
CNVTXT  EQU 0

PPS     EQU #7D27       ;OUT-WINDOW ROUTINES START
PRINTW  EQU PPS+#89D    ;TXT SHADOW WINDOW
SPRBEG  EQU PRINTW+#E0  ;ADDR OF DECRUNCHED PHASES
ATRTBL  EQU SPRBEG+19000;ADDR OF ATTRtabl
SPRTBL  EQU ATRTBL+#170 ;ADDR OF SPRtabl
SPDTBL  EQU SPRTBL+#170 ;ADDR OF SPRDATAtabl
SPDYEP  EQU #FF9F       ;SPRDATAtbl 4 TRAINER: YEPs & NOPs
CRADTA  EQU #FF00       ;SCR ADDRtabl BEGIN
FREEBEG EQU SPDTBL+#844
MUSBEG  EQU #DC00
FREEMUS EQU CRADTA-MUSBEG ;MAX. MUZAK LENGHT
        DISPLAY "         max. lenght of music..............."
        DISPLAY /L,FREEMUS
        DISPLAY "         optimal dictionary size for rip...."
        DISPLAY /L,"#0800"
        DISPLIN
D_LOGO  EQU #9000       ;UNPACKED LOGO
I_LOGO  EQU D_LOGO+#B00 ;INSTALLED LOGO
INTVECT EQU #5B00
MUSINI  EQU MUSBEG+#7C
MUSPLA  EQU MUSBEG+#31F
MUSSTO  EQU MUSBEG+#7C
TIMESP  EQU 0           ;SP 4 EXIT
TMP     EQU 4*7/2       ;ACTION TACTS
TESTC   EQU 0           ;BORD COLOUR 4 CHECKING TPF :)
TR_POI  EQU 0           ;POINTS IN TRAINER
TR_YEP  EQU 0           ;BEGINING OF YEPs [4 TRAINER]
OPT     EQU 0

K0      EQU #40         ;COLOURS
K1      EQU #43
K2      EQU #44
K3      EQU #45
K4      EQU #47
        MACRO COLRMODE2
K1=#44
K2=#45
K3=#46
        ENDM
        MACRO COLRMODE3
K1=#43
K2=#45
K3=#46
        ENDM
        IF0 GA-4
        COLRMODE2
        ENDIF
        IF0 GA-5
        COLRMODE3
        ENDIF
        IF0 GA-7
        COLRMODE3
        ENDIF
;tackts4creditz
T00     EQU 0
T01     EQU 2
T02     EQU 4
T03     EQU 8
T04     EQU 22
T05     EQU 10
T06     EQU 24
T07     EQU 12
T08     EQU 26
T09     EQU 14
T10     EQU 29
T11     EQU 30
T12     EQU 31
T13     EQU 32
T14     EQU 33
T15     EQU 15
T16     EQU 16
T17     EQU 17

T18     EQU 40
T19     EQU 42
T20     EQU 49
T21     EQU 45
T22     EQU 50
T23     EQU 46
T24     EQU 47
T25     EQU 48

T26     EQU 56
T27     EQU 61
T28     EQU 62
T29     EQU 63
T30     EQU 58
T31     EQU 59
T32     EQU 60

T33     EQU 64
T34     EQU 71
T35     EQU 72
T36     EQU 74
T37     EQU 65
T38     EQU 66
T39     EQU 67
;TXT FORMAT: TXT ROW,COL,ATR,NOTE_ON,NOTE_OFF,POS,LEN,TXT...
;DB 1/0 - 'RAZDOLBAI MODE' OFF/ON; DB #80+NN -NEW POS
        DISPLAY "compiled for: "
PA      EQU 1
CCR     EQU 1
PAGS    EQU 7

        IF0 GA
        DISPLAY /L,"BUBBLER"
TR_POI=6
TR_YEP=34
        ENDIF
        IF0 GA-1
        DISPLAY /L,"GALAXY FORCE"
TR_POI=1
TR_YEP=11
CCR=1
OPT=1
        ENDIF
        IF0 GA-2
        DISPLAY /L,"CYCLONE"
TR_POI=3
TR_YEP=21
CCR=0
        ENDIF
        IF0 GA-3
        DISPLAY /L,"VIAJE AS CENTRO DE LA TIERRA"
TR_POI=3
TR_YEP=22
OPT=1
        ENDIF
        IF0 GA-4
        DISPLAY /L,"COUNTDOWN TO THE DEATH"
TR_POI=2
TR_YEP=23
        ENDIF
        IF0 GA-5
        DISPLAY /L,"YOGI BEAR COLLECTION"
TR_POI=2
TR_YEP=17
PA=0
PAGS=10
TR_PAR  EQU 3
TR_PRT  EQU 24
        ENDIF
        IF0 GA-6
        DISPLAY /L,"CLIFF HANGER"
TR_POI=1
TR_YEP=11
CCR=0
        ENDIF
        IF0 GA-7
        DISPLAY /L,"HEARTBROKEN"
TR_POI=1
TR_YEP=10
OPT=1
        ENDIF
        IF0 GA-8
        DISPLAY /L,"WELL'S FORGO"
TR_POI=1
TR_YEP=20
CCR=0
        ENDIF
        IF0 GA-9
        DISPLAY /L,"PUZZNIC"
TR_POI=3
TR_YEP=21
CCR=0
COLRMODE3
        ENDIF
        IF0 GA-10
        DISPLAY /L,"XENO"
TR_POI=0
TR_YEP=0
CCR=0
        ENDIF

TR_NOP  EQU TR_YEP+TR_POI ;NOPs
        DISPLIN

TPH1    EQU TMP*8+2
TPH2    EQU TMP*60-3
TPH3    EQU TMP*66
TPH4    EQU TMP*2
TPH5    EQU TMP*112
TPH6    EQU TMP*192
TPH7    EQU TMP*202
TPH8    EQU TMP*272
TPH9    EQU TMP*344
TPH10   EQU TMP*394
TPH11   EQU TMP*398
TPH12   EQU TMP*408
TPH13   EQU TMP*410

OUT2    EQU PPS
OUT4    EQU PPS+#06B
OUT6    EQU PPS+#11D
OUT8    EQU PPS+#1F9
OUT10   EQU PPS+#305
OUT12   EQU PPS+#441
OUT14   EQU PPS+#595
OUT16   EQU PPS+#701

        LD HL,MUSIC
        LD DE,MUSBEG
        LD B,'ENDMUS-'MUSIC+2
        LDIR
        LD HL,LOADER
        LD DE,#5D3B
        PUSH DE
        LD C,ENDLOADER-LOADER
        LDIR

        MACRO SCREDAT
        LD DE,#5F2C
        LD C,ESCREDATA-SCREDATA
        LDIR
        ENDM

        IF0 GA-5
        SCREDAT
        ENDIF
        IF0 GA-1
        SCREDAT
        ENDIF

        LD (ENDSTK),SP
        IF0 PA
        LD HL,PART
        LD BC,#F7FE
        IN A,(C)
        RRA
        JR NC,YSKIP
        BIT 0,A
        JR NZ,NSKIP1_
        INC (HL)
        JR YSKIP
NSKIP1_ BIT 1,A
        JR NZ,NSKIP2_
        INC (HL)
        INC (HL)
YSKIP   JP SKIP_INTRO
NSKIP2_
        ENDIF
        IFN PA
        LD BC,#7FFE
        ELSE
        LD B,#7F
        ENDIF
        IN A,(C)
        RRA
        IFN PA
        JP NC,SKIP_INTRO
        ELSE
        JR NC,YSKIP
        ENDIF
NSKIP   JP #FBDE
;-------MAIN EXECUTIONS
KERN_SP
        DW DOW_

        DW DOW
        DW DP_IN3
        DW DP_OUT3
        DW DP_OUT4

        DW DOW1
        DW DP_IN2
        DW DP_OUT5

        DW DOW1
        DW DP_IN4
        DW DP_OUT7

        DW DOW1
        DW DP_IN5
        DW DP_OUT9

        DW DOW1
        DW DP_IN6
        DW DP_OUTA

        DW INSL_S
        DW SPC_ON
        DW PRINT0
        DW TEXT
        DW TXTATR
        DW WO_WAITFRM0
        DW TPH1
        DW OUTATR
        DW WAITFRM0
        DW TPH2
        DW DELATRN

        DW WTXTATR
        DW PRINT0
        DW TEXT2
        DW OUTATRN
        DW WO_WAITFRM0
        DW TPH3
        DW FREEZW_TXTATR

        DW WW_PRINT
        DW TEXT3
        DW TPH5
        DW OUTATR
        DW WAITFRM0
        DW TPH6
        DW WTXTATR

        DW WW_PRINT
        DW TEXT4
        DW TPH7
        DW OUTATR
        DW WAITFRM0
        DW TPH8
        DW DELATR
        DW WTXTATR

        DW WW_PRINT
        DW TEXT5
        DW TPH9
        DW OUTATR
        DW WAITFRM0
        DW TPH10
        DW WTXTATR

        DW WW_PRINT
        DW TEXT6
        DW TPH11
        DW OUTATR
        DW WAITFRM0
        DW TPH12
        DW WA_OFF
        DW WAITFRM0
        DW TPH13
        DW TRAINER

;---TRAINER MENUE
TRAINER LD SP,(ENDSTK)
        LD HL,TEXTC
        CALL PRINT
        LD HL,SPRTBL
        LD (W_TBLA),HL
        CALL TXTATR

;---GAME PART SELECTION
        IF0 PA
        LD HL,TRAIN_
        LD (SPC_JMP),HL
        CALL SPC_ON
        LD B,TR_PAR-1
        CALL W_SUB
        CALL OUTATRN
        CALL WA_ON
        LD HL,8*TR_PRT+SPRTBL
        LD DE,SPDYEP
        LD BC,8*TR_PAR
        LDIR
PS_ML   LD DE,8*TR_PRT+SPRTBL+4
        LD HL,SPDYEP+4
        LD A,#BF
        IN A,(#FE)
        RRA
        CALL NC,PS_INC
        LD BC,#008
        LD A,#F7
        IN A,(#FE)
TR_SL_L RRA
        CALL NC,PS_KP
        INC B
        LD (PS_REGA),A
        LD A,B
        CP TR_PAR
        LD A,#3E
PS_REGA EQU $-1
        JR NZ,TR_SL_L

        JR PS_ML
TRAIN_  LD SP,(ENDSTK)
        LD A,(PART)
        OR A
        JR NZ,PS_NP3
        LD HL,TXTC1
        JR PS_P
PS_NP3  CP 1
        JR NZ,PS_NP2
        LD HL,TXTC2
        JR PS_P
PS_NP2  LD HL,TXTC3
PS_P    CALL PRINT
        LD HL,SPRTBL
        LD (W_TBLA),HL
        CALL TXTATR
        ENDIF

        MACRO PS_SR
PART    DB 0            ;PART 0-1st, 1-2nd, 2-3rd

PS_INC  LD A,(PART)
        INC A
        CP TR_PAR
        JR NZ,TR_II
        XOR A
TR_II   LD B,A
PS_KP   PUSH AF
        PUSH BC
        PUSH HL
        PUSH DE
        LD A,B
        LD (PART),A
        ADD A,A
        ADD A,A
        ADD A,A
        LD B,0
        LD C,A
        ADD HL,BC
        HALT
        LDI
        LDI
        CALL HLT_9
        POP DE
        POP HL
        POP BC
        POP AF
        RET
        ENDM
;---
        LD HL,EXIT
        LD (SPC_JMP),HL
        CALL SPC_ON
        LD B,TR_POI
        CALL W_SUB
        CALL OUTATRN
        CALL WA_ON

        IFN TR_POI
        LD HL,8*TR_YEP+SPRTBL
        LD DE,SPDYEP
        LD BC,8*TR_POI*2
        LDIR
        ENDIF
TR_KWL
        IFN TR_POI
        LD HL,SPDYEP+4
        LD DE,8*TR_YEP+SPRTBL+4

        IFN TR_POI-1
        LD IX,TR_DAT
        LD A,#BF
        IN A,(#FE)
        RRA
        JR NC,TR_TOG
        LD A,#F7
        IN A,(#FE)
        LD BC,#508
TR_KL   PUSH BC
        RRA
        CALL NC,TR_KP
        CALL NC,HLT_9
        LD B,0
        ADD HL,BC
        EX DE,HL
        ADD HL,BC
        EX DE,HL
        INC IX
        POP BC
        DJNZ TR_KL

        IF0 TR_POI-6
        LD A,#EF
        IN A,(#FE)
        BIT 4,A
        CALL Z,TR_KP
        CALL Z,HLT_9
        ENDIF

        ELSE
        LD IX,TR_DAT
        LD A,#BF
        IN A,(#FE)
        RRA
        JR NC,TR_TOG
        LD A,#F7
        IN A,(#FE)
        RRA
        CALL NC,TR_KP
        CALL NC,HLT_9

        ENDIF

        ENDIF
        JR TR_KWL

        IFN TR_POI
TR_TOG  PUSH BC
        LD B,TR_POI
TR_TOG1 PUSH BC
        CALL TR_KP
        LD B,0
        ADD HL,BC
        EX DE,HL
        ADD HL,BC
        EX DE,HL
        INC IX
        POP BC
        DJNZ TR_TOG1
        POP BC
        CALL HLT_9
        JR TR_KWL

TR_KP   PUSH AF
        PUSH DE
        PUSH HL
        PUSH BC
        LD A,#FF
        XOR (IX)
        LD (IX),A
        JR NZ,TR_PY
        LD BC,TR_POI*8
        ADD HL,BC
TR_PY   HALT
        LDI
        LDI
        POP BC
        POP HL
        POP DE
        POP AF
        RET
        ENDIF
HLT_9
        DUP 9
        HALT
        EDUP
        RET
W_SUB   LD A,(W_COL)
        SUB B
        LD (W_COL),A
        RET

        IF0 PA
        PS_SR
        ENDIF

;---TRAINER MODE [0=NOP, 1=YEP]
        IFN TR_POI
TR_DAT  DS TR_POI,#FF
        ENDIF

;---EXIT FORM CRACKTRO
EXIT    LD SP,#3131
ENDSTK  EQU $-2
        CALL WTXTATR
;---INSTALL LOGO ON EXIT
INSL_E  LD HL,I_LOGO+#20
        LD (LOGO_A),HL
        LD A,#2B
        LD (LOGO_CO),A
        LD DE,I_LOGO
        LD HL,#5000
        LD IX,DOWN_DE
        LD B,#40
        CALL ILS
        ;LD HL,#5A00
        LD H,#5A
        CALL ILS0
SKIP_INTRO
        DI
        LD IY,#5C3A
        LD HL,#2758
        EXX
        LD A,#3F
        LD I,A
        IM 1
        CALL MUSSTO
;---MOVE TRAINER [AND PART] DATA
        IF0 PA
        LD DE,#5B14     ;if several parts:
        LD HL,TR_DAT    ;#5B14-15 - tr_points
        LDI             ;#5B16 - part
        LDI
        LD A,(PART)     ;if own part
        LD (DE),A       ;#5B14...#5B14+TR_POI - tr_points
        ELSE
        IFN TR_POI      ;#00=point disabled
        IF0 TR_POI-1
        LD A,(TR_DAT)
        LD (#5B14),A
        ELSE
        IF0 TR_POI-2
        LD DE,#5B14
        LD HL,TR_DAT
        DUP TR_POI
        LDI
        EDUP
        ELSE
        LD DE,#5B14
        LD HL,TR_DAT
        LD BC,TR_POI
        LDIR

        ENDIF
        ENDIF
        ENDIF
        ENDIF
        RET
        IF0 TR_POI
        ORG $-4
        JP MUSSTO
        ENDIF

FREEZW_TXTATR
        LD HL,(W_TBLA)
        PUSH HL
        LD DE,8
        LD A,22
FREZ_WL LD B,TPH4
FREZ_W2 HALT
        DJNZ FREZ_W2
        ADD HL,DE
        LD (W_TBLA),HL
        DEC A
        LD (W_COL),A
        CP 2
        JR NZ,FREZ_WL
        CALL WA_OFF
        POP HL
        LD (W_TBLA),HL

TXTATR  LD HL,#5800
        LD B,L
        LD A,L
TXTATL  LD (HL),A
        INC L
        LD (HL),A
        INC HL
        DJNZ TXTATL
        LD H,#50
TXTATRL DEC HL
        LD (HL),A
        OR (HL)
        JR Z,TXTATRL
        RET

WTXTATR CALL WA_OFF
        JR TXTATR
;---SPRITES ACTION SWITCHER
WA_ON   LD A,H          ;check it always!
        JR WA_L
WA_OFF  XOR A
WA_L    LD (WORD_S),A
        RET
;---SPACE KEY SWITCHER
SPC_OFF LD A,H
        JR SPC_L
SPC_ON  XOR A
SPC_L   LD (SPCK_S),A
        RET
;---SPRITES ACTION MANAGER
W_ACT   LD (SAM_ESP),SP
        LD SP,SPRTBL
W_TBLA  EQU $-2
        LD B,6
W_COL   EQU $-1
W_ACTL  LD (SAM_RBC),BC
        POP HL
        LD (SAM_SR),HL

        LD A,R
        XOR C
        XOR B
        LD L,A
        XOR (HL)
        LD R,A
;       LD E,A

        POP BC
        LD A,C
        BIT 0,L
        JR Z,SP_ADX
SP_DX   OR A
        JR Z,SP_NDX
        DEC A
SP_NDX  LD C,A
        LD A,B
        BIT 1,L
        JR Z,SP_ADY
SP_DY   OR A
        JR Z,SP_NDY
        DEC A
SP_NDY  LD B,A
        PUSH BC
        POP BC
        POP HL
        LD A,B
        EX AF,AF'
        RLC C
        LD B,0
        ADD HL,BC
        LD E,(HL)
        INC HL
        LD D,(HL)

        EX AF,AF'
        POP HL
        ADD A,A
        LD C,A
        ADD HL,BC
        LD (SAM_CSP),SP
        LD SP,TIMESP
        CALL #CDCD
SAM_SR  EQU $-2
        LD SP,#3131
SAM_CSP EQU $-2
        LD BC,#0101
SAM_RBC EQU $-2
        DJNZ W_ACTL
        LD SP,#3131
SAM_ESP EQU $-2
        RET

SP_ADX  INC A
        CP 7
        JR NC,SP_DX
        JR SP_NDX

SP_ADY  INC A
        CP 5
        JR NC,SP_DY
        JR SP_NDY

;---INT SR
INT_SR  DI
        PUSH AF
        PUSH BC
        PUSH DE
        PUSH HL
        PUSH IX
        CALL MUSPLA

        IFN TESTC
        LD A,TESTC
        OUT (#FE),A
        ENDIF

        LD A,0
WORD_S  EQU $-1
        OR A
        CALL NZ,W_ACT
ACT_SR  EQU $-2

        IFN TESTC
        XOR A
        OUT (#FE),A
        ENDIF

        LD HL,#FFFF-3
FRAMES  EQU $-2
        INC HL
        LD (FRAMES),HL
        LD HL,TMP
NOTE    EQU $-1
TACTS   EQU $-2
        LD A,L
        DEC A
        JR NZ,NONNOT
        INC H
        LD A,TMP
NONNOT  LD L,A
        LD (TACTS),HL
        POP IX
        POP HL
        POP DE
        POP BC
        POP AF
        EX AF,AF'
        LD A,#3E
SPCK_S  EQU $-1
        OR A
        JR NZ,NSPCK
        LD A,#7F
        IN A,(#FE)
        RRA
        JR NC,SPC_PRS
NSPCK   EX AF,AF'
        EI
        RET

SPC_PRS POP HL
        CALL WA_OFF
        CALL SPC_OFF
        EI
        CALL TXTATR
        JP TRAINER
SPC_JMP EQU $-2

;---WAIT FRAMES
WW_PRINT
        POP HL
        CALL PRINT
WO_WAITFRM0
        CALL WA_ON
WAITFRM0
        POP DE
WAITFRM LD HL,(FRAMES)
        LD A,D
        CP H
        JR NZ,WAITFRM
        LD A,E
        CP L
        JR NZ,WAITFRM
        LD HL,TMP
        LD (TACTS),HL
        RET

;---DEL ATTR/NON-SYNCHRONIZED
DELATRN LD A,#18
OUTA_M6 LD (OUTA_C1),A
        LD HL,OUTA_P2
        JR OUTA_M5
;---DEL ATTR/SYNCH
DELATR  LD A,#28
        JR OUTA_M6
;---OUT ATTR/NON-SYNCH
OUTATRN LD A,#18
        JR OUTA_M4
;---OUT ATTR/SYNCH
OUTATR  LD A,#28
OUTA_M4 LD (OUTA_C1),A
        LD HL,OUTA_P1
OUTA_M5 LD (OUTA_S1),HL
        LD (OUTA_S2),HL
        LD IX,#5800
        LD HL,ATRTBL+6
        LD A,(W_COLA)
        LD B,A
        LD C,#FF
OUTA_L1 LD A,(NOTE)
        LD C,A
        LD E,(HL)
        INC HL
        LD D,(HL)
        DEC HL
        PUSH DE
        POP IY
        LD A,(IY+3)
        CP C
OUTA_C1 JR Z,OUTA_M1
        JR OUTA_L1
OUTA_M1 LD DE,8
        ADD HL,DE
        PUSH BC
        PUSH HL
        PUSH IX
        POP HL
        LD A,(IY)
        OR A
        JR Z,OUTA_M7
        LD B,A
        LD E,#20
OUTA_L3 ADD HL,DE
        DJNZ OUTA_L3
OUTA_M7 LD E,(IY+1)
        ADD HL,DE
        HALT
        LD A,(IY+5)
        INC A
        CP 2
        JR Z,OUT_1
        BIT 0,A
        JR Z,OUTA_M2
        DEC L
OUTA_M2 LD B,A
        DEC L
        CALL #CDCD
OUTA_S1 EQU $-2
        PUSH HL
        PUSH BC
OUTA_L4 LD (HL),A
        DEC L
        DJNZ OUTA_L4
        POP BC
        POP HL
        LD E,#20
        ADD HL,DE
OUTA_L5 LD (HL),A
        DEC L
        DJNZ OUTA_L5
OUTA_M3 POP HL
        POP BC
        DJNZ OUTA_L1
        RET

OUT_1   CALL #CDCD
OUTA_S2 EQU $-2
        LD (HL),A
        INC L
        LD (HL),A
        LD E,#1F
        ADD HL,DE
        LD (HL),A
        INC L
        LD (HL),A
        JR OUTA_M3

OUTA_P1 LD A,(IY+2)
        RET
OUTA_P2 XOR A
        RET
;---INSTALL LOGO ON START
INSL_S  LD HL,I_LOGO
        LD (LOGO_A),HL
        ;LD DE,I_LOGO
        LD D,H
        LD E,L
        ;LD HL,D_LOGO
        LD H,'D_LOGO
        LD IX,DOWN_DE
        LD B,#40
        CALL ILS
        ;LD HL,D_LOGO+#A00
        LD H,'D_LOGO+#A
ILS0    LD B,8
        LD IX,DOWN_20
        CALL ILS
ILS_X   LD A,#20
        LD (WORD_S),A
        LD HL,PD_LOGO
        LD (ACT_SR),HL
PDLWAIT EI
        HALT
        DEC A
        JR NZ,PDLWAIT
        LD (WORD_S),A
        LD HL,W_ACT
        LD (ACT_SR),HL
        RET
ILS     LD (ILSNLSR),IX
ILS_L   PUSH BC
        PUSH HL
        LD BC,#2020
        XOR A
ILS_L1  LD (DE),A
        INC DE
        DJNZ ILS_L1
        LDIR
        POP HL
        EX DE,HL
        CALL #CDCD
ILSNLSR EQU $-2
        EX DE,HL
        POP BC
        DJNZ ILS_L
        RET
;---PUT/DEL LOGO
PD_LOGO LD HL,#2121
LOGO_A  EQU $-2
LOGO_CO INC HL
        LD (LOGO_A),HL
        PUSH HL
        LD DE,#1000
        ADD HL,DE
        LD D,#5A
        LD IX,DOWN_20
        LD B,8
        CALL OUTLLIN
        POP HL
        LD IX,DOWN_DE
        ;LD DE,#5000
        LD D,#50
        LD B,#40
OUTLLIN LD (LINECLK),IX
OUTLL1  PUSH BC
        PUSH DE
        PUSH HL
        DUP 32
        LDI
        EDUP
        POP HL
        LD DE,#40
        ADD HL,DE
        POP DE
        CALL #CDCD
LINECLK EQU $-2
        POP BC
        DJNZ OUTLL1
        RET
DOWN_20 LD A,E
        ADD A,#20
        LD E,A
        RET
;---PRINT TXT 2 SHADOW WINDOW
PRINT0  POP HL
PRINT   LD B,(HL)
        PUSH HL
        LD HL,ATRTBL
        LD (ATRT_P),HL
        LD HL,SPRTBL
        LD (SPRT_P),HL
        LD HL,SPDTBL
        LD (SPRD_P),HL
        LD HL,SPRBEG
        LD (DSP_P),HL
        POP IX
        LD A,B
        LD (W_COL),A
        LD (W_COLA),A
        LD (W_COLB),A
        INC IX
PRNTWRD PUSH BC
        PUSH IX
        POP IY
        XOR A
        LD (PR_JS),A
;       LD DE,4
;       ADD IX,DE
        DUP 4
        INC IX
        EDUP
        LD HL,PRINTW
        PUSH HL
;       LD D,H
;       LD E,L
;       INC DE
;       LD BC,#C0
;       LD (HL),B
;       LDIR
        LD B,#C0
PRWCL   LD (HL),A
        INC HL
        DJNZ PRWCL
        POP HL
        LD (PRNT_AD),HL
        LD A,(IX)
        INC IX
        LD (PR_POS),A
        LD B,(IX)
        INC IX
PRINT_L LD HL,#2121
PRNT_AD EQU $-2
        LD DE,#10
        PUSH BC
        LD A,#3E
PR_POS  EQU $-1
        OR A
        JR Z,NO_PRU
        LD B,A
PRU_L   ADD HL,DE
        DJNZ PRU_L
NO_PRU  PUSH HL
        PUSH DE
PR_CHR  LD A,(IX)
        OR A
        JR Z,PR_JSW
        BIT 7,A
        JR NZ,PR_NPOS
        CP 1
        JR NZ,PRNOJS
        LD A,8
PR_JSW  LD (PR_JS),A
        INC IX
        JR PR_CHR
PR_NPOS INC IX
        RES 7,A
        LD (PR_POS),A
        POP DE
        POP HL
        POP BC
        JR PRINT_L

PRNOJS  INC IX
        LD H,0
        LD L,A
        ADD HL,HL
        ADD HL,HL
        ADD HL,HL
        LD DE,FONT-#100
        ADD HL,DE
        EX DE,HL
        POP BC
        POP HL
        JR NO_PJMP
PR_JS   EQU $-1
        BIT 0,A
        CALL Z,P_M_UP
        CALL NZ,P_M_DN
NO_PJMP
        DUP 7
        LD A,(DE)
        LD (HL),A
        ADD HL,BC
        INC DE
        EDUP
        LD A,(DE)
        LD (HL),A
        LD HL,(PRNT_AD)
        INC HL
        LD (PRNT_AD),HL
        POP BC
        DJNZ PRINT_L
;---DECRUNCH ATTR TABL
        LD DE,#1111
ATRT_P  EQU $-2
        PUSH IY
        POP HL
;       LD BC,6
;       LDIR
        DUP 6
        LDI
        EDUP
        INC DE
        INC DE
        LD (ATRT_P),DE
;---DECRUNCH SPR TABL
        PUSH IX
        LD IX,#2121
SPRT_P  EQU $-2
        LD A,R
        AND 7
        CP 7
        JR NZ,NO_ASTD
        DEC A
NO_ASTD LD (IX+2),A
;       LD A,R
        AND 3
        LD (IX+3),A
        LD H,'CRADTA
        LD A,(IY)
        ADD A,A
        LD L,A
        LD E,(HL)
        INC L
        LD D,(HL)
        LD A,(IY+1)
        ADD A,E
        LD E,A
        LD HL,#2121
SPRD_P  EQU $-2
        LD (IX+6),L
        LD (IX+7),H

        LD B,16
SAT_D   LD (HL),E
        INC HL
        LD (HL),D
        INC HL
        CALL DOWN_DE
        DJNZ SAT_D
        LD (SPRD_P),HL
        LD A,(IY+5)
        ADD A,A
        LD D,0
        LD E,A
        LD HL,OUTTB00
        ADD HL,DE
        LD E,(HL)
        INC HL
        LD D,(HL)
        LD (IX+0),E
        LD (IX+1),D
        LD C,(IY+5)
        PUSH IY
        LD DE,(SPRD_P)
        PUSH DE
        POP IY
        LD (IX+4),E
        LD (IX+5),D
        LD DE,#1111
DSP_P   EQU $-2
        LD HL,PRINTW
        BIT 0,C
        JR NZ,NO_DRSA ;если кол-во букв не четное
        INC C
NO_DRSA INC C
        LD B,7
DR_SPL1 LD (IY),E
        INC IY
        LD (IY),D
        INC IY
        PUSH HL
        PUSH BC
        LD B,#0C
DR_SPL2 PUSH BC
        PUSH HL
        LD B,0
        LDIR
        POP HL
        LD C,#10
        ADD HL,BC
        POP BC
        DJNZ DR_SPL2
;---SCROLL SHADOW WINDOW
SCROLL  LD HL,PRINTW
        LD B,#0C
SCROL_L OR A
        DUP 16
        RR (HL)
        INC HL
        EDUP
        DJNZ SCROL_L
        POP BC
        POP HL
        DJNZ DR_SPL1
        LD (DSP_P),DE
        LD (SPRD_P),IY
        LD C,8
        ADD IX,BC
        LD (SPRT_P),IX

        POP IY
        POP IX
        POP BC
        DEC B
        JP NZ,PRNTWRD
;---PREPARING ATTR TABL
        LD HL,ATRTBL+6
        LD IX,ATRTBL
        LD DE,8
        LD BC,#600
W_COLA  EQU $-1
PAT_L1  PUSH BC
        PUSH IX
        LD B,6
W_COLB  EQU $-1
PAT_L2  LD A,(IX+3)
        CP C
        JR Z,PAT_FND
        ADD IX,DE
        DJNZ PAT_L2
        POP IX
        POP BC
        INC C
        JR PAT_L1
PAT_FND PUSH IX
        POP BC
        LD (HL),C
        INC HL
        LD (HL),B
        DEC HL
        ADD HL,DE
        POP IX
        POP BC
        INC C
        DJNZ PAT_L1
        RET

P_M_UP  EXA
        LD A,(PR_POS)
        OR A
        JR Z,P_MU_NC
        DEC A
P_MU_NC LD (PR_POS),A
        EXA
        RET
P_M_DN  EXA
        LD A,(PR_POS)
        CP 3
        JR Z,P_MU_NC
        INC A
        JR P_MU_NC

DOWN_DE INC D
        LD A,D
        AND 7
        RET NZ
        LD A,E
        SUB #E0
        LD E,A
        SBC A,A
        AND #F8
        ADD A,D
        LD D,A
OUT0    RET

BEGTEXT
        INCLUDE "CRAK2TXT"
TEXTC   IF0 GA
        C_BUBL
        ENDIF
        IF0 GA-1
        C_GFORC
        ENDIF
        IF0 GA-2
        C_CYCL
        ENDIF
        IF0 GA-3
        C_VIAJ
        ENDIF
        IF0 GA-4
        C_CDTTD
        ENDIF
        IF0 GA-5
        P_YOGI
TXTC3   DB 21
        C_YOG3
        TP
TXTC2   YB2
TXTC1   YB1
        ENDIF
        IF0 GA-6
        C_CLIF
        ENDIF
        IF0 GA-7
        C_HERT
        ENDIF
        IF0 GA-8
        C_WELLS
        ENDIF
        IF0 GA-9
        C_PUZN
        ENDIF
        IF0 GA-10
        C_XENO
        ENDIF
ENDTEXT
;---OUT SR TBL
        ;      0    1    2    3    4    5    6    7
OUTTB00 DEFW #C9C9,OUT2,OUT4,OUT4,OUT6,OUT6,OUT8,OUT8
        ;      8     9     10    11    12    13    14    15
        DEFW OUT10,OUT10,OUT12,OUT12,OUT14,OUT14   ;,OUT16,OUT16
FONT    INCBIN "funnyfnt"
ENDCOD
LOGO    INCBIN "crak2log"
MUSIC   INCBIN "crk2musD"
ENDMUS

;------INSTALL
        DISP #FBDE
;       LD HL,MUSIC
;       LD DE,MUSBEG
;       ;LD BC,ENDMUS-MUSIC
;       LD B,'ENDMUS-'MUSIC+1
;       LDIR

        IF0 CNVTXT
        LD HL,ENDTEXT
        ;LD DE,#4F00
        LD D,#4F
        LD BC,ENDTEXT-BEGTEXT+1
        LDDR
        INC HL
        INC DE
        LD B,PAGS
DCTX_L0 PUSH BC
        LD A,(DE)
        LD (HL),A
        INC HL
        INC DE
DCTX_L1 EXA
        LD A,(DE)
        LD C,A
        DUP 3
        SRL A
        EDUP
;       AND #F
        LD (HL),A
        INC HL
        INC DE
        LD A,(DE)
        LD B,A
        SRL A
        SRL A
;       AND #3F
        LD (HL),A
        INC HL
        INC DE
        LD A,C
        AND 7           ;?
        OR #40
        LD (HL),A
        INC HL
        LD A,(DE)
        LD (HL),A
        INC HL
        INC DE
        LD A,B
        AND 3
        LD (HL),A
        INC HL
        LD (COLAI),HL
        INC HL
        LD B,1
DCTX_LL DEC B
DCTX_L2 LD A,(DE)
        LD (HL),A
        INC HL
        INC DE
        INC B
        CP 2
        JR C,DCTX_LL
        BIT 7,A
        JR Z,DCTX_L2
        CP #84
        JR C,DCTX_LL
        DEC HL
        RES 7,(HL)
        INC HL
        LD A,B
        LD (#3232),A
COLAI   EQU $-2
        EXA
        DEC A
        JR NZ,DCTX_L1
        POP BC
        DJNZ DCTX_L0
        ENDIF

        CALL MUSINI
        LD HL,LOGO
        ;LD DE,D_LOGO
        LD D,'D_LOGO
        LD BC,#4020
LCLOOP  PUSH BC
        PUSH DE
LCLOOP1 LD A,(HL)
        LD (DE),A
        INC HL
        CALL DOWN_DE
LAROUND DJNZ LCLOOP1
        POP DE
        INC DE
        POP BC
        DEC C
        JR NZ,LCLOOP
        LD DE,D_LOGO+#A00
        LD B,1
        LDIR
;---CALCULATING PRINT POSITIONS TABL
        LD D,#40
        ;LD DE,#4000
        LD HL,CRADTA
        LD B,16
CALCSAL LD (HL),E
        INC L
        LD (HL),D
        INC L
        LD A,E
        ADD A,#20
        LD E,A
        JR NC,CALCSA0
        SET 3,D
CALCSA0 DJNZ CALCSAL
;---IM2
DOWEND  ;LD DE,INTVECT
        LD D,'INTVECT
        ;LD B,L
        LD A,D
        LD I,A
        INC A
IN_INTL LD (DE),A
        INC DE
        DJNZ IN_INTL
        LD (DE),A
        LD L,A
        LD H,A
        LD (HL),#C3
        INC L
        LD (HL),.INT_SR
        INC L
        LD (HL),'INT_SR
        IM 2
;---DECRUNCH OUT-WINDOW ROUTINES
        LD HL,PPS
        LD SP,KERN_SP
        RET

DOW_
        CALL D_BEG
        LD B,#0C
D_OWR12 LD (HL),#E1
        INC HL
        LD (HL),#22
        INC HL
        CALL L_IXDE
        DJNZ D_OWR12
        CALL D_RET
        JP D_OWRU0
DOW     POP BC
        POP DE
        POP IX
        LD A,6
        JR D_OWRU
DOW1    POP BC
        POP DE
D_OWRU1 LD A,#0C
        LD IX,DP_OUT6
D_OWRU  LD (D_NORS2+1),BC
        LD (DPA_OU1),DE
        LD (DPA_OU2),IX
        LD (DP_COL),A
        LD (DP_COL2),A
D_OWRU0 CALL D_BEG
        LD B,6
DP_COL  EQU $-1
D_OWR22 LD A,B
        CP 6
DP_COL2 EQU $-1
        JR Z,D_NORS2
        LD (HL),#31
        INC HL
        LD (IY),L
        INC IY
        LD (IY),H
        INC IY
        INC HL
        INC HL
D_NORS2 CALL DP_IN2
        LD A,B
        CP 1
        JR Z,D_NOSS2
        LD (HL),#ED
        INC HL
        LD (HL),#73
        INC HL
        PUSH HL
        POP IY
        INC HL
        INC HL
D_NOSS2 LD (HL),#31
        INC HL
        CALL L_IXDE
        CALL DP_OUT1
DPA_OU1 EQU $-2
        CALL DP_OUT2
DPA_OU2 EQU $-2
        DJNZ D_OWR22
        CALL D_RET
        RET
DP_OUT1 LD (HL),#C5
        INC HL
        LD (HL),#F5
        INC HL
        RET

DP_OUT2 LD (HL),#31
        INC HL
        CALL L_IXDE
        LD (HL),#E5
        INC HL
        LD (HL),#D5
        INC HL
DP_OUT6 RET

DP_OUT4 LD (HL),#31
        INC HL
        CALL L_IXDE
        JR DP_OUT3

DP_OUT7 LD DE,REGDT2
        JR DP_ZZZ
DP_OUT9 LD DE,REGDT3
        JR DP_YYY
DP_IN2  LD DE,REGDAT1
        LD C,4
        JR D_LDIR
DP_OUT3 LD DE,REGDT7
        LD C,4
        JR D_LDIR
DP_OUTA LD DE,REGDT4
        LD C,8
        JR D_LDIR
;DP_OUTB LD DE,REGDT5
;DP_XXX LD C,10
;       JR D_LDIR
;DP_INB LD DE,REGDAT5
;       JR DP_XXX

DP_OUT5 LD DE,REGDT1
        LD C,4
        JR D_LDIR
DP_IN6  LD DE,REGDAT2
        LD C,8
        JR D_LDIR

DP_IN4  LD DE,REGDAT2
DP_ZZZ  LD C,6
        JR D_LDIR
DP_IN5  LD DE,REGDAT2
DP_YYY  LD C,7
        JR D_LDIR

DP_IN3  LD DE,REGDAT2
        LD C,7
        JR D_LDIR

D_BEG   LD (HL),#ED
        INC HL
        LD (HL),#73
        INC HL
        PUSH HL
        INC HL
        INC HL
        LD (HL),#F9
        INC HL
        PUSH HL
        POP IX
        LD DE,4*#0C
        ADD HL,DE
        LD (HL),#EB
        INC HL
        LD (HL),#F9
        INC HL
        POP DE
        POP IY
        PUSH DE
        JP (IY)

D_RET   LD (HL),#31
        INC HL
        POP IY
        POP IX
        CALL L_IX_HL
        LD (HL),#C9
        INC HL
        PUSH IY
COMRT   RET

L_IXDE  LD (IX),#E1
        INC IX
        LD (IX),#22
        INC IX
L_IX_HL LD (IX),L
        INC IX
        LD (IX),H
        INC IX
        INC HL
        INC HL
        RET

D_LDIR  EX DE,HL
        PUSH BC
        LD B,0
        LDIR
        POP BC
        EX DE,HL
        RET

REGDT1  PUSH HL
        PUSH DE
        PUSH BC
        PUSH AF

REGDT4  PUSH AF
REGDT3  PUSH BC
REGDT2  PUSH DE
        PUSH HL
REGDT7  EXX
REGDT5  PUSH BC
        PUSH DE
        PUSH HL
        PUSH AF
        EXX
        EX AF,AF'
        PUSH BC
        PUSH DE
        PUSH HL
        PUSH AF

REGDAT5 POP AF
        POP HL
        POP DE
        POP BC
        EXX
        EX AF,AF'
        POP AF
        POP HL
        POP DE
        POP BC

REGDAT1 POP AF
        POP BC
        POP DE
        POP HL

REGDAT2 POP HL
        POP DE
        POP BC
        EXX
        POP HL
        POP DE
        POP BC
        POP AF
        ENT

;       IF GA-9
;BLOK   INCBIN "CODE_.C"
;EBLOK
;       ENDIF

        ;---------loaders
        IF0 GA
LOADER
        LD HL,#6000
        LD B,#6
        PUSH HL
        CALL #5D7C
        POP HL
        LD B,94
        JP #5D7C
ENDLOADER
        ENDIF

        IF0 GA-8
LOADER
        DISP #5D3B
        DI
        LD SP,#6000
        LD HL,#C000
        LD B,8
        CALL #5D7C
        LD HL,#6000
        PUSH HL
        LD B,20
        CALL #5D7C
        POP HL
        LD B,83
        CALL #5D7D
        LD A,(#5B14)
        OR A
        JR Z,NOCHEAT
        XOR A
        LD (50047),A
        LD (50055),A
        LD (50067),A
        LD (50075),A
NOCHEAT JP #EDF0
        ENT
ENDLOADER
        ENDIF

        IF0 GA-10
LOADER
        LD HL,#9C40
        LD B,#C
        CALL #5D7C
        LD HL,#6000
        LD B,#48
        CALL #5D7D
        JP #CD86
ENDLOADER
        ENDIF

        IF0 GA-2
LOADER
        LD HL,#9C40
        LD B,#9
        CALL #5D7C
        LD HL,#6000
        LD B,#3A
        CALL #5D7D
        JP #5000
ENDLOADER
        ENDIF

        IF0 GA-3
LOADER
        LD HL,#6000
        LD B,#13
        PUSH HL
        CALL #5D7C
        POP HL
        LD B,#10
        CALL #5D7D
        JP #6060
ENDLOADER
        ENDIF
        IF0 GA-4
LOADER
        LD HL,#9C40
        LD B,15
        CALL #5D7C
        LD A,1
        LD (#5E07),A
        LD (#5F0E),A
        LD (#5F20),A
        LD HL,#6000
        LD B,86
        CALL #5D7D
        JP #6986
ENDLOADER
        ENDIF
        IF0 GA-1
LOADER
        LD HL,#5F2C
        LD DE,#AA00
        LD B,1
        LDIR
        LD HL,#6000
        LD B,#C
        PUSH HL
        CALL #5D7C
        POP HL
        LD B,#4A
        JP #5D7C
ENDLOADER
SCREDATA
        INCBIN "CODE_.R"
ESCREDATA
        ENDIF
        IF0 GA-5
LOADER
        DISP #5D3B
        LD HL,#5F2C
        LD DE,#7F00
        LD B,1
        LDIR
        LD HL,#6000
        LD B,#1F
        JR #5D7C
        ENT
ENDLOADER
SCREDATA
        INCBIN "yog_scr_.o"
ESCREDATA
        ENDIF
        IF0 GA-7
LOADER
        DISP #5D3B
        LD HL,#BE00
        LD B,#0A
        CALL #5D7E
        LD A,#C9
        LD (#5D94),A
        LD HL,#65C0
        LD B,#57
        CALL #5D7F
        LD A,#F3
        LD (#5D94),A
        JP #BE0F
        ENT
ENDLOADER
        ENDIF
        IF0 GA-9
LOADER
        DISP #5D3B
;       LD HL,BLOK
;       LD DE,#EE00
;       LD BC,#80
;       LDIR
        LD HL,#6000
        LD B,2
        DUP 4
        PUSH HL
        EDUP
        CALL #5D7C
        POP HL
        LD B,6
        CALL #5D7C
        LD A,#C9
        LD (#5D92),A
        LD HL,#B200
        LD B,#3D
        PUSH HL
        CALL #5D7D
        LD HL,(#5CF4)
        LD (#5B17),HL
        LD HL,#F000
        LD B,1
        CALL #5D7D
        DI
        POP HL
        POP DE
        JP #5D95
        ENT
ENDLOADER
        ENDIF

        DISPLAY
        DISPLIN
        IFN TESTC
        DISPLAY "border for checking TPF....."
        POI16D
        DISPLAY /L,TESTC
        DISPLAY
        ENDIF
        DISPLAY "end code...................."
        POI16D
        DISPLAY /L,ENDCOD
ENDOBJ  DISPLAY "end object.................."
        POI16D
        DISPLAY /L,ENDOBJ
        DISPLAY
        DISPLIN
        DISPLAY "total lenght of code block.."
        POI16D
        DISPLAY /L,ENDOBJ-#6000

        IF0 CNVTXT
        ORG #B000
        LD HL,BEGTEXT
        LD DE,#4100
        LD BC,ENDTEXT-BEGTEXT
        PUSH BC
        PUSH HL
        PUSH DE
        LDIR
        POP HL
        PUSH HL
        LD D,H
        LD E,L
        DEC D
        LD B,PAGS
COTX_L0 PUSH BC
        LD A,(HL)
        LD (DE),A
        INC HL
        INC DE
COTX_L1 EXA
        LD A,(HL)
        DUP 3
        ADD A,A
        EDUP
        LD C,A
        INC HL
        LD A,(HL)
        ADD A,A
        ADD A,A
        LD B,A
        INC HL
        LD A,(HL)
        AND 7
        OR C
        LD (DE),A
        INC DE
        INC HL
        INC HL
        LD A,(HL)
        OR B
        LD (DE),A
        INC DE
        DEC HL
        LD A,(HL)
        LD (DE),A
        INC DE
        INC HL
        INC HL
        LD B,(HL)
        INC HL
COTX_L2 LD A,(HL)
        LD (DE),A
        INC HL
        INC DE
        BIT 7,A
        JR NZ,COTX_L2
        CP 2
        JR C,COTX_L2
        DJNZ COTX_L2
        DEC DE
        LD A,(DE)
        OR #80
        LD (DE),A
        INC DE
        EXA
        DEC A
        JR NZ,COTX_L1
        POP BC
        DJNZ COTX_L0
        LD H,D
        LD L,E
        INC DE
        EXA
        LD (HL),A
        LD BC,#3FF
        LDIR
        POP HL
        DEC H
        POP DE
        POP BC
        LDIR
        RET
        ENDIF
