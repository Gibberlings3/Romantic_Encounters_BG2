EXTEND_BOTTOM BODHI 109
+ ~Gender(Player1,MALE) Global("RE_BodhiFlirt","GLOBAL",0)~ + @0 DO ~SetGlobal("RE_BodhiFlirt","GLOBAL",1) SetGlobal("BodhiNotReady","GLOBAL",1)~ EXTERN BODHI RE_Bodhi1
+ ~Gender(Player1,MALE) Global("RE_BodhiFlirt","GLOBAL",0)~ + @1 DO ~SetGlobal("RE_BodhiFlirt","GLOBAL",1) SetGlobal("BodhiNotReady","GLOBAL",1)~ EXTERN BODHI RE_Bodhi1
END

EXTEND_BOTTOM BODHI 113
+ ~Gender(Player1,MALE) Global("RE_BodhiFlirt","GLOBAL",0)~ + @0 DO ~SetGlobal("RE_BodhiFlirt","GLOBAL",1)~ EXTERN BODHI RE_Bodhi1
+ ~Gender(Player1,MALE) Global("RE_BodhiFlirt","GLOBAL",0)~ + @1 DO ~SetGlobal("RE_BodhiFlirt","GLOBAL",1)~ EXTERN BODHI RE_Bodhi1
+ ~Gender(Player1,MALE) Global("RE_BodhiSex","GLOBAL",1)~ + @2 EXTERN BODHI RE_Bodhi1.NotAgain
END

APPEND BODHI

IF ~~ RE_Bodhi1.NotAgain
SAY @3
IF ~~ EXIT
END

IF ~~ RE_Bodhi1
SAY @4

IF ~~ + RE_Bodhi111

IF ~InParty("Aerie") OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_BodhiFlirtAerie","GLOBAL",1)~ + RE_Bodhi111
IF ~InParty("Jaheira") OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_BodhiFlirtJaheira","GLOBAL",1)~ + RE_Bodhi111
IF ~InParty("Viconia") OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_BodhiFlirtViconia","GLOBAL",1)~ + RE_Bodhi111

IF ~InParty("Aerie") OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2) 
InParty("Jaheira") OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_BodhiFlirtAerie","GLOBAL",1) SetGlobal("RE_BodhiFlirtJaheira","GLOBAL",1)~ + RE_Bodhi111
IF ~InParty("Aerie") OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2) 
InParty("Viconia") OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_BodhiFlirtAerie","GLOBAL",1) SetGlobal("RE_BodhiFlirtViconia","GLOBAL",1)~ + RE_Bodhi111
IF ~InParty("Jaheira") OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2)
InParty("Viconia") OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_BodhiFlirtJaheira","GLOBAL",1) SetGlobal("RE_BodhiFlirtViconia","GLOBAL",1)~ + RE_Bodhi111

IF ~InParty("Aerie") OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2) 
InParty("Jaheira") OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2)
InParty("Viconia") OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_BodhiFlirtAerie","GLOBAL",1) SetGlobal("RE_BodhiFlirtJaheira","GLOBAL",1) SetGlobal("RE_BodhiFlirtViconia","GLOBAL",1)~ + RE_Bodhi111

END

IF ~~ RE_Bodhi111
SAY @5
++ @6 + RE_Bodhi1.1
++ @7 + RE_Bodhi1.1
++ @8 + RE_Bodhi1.1
++ @9 + RE_Bodhi1.2
++ @10 + 113
END

IF ~~ RE_Bodhi1.2
SAY @11
IF ~~ + RE_Bodhi1.Angry
END

IF ~~ RE_Bodhi1.Angry
SAY @12
IF ~~ + 113
END

IF ~~ RE_Bodhi1.1
SAY @13
++ @14 + RE_Bodhi1.3
++ @15 + RE_Bodhi1.4
++ @16 + RE_Bodhi1.5
++ @17 + RE_Bodhi1.6
END

IF ~~ RE_Bodhi1.3
SAY @18
IF ~~ + RE_Bodhi1.7
END

IF ~~ RE_Bodhi1.4
SAY @19
IF ~~ + RE_Bodhi1.7
END

IF ~~ RE_Bodhi1.5
SAY @20
IF ~~ + RE_Bodhi1.7
END

IF ~~ RE_Bodhi1.6
SAY @21
IF ~~ + 113
END

IF ~~ RE_Bodhi1.7
SAY @22
= @23
IF ~!NumInParty(1) !NumInParty(2)~ + RE_Bodhi1.8
IF ~NumInParty(2)~ + RE_Bodhi1.8a
IF ~NumInParty(1)~ + RE_Bodhi1.9
END

IF ~~ RE_Bodhi1.8
SAY @24
IF ~~ + RE_Bodhi1.9
END

IF ~~ RE_Bodhi1.8a
SAY @25
IF ~~ + RE_Bodhi1.9
END

IF ~~ RE_Bodhi1.9
SAY @26
++ @27 + RE_Bodhi1.10
++ @28 + RE_Bodhi1.6
END

IF ~~ RE_Bodhi1.10
SAY @29
IF ~~ DO ~SetGlobal("RE_BodhiSex","GLOBAL",1) SetGlobal("RE_BodhiMove","GLOBAL",1)
ClearAllActions() StartCutSceneMode() StartCutScene("RE_Bodh1")~ EXIT
END

IF WEIGHT #-1 ~Global("RE_BodhiMove","GLOBAL",1)~ RE_Bodhi1.11
SAY @30 
= @31
= @32
= @33
= @34
= @35
= @36
= @37
= @38
++ @39 DO ~ApplySpell(Player1,WIZARD_ENERGY_DRAIN)~ + RE_Bodhi1.12
++ @40 DO ~ApplySpell(Player1,WIZARD_ENERGY_DRAIN)~ + RE_Bodhi1.12
++ @41 + RE_Bodhi1.13
++ @42 + RE_Bodhi1.13
END

IF ~~ RE_Bodhi1.12
SAY @43
= @44
= @45
= @46
= @47
++ @48 + RE_Bodhi1.17
++ @49 + RE_Bodhi1.17
++ @50 + RE_Bodhi1.14
++ @51 + RE_Bodhi1.15
END

IF ~~ RE_Bodhi1.13
SAY @52
= @53
IF ~~ DO ~SetGlobal("RE_BodhiMove","GLOBAL",3) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Bodh2")~ EXIT
END

IF ~~ RE_Bodhi1.14
SAY @54
IF ~~ + RE_Bodhi1.16
END

IF ~~ RE_Bodhi1.15
SAY @55
IF ~~ + RE_Bodhi1.16
END

IF ~~ RE_Bodhi1.16
SAY @56
IF ~~ DO ~SetGlobal("RE_BodhiMove","GLOBAL",2) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Bodh2")~ EXIT
END

IF ~~ RE_Bodhi1.17
SAY @57
IF ~~ + RE_Bodhi1.16
END

IF WEIGHT #-1 ~Global("RE_BodhiMove","GLOBAL",2)~ RE_Bodhi1.18
SAY @58
IF ~~ DO ~SetGlobal("RE_BodhiMove","GLOBAL",4)~ EXIT
END

IF WEIGHT #-1 ~Global("RE_BodhiMove","GLOBAL",3)~ RE_Bodhi1.19
SAY @59
IF ~~ DO ~SetGlobal("RE_BodhiMove","GLOBAL",4)~ EXIT
END

END
