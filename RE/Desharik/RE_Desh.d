// Desharik the Brute

EXTEND_BOTTOM PPDESH 5
+ ~IsGabber(Player1) Gender(Player1,FEMALE) OR(4) Race(Player1,ELF) Race(Player1,HALF_ELF) Race(Player1,HUMAN) Race(Player1,HALFLING) Global("RE_DesharikTalk","GLOBAL",0)~ + @0 DO ~SetGlobal("RE_DesharikTalk","GLOBAL",1)~ EXTERN PPDESH d1
END

CHAIN PPDESH d1
@1
END
++ @2 EXTERN PPDESH d2
++ @3 EXTERN PPDESH d2
++ @4 EXTERN PPDESH 10
++ @5 EXTERN PPDESH d1.f

CHAIN PPDESH d1.f
@6
END
COPY_TRANS PPDESH 5

CHAIN PPDESH d2
@7
END
IF ~NumInParty(1)~ DO ~SetGlobal("RE_DesharikMove","GLOBAL",1)~ EXTERN PPDESH d3
IF ~!NumInParty(1)~ DO ~SetGlobal("RE_DesharikMove","GLOBAL",1)~ EXTERN PPDESH d2a

CHAIN PPDESH d2a
@8
== PPDESH IF ~!NumInParty(2)~ THEN @9
== PPDESH IF ~NumInParty(2)~ THEN @10
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @11 
DO ~SetGlobal("RE_DesharikFlirtAnomen","GLOBAL",1)~
== PPDESH IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @12
== PPDESH @13
DO ~SetGlobal("RE_DesharikFlirt","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Desh1")~
EXIT

CHAIN IF WEIGHT #-1 ~Global("RE_DesharikMove","GLOBAL",3)~ THEN PPDESH d1.after
@14
DO ~SetGlobal("RE_DesharikMove","GLOBAL",10)~
END
COPY_TRANS PPDESH 5

CHAIN IF WEIGHT #-1 ~Global("RE_DesharikMove","GLOBAL",4)~ THEN PPDESH d3.after
@15
DO ~SetGlobal("RE_DesharikMove","GLOBAL",10)~
END
COPY_TRANS PPDESH 25

APPEND PPDESH

IF WEIGHT #-1 ~Global("RE_DesharikMove","GLOBAL",1)~ d3
SAY @16
++ @17 DO ~SetGlobal("RE_DesharikMove","GLOBAL",2)~ + d3.1
++ @18 DO ~SetGlobal("RE_DesharikMove","GLOBAL",2)~ + d3.1
++ @19 DO ~SetGlobal("RE_DesharikMove","GLOBAL",2)~ + d3.2
++ @20 DO ~SetGlobal("RE_DesharikMove","GLOBAL",2)~ + d3.1
END

IF ~~ d3.1
SAY @21
IF ~~ + d3.2
END

IF ~~ d3.2
SAY @22
= @23
++ @24 + d3.3
++ @25 + d3.6
++ @26 + d3.5
++ @27 + d3.4
END

IF ~~ d3.3
SAY @28
++ @29 + d3.Sex
++ @30 + d3.Sex
++ @31 + d3.6
END

IF ~~ d3.4
SAY @32
++ @33 + d3.Sex
++ @34 + d3.Sex
++ @31 + d3.6
END

IF ~~ d3.5
SAY @35
IF ~~ + d3.Sex
END

IF ~~ d3.6
SAY @36
IF ~NumInParty(1)~ + d3.6a
IF ~!NumInParty(1)~ + d3.6b
END

IF ~~ d3.6a
SAY @37
= @38
COPY_TRANS PPDESH 5
END

IF ~~ d3.6b
SAY @37
IF ~~ DO ~SetGlobal("RE_DesharikMove","GLOBAL",3) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Desh2")~ EXIT
END

IF ~~ d3.6c
SAY @39
IF ~~ DO ~SetGlobal("RE_DesharikMove","GLOBAL",3) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Desh2")~ EXIT
END

IF ~~ d3.Sex
SAY @40
= @41
++ @42 + d3.Sex2
++ @43 + d3.Sex2
++ @44 + d3.6
++ @45 + d3.6c
++ @46 + d3.Sex2
END

IF ~~ d3.Sex2
SAY @47
= @48
= @49
= @50
= @51
++ @52 + d3.Sex3
++ @53 + d3.6
++ @54 + d3.Sex3
++ @55 + d3.Sex3a
++ @56 + d3.6
++ @45 + d3.6c
++ @46 + d3.Sex3
END

IF ~~ d3.Sex3a
SAY @57
IF ~~ + d3.Sex4
END

IF ~~ d3.Sex3
SAY @58
= @59
IF ~~ + d3.Sex4
END

IF ~~ d3.Sex4
SAY @60
= @61
= @62
= @63
= @64
= @65
= @66
= @67
= @68
= @69
IF ~~ DO ~SetGlobal("RE_DesharikSex","GLOBAL",1)~ + d3.SexAfter
END

IF ~~ d3.SexAfter
SAY @70
IF ~NumInParty(1)~ + d3.SA1
IF ~!NumInParty(1)~ + d3.SA2
END

IF ~~ d3.SA1
SAY @71
COPY_TRANS PPDESH 25
END

IF ~~ d3.SA2
SAY @72
IF ~~ DO ~SetGlobal("RE_DesharikMove","GLOBAL",4)
ClearAllActions() StartCutSceneMode() StartCutScene("RE_Desh2")~ EXIT
END

END