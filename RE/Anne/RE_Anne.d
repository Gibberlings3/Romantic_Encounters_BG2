BEGIN RE_JON
BEGIN RE_ANNE
BEGIN RE_CARL

APPEND RE_JON

IF ~Global("RE_AnneMetJon","GLOBAL",0)~ j1
SAY @0
IF ~~ DO ~SetGlobal("RE_AnneMetJon","GLOBAL",1)~ + j1.0
END

IF ~~ j1.0
SAY @1 
++ @2 + j1.1
++ @3 + j1.2
++ @4 + j1.3
++ @5 + j1.4
END

IF ~~ j1.1
SAY @6
= @7
IF ~~ + j1.main
END

IF ~~ j1.2
SAY @8
= @9
IF ~~ + j1.main
END

IF ~~ j1.3
SAY @10
= @9
IF ~~ + j1.main
END

IF ~~ j1.4
SAY @11
IF ~~ DO ~EscapeArea()~ EXIT
END

IF ~~ j1.main
SAY @12
++ @13 + j1.5
++ @14 + j1.5
++ @15 + j1.6
++ @16 + j1.7
++ @17 +j1.8
END

IF ~~ j1.5
SAY @18
IF ~~ DO ~GiveItemCreate("RE_AnneN",Player1,1,0,0)~ EXIT
END

IF ~~ j1.6
SAY @19
IF ~~ DO ~GiveItemCreate("RE_AnneN",Player1,1,0,0)~ EXIT
END

IF ~~ j1.7
SAY @20
IF ~~ DO ~EscapeArea()~ EXIT
END

IF ~~ j1.8
SAY @21
IF ~~ DO ~EscapeArea()~ EXIT
END

IF ~!Global("RE_AnneSaved","GLOBAL",1)~ jwaiting1
SAY @22
IF ~~ EXIT
END

END

CHAIN IF ~Global("RE_AnneFinale","GLOBAL",0) Global("RE_AnneSaved","GLOBAL",1) !Global("RE_AnneTriedRape","GLOBAL",1)~ THEN RE_JON jfinal1
@23
= @24
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @25
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @26
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @27
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @28
== RE_JON @29
== RE_ANNE @30 
== RE_JON @31
DO ~SetGlobal("RE_AnneFinale","GLOBAL",1)
ReputationInc(1)
EscapeArea()
ActionOverride("RE_Anne",EscapeArea())~
EXIT

CHAIN IF ~Global("RE_AnneFinale","GLOBAL",0) Global("RE_AnneSaved","GLOBAL",1) Global("RE_AnneTriedRape","GLOBAL",1)~ THEN RE_JON jfinal2
@32
= @33
== RE_JON @34
DO ~SetGlobal("RE_AnneFinale","GLOBAL",2)
ReputationInc(-1)
Enemy()~
EXIT

CHAIN IF ~AreaCheck("AR0400") Global("RE_AnneFinale","GLOBAL",0)~ THEN RE_ANNE finale3
@35
= @36
== RE_ANNE @37
= @38
= @39
DO ~SetGlobal("RE_AnneFinale","GLOBAL",3)
ReputationInc(-2)
EscapeArea()~
EXIT

BEGIN RE_ANNEN

CHAIN IF ~Global("RE_AnneTeleport","GLOBAL",0)~ THEN RE_ANNEN map1
@40 
END
IF ~~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("RE_Anne1")~ EXIT

CHAIN IF ~GlobalGT("RE_AnneTeleport","GLOBAL",0) !AreaCheck("ARRE08") !AreaCheck("AR0400")~ THEN RE_ANNEN map2
@41 
EXIT

CHAIN IF ~GlobalGT("RE_AnneTeleport","GLOBAL",0) AreaCheck("ARRE08")~ THEN RE_ANNEN map3
@42 
END
++ @43 DO ~ClearAllActions() StartCutSceneMode() StartCutScene("RE_Anne7")~ EXIT
++ @44 EXIT

CHAIN IF ~GlobalGT("RE_AnneTeleport","GLOBAL",0) AreaCheck("AR0400")~ THEN RE_ANNEN map4
@45 
END
++ @43 DO ~ClearAllActions() StartCutSceneMode() StartCutScene("RE_Anne8")~ EXIT
++ @44 EXIT

CHAIN IF WEIGHT #-1 ~Global("RE_AnneTeleport","GLOBAL",1)~ THEN PLAYER1 p1
@46 
DO ~SetGlobal("RE_AnneTeleport","GLOBAL",2)~
== RE_CARL @47
== RE_CARL @48
END
+ ~PartyGoldGT(999)~ + @49 DO ~TakePartyGold(1000) DestroyGold(1000)~ EXTERN RE_CARL c1
+ ~PartyGoldGT(999)~ + @50 DO ~TakePartyGold(1000) DestroyGold(1000)~ EXTERN RE_CARL c2
++ @51 DO ~StartCutSceneMode() 
ActionOverride("RE_Carl",Enemy())
ActionOverride("RE_Carl1",Enemy())
ActionOverride("RE_Carl2",Enemy())
EndCutSceneMode()~ EXIT
++ @52 DO ~StartCutSceneMode() 
ActionOverride("RE_Carl",Enemy())
ActionOverride("RE_Carl1",Enemy())
ActionOverride("RE_Carl2",Enemy())
EndCutSceneMode()~ EXIT

CHAIN RE_CARL c1
@53
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("RE_Anne2")~ 
EXIT

CHAIN RE_CARL c2
@54
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("RE_Anne2")~ 
EXIT

APPEND RE_ANNE

IF ~Global("RE_AnneTeleport","GLOBAL",3)~ a
SAY @55 
IF ~~ DO ~SetGlobal("RE_AnneTeleport","GLOBAL",4)~ + a0
END

IF ~~ a0
SAY @56 
= @57
= @58
++ @59 + a1
++ @60 + a1
++ @61 + a2
END

IF ~~ a1
SAY @62 
= @63
++ @64 DO ~SetGlobal("RE_AnneFlirt","GLOBAL",1)~ + a1.1
++ @65 + a1.2
++ @66 DO ~SetGlobal("RE_AnneFlirt","GLOBAL",1)~ + a1.3
END 
   
IF ~~ a2
SAY @67
=  @68 
IF ~~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("RE_Anne4")~ EXIT
IF ~Dead("RE_Jon")~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("RE_Anne6")~ EXIT
END

IF ~~ a1.1
SAY @69
= @70
++ @71 + a1.4
++ @72 + a1.5
++ @73 + a1.6
END

IF ~~ a1.2
SAY @74
= @75
= @76
IF ~~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("RE_Anne4")~ EXIT
IF ~Dead("RE_Jon")~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("RE_Anne6")~ EXIT
END

IF ~~ a1.3
SAY @77 
++ @78 + a1.7
++ @79 + a1.8
++ @80 + a1.9
++ @81 + a1.10
+ ~Dead("RE_Jon")~ + @82 DO ~ClearAllActions() StartCutSceneMode() StartCutScene("RE_Anne6")~ EXIT
+ ~Dead("RE_Jon")~ + @83 DO ~ClearAllActions() StartCutSceneMode() StartCutScene("RE_Anne6")~ EXIT
++ @82 DO ~ClearAllActions() StartCutSceneMode() StartCutScene("RE_Anne4")~ EXIT
++ @83 DO ~ClearAllActions() StartCutSceneMode() StartCutScene("RE_Anne4")~ EXIT
END

IF ~~ a1.7
SAY @84
= @85
= @86
= @87
IF ~~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("RE_Anne4")~ EXIT
IF ~Dead("RE_Jon")~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("RE_Anne6")~ EXIT
END

IF ~~ a1.8
SAY @88
= @89
= @90
IF ~~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("RE_Anne4")~ EXIT
IF ~Dead("RE_Jon")~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("RE_Anne6")~ EXIT
END

IF ~~ a1.9
SAY @91
= @92
= @93
= @94
= @95
IF ~~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("RE_Anne4")~ EXIT
IF ~Dead("RE_Jon")~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("RE_Anne6")~ EXIT
END

IF ~~ a1.10
SAY @96
= @97
= @98
= @99
IF ~~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("RE_Anne4")~ EXIT
IF ~Dead("RE_Jon")~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("RE_Anne6")~ EXIT
END

IF ~~ a1.4
SAY @100
= @101
= @102
= @103
++ @104 + a1.4a
++ @105 + a1.4b
END

IF ~~ a1.5
SAY @106
= @107
IF ~~ + a1.doher
END

IF ~~ a1.doher
SAY @108
++ @109 + a1.doher1
++ @110 + a1.doher2
END

IF ~~ a1.6
SAY @111
= @112
IF ~~ + a1.doher
END

END

CHAIN RE_ANNE a1.4a
@113
== RE_ANNE @114
== RE_ANNE @115
END
IF ~~ DO ~SetGlobal("RE_AnneTriedRape","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Anne5")~ EXIT
IF ~Dead("RE_Jon")~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("RE_Anne6")~ EXIT
  
CHAIN RE_ANNE a1.4b
@113
== RE_ANNE @116
== RE_ANNE @117
== RE_ANNE @118
END
IF ~~ DO ~SetGlobal("RE_AnneTriedRape","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Anne5")~ EXIT
IF ~Dead("RE_Jon")~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("RE_Anne6")~ EXIT

CHAIN RE_ANNE a1.doher1
@119
== RE_ANNE @120
== RE_ANNE @121
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @122
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @123
DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)~
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @124
DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)~
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @125
== RE_ANNE @126
END
IF ~~ DO ~SetGlobal("RE_AnneTriedRape","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Anne5")~ EXIT
IF ~Dead("RE_Jon")~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("RE_Anne6")~ EXIT

CHAIN RE_ANNE a1.doher2
@127
== RE_ANNE @128
== RE_ANNE @129
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @122
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @123
DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)~
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @124
DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3)~
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @125
== RE_ANNE @130
END
IF ~~ DO ~SetGlobal("RE_AnneTriedRape","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Anne5")~ EXIT
IF ~Dead("RE_Jon")~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("RE_Anne6")~ EXIT