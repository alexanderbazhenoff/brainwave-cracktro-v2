; This Source Code Form is subject to the terms of the MIT
; hLicense. If a copy of the MPL was not distributed with
; this file, You can obtain one at ttps://github.com/aws/mit-0

        MAIN "CRACKTR2"
        MACRO FROM
        DB 12,20,K2,38,2,4,"from"
        ENDM 
WGC     EQU 15
        MACRO GC
        DB 3,13,K4,T03,1,7,"cracked"
        DB 3,13,K1,T04,2,1,"+"
        DB 3,23,K2,T05,1,6,"disked"
        DB 3,22,K1,T06,1,1,"+"
        DB 3,32,K3,T07,1,7,"tra",#80,"ined"
        DB 5,4,K1,T08,1,1,"+"
        DB 5,14,K3,T09,1,6,"packed"
        DB 5,13,K1,T10,1,1,"."
        DB 5,15,K1,T11,1,1,"."
        DB 5,17,K1,T12,1,1,"."
        DB 5,19,K1,T13,1,1,"."
        DB 5,21,K1,T14,1,1,"."
        DB 5,27,K4,T15,1,3,"ALX"
        DB 5,27,K1,T16,1,1,"/"
        DB 5,33,K3,T17,2,2,"BW"
        ENDM 
WGDR    EQU 15
        MACRO GDR
        DB 3,13,K4,T03,1,6,"disked"
        DB 3,12,K1,T04,2,1,"+"
        DB 3,23,K2,T05,1,6,"packed"
        DB 3,22,K1,T06,1,1,"+"
        DB 3,32,K3,T07,1,7,"tra",#80,"ined"
        DB 5,1,K1,T08,1,1,"+"
        IF0 OPT
        DB 5,13,K3,T09,1,9,"optim",#80,"ized"
        ELSE 
        DB 5,13,K3,T09,1,9,"corrected"
        ENDIF 
        DB 5,13,K1,T10,1,1,"."
        DB 5,15,K1,T11,1,1,"."
        DB 5,17,K1,T12,1,1,"."
        DB 5,19,K1,T13,1,1,"."
        DB 5,21,K1,T14,1,1,"."
        DB 5,27,K4,T15,1,3,"ALX"
        DB 5,27,K1,T16,1,1,"/"
        DB 5,33,K3,T17,2,2,"BW"
        ENDM 

CLIF    EQU 16
        MACRO N_CLIF
        DB 10,2,K1,25,1,1,"*"
        DB 10,4,K4,26,2,1,"C"
        DB 10,6,K4,27,1,1,"L"
        DB 10,8,K4,28,0,1,"I"
        DB 10,10,K4,29,1,1,"F"
        DB 10,12,K4,30,2,1,"F"
        DB 10,16,K4,31,1,1,"H"
        DB 10,18,K4,32,2,1,"A"
        DB 10,20,K4,33,1,1,"N"
        DB 10,22,K4,34,2,1,"G"
        DB 10,24,K4,35,1,1,"E"
        DB 10,26,K4,36,2,1,"R"
        DB 10,28,K1,37,1,1,"*"
        FROM
        DB 14,7,K2,40,1,3,"N",#83,"ew"
        DB 14,20,K4,42,1,10,"Generat",#80,"ion"
        DB 14,30,K3,46,1,8,"S",1,#82,"of",0,#83,"tware"
        ENDM 
        MACRO C_CLI1
        DB 10,8,K4,0,1,7,"%ENTER$"
        DB 10,8,K1,1,1,1,"-"
        DB 10,18,K2,2,1,6,"toggle"
        DB 11,23,K4,3,1,5,"%SPC",#81,"$"
        DB 11,30,K3,4,2,5," load"
        DB 11,23,K1,5,1,1,"-"
        DB 6,0,K1,6,1,1,"1"
        DB 6,11,K3,7,1,7,"unl",#80,1,"imi",#81,"t"
        ENDM 

        MACRO C_CLIF
        DB 13
        C_CLI1
        DB 6,17,K4,8,1,5,"lives"
        DB 6,24,K1,9,2,1,"]"
        DB 6,18,K1,10,2,1,"["
        DB 6,24,K4,11,2,3,"yep"
        DB 6,24,K4,12,1,3,"nop"
        ENDM 
HERT    EQU 15
        MACRO N_HERT
        DB 10,5,K4,25,1,1,"H"
        DB 10,7,K4,26,1,1,"E"
        DB 10,9,K4,27,1,1,"A"
        DB 10,11,K4,28,1,1,"R"
        DB 10,13,K4,29,1,1,"T"
        DB 10,15,K4,30,1,1,"B"
        DB 10,17,K4,31,1,1,"R"
        DB 10,19,K1,32,1,1,"\"
        DB 10,21,K4,33,1,1,"K"
        DB 10,23,K4,34,1,1,"E"
        DB 10,25,K4,35,1,1,"N"
        FROM
        DB 14,11,K4,40,3,8,"Atlant",#80,"is"
        DB 14,21,K3,42,1,8,"S",1,#82,"of",0,#82,"tware"
        DB 14,27,K4,44,2,4,"L",1,"td."
        DB 14,30,K2,46,1,3,"'89"
        ENDM 
        MACRO C_HERT
        DB 12
        DB 10,8,K4,0,1,7,"%ENTER$"
        DB 10,8,K1,1,1,1,"-"
        DB 10,18,K2,2,1,6,"toggle"
        DB 11,23,K4,3,1,5,"%SPC",#81,"$"
        DB 11,30,K3,4,2,5," load"
        DB 11,23,K1,5,1,1,"-"
        DB 6,0,K1,6,1,1,"1"
        DB 6,15,K3,7,0,10,"invenc",#80,"ib",#82,"le"
        DB 6,21,K1,8,2,1,"]"
        DB 6,15,K1,9,2,1,"["
        DB 6,21,K4,10,2,3,"yep"
        DB 6,21,K4,11,1,3,"nop"
        ENDM 

BUBLER  EQU 13
        MACRO N_BUBLER
        DB 10,3,K1,33,1,1,"@"
        DB 10,6,K4,25,1,1,"B"
        DB 10,9,K4,26,1,1,"U"
        DB 10,12,K4,27,1,1,"B"
        DB 10,15,K4,28,1,1,"B"
        DB 10,18,K4,29,1,1,"L"
        DB 10,21,K4,30,1,1,"E"
        DB 10,24,K4,31,1,1,"R"
        DB 10,27,K1,35,1,1,"@"
        FROM
        DB 14,7,K4,40,2,5,"Ashby"
        DB 14,17,K3,42,1,9,"Computers"
        DB 14,21,K2,44,2,3,"And"
        DB 14,31,K4,46,1,8,"Graphics"
        ENDM 
        MACRO C_BUBL
        DB 46
        DB 14,8,K4,0,1,7,"%ENTER$"
        DB 14,8,K2,1,1,1,"-"
        DB 14,18,K1,2,1,6,"toggle"
        DB 14,23,K4,3,1,5,"%SPC",#81,"$"
        DB 14,30,K3,4,2,5," load"
        DB 14,23,K2,5,1,1,"-"
        DB 8,0,K1,6,2,1,"5"
        DB 8,11,K2,7,0,7,"in",#82,"-",#81,"game"
        DB 8,17,K4,8,1,4,"keys"
        DB 8,26,K1,9,1,9,"%H+E+L+P$"
        DB 10,0,K1,10,3,1,"6"
        DB 10,9,K4,11,1,4,"fast"
        DB 10,17,K3,12,1,7,"enem",#80,"ies"
        DB 10,21,K2,13,3,2,":)"
        DB 0,0,K1,14,1,1,"1"
        DB 0,11,K2,15,1,7,"unl",#80,1,"imi",#81,"t"
        DB 0,17,K4,16,1,5,"lives"
        DB 2,0,K1,17,2,1,"2"
        DB 2,11,K4,18,3,7,"u",#82,"n",#81,"l",#80,1,"imi",#82
        DB "t"
        DB 2,17,K1,19,1,4,"time"
        DB 4,0,K1,20,1,1,"3"
        DB 4,15,K3,21,0,10,"invenc",#80,"ib",#82,"le"
        DB 6,0,K1,22,2,1,"4"
        DB 6,9,K4,23,3,4,"sk",#80,"ip"
        DB 6,8,K2,24,1,1,"'"
        DB 6,14,K1,25,1,3,"out"
        DB 6,18,K2,26,1,2,"of"
        DB 6,23,K3,27,2,5,"floor"
        DB 6,23,K2,28,1,1,"'"
        DB 12,6,K3,29,1,5,"Wanna"
        DB 12,6,K2,30,1,1,"'"
        DB 12,22,K4,31,1,12,"hid",#82,"den cheat"
        DB 12,21,K2,32,2,1,"'"
        DB 12,27,K1,33,1,3,"??",#81,"?"
        DB 0,30,K4,34,2,3,"yep"
        DB 2,30,K4,35,2,3,"yep"
        DB 4,30,K4,36,2,3,"yep"
        DB 6,30,K4,37,2,3,"yep"
        DB 8,30,K4,38,2,3,"yep"
        DB 10,30,K4,39,2,3,"yep"
        DB 0,30,K4,40,2,3,"nop"
        DB 2,30,K4,41,2,3,"nop"
        DB 4,30,K4,42,2,3,"nop"
        DB 6,30,K4,43,2,3,"nop"
        DB 8,30,K4,44,2,3,"nop"
        DB 10,30,K4,45,2,3,"nop"
        ENDM 

XENO    EQU 15
        MACRO N_XENO
        DB 10,9,K4,26,3,3,"$",#82,"X",#81,"%"
        DB 10,15,K4,28,1,3,"$",#82,"E",#83,"%"
        DB 10,21,K4,30,3,3,"$",#82,"N",#81,"%"
        DB 10,27,K4,32,1,3,"$",#82,"@",#83,"%"
        FROM
        DB 14,1,K4,39,1,1,"A"
        DB 14,3,K1,40,1,1,"'"
        DB 14,5,K4,41,1,1,"N"
        DB 14,7,K1,42,1,1,"'"
        DB 14,9,K4,43,1,1,"F"
        DB 14,14,K2,44,1,1,"L"
        DB 14,17,K2,45,1,1,"T"
        DB 14,20,K2,46,1,1,"D"
        DB 14,24,K1,47,1,1,"'"
        DB 14,26,K3,48,1,1,"8"
        DB 14,29,K3,49,1,1,"6"
        ENDM 
        MACRO C_XENO
        DB 22
        DB 0,6,K2,0,1,5,"Sorry"
        DB 1,12,K4,1,1,4,"guys"
        DB 1,11,K2,2,1,1,"!"
        DB 2,19,K1,3,2,5,"There"
        DB 3,23,K2,4,1,3,"are"
        DB 4,27,K3,5,1,2,"no"
        DB 6,12,K1,6,1,1,"*"
        DB 6,28,K4,7,1,13,"tra",#80,"iner menue"
        DB 6,28,K1,8,1,1,"*"
        DB 6,30,K2,9,1,1,"!"
        DB 8,12,K1,10,1,1,"("
        DB 8,24,K2,11,3,8,"Khe-",#83,"Khe!"
        DB 8,23,K1,12,1,1,")"
        DB 10,6,K3,13,1,4,"K",#80,"ick"
        DB 11,5,K1,14,1,1,"%"
        DB 11,13,K4,15,1,5,"SPACE"
        DB 11,13,K1,16,1,1,"$"
        DB 12,19,K2,17,1,3,"and"
        DB 12,25,K1,18,1,5,"en",#80,"joy"
        DB 14,22,K3,19,2,3,"the"
        DB 14,30,K4,20,1,6,"act",#80,"ion"
        DB 14,30,K2,21,1,1,"!"
        ENDM 

        MACRO TOPO
        DB 14,0,K4,39,1,1,"T"
        DB 14,3,K3,40,1,1,"@"
        DB 14,6,K4,41,1,1,"P"
        DB 14,9,K3,42,1,1,"@"
        DB 14,13,K4,43,1,1,"S"
        DB 14,16,K3,44,1,1,"@"
        DB 14,19,K4,45,1,1,"F"
        DB 14,22,K4,46,1,1,"T"
        DB 14,25,K1,47,1,1,"'"
        DB 14,27,K2,48,1,1,"8"
        ENDM 

WELLS   EQU 24
        MACRO N_WELLS
        DB 10,2,K1,25,1,1,"+"
        DB 10,4,K4,26,1,1,"W"
        DB 10,6,K4,27,1,1,"E"
        DB 10,8,K4,28,1,1,"L"
        DB 10,10,K4,29,1,1,"L"
        DB 10,12,K4,30,1,1,"'"
        DB 10,14,K4,31,1,1,"S"
        DB 10,18,K4,32,1,1,"F"
        DB 10,20,K3,33,1,1,#7B
        DB 10,22,K4,34,1,1,"R"
        DB 10,24,K4,35,1,1,"G"
        DB 10,26,K3,36,1,1,#7D
        DB 10,28,K1,37,1,1,"+"
        FROM
        TOPO
        DB 14,30,K2,49,1,1,"7"
        ENDM 
        MACRO C_WELLS
        DB 22
        DB 7,6,K2,0,1,5,"Wanna"
        DB 7,12,K3,1,1,4,"have"
        DB 7,15,K4,2,1,3,"fun"
        DB 7,15,K1,3,1,1,"?"
        DB 9,6,K1,4,1,5,"Press"
        DB 9,12,K4,5,1,5,"%B+W$"
        DB 9,18,K2,6,1,5,"wh",#80,"ile"
        DB 9,30,K3,7,1,11,"decrunch",#80,"ing"
        DB 9,30,K1,8,1,1,"!"
        DB 13,8,K4,9,1,7,"%ENTER$"
        DB 13,8,K1,10,1,1,"-"
        DB 13,18,K2,11,1,6,"toggle"
        DB 14,23,K4,12,1,5,"%SPC",#81,"$"
        DB 14,30,K3,13,2,5," load"
        DB 14,23,K1,14,1,1,"-"
        DB 2,0,K1,15,1,1,"1"
        DB 2,11,K3,16,1,7,"unl",#80,1,"imi",#81,"t"
        DB 2,17,K4,17,1,5,"lives"
        DB 2,24,K1,18,2,1,"]"
        DB 2,18,K1,19,2,1,"["
        DB 2,24,K4,20,2,3,"yep"
        DB 2,24,K4,21,1,3,"nop"
        ENDM 

VIAJ    EQU 17
        MACRO N_VIAJ
        DB 10,7,K4,27,1,5,"Via",#80,"je"
        DB 10,11,K4,29,1,2,"As"
        DB 10,18,K4,31,1,6,"Centro"
        DB 10,21,K4,33,1,2,"De"
        DB 10,24,K4,35,1,2,"La"
        DB 10,31,K4,37,1,6,"T",#80,"ierra"
        FROM
        TOPO
        DB 14,30,K2,49,1,1,"9"
        ENDM 
GFORC   EQU 20
        MACRO N_GFORC
        DB 10,1,K1,25,1,1,"$"
        DB 10,3,K4,26,1,1,"G"
        DB 10,5,K4,27,1,1,"A"
        DB 10,7,K4,28,1,1,"L"
        DB 10,9,K4,29,1,1,"A"
        DB 10,11,K4,30,1,1,"X"
        DB 10,13,K4,31,1,1,"Y"
        DB 10,19,K4,32,1,1,"F"
        DB 10,21,K4,33,1,1,"O"
        DB 10,23,K4,34,1,1,"R"
        DB 10,25,K4,35,1,1,"C"
        DB 10,27,K4,36,1,1,"E"
        DB 10,29,K1,37,1,1,"%"
        FROM
        DB 14,11,K4,40,2,#B," Act",#80,"ivis",#80,"i",#82,"on"
        DB 14,17,K3,41,0,4,"Inc."
        DB 14,16,K1,42,2,1,"/"
        DB 14,22,K2,44,3,2,"M."
        DB 14,25,K3,45,2,2,"C."
        DB 14,28,K4,46,3,2,"M."
        DB 14,31,K2,48,3,3,"'89"
        ENDM 
        MACRO C_GFORC
        DB 13
        C_CLI1
        DB 6,19,K4,8,1,7,"credits"
        DB 6,26,K1,9,2,1,"]"
        DB 6,20,K1,10,2,1,"["
        DB 6,26,K4,11,2,3,"yep"
        DB 6,26,K4,12,1,3,"nop"
        ENDM 


CYCL    EQU 21
        MACRO N_CYCL
        DB 10,6,K4,25,1,1,"C"
        DB 10,9,K4,26,1,1,"Y"
        DB 10,12,K4,27,1,1,"C"
        DB 10,15,K4,28,1,1,"L"
        DB 10,18,K4,29,1,1,"O"
        DB 10,21,K4,30,1,1,"N"
        DB 10,24,K4,31,1,1,"E"
        DB 12,20,K2,33,2,4,"from"
        DB 14,0,K3,35,1,1,"V"
        DB 14,2,K3,36,1,1,"O"
        DB 14,4,K3,37,1,1,"R"
        DB 14,6,K3,38,1,1,"T"
        DB 14,8,K3,39,1,1,"E"
        DB 14,10,K3,40,1,1,"X"
        DB 14,16,K1,41,1,1,"S"
        DB 14,18,K1,42,1,1,"O"
        DB 14,20,K1,43,1,1,"F"
        DB 14,22,K1,44,1,1,"T"
        DB 14,24,K1,45,1,1,"W"
        DB 14,26,K1,46,1,1,"A"
        DB 14,28,K1,47,1,1,"R"
        DB 14,30,K1,48,1,1,"E"
        ENDM 

PUZN    EQU 11
        MACRO N_PUZN
        DB 10,6,K4,25,1,1,"P"
        DB 10,9,K4,26,1,1,"U"
        DB 10,12,K4,27,1,1,"Z"
        DB 10,15,K4,28,1,1,"Z"
        DB 10,18,K4,29,1,1,"N"
        DB 10,21,K4,30,0,1,"I"
        DB 10,24,K4,31,1,1,"C"
        DB 12,20,K2,33,2,4,"from"
        DB 14,9,K3,37,1,5,"Ocean"
        DB 14,20,K2,39,1,8,"Software"
        DB 14,26,K1,41,2,4,"Lt",#81,"d."
        DB 14,29,K3,43,2,3,"'90"
        ENDM 

YOGI    EQU 9
        MACRO N_YOGI
        DB 10,10,K4,28,1,4,"Yo",#81,"g",#80,"i"
        DB 10,16,K4,30,2,4,"Bear"
        DB 10,28,K4,32,1,10,"collect",#80,"ion"
        FROM
        DB 14,11,K4,40,1,9,"Mac",#81,"m",#80,"i",#81
        DB "l",#81,"l",#82,"an"
        DB 14,12,K1,42,1,1,"/"
        DB 14,22,K4,44,1,6,"HI-TEC"
        DB 14,25,K3,46,2,3,"'8T"
        DB 14,25,K1,48,2,1,"/"
        DB 14,31,K3,50,2,2,"90"
        ENDM 
        MACRO P_YOGI
        DB 27
        DB 3,8,K4,0,1,6,"Select"
        DB 3,13,K2,1,1,4,"game"
        DB 3,19,K3,2,2,4,"part"
        DB 3,18,K1,3,2,1,":"
        DB 6,8,K3,4,1,7,"load",#80,"ing"
        DB 6,14,K4,5,2,4,"part"
        DB 6,14,K1,6,1,1,"["
        DB 6,18,K1,7,1,1,"]"
        DB 10,4,K2,8,1,3,"Use"
        DB 10,4,K1,9,1,1,"%"
        DB 10,6,K4,10,1,1,"1"
        DB 10,8,K1,11,1,1,"/"
        DB 10,10,K4,12,1,1,"2"
        DB 10,12,K1,13,1,1,"/"
        DB 10,14,K4,14,1,1,"3"
        DB 10,16,K1,15,1,1,"/"
        DB 10,24,K4,16,1,5,"ENTER"
        DB 10,24,K1,17,1,1,"$"
        DB 10,30,K2,18,1,2,"to"
        DB 12,31,K3,19,1,6,"choose"
        DB 14,8,K4,20,1,7,"%SPACE$"
        DB 14,8,K1,21,1,1,"-"
        DB 14,14,K3,22,1,3,"end"
        DB 14,24,K2,23,1,9,"select",#80,"ion"
        DB 6,16,K4,24,2,1,"1"
        DB 6,16,K4,25,2,1,"2"
        DB 6,16,K4,26,2,1,"3"
        ENDM 
        MACRO YK
        DB 13,8,K4,0,1,7,"%ENTER$"
        DB 13,8,K1,1,1,1,"-"
        DB 13,18,K2,2,1,6,"toggle"
        DB 14,23,K4,3,1,5,"%SPC",#81,"$"
        DB 14,30,K3,4,2,5," load"
        DB 14,23,K1,5,1,1,"-"
        ENDM 
        MACRO YP1
        DB 2,0,K1,6,1,1,"1"
        DB 2,11,K2,7,1,7,"unlim",#80,"it"
        ENDM 
        MACRO YP11
        YP1
        DB 2,17,K4,8,1,5,"lives"
        ENDM 
        MACRO YP2
        DB 6,0,K1,9,2,1,"2"
        ENDM 
        MACRO YP22
        YP2
        DB 6,11,K4,10,1,7,"unlim",#80,"it"
        ENDM 
        MACRO C_YOG3
        YK
        YP11
        YP22
        DB 6,17,K3,11,1,4,"time"
        ENDM 
        MACRO C_CYCL
        DB 27
        C_YOG3
        DB 10,0,K1,12,1,1,"3"
        DB 10,11,K3,13,1,7,"unl",#80,1,"imi",#81,"t"
        DB 10,17,K2,14,1,4,"fuel"
        DB 2,18,K1,15,2,1,"["
        DB 10,18,K1,16,2,1,"["
        DB 10,24,K1,17,2,1,"]"
        DB 6,18,K1,18,2,1,"["
        DB 2,24,K1,19,2,1,"]"
        DB 6,24,K1,20,2,1,"]"
        DB 2,24,K4,21,2,3,"yep"
        DB 6,24,K4,22,2,3,"yep"
        DB 10,24,K4,23,2,3,"yep"
        DB 2,24,K4,24,1,3,"nop"
        DB 6,24,K4,25,1,3,"nop"
        DB 10,24,K4,26,1,3,"nop"
        ENDM 

        MACRO C_PUZN
        DB 27
        YK
        DB 2,0,K1,6,1,1,"1"
        DB 2,11,K2,7,1,7,"unlim",#80,"it"
        DB 2,17,K4,8,1,4,"time"
        DB 6,0,K1,9,2,1,"2"
        DB 6,11,K4,10,1,7,"unlim",#80,"it"
        DB 6,19,K3,11,1,6,"retrys"
        DB 10,0,K1,12,1,1,"3"
        DB 10,13,K3,13,1,8,"pen",#81,"tagon"
        DB 10,17,K2,14,1,3,"fix"
        DB 2,19,K1,15,2,1,"["
        DB 10,19,K1,16,2,1,"["
        DB 10,25,K1,17,2,1,"]"
        DB 6,19,K1,18,2,1,"["
        DB 2,25,K1,19,2,1,"]"
        DB 6,25,K1,20,2,1,"]"
        DB 2,25,K4,21,2,3,"yep"
        DB 6,25,K4,22,2,3,"yep"
        DB 10,25,K4,23,2,3,"yep"
        DB 2,25,K4,24,1,3,"nop"
        DB 6,25,K4,25,1,3,"nop"
        DB 10,25,K4,26,1,3,"nop"
        ENDM 

        MACRO C_VIAJ
        DB 28
        YK
        YP1
        DB 2,19,K4,8,1,6,"healt",#81,"h"
        YP2
        DB 6,11,K4,10,1,7,"unlim",#80,"it"
        DB 6,17,K3,11,1,4,"time"
        DB 10,0,K1,12,1,1,"3"
        DB 10,9,K3,13,1,4,"open"
        DB 10,12,K2,14,2,3,"the"
        DB 10,16,K4,15,1,3,"map"
        DB 2,19,K1,16,2,1,"["
        DB 10,19,K1,17,2,1,"["
        DB 10,25,K1,18,2,1,"]"
        DB 6,19,K1,19,2,1,"["
        DB 2,25,K1,20,2,1,"]"
        DB 6,25,K1,21,2,1,"]"
        DB 2,25,K4,22,2,3,"yep"
        DB 6,25,K4,23,2,3,"yep"
        DB 10,25,K4,24,2,3,"yep"
        DB 2,25,K4,25,1,3,"nop"
        DB 6,25,K4,26,1,3,"nop"
        DB 10,25,K4,27,1,3,"nop"
        ENDM 

CDTTD   EQU 23
        MACRO N_CDTTD
        DB 10,0,K4,25,1,1,"C"
        DB 10,2,K2,26,2,1,"O"
        DB 10,4,K3,27,1,1,"U"
        DB 10,6,K4,28,2,1,"N"
        DB 10,8,K1,29,1,1,"T"
        DB 10,10,K3,30,2,1,"D"
        DB 10,12,K2,31,1,1,"O"
        DB 10,14,K4,32,2,1,"W"
        DB 10,16,K3,33,1,1,"N"
        DB 10,20,K1,34,2,1,"T"
        DB 10,22,K4,35,1,1,"O"
        DB 10,26,K2,36,2,1,"T"
        DB 10,28,K3,37,1,1,"H"
        DB 10,30,K1,38,2,1,"E"
        DB 12,9,K4,39,1,1,"D"
        DB 12,12,K2,40,1,1,"E"
        DB 12,15,K1,41,1,1,"A"
        DB 12,18,K4,42,1,1,"T"
        DB 12,21,K3,43,1,1,"H"
        DB 14,10,K2,44,1,4,"from"
        DB 14,21,K4,45,2,6,"MGSo",#82,"ft"
        DB 14,22,K1,46,1,1,"'"
        DB 14,24,K2,47,1,1,"9"
        DB 14,26,K2,48,1,1,"0"
        ENDM 
        MACRO C_CDTTD
        DB 27
        DB 13,8,K4,0,1,7,"%ENTER$"
        DB 13,8,K1,1,1,1,"-"
        DB 13,18,K2,2,1,6,"toggle"
        DB 14,23,K4,3,1,5,"%SPC",#81,"$"
        DB 14,30,K3,4,2,5," load"
        DB 14,23,K1,5,1,1,"-"
        DB 10,4,K1,6,1,3,"Try"
        DB 10,8,K2,7,2,2,"to"
        DB 10,13,K3,8,1,4,"fin",#82,"d"
        DB 10,12,K1,9,1,1,"'"
        DB 10,28,K4,10,1,12,"hid",#82,"den cheat"
        DB 10,27,K1,11,1,1,"'"
        DB 10,29,K1,12,1,1,"!"
        DB 1,0,K1,13,1,1,"1"
        DB 1,11,K2,14,1,7,"unl",#80,1,"imi",#81,"t"
        DB 1,17,K4,15,1,5,"lives"
        DB 5,0,K1,16,2,1,"2"
        DB 5,11,K4,17,3,7,"u",#82,"n",#81,"l",#80,1,"imi",#81
        DB "t"
        DB 5,17,K3,18,1,4,"time"
        DB 1,24,K1,19,2,1,"]"
        DB 1,18,K1,20,2,1,"["
        DB 5,24,K1,21,2,1,"]"
        DB 5,18,K1,22,2,1,"["
        DB 1,24,K4,23,2,3,"yep"
        DB 5,24,K4,24,2,3,"yep"
        DB 1,24,K4,25,1,3,"nop"
        DB 5,24,K4,26,1,3,"nop"
        ENDM 
WO      EQU BUBLER
TEXT
        IF0 GA-2
WO=CYCL
        ENDIF 
        IF0 GA-1
WO=GFORC
        ENDIF 
        IF0 GA-4
WO=CDTTD
        ENDIF 
        IF0 GA-3
WO=VIAJ
        ENDIF 
        IF0 GA-5
WO=YOGI
        ENDIF 
        IF0 GA-6
WO=CLIF
        ENDIF 
        IF0 GA-7
WO=HERT
        ENDIF 
        IF0 GA-8
WO=WELLS
        ENDIF 
        IF0 GA-9
WO=PUZN
        ENDIF 
        IF0 GA-10
WO=XENO
        ENDIF 
        DB 19+WO
        DB 7,8,K3,19,2,4,"next"
        DB 7,11,K2,20,2,3,"our"
        DB 7,17,K4,21,1,5,"crack"
        DB 7,17,K3,22,2,1,"-"
        DB 7,27,K1,23,2,7,"release"
        DB 7,31,K4,24,1,2,"of"
        IF0 GA
        N_BUBLER
        ENDIF 

        IF0 GA-1
        N_GFORC
        ENDIF 

        IF0 GA-2
        N_CYCL
        ENDIF 

        IF0 GA-3
        N_VIAJ
        ENDIF 

        IF0 GA-4
        N_CDTTD
        ENDIF 

        IF0 GA-5
        N_YOGI
        ENDIF 

        IF0 GA-6
        N_CLIF
        ENDIF 

        IF0 GA-7
        N_HERT
        ENDIF 

        IF0 GA-8
        N_WELLS
        ENDIF 

        IF0 GA-9
        N_PUZN
        ENDIF 

        IF0 GA-10
        N_XENO
        ENDIF 
        DB 1,8,K4,0,2,6,"Beware"
        DB 1,11,K1,2,1,3,"!!",#81,"!"
        DB 1,24,K4,9,1,11,"$Bra",#80,"inwave%"
        DB 1,30,K2,10,2,5,"backs"
        DB 1,30,K1,11,2,1,"!"
        DB 4,6,K2,12,1,3,"Now"
        DB 4,10,K4,13,0,2,"we"
        DB 4,13,K1,14,0,3,"are"
        DB 4,19,K2,15,0,5,"proud"
        DB 4,23,K1,16,1,2,"to"
        DB 4,28,K3,17,3,5,"br",#80,"ing"
        DB 4,28,K2,18,3,1,"U"
TEXT2   DB 22
        DB 5,4,K3,0,1,3,"And"
        DB 5,8,K1,1,1,3,"now"
        DB 5,8,K2,2,1,1,"U"
        DB 5,14,K4,3,1,3,"may"
        DB 7,10,K4,4,1,6,"escape"
        DB 7,13,K3,5,1,2,"to"
        DB 7,20,K2,6,1,7,"tra",#80,"iner"
        DB 9,11,K2,7,1,5,"menue"
        DB 9,16,K1,8,2,2,"by"
        DB 9,25,K3,9,1,8,"press",#80,"ing"
        DB 11,8,K1,10,2,1,"%"
        DB 11,16,K4,11,1,5,"SPACE"
        DB 11,16,K1,12,1,1,"$"
        DB 11,22,K2,13,1,3,"key"
        DB 11,26,K1,14,1,2,"or"
        DB 11,31,K3,15,1,4,"read"
        DB 13,16,K1,16,1,3,"all"
        DB 13,22,K2,17,2,4,"this"
        DB 13,27,K4,18,0,4,"info"
        DB 13,26,K1,19,0,1,"."
        DB 13,28,K3,20,0,1,"."
        DB 13,30,K2,21,0,1,"."
        IF0 CCR
WTC=WGC
        ELSE 
WTC=WGDR
        ENDIF 
TEXT3   DB 25+WTC
        DB 8,15,K1,T20,1,1,"+"
        DB 8,21,K2,T21,1,3,"fn",#81,"t"
        DB 8,21,K1,T22,1,1,"."
        DB 8,27,K4,T23,1,3,"ALX"
        DB 8,27,K1,T24,1,1,"/"
        DB 8,33,K3,T25,2,2,"BW"
        DB 8,10,K2,T18,1,8,"cracktro"
        DB 8,15,K4,T19,1,5,"coded"
        DB 10,15,K1,T27,1,1,"."
        DB 10,17,K1,T28,1,1,"."
        DB 10,19,K1,T29,1,1,"."
        DB 10,27,K4,T30,1,5,"Megus"
        DB 10,27,K1,T31,1,1,"/"
        DB 10,33,K3,T32,2,2,"BW"
        DB 10,15,K3,T26,1,5,"mus",#80,"ic"
        DB 12,26,K4,T37,1,4,"P",#81,"rof"
        DB 12,32,K3,T39,2,3," 4D"
        DB 12,26,K1,T38,1,1,"/"
        DB 12,15,K2,T33,1,4,"logo"
        DB 12,14,K1,T34,2,1,"."
        DB 12,16,K1,T35,1,1,"."
        DB 12,18,K1,T36,1,1,"."
        DB 0,8,K4,T00,1,7,"Cred",#80,"its"
        DB 0,8,K1,T01,1,1,":"
        DB 3,6,K2,T02,1,4,"game"
        IF0 CCR
        GC
        ELSE 
        GDR
        ENDIF 
TEXT4   DB 35
        DB 8,10,K1,0,1,1,#7B
        DB 8,20,K4,4,1,6,"GREETZ"
        DB 8,19,K1,2,1,1,#7B
        DB 9,5,K1,24,0,2,"I8"
        DB 9,9,K4,44,2,3,"RZ",#83,"L"
        DB 9,31,K2,50,1,7,"Tr",#80,"ium",#82,"ph"
        DB 11,8,K2,14,1,6,"Mayhem"
        DB 11,11,K1,64,1,2,1,"RS"
        DB 11,25,K3,26,1,12,"Stud",#80,"io "
        DB "Stall"
        DB 11,28,K1,20,2,3,"HWC"
        DB 11,32,K4,42,2,2,"TL"
        DB 13,6,K4,58,1,4,"R",#82,"USH"
        DB 13,10,K2,8,1,3,"GBG"
        DB 13,19,K1,40,1,6,"Psycho"
        DB 13,32,K3,52,0,7,"M",#80,"ilytia"
        DB 13,24,K4,34,1,2,1,"DT"
        DB 1,4,K4,66,1,3,"PCB"
        DB 1,10,K3,28,1,5,"Ey",#81,1,"E-Q"
        DB 1,14,K1,16,1,2,"AF"
        DB 1,24,K4,68,1,9,"Raww Arse"
        DB 1,28,K1,60,1,3,"B",#82,"rC"
        DB 1,32,K2,36,1,2,1,"DR"
        DB 3,6,K3,12,1,5,"Skr",#80,"ju"
        DB 3,10,K4,54,1,2,"4D"
        DB 3,18,K2,10,1,6,1,"H-Pro",#80,"g"
        DB 3,26,K1,22,1,7,"Freeart"
        DB 3,31,K4,62,1,3,"PH",#82,"T"
        DB 5,4,K4,18,1,3,"CPU"
        DB 5,14,K1,30,1,9,"Serzhsoft"
        DB 5,22,K3,48,1,6,"P",#83,"o",#81,"S-",1,"WT"
        DB 5,27,K4,56,2,3,"XTM"
        DB 5,32,K2,38,1,3,"OCA"
        DB 7,10,K2,46,1,6,"Gas 13"
        DB 7,27,K3,32,1,3,"Ctl"
        DB 7,31,K1,6,1,3,"PHF"
TEXT5   DB 25
        DB 7,3,K2,20,1,1,"$"
        DB 7,5,K4,0,1,1,"C"
        DB 7,7,K1,2,1,1,"@"
        DB 7,9,K4,4,1,1,"M"
        DB 7,11,K4,6,0,1,"I"
        DB 7,13,K4,8,1,1,"N"
        DB 7,15,K4,10,1,1,"G"
        DB 7,19,K4,12,1,1,"S"
        DB 7,21,K1,14,1,1,"@"
        DB 7,23,K1,16,1,1,"@"
        DB 7,25,K4,18,1,1,"N"
        DB 7,27,K2,22,1,1,"%"
        DB 10,11,K3,26,1,7,"H",#80,"ighWay"
        DB 10,21,K3,28,1,9,"Encounter"
        DB 10,33,K3,30,1,10,"collect",#80,"ion"
        DB 12,6,K1,24,1,5,"Bas",#80,"il"
        DB 14,19,K4,36,1,11,"Alternat",#80,"ive"
        DB 14,25,K4,38,1,5,"World"
        DB 14,31,K4,40,1,5,"Games"
        DB 0,8,K4,32,1,6,"P",#82,"o",#81,"P",#81,1,"eYe"
        DB 0,20,K4,34,1,10,"collect",#80,"ion"
        DB 2,25,K1,46,1,7,"Altered"
        DB 2,32,K1,48,1,5,"Beast"
        DB 4,8,K2,42,1,6,"Savage"
        DB 4,20,K2,44,2,10,"collect",#80,"ion"
TEXT6   DB 9
        DB 5,4,K3,1,1,3,"Our"
        DB 5,10,K2,2,1,5,"stuff"
        DB 5,10,K1,3,1,1,":"
        DB 9,8,K2,4,2,7,"h",#81,1,"tt",#82,"p:",#83,"//"
        DB 9,18,K4,5,1,9,"bra",#80,"inwave"
        DB 9,18,K1,6,1,1,"."
        DB 9,26,K4,7,1,5,"fatal"
        DB 9,26,K1,8,1,1,"."
        DB 9,32,K4,9,1,2,"ru"
        MACRO TP
        DB 2,19,K1,12,2,1,"["
        DB 6,19,K1,13,2,1,"["
        DB 2,25,K1,14,2,1,"]"
        DB 6,25,K1,15,2,1,"]"
        DB 0,10,K0,16,1,9
        DS 9,32
        DB 2,25,K4,17,2,3,"yep"
        DB 6,25,K4,18,2,3,"yep"
        DB 2,25,K4,19,1,3,"nop"
        DB 6,25,K4,20,1,3,"nop"
        ENDM 
        MACRO YB2
        DB 21
        YK
        YP1
        DB 2,17,K4,8,1,4,"food"
        YP22
        DB 6,19,K3,11,1,6,"sweets"
        TP
        ENDM 
        MACRO YB1
        DB 21
        YK
        YP11
        YP2
        DB 6,9,K4,10,3,4,"sk",#80,"ip"
        DB 6,20,K3,11,1,10,"prec",#80,"ip",#80,"ices"
        TP
        ENDM 

