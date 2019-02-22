BEGIN RE_LAIS

IF ~OR(2) !IsGabber(Player1) Gender(Player1,FEMALE)~ RE_Lais0
SAY @0 
IF ~~ EXIT
END

IF ~Global("RE_LaisTalked","GLOBAL",0) IsGabber(Player1) Gender(Player1,MALE)~ RE_Lais1
SAY @0 
++ @1 DO ~SetGlobal("RE_LaisTalked","GLOBAL",1)~ + RE_Lais1.1
++ @2 DO ~SetGlobal("RE_LaisTalked","GLOBAL",1)~ + RE_Lais1.1
++ @3 DO ~SetGlobal("RE_LaisTalked","GLOBAL",1)~ + RE_Lais1.2
++ @4 + RE_Lais1.0
END

IF ~~ RE_Lais1.0
SAY @5
IF ~~ EXIT
END

IF ~~ RE_Lais1.1
SAY @6
= @7
++ @8 + RE_Lais1.6
++ @9 + RE_Lais1.4
++ @10 + RE_Lais1.3
++ @11 + RE_Lais1.0
END

IF ~~ RE_Lais1.2
SAY @12
IF ~~ + RE_Lais1.1
END

IF ~~ RE_Lais1.3
SAY @13
IF ~~ + RE_Lais1.5
END

IF ~~ RE_Lais1.4
SAY @14
IF ~~ + RE_Lais1.5
END

IF ~~ RE_Lais1.5
SAY @15
++ @16 + RE_Lais1.6
++ @17 + RE_Lais1.0
END

IF ~~ RE_Lais1.6
SAY @18
IF ~~ DO ~SetGlobal("RE_LaisTalked","GLOBAL",2) SetGlobal("RE_LaisFlirt","GLOBAL",1) EscapeArea()~ EXIT
END

IF ~Global("RE_LaisTalked","GLOBAL",1) IsGabber(Player1) Gender(Player1,MALE)~ RE_Lais2
SAY @19 
++ @20 + RE_Lais1.7
++ @21 + RE_Lais1.8
++ @22 + RE_Lais1.5
++ @23 + RE_Lais1.0
END

IF ~~ RE_Lais1.7
SAY @24
IF ~~ + RE_Lais1.5
END

IF ~~ RE_Lais1.8
SAY @25
IF ~~ + RE_Lais1.5
END

IF ~Global("RE_LaisTalked","GLOBAL",2) IsGabber(Player1) OR(5)
See(Player2)
See(Player3)
See(Player4)
See(Player5)
See(Player6)~ RE_Lais2.0
SAY @26
IF ~~ EXIT
END

IF ~Global("RE_LaisTalked","GLOBAL",2) IsGabber(Player1) 
!See(Player2)
!See(Player3)
!See(Player4)
!See(Player5)
!See(Player6)~ RE_Lais2
SAY @27 
++ @28 DO ~SetGlobal("RE_LaisTalked","GLOBAL",3)~ + RE_Lais2.6
+ ~!Race(Player1,ELF)~ + @29 DO ~SetGlobal("RE_LaisTalked","GLOBAL",3)~ + RE_Lais2.1
++ @30 DO ~SetGlobal("RE_LaisTalked","GLOBAL",3)~ + RE_Lais2.2
++ @31 DO ~SetGlobal("RE_LaisTalked","GLOBAL",3)~ + RE_Lais2.3
++ @32 DO ~SetGlobal("RE_LaisTalked","GLOBAL",3)~ + RE_Lais2.6
END

IF ~~ RE_Lais2.1
SAY @33
IF ~~ + RE_Lais2.3
END

IF ~~ RE_Lais2.2
SAY @34
IF ~~ DO ~SetGlobal("RE_LaisTalked","GLOBAL",6) EscapeArea()~ EXIT
END

IF ~~ RE_Lais2.3
SAY @35
++ @36 + RE_Lais2.6
++ @32 + RE_Lais2.6
++ @37 + RE_Lais2.5
++ @38 + RE_Lais2.5
END

IF ~~ RE_Lais2.4
SAY @39
IF ~~ + RE_Lais2.6
END

IF ~~ RE_Lais2.5
SAY @40
++ @41 + RE_Lais2.4
++ @42 + RE_Lais2.4
++ @43 + RE_Lais2.2
END

IF ~~ RE_Lais2.6
SAY @44
= @45
= @46
= @47
= @48
++ @49 + RE_Lais2.7
++ @50 + RE_Lais2.7
++ @51 + RE_Lais2.2
END

IF ~~ RE_Lais2.7
SAY @52
IF ~~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("RE_Lais1")~ EXIT
END

IF ~Global("RE_LaisTalked","GLOBAL",3)~ RE_Lais3
SAY @53
= @54
= @55
IF ~~ DO ~SetGlobal("RE_LaisTalked","GLOBAL",4)
ClearAllActions()
StartCutSceneMode()
StartCutScene("RE_Lais2")~ EXIT
END

IF ~Global("RE_LaisTalked","GLOBAL",4)~ RE_Lais4
SAY @56
= @57
= @58
= @59
IF ~~ DO ~SetGlobal("RE_LaisTalked","GLOBAL",5) SetGlobal("RE_LaisSex","GLOBAL",1) EscapeArea()~ EXIT
END
