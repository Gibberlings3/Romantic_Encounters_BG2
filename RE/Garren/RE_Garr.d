// A Walk with Garren Windspear

EXTEND_BOTTOM GARREN 49
+ ~IsGabber(Player1) Gender(Player1,FEMALE) OR(4) Race(Player1,ELF) Race(Player1,HALF_ELF) Race(Player1,HUMAN) Race(Player1,HALFLING) Global("RE_GarrenNight","GLOBAL",0)~+ @0 DO ~SetGlobal("RE_GarrenNight","GLOBAL",1)~ EXTERN GARREN g1
END

EXTEND_BOTTOM GARREN 51
+ ~IsGabber(Player1) Gender(Player1,FEMALE) OR(4) Race(Player1,ELF) Race(Player1,HALF_ELF) Race(Player1,HUMAN) Race(Player1,HALFLING) Global("RE_GarrenNight","GLOBAL",0)~ + @0 DO ~SetGlobal("HelpedGarren","GLOBAL",1) SetGlobal("RE_GarrenNight","GLOBAL",1)~ EXTERN GARREN g1
END

APPEND GARREN

IF ~~ g1
SAY @1
++ @2 + g2
++ @3 + g2
++ @4 + g0
END

IF ~~ g0
SAY @5
IF ~~ EXIT
END

IF ~~ g00
SAY @6
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ g2
SAY @7
++ @8 + g3
++ @9 + g3
++ @10 + g00
END

IF ~~ g3
SAY @11
= @12
IF ~~ DO ~SetGlobal("RE_GarrenFlirt","GLOBAL",1) SetGlobal("RE_GarrenMove","GLOBAL",1)
ClearAllActions() StartCutSceneMode() StartCutScene("RE_Gar1")~ EXIT
END

IF WEIGHT #-1 ~Global("RE_GarrenMove","GLOBAL",1)~ g4
SAY @13 
++ @14 DO ~SetGlobal("RE_GarrenMove","GLOBAL",2)~ + g4.1
++ @15 DO ~SetGlobal("RE_GarrenMove","GLOBAL",2)~ + g4.1
++ @16 DO ~SetGlobal("RE_GarrenMove","GLOBAL",2)~ + g4.1
END

IF ~~ g4.0
SAY @17
IF ~~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("RE_Gar2")~ EXIT
END

IF ~~ g4.1
SAY @18
= @19
= @20
++ @21 + g4.2
++ @22 + g4.2
++ @23 + g4.2
++ @24 + g4.0
END

IF ~~ g4.2
SAY @25
= @26
= @27
++ @28 + g4.3
++ @29 + g4.3
++ @30 + g4.3
++ @31 + g4.4
++ @32 + g4.5
END

IF ~~ g4.3
SAY @33
IF ~~ + g4.5
END

IF ~~ g4.4
SAY @34
IF ~~ + g4.5
END

IF ~~ g4.5
SAY @35
= @36
= @37 
++ @38 + g4.Sex
++ @39 + g4.Sex
++ @40 + g4.NoSex
++ @41 + g4.NoSex
++ @42 + g4.NoSex
END

IF ~~ g4.NoSex
SAY @43
= @44
IF ~~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("RE_Gar2")~ EXIT
END

IF ~~ g4.Sex
SAY @45
IF ~~ DO ~SetGlobal("RE_GarrenSex","GLOBAL",1) SetGlobal("RE_GarrenMove","GLOBAL",3) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Gar2")~ EXIT
END

IF WEIGHT #-1 ~Global("RE_GarrenMove","GLOBAL",3)~ g5
SAY @46 
= @47
= @48
IF ~~ DO ~SetGlobal("RE_GarrenMove","GLOBAL",4)~ EXIT
END

END
