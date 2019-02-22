APPEND HAERDAJ

// 1. 

IF ~Global("RE_HaerDalisDo","GLOBAL",2)~ RE_Haer1
SAY @0 
++ @1 DO ~SetGlobal("RE_HaerDalisDo","GLOBAL",3) RealSetGlobalTimer("RE_HaerDalisTimer","GLOBAL",3000)~ + RE_Haer1.1
++ @2 DO ~SetGlobal("RE_HaerDalisDo","GLOBAL",3) RealSetGlobalTimer("RE_HaerDalisTimer","GLOBAL",3000)~ + RE_Haer1.2
++ @3 DO ~SetGlobal("RE_HaerDalisDo","GLOBAL",3) RealSetGlobalTimer("RE_HaerDalisTimer","GLOBAL",3000)~ + RE_Haer1.3
++ @4 DO ~SetGlobal("RE_HaerDalisDo","GLOBAL",3) RealSetGlobalTimer("RE_HaerDalisTimer","GLOBAL",3000)~ + RE_Haer1.0
END

IF ~~ RE_Haer1.0
SAY @5
IF ~~ DO ~SetGlobal("RE_HaerDalisDo","GLOBAL",500)~ EXIT
END

IF ~~ RE_Haer1.1
SAY @6
IF ~~ + RE_Haer1.4
END

IF ~~ RE_Haer1.2
SAY @7
IF ~~ + RE_Haer1.4
END

IF ~~ RE_Haer1.3
SAY @8
IF ~~ + RE_Haer1.4
END

IF ~~ RE_Haer1.4
SAY @9
++ @10 + RE_Haer1.5
++ @11 + RE_Haer1.5
++ @12 + RE_Haer1.5
++ @13 + RE_Haer1.6
++ @14 + RE_Haer1.7
END

IF ~~ RE_Haer1.5
SAY @15
IF ~~ + RE_Haer1.6
END

IF ~~ RE_Haer1.6
SAY @16
IF ~~ + RE_Haer1.8
END

IF ~~ RE_Haer1.7
SAY @17
IF ~~ + RE_Haer1.8
END

IF ~~ RE_Haer1.8
SAY @18
IF ~~ EXIT
END

// 2.

IF ~Global("RE_HaerDalisDo","GLOBAL",4)~ RE_Haer2
SAY @19 
++ @20 DO ~SetGlobal("RE_HaerDalisDo","GLOBAL",5) RealSetGlobalTimer("RE_HaerDalisTimer","GLOBAL",3000)~+ RE_Haer2.1
++ @21 DO ~SetGlobal("RE_HaerDalisDo","GLOBAL",5) RealSetGlobalTimer("RE_HaerDalisTimer","GLOBAL",3000)~+ RE_Haer2.1
++ @22 DO ~SetGlobal("RE_HaerDalisDo","GLOBAL",5) RealSetGlobalTimer("RE_HaerDalisTimer","GLOBAL",3000)~+ RE_Haer2.0
END

IF ~~ RE_Haer2.0
SAY @23
IF ~~ DO ~SetGlobal("RE_HaerDalisDo","GLOBAL",500)~ EXIT
END

IF ~~ RE_Haer2.00
SAY @24
IF ~~ DO ~SetGlobal("RE_HaerDalisDo","GLOBAL",500)~ EXIT
END

IF ~~ RE_Haer2.1
SAY @25
IF ~~ + RE_Haer2.1.1
IF ~InParty("Aerie")~ DO ~SetGlobal("RE_HaerAerie","GLOBAL",2)~ + RE_Haer2.1.1
END

IF ~~ RE_Haer2.1.1
SAY @26
= @27
= @28
++ @29 + RE_Haer2.2
++ @30 + RE_Haer2.3
++ @31 + RE_Haer2.4
++ @32 + RE_Haer2.5
++ @33 + RE_Haer2.6
++ @34 + RE_Haer2.00
END

IF ~~ RE_Haer2.2
SAY @35
IF ~~ + RE_Haer2.7
END

IF ~~ RE_Haer2.3
SAY @36
IF ~~ + RE_Haer2.7
END

IF ~~ RE_Haer2.4
SAY @37
IF ~~ + RE_Haer2.7
END

IF ~~ RE_Haer2.5
SAY @38
IF ~~ + RE_Haer2.7
END

IF ~~ RE_Haer2.6
SAY @39
IF ~~ + RE_Haer2.7
END

IF ~~ RE_Haer2.7
SAY @40
++ @41 + RE_Haer2.8
++ @42 + RE_Haer2.9
++ @43 + RE_Haer2.10
++ @44 + RE_Haer2.11
++ @45 + RE_Haer2.11
END

IF ~~ RE_Haer2.8
SAY @46
IF ~~ + RE_Haer2.11
END

IF ~~ RE_Haer2.9
SAY @47
IF ~~ + RE_Haer2.11
END

IF ~~ RE_Haer2.10
SAY @48
IF ~~ + RE_Haer2.11
END

IF ~~ RE_Haer2.11
SAY @49
= @50
IF ~~ DO ~SetGlobal("RE_HaerDalisFlirt","GLOBAL",1)~ EXIT
END

// 3.

IF ~Global("RE_HaerDalisDo","GLOBAL",6)~ RE_Haer3
SAY @51 
++ @52 DO ~SetGlobal("RE_HaerDalisDo","GLOBAL",7)~ + RE_Haer3.1
++ @53 DO ~SetGlobal("RE_HaerDalisDo","GLOBAL",7)~ + RE_Haer3.2
++ @54 DO ~SetGlobal("RE_HaerDalisDo","GLOBAL",7)~ + RE_Haer3.3
++ @55 DO ~SetGlobal("RE_HaerDalisDo","GLOBAL",7)~ + RE_Haer3.4
++ @56 DO ~SetGlobal("RE_HaerDalisDo","GLOBAL",7)~ + RE_Haer3.5
END

IF ~~ RE_Haer3.0
SAY @57
IF ~~ DO ~SetGlobal("RE_HaerDalisDo","GLOBAL",500)~ EXIT
END

IF ~~ RE_Haer3.1
SAY @58
IF ~~ + RE_Haer3.5
END

IF ~~ RE_Haer3.2
SAY @59
IF ~~ + RE_Haer3.5
END

IF ~~ RE_Haer3.3
SAY @60
IF ~~ + RE_Haer3.5
END

IF ~~ RE_Haer3.4
SAY @61
IF ~~ + RE_Haer3.5
END

IF ~~ RE_Haer3.5
SAY @62
= @63
= @64
++ @65 + RE_Haer3.6
++ @66 + RE_Haer3.7
++ @67 + RE_Haer3.8
++ @68 + RE_Haer3.7
++ @69 + RE_Haer3.7a
++ @70 + RE_Haer3.0
END

IF ~~ RE_Haer3.6
SAY @71
IF ~~ + RE_Haer3.9
END

IF ~~ RE_Haer3.7
SAY @72
IF ~~ + RE_Haer3.9
END

IF ~~ RE_Haer3.7a
SAY @73
IF ~~ + RE_Haer3.9
END

IF ~~ RE_Haer3.8
SAY @74
IF ~~ + RE_Haer3.9
END

IF ~~ RE_Haer3.9
SAY @75
= @76
= @77
++ @78 + RE_Haer3.12
++ @79 + RE_Haer3.10
++ @80 + RE_Haer3.12
++ @81 + RE_Haer3.11
END

IF ~~ RE_Haer3.10
SAY @82
IF ~~ + RE_Haer3.12
END

IF ~~ RE_Haer3.11
SAY @83
IF ~~ + RE_Haer3.12
END

IF ~~ RE_Haer3.12
SAY @84
= @85
= @86
IF ~~ EXIT
END

END