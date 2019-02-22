// First part: < 5000 gp

BEGIN ~RE_Gael~

EXTEND_BOTTOM GAELAN 42
IF ~IsGabber(Player1)
Gender(Player1,FEMALE)
Global("RE_GaelanFlirt","GLOBAL",0)
Global("RE_GaelanSex","GLOBAL",0)
~ THEN REPLY @0 EXTERN GAELAN RE_GaelanFlingStart
END



APPEND GAELAN

IF ~~ THEN BEGIN RE_GaelanFlingStart
SAY @1
IF ~~ THEN REPLY @2 EXTERN GAELAN 48
IF ~~ THEN REPLY @3 GOTO ApproachGaelan
END

IF ~~ THEN BEGIN ApproachGaelan
SAY @4
IF ~~ THEN REPLY @5 GOTO StrongArms
IF ~~ THEN REPLY @6 GOTO Butt
IF ~~ THEN REPLY @7 GOTO Ogle
IF ~~ THEN REPLY @8 GOTO Directions
END

IF ~~ THEN BEGIN StrongArms
SAY @9
IF ~~ THEN REPLY @10 GOTO Fondle
IF ~~ THEN REPLY @11 GOTO Directions
END

IF ~~ THEN BEGIN Butt
SAY @12
IF ~~ THEN REPLY @13 GOTO Fondle
IF ~~ THEN REPLY @11 GOTO Directions
END

IF ~~ THEN BEGIN Ogle
SAY @14
IF ~~ THEN REPLY @15 GOTO Cleavage
IF ~~ THEN REPLY @16 GOTO Directions
END

IF ~~ THEN BEGIN Fondle
SAY @17
IF ~~ THEN REPLY @18 DO ~SetGlobal("RE_GaelanFlirt","GLOBAL",1)~ GOTO Intimate
IF ~~ THEN REPLY @19 DO ~SetGlobal("RE_GaelanFlirt","GLOBAL",1)~ GOTO Cleavage
IF ~~ THEN REPLY @20 DO ~SetGlobal("RE_GaelanFlirt","GLOBAL",1)~ GOTO Directions
END

IF ~~ THEN BEGIN Intimate
SAY @21
IF ~~ THEN REPLY @22 GOTO Directions
IF ~~ THEN REPLY @23 GOTO YouWantIt1
END

IF ~~ THEN BEGIN Cleavage
SAY @24
IF ~~ THEN REPLY @25 GOTO Directions
IF ~~ THEN REPLY @23 GOTO YouWantIt2
END

IF ~~ THEN BEGIN YouWantIt1
SAY @26
IF ~~ THEN REPLY @27 GOTO ImAWoman
IF ~~ THEN REPLY @28 GOTO ImAWoman
IF ~~ THEN REPLY @29 GOTO Directions
END 

IF ~~ THEN BEGIN YouWantIt2
SAY @26
IF ~~ THEN REPLY @30 GOTO ImAWoman
IF ~~ THEN REPLY @28 GOTO ImAWoman
IF ~~ THEN REPLY @31 GOTO Directions
END

IF ~~ THEN BEGIN ImAWoman
SAY @32
IF ~~ THEN REPLY @33 GOTO SeduceGaelan
IF ~~ THEN REPLY @34 GOTO TurnMeOn
IF ~~ THEN REPLY @35 GOTO Directions
END

IF ~~ THEN BEGIN SeduceGaelan
SAY @36
IF ~~ THEN REPLY @37 GOTO Guarantee
IF ~~ THEN REPLY @38 DO ~SetGlobal("RE_GaelanNoContract","GLOBAL",1)~ GOTO KnockBoots
IF ~~ THEN REPLY @39 GOTO Directions
END

IF ~~ THEN BEGIN TurnMeOn
SAY @40
IF ~~ THEN REPLY @41 DO ~SetGlobal("RE_GaelanTurnedOn","GLOBAL",1)~ GOTO KnockBoots
IF ~~ THEN REPLY @39 GOTO Directions
END

IF ~~ THEN BEGIN Guarantee
SAY @42
IF ~~ THEN REPLY @43 DO ~SetGlobal("RE_GaelanContract","GLOBAL",1)~ GOTO KnockBoots
IF ~~ THEN REPLY @44 GOTO Directions
END

IF ~~ THEN BEGIN Directions
SAY @45
IF ~~ THEN REPLY @46 EXTERN GAELAN 43
IF ~~ THEN REPLY @47 EXTERN GAELAN 43
END

IF ~~ THEN BEGIN KnockBoots
SAY @48
IF ~~ THEN DO ~SetGlobal("RE_GaelanSex","GLOBAL",1) RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
IF ~InParty("Anomen") OR(2) Global("AnomenRomanceActive","GLOBAL",1) Global("AnomenRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("RE_GaelanSexAnomen","GLOBAL",1) SetGlobal("RE_GaelanSex","GLOBAL",1) RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END



// Morning After 1 - Contract

IF WEIGHT #-1
~Global("RE_GaelanSex","GLOBAL",1)
Global("RE_GaelanContract","GLOBAL",1)~ THEN BEGIN MorningAfterContract
SAY @49
IF ~~ THEN REPLY @50 GOTO HandOver
IF ~~ THEN REPLY @51 GOTO HandOver
IF ~~ THEN REPLY @52 GOTO HandOver
END

IF ~~ THEN BEGIN HandOver
SAY @53
IF ~~ THEN REPLY @54 GOTO ProveIt
IF ~~ THEN REPLY @55 GOTO PayForThis
IF ~~ THEN REPLY @56 GOTO ShouldHaveGuessed
END

IF ~~ THEN BEGIN ShouldHaveGuessed
SAY @57
= @58
IF ~~ THEN DO ~SetGlobal("RE_GaelanContract","GLOBAL",2) GiveItemCreate("RE_Gael",Player1,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN PayForThis
SAY @59
= @57
= @58
IF ~~ THEN DO ~SetGlobal("RE_GaelanContract","GLOBAL",2) GiveItemCreate("RE_Gael",Player1,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN ProveIt
SAY @60
= @61
= @57
= @58
IF ~~ THEN DO ~SetGlobal("RE_GaelanContract","GLOBAL",2) GiveItemCreate("RE_Gael",Player1,0,0,0)~ EXIT
END



// MA 2 - No Contract

IF WEIGHT #-1
~Global("RE_GaelanSex","GLOBAL",1)
Global("RE_GaelanNoContract","GLOBAL",1)~ THEN BEGIN MorningAfterNoContract
SAY @49
IF ~~ THEN REPLY @62 GOTO Information
IF ~~ THEN REPLY @63 GOTO Information
IF ~~ THEN REPLY @64 GOTO Information
IF ~~ THEN REPLY @65 GOTO Information
END

IF ~~ THEN BEGIN Information
SAY @66
IF ~~ THEN REPLY @54 GOTO IGotPunked
IF ~~ THEN REPLY @67 GOTO IGotPunked
END

IF ~~ THEN BEGIN IGotPunked
SAY @68
= @57
= @58
IF ~~ THEN DO ~SetGlobal("RE_GaelanNoContract","GLOBAL",2)~ EXIT
END



// MA 3 - Turned On

IF WEIGHT #-1
~Global("RE_GaelanSex","GLOBAL",1)
Global("RE_GaelanTurnedOn","GLOBAL",1)~ THEN BEGIN MorningAfterTurnedOn
SAY @49
IF ~~ THEN REPLY @69 GOTO Favour
IF ~~ THEN REPLY @70 GOTO Favour
IF ~~ THEN REPLY @71 GOTO Favour
IF ~~ THEN REPLY @65 GOTO Favour
END

IF ~~ THEN BEGIN Favour
SAY @72
= @73
= @58
IF ~~ THEN DO ~SetGlobal("RE_GaelanTurnedOn","GLOBAL",2)~ EXIT
END

END



// Second part: 5000 - 15000

EXTEND_BOTTOM GAELAN 49
IF ~IsGabber(Player1)
Gender(Player1,FEMALE)
Global("RE_GaelanFlirt","GLOBAL",0)
Global("RE_GaelanSex","GLOBAL",0)
~ THEN REPLY @0 EXTERN GAELAN RE_GaelanFlingStart
END



APPEND GAELAN

IF ~~ THEN BEGIN RE_GaelanFlingStart2
SAY @1
IF ~~ THEN REPLY @2 EXTERN GAELAN 48
IF ~~ THEN REPLY @3 GOTO ApproachGaelan
END

END