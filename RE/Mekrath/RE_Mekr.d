INTERJECT MEKRAT 17 RE_MekrathStudy
== MEKRAT IF ~Gender(Player1,FEMALE) Class(Player1,MAGE_ALL)~ THEN @0
= @1
= @2
END
++ @3 EXTERN MEKRAT m1
++ @4 EXTERN MEKRAT m0.2
++ @5 EXTERN MEKRAT m0.3
++ @6 EXTERN MEKRAT m0

APPEND MEKRAT

IF ~~ m0
SAY @7
COPY_TRANS MEKRAT 17
END

IF ~~ m1
SAY @8
IF ~~ DO ~SetGlobal("RE_MekrathMove","GLOBAL",1) SetGlobal("RE_MekrathFlirt","GLOBAL",1)
ClearAllActions() StartCutSceneMode() StartCutScene("RE_Mekr1")~ EXIT
END

IF ~~ m0.2
SAY @9
IF ~~ + m0.4
END

IF ~~ m0.3
SAY @10
IF ~~ + m0.4
END

IF ~~ m0.4
SAY @11
++ @12 + m1
++ @13 + m1
++ @14 + m0
END

IF WEIGHT #-1 ~Global("RE_MekrathMove","GLOBAL",1)~ m2
SAY @15
= @16
= @17
= @18
++ @19 DO ~SetGlobal("RE_MekrathMove","GLOBAL",2)~ + m2.1
++ @20 DO ~SetGlobal("RE_MekrathMove","GLOBAL",2)~ + m2.1
++ @21 DO ~SetGlobal("RE_MekrathMove","GLOBAL",2)~ + m2.2
++ @22 DO ~SetGlobal("RE_MekrathMove","GLOBAL",2)~ + m2.3
END

IF ~~ m2.1
SAY @23
IF ~~ + m2.4
END

IF ~~ m2.2
SAY @24
IF ~~ + m2.4
END

IF ~~ m2.3
SAY @25
COPY_TRANS MEKRAT 17
END

IF ~~ m2.4
SAY @26
= @27
= @28
= @29
IF ~~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("RE_Mekr2")~ EXIT
END

IF WEIGHT #-1 ~Global("RE_MekrathMove","GLOBAL",2)~ m3
SAY @30
= @31
++ @32 DO ~SetGlobal("RE_MekrathMove","GLOBAL",3)~ + m3.1
++ @33 DO ~SetGlobal("RE_MekrathMove","GLOBAL",3)~ + m3.2
++ @34 DO ~SetGlobal("RE_MekrathMove","GLOBAL",3)~ + m3.3
++ @35 DO ~SetGlobal("RE_MekrathMove","GLOBAL",3)~ + m3.4
END

IF ~~ m3.1
SAY @36
IF ~~ + m3.4
END

IF ~~ m3.2
SAY @37
IF ~~ + m3.4
END

IF ~~ m3.3
SAY @38
IF ~~ + m3.4
END

IF ~~ m3.4
SAY @39
= @40 
= @41
= @42
= @43
= @44
= @45
IF ~~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("RE_Mekr3")~ EXIT
END

IF WEIGHT #-1 ~Global("RE_MekrathMove","GLOBAL",3)~ m4
SAY @46
= @47
= @48
= @49
= @50
= @51
= @52
= @53
= @54
= @55
++ @56 DO ~SetGlobal("RE_MekrathMove","GLOBAL",4)~ + m4.3
++ @57 DO ~SetGlobal("RE_MekrathMove","GLOBAL",4)~ + m4.1
++ @58 DO ~SetGlobal("RE_MekrathMove","GLOBAL",4)~ + m4.2
++ @59 DO ~SetGlobal("RE_MekrathMove","GLOBAL",4)~ + m4.2
++ @60 DO ~SetGlobal("RE_MekrathMove","GLOBAL",4)~ + m4.0
END

IF ~~ m4.0
SAY @61
IF ~~ + m4.2
END

IF ~~ m4.1
SAY @62
IF ~~ + m4.2
END

IF ~~ m4.2
SAY @63
= @64
IF ~~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("RE_Mekr4")~ EXIT
END

IF ~~ m4.3
SAY @65
IF ~~ + m4.2
END

IF WEIGHT #-1 ~Global("RE_MekrathMove","GLOBAL",4)~ m5
SAY @66
= @67
= @68
= @69
= @70
++ @71 DO ~SetGlobal("RE_MekrathMove","GLOBAL",5)~ + m5.1
++ @72 DO ~SetGlobal("RE_MekrathMove","GLOBAL",5)~ + m5.1
++ @73 DO ~SetGlobal("RE_MekrathMove","GLOBAL",5)~ + m5.2
END

IF ~~ m5.1
SAY @74
IF ~~ + m5.3
END

IF ~~ m5.2
SAY @75
IF ~~ + m5.3
END

IF ~~ m5.3
SAY @76
= @77
++ @78 + m5.4
++ @79 + m5.4
++ @80 + m5.6
++ @81  + m5.5
END

IF ~~ m5.4
SAY @82
IF ~~ + m5.7
END

IF ~~ m5.5
SAY @83
IF ~~ + m5.4
END

IF ~~ m5.6
SAY @84
IF ~~ + m5.4
END

IF ~~ m5.7
SAY @85
= @86
++ @87 + m5.8
++ @88 + m5.8
++ @89 + m5.9
++ @90 + m5.9
END

IF ~~ m5.8
SAY @91
IF ~~ + m5.10
END

IF ~~ m5.9
SAY @92
IF ~~ + m5.10
END

IF ~~ m5.10
SAY @93
= @94
= @95
= @96
++ @97 + m5.11
++ @98 + m5.12
++ @99 + m5.11
++ @100 + m5.12
++ @101 + m5.12
END

IF ~~ m5.11
SAY @102
IF ~~ DO ~SetGlobal("RE_MekrathMove","GLOBAL",6)
SetGlobal("RE_MekrathSex","GLOBAL",1)
ClearAllActions() StartCutSceneMode() StartCutScene("RE_Mekr5")~ EXIT
END

IF ~~ m5.12
SAY @103
COPY_TRANS MEKRAT 17
END

IF WEIGHT #-1 ~Global("RE_MekrathMove","GLOBAL",6)~ m6
SAY @104
IF ~~ DO ~SetGlobal("RE_MekrathMove","GLOBAL",7)~ + m6.1
END

IF ~~ m6.1
SAY @105
COPY_TRANS MEKRAT 17
END

END