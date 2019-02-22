EXTEND_BOTTOM C6CORAN 23
+ ~Gender(Player1,FEMALE) OR(4) Race(Player1,ELF) Race(Player1,HALF_ELF) Race(Player1,HUMAN) Race(Player1,HALFLING)~ + @0 EXTERN C6CORAN RE_Coran1
+ ~Gender(Player1,FEMALE) OR(4) Race(Player1,ELF) Race(Player1,HALF_ELF) Race(Player1,HUMAN) Race(Player1,HALFLING)~ + @1 EXTERN C6CORAN RE_Coran1
+ ~Gender(Player1,FEMALE) OR(4) Race(Player1,ELF) Race(Player1,HALF_ELF) Race(Player1,HUMAN) Race(Player1,HALFLING)~ + @2 EXTERN C6CORAN RE_Coran1
END

CHAIN C6CORAN RE_Coran1
@3
== C6CORAN @4
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @5
== C6CORAN @6
END
++ @7 EXTERN C6CORAN RE_Coran1.1
++ @8 EXTERN C6CORAN RE_Coran1.2

CHAIN C6CORAN RE_Coran1.1
@9
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @10
== C6CORAN IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @11
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @12
== C6CORAN IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @13
== C6CORAN IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @14
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @15
== C6CORAN IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @16
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @17
== C6CORAN IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @18
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @19
== C6CORAN IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @20
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @21
== MINSCJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @22
== C6CORAN IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @23
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) OR(3) !InParty("Minsc") !InMyArea("Minsc") StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @24
== C6CORAN IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) OR(3) !InParty("Minsc") !InMyArea("Minsc") StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @25
== C6CORAN IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @26
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @27
== C6CORAN IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @28
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @29
== C6CORAN IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @30
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @31
== C6CORAN IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @32
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @33
== C6CORAN IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @34
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @35
== C6CORAN IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @36
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @37
== C6CORAN IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @38
== C6CORAN IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @39
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @40
== C6CORAN IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @41
== C6CORAN @42
END
++ @43 EXTERN C6CORAN RE_Coran1.3
++ @8 EXTERN C6CORAN RE_Coran1.2

CHAIN C6CORAN RE_Coran1.3
@44
DO ~EscapeArea()~
EXIT

CHAIN C6CORAN RE_Coran1.2
@45
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @46
== C6CORAN @47
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @48
== C6CORAN IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @49
== C6CORAN @50
END
++ @51 EXTERN C6CORAN RE_Coran1.5
++ @52 EXTERN C6CORAN RE_Coran1.6

CHAIN C6CORAN RE_Coran1.5
@53
END
++ @54 EXTERN C6CORAN RE_Coran1.7
++ @52 EXTERN C6CORAN RE_Coran1.6

CHAIN C6CORAN RE_Coran1.7
@55
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @56
== C6CORAN IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @57
== C6CORAN @58
DO ~SetGlobal("RE_CoranMoves","GLOBAL",1) RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~
EXIT

CHAIN C6CORAN RE_Coran1.6
@59
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @60
== C6CORAN IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @61
== C6CORAN @62
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @63
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @64
== C6CORAN @65
END
IF ~~ DO ~SetGlobal("RE_CoranMoves","GLOBAL",2) SetGlobal("RE_CoranSex","GLOBAL",1) RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
IF ~InParty("Anomen") OR(2) Global("AnomenRomanceActive","GLOBAL",1) Global("AnomenRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_CoranSexAnomen","GLOBAL",1) IncrementGlobal("RE_AnomenCounter","GLOBAL",1) SetGlobal("RE_CoranMoves","GLOBAL",2) SetGlobal("RE_CoranSex","GLOBAL",1) RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("RE_CoranMoves","GLOBAL",1)~ THEN C6CORAN RE_Coran1.8
@66
DO ~SetGlobal("RE_CoranMoves","GLOBAL",5)~ 
= @67
DO ~EscapeArea()~
EXIT

CHAIN IF WEIGHT #-1 ~Global("RE_CoranMoves","GLOBAL",2)~ THEN C6CORAN RE_Coran1.9
@68
DO ~SetGlobal("RE_CoranMoves","GLOBAL",5)~ 
== C6CORAN @69
== C6CORAN @70
END
++ @71 EXTERN C6CORAN RE_Coran1.10
++ @72 EXTERN C6CORAN RE_Coran1.10
+ ~!Global("MadamUpset","GLOBAL",1)~ + @73 EXTERN C6CORAN RE_Coran1.10
++ @74 EXTERN C6CORAN RE_Coran1.10

CHAIN C6CORAN RE_Coran1.10
@75
DO ~EscapeArea()~
EXIT