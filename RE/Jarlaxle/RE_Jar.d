INTERJECT JARLAXLE 40 RE_JarlaxleSay
== JARLAXLE IF ~Gender(Player1,FEMALE)~ THEN @0
END
++ @1 EXTERN JARLAXLE J1.1
++ @2 EXTERN JARLAXLE J1.1
++ @3 EXTERN JARLAXLE J1.2
++ @4 EXTERN JARLAXLE J1.2

APPEND JARLAXLE

IF ~~ J1.1
SAY @5
COPY_TRANS JARLAXLE 40
END

IF ~~ J1.2
SAY @6
++ @7 + J1.3
++ @8 + J1.3
++ @9 + J1.3
END

IF ~~ J1.3
SAY @10
++ @11 + J1.4
++ @12 + J1.4
++ @13 + J1.1
END

IF ~~ J1.4
SAY @14 
IF ~~ DO ~SetGlobal("RE_JarlaxleMove","GLOBAL",1) SetGlobal("RE_JarlaxleFlirt","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Jar1")~ EXIT
END

IF ~Global("RE_JarlaxleMove","GLOBAL",1)~ J2
SAY @15
= @16
= @17
= @18
++ @19 + J1.9
++ @20 + J1.9
++ @21 + J1.9
END

IF ~~ J1.9
SAY @22
++ @23 + J1.10
++ @24 + J1.11
++ @25 + J1.11
END

IF ~~ J1.10
SAY @26
IF ~~ DO ~SetGlobal("RE_JarlaxleMove","GLOBAL",3) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Jar3")~ EXIT
END

IF ~~ J1.11
SAY @27
++ @28 + J1.12a
++ @29 + J1.12
++ @30 + J1.12
END 

IF ~~ J1.12a
SAY @31
IF ~~ + J1.12
END

IF ~~ J1.12
SAY @32
++ @33 + J1.13
++ @34 + J1.10
++ @35 + J1.10
END

IF ~~ J1.13
SAY @36
++ @37 + J1.15
++ @38 + J1.16
++ @30 + J1.16
END

IF ~~ J1.14
SAY @39
++ @40 + J1.10
++ @41 + J1.16
++ @42 + J1.16
END

IF ~~ J1.15
SAY @43
IF ~~ + J1.14
END

IF ~~ J1.16
SAY @44
++ @45 + J1.17
++ @46 + J1.17
END

IF ~~ J1.17
SAY @47
= @48
++ @49 + J1.18
++ @50 + J1.18
++ @51 + J1.10
END

IF ~~ J1.18
SAY @52
IF ~~ DO ~SetGlobal("RE_JarlaxleMove","GLOBAL",2) SetGlobal("RE_JarlaxleSex","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Jar2")~ EXIT
END

IF ~Global("RE_JarlaxleMove","GLOBAL",2)~ J3
SAY @53
= @54
++ @55 + J1.20
++ @56 + J1.21
++ @57 + J1.22
END

IF ~~ J1.20
SAY @58
= @59
IF ~~ DO ~SetGlobal("RE_JarlaxleMove","GLOBAL",3) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Jar3")~ EXIT
END

IF ~~ J1.21
SAY @60
IF ~~ DO ~SetGlobal("RE_JarlaxleMove","GLOBAL",3) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Jar3")~ EXIT
END

IF ~~ J1.22
SAY @61
IF ~~ DO ~SetGlobal("RE_JarlaxleMove","GLOBAL",3) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Jar3")~ EXIT
END

END

CHAIN IF ~Global("RE_JarlaxleMove","GLOBAL",3)~ THEN JARLAXLE J4
@62
DO ~SetGlobal("RE_JarlaxleMove","GLOBAL",4)~
= @63
END
COPY_TRANS JARLAXLE 40