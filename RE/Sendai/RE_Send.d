BEGIN RE_SEND

IF ~Global("RE_SendaiDream","GLOBAL",1)~ RE_Sen1
SAY @0
++ @1 DO ~SetGlobal("RE_SendaiDream","GLOBAL",2)~ + RE_Sen1.1
++ @2 DO ~SetGlobal("RE_SendaiDream","GLOBAL",2)~ + RE_Sen1.1 
++ @3 DO ~SetGlobal("RE_SendaiDream","GLOBAL",2)~ + RE_Sen1.4
++ @4 DO ~SetGlobal("RE_SendaiDream","GLOBAL",2)~ + RE_Sen1.1
END

IF ~~ RE_Sen1.1
SAY @5
++ @6 + RE_Sen1.2
++ @7 + RE_Sen1.4
++ @8 + RE_Sen1.4
++ @9 + RE_Sen1.4
++ @10 + RE_Sen1.3
END

IF ~~ RE_Sen1.2
SAY @11
IF ~~ + RE_Sen1.4
END

IF ~~ RE_Sen1.3
SAY @12
IF ~~ + RE_Sen1.4
END

IF ~~ RE_Sen1.4
SAY @13
++ @14 + RE_Sen1.5
++ @15 + RE_Sen1.5
++ @16 + RE_Sen1.5
++ @17 + RE_Sen1.5
++ @18 + RE_Sen1.5
++ @19 + RE_Sen1.7
END

IF ~~ RE_Sen1.5
SAY @20
= @21
= @22
++ @23 + RE_Sen1.7
++ @24 + RE_Sen1.6
++ @25 + RE_Sen1.6a
++ @26 + RE_Sen1.7
END

IF ~~ RE_Sen1.6a
SAY @27
IF ~~ + RE_Sen1.7
END

IF ~~ RE_Sen1.6
SAY @28
IF ~~ + RE_Sen1.7
END

IF ~~ RE_Sen1.7
SAY @29
++ @30 + RE_Sen1.8
++ @31 + RE_Sen1.9
++ @32 + RE_Sen1.10
++ @33 + RE_Sen1.11
++ @34 + RE_Sen1.12
+ ~!Race(Player1,ELF)~ + @35 + RE_Sen1.13
+ ~Race(Player1,ELF)~ + @35 + RE_Sen1.13a
++ @36 + RE_Sen1.14
END

IF ~~ RE_Sen1.8
SAY @37
IF ~~ + RE_Sen1.15
END

IF ~~ RE_Sen1.9
SAY @38
IF ~~ + RE_Sen1.15
END

IF ~~ RE_Sen1.10
SAY @39
IF ~~ + RE_Sen1.15
END

IF ~~ RE_Sen1.11
SAY @40
IF ~~ + RE_Sen1.15
END

IF ~~ RE_Sen1.12
SAY @41
IF ~~ + RE_Sen1.15
END

IF ~~ RE_Sen1.13
SAY @42
IF ~~ + RE_Sen1.15
END

IF ~~ RE_Sen1.13a
SAY @43
IF ~~ + RE_Sen1.15
END

IF ~~ RE_Sen1.14
SAY @44
IF ~~ + RE_Sen1.15
END

IF ~~ RE_Sen1.15
SAY @45
= @46
= @47
= @48
= @49 
++ @50 + RE_Sen1.17
++ @51 + RE_Sen1.16
++ @52 + RE_Sen1.17
++ @53 + RE_Sen1.17
++ @54 + RE_Sen1.18
++ @55 + RE_Sen1.18
++ @56 + RE_Sen1.18
END

IF ~~ RE_Sen1.16
SAY @57
IF ~~ + RE_Sen1.17
END

IF ~~ RE_Sen1.17
SAY @58
IF ~~ DO ~SetGlobal("RE_SendaiSex","GLOBAL",1)
ClearAllActions() StartCutSceneMode() StartCutScene("Re_Send2")~ EXIT
END

IF ~~ RE_Sen1.18
SAY @59
= @60
= @61
= @62
IF ~~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("Re_Send2")~ EXIT
END