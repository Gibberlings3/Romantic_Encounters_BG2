EXTEND_BOTTOM PPSAEM 29
+ ~Gender(Player1,FEMALE) OR(4) Race(Player1,ELF) Race(Player1,HALF_ELF) Race(Player1,HUMAN) Race(Player1,HALFLING)~ + @0 EXTERN PPSAEM RE_SaemR1
END

EXTEND_BOTTOM PPSAEM 35
+ ~Gender(Player1,FEMALE) OR(4) Race(Player1,ELF) Race(Player1,HALF_ELF) Race(Player1,HUMAN) Race(Player1,HALFLING)~ + @1 EXTERN PPSAEM RE_SaemR2
END

APPEND PPSAEM

IF ~~ RE_SaemR1
SAY @2
IF ~~ + 31
END

IF ~~ RE_SaemR2
SAY @3
IF ~~ EXIT
END

END

EXTEND_BOTTOM PPSAEM2 12
+ ~Gender(Player1,FEMALE) OR(4) Race(Player1,ELF) Race(Player1,HALF_ELF) Race(Player1,HUMAN) Race(Player1,HALFLING)~ + @4 EXTERN PPSAEM2 16
END

EXTEND_BOTTOM PPSAEM2 20
+ ~Gender(Player1,FEMALE) OR(4) Race(Player1,ELF) Race(Player1,HALF_ELF) Race(Player1,HUMAN) Race(Player1,HALFLING)~ + @5 EXTERN PPSAEM2 27
END

EXTEND_BOTTOM PPSAEM3 27
+ ~Gender(Player1,FEMALE) OR(4) Race(Player1,ELF) Race(Player1,HALF_ELF) Race(Player1,HUMAN) Race(Player1,HALFLING) Global("RE_SaemonFlirt","GLOBAL",0)~ + @6 DO ~SetGlobal("RE_SaemonFlirt","GLOBAL",1)~ EXTERN PPSAEM3 RE_Saem0
+ ~Gender(Player1,FEMALE) OR(4) Race(Player1,ELF) Race(Player1,HALF_ELF) Race(Player1,HUMAN) Race(Player1,HALFLING) Global("RE_SaemonFlirt","GLOBAL",0)~ + @7 DO ~SetGlobal("RE_SaemonFlirt","GLOBAL",1)~ EXTERN PPSAEM3 RE_Saem0
+ ~Gender(Player1,FEMALE) OR(4) Race(Player1,ELF) Race(Player1,HALF_ELF) Race(Player1,HUMAN) Race(Player1,HALFLING) Global("RE_SaemonFlirt","GLOBAL",0)~ + @8 DO ~SetGlobal("RE_SaemonFlirt","GLOBAL",1)~ EXTERN PPSAEM3 RE_Saem0
END

APPEND PPSAEM3

IF ~~ RE_Saem0
SAY @9
= @10
++ @11 + RE_Saem0.1
++ @12 + RE_Saem0.2
++ @13 + RE_Saem0.3
++ @14 + RE_Saem0.4
++ @15 + RE_Saem0.End
END

IF ~~ RE_Saem0.End
SAY @16
IF ~~ EXIT
END

IF ~~ RE_Saem0.1
SAY @17
IF ~~ + RE_Saem0.5
END

IF ~~ RE_Saem0.2
SAY @18
IF ~~ + RE_Saem0.5
END

IF ~~ RE_Saem0.3
SAY @19
IF ~~ + RE_Saem0.5
END

IF ~~ RE_Saem0.4
SAY @20
IF ~~ + RE_Saem0.5
END

IF ~~ RE_Saem0.5
SAY @21
= @22
IF ~~ DO ~SetGlobal("RE_SaemonSex","GLOBAL",1)
SetGlobal("RE_SaemonMove","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("RE_Saem1")~ EXIT
IF ~InParty("Anomen") OR(2) Global("AnomenRomanceActive","GLOBAL",1) Global("AnomenRomanceActive","GLOBAL",2)~ DO ~
IncrementGlobal("RE_AnomenCounter","GLOBAL",1)
SetGlobal("RE_SaemonFlirtAnomen","GLOBAL",1)
SetGlobal("RE_SaemonSex","GLOBAL",1)
SetGlobal("RE_SaemonMove","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("RE_Saem1")~ EXIT
END

IF WEIGHT #-1 ~Global("RE_SaemonMove","GLOBAL",1)~ RE_Saem1
SAY @23
= @24
++ @25 DO ~SetGlobal("RE_SaemonMove","GLOBAL",2)~ + RE_Saem1.Wine1
++ @26 DO ~SetGlobal("RE_SaemonMove","GLOBAL",2)~ + RE_Saem1.Wine2
++ @27 DO ~SetGlobal("RE_SaemonMove","GLOBAL",2)~ + RE_Saem1.Bath
++ @28 DO ~SetGlobal("RE_SaemonMove","GLOBAL",2)~ + RE_Saem1.You
++ @29 DO ~SetGlobal("RE_SaemonMove","GLOBAL",2)~ + RE_Saem1.You
END

IF ~~ RE_Saem1.Wine1
SAY @30
IF ~~ + RE_Saem1.Wine3
END

IF ~~ RE_Saem1.Wine2
SAY @31
IF ~~ + RE_Saem1.Wine3
END

IF ~~ RE_Saem1.Wine3
SAY @32
= @33
= @34 
= @35
= @36
= @37
= @38
= @39
= @40
= @41
= @42
= @43
++ @44 + RE_Saem1.Bath
++ @45 + RE_Saem1.Mine
++ @46 + RE_Saem1.You
++ @47 + RE_Saem1.You
END

IF ~~ RE_Saem1.Mine
SAY @48 
= @49
++ @50 + RE_Saem1.You
++ @51 + RE_Saem1.You
++ @52 + RE_Saem1.You
++ @53 + RE_Saem1.Bath
END

IF ~~ RE_Saem1.Bath
SAY @54
= @55
= @56
= @57
= @58
= @59
= @60
= @61
IF ~~ + RE_Saem1.Sex
END

IF ~~ RE_Saem1.You
SAY @62
= @63
= @64
= @65
= @66
= @67
= @68
= @69
= @70
IF ~~ + RE_Saem1.Sex
END

IF ~~ RE_Saem1.Sex
SAY @71
= @72
= @73
= @74
= @75
= @76
= @77
= @78
++ @79 + RE_Saem1.Sex1
++ @80 + RE_Saem1.Sex2
++ @81 + RE_Saem1.Sex3
++ @82 + RE_Saem1.Sex4
++ @83 + RE_Saem1.Sex5
END

IF ~~ RE_Saem1.Sex1
SAY @84
IF ~~ + RE_Saem1.Sex5
END

IF ~~ RE_Saem1.Sex2
SAY @85
IF ~~ + RE_Saem1.Sex5
END

IF ~~ RE_Saem1.Sex3
SAY @86
IF ~~ + RE_Saem1.Sex5
END

IF ~~ RE_Saem1.Sex4
SAY @87
IF ~~ + RE_Saem1.Sex5
END

IF ~~ RE_Saem1.Sex5
SAY @88
IF ~~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("RE_Saem2")~ EXIT
END

IF WEIGHT #-1 ~Global("RE_SaemonMove","GLOBAL",2)~ RE_Saem2
SAY @89
IF ~~ DO ~SetGlobal("RE_SaemonMove","GLOBAL",3)~ EXIT
END

END
