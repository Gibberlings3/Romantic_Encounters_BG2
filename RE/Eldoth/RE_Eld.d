BEGIN RE_ELD

// Not Player1

IF ~!IsGabber(Player1)~ e0
SAY @0 
IF ~~ EXIT
END

// 1.

CHAIN IF ~Global("RE_EldothTalk","GLOBAL",0)~ THEN RE_ELD e1
@1 
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @2
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @3
== RE_ELD IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @4
== IMOEN2J IF ~!Global("RE_EldothExists","GLOBAL",2) InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @5
== RE_ELD IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @6
== RE_ELD IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @7
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @8
== RE_ELD IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @9
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @10
== RE_ELD IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @11
= @12
END
++ @13 DO ~SetGlobal("RE_EldothTalk","GLOBAL",1)~ EXTERN RE_ELD e1.1
++ @14 DO ~SetGlobal("RE_EldothTalk","GLOBAL",1)~ EXTERN RE_ELD e1.2
++ @15 DO ~SetGlobal("RE_EldothTalk","GLOBAL",1)~ EXTERN RE_ELD e1.3
++ @16 DO ~SetGlobal("RE_EldothTalk","GLOBAL",1)~ EXTERN RE_ELD e1.0

APPEND RE_ELD

IF ~~ e1.0
SAY @17
IF ~~ DO ~EscapeArea()~ EXIT
END

IF ~~ e1.1
SAY @18
= @19
++ @20 + e1.4
++ @21 + e1.5
+ ~!Global("RE_EldothExists","GLOBAL",2)~ + @22 + e1.6
++ @23 + e1.7
END

IF ~~ e1.2
SAY @24
IF ~~ + e1.1
END

IF ~~ e1.3
SAY @25
IF ~~ + e1.1
END

IF ~~ e1.4
SAY @26
IF ~~ + e1.8
END

IF ~~ e1.5
SAY @27
IF ~~ + e1.8
END

IF ~~ e1.6
SAY @28
= @29
IF ~~ + e1.8
END

IF ~~ e1.7
SAY @30
IF ~~ + e1.8
END

IF ~~ e1.8
SAY @31
+ ~Gender(Player1,FEMALE) OR(4) Race(Player1,HUMAN) Race(Player1,HALF_ELF) Race(Player1,ELF) Race(Player1,HALFLING)~ + @32 + e1.9
+ ~Gender(Player1,FEMALE) OR(4) Race(Player1,HUMAN) Race(Player1,HALF_ELF) Race(Player1,ELF) Race(Player1,HALFLING)~ + @33 + e1.10
+ ~OR(4) Gender(Player1,MALE) Race(Player1,HALFORC) Race(Player1,DWARF) Race(Player1,GNOME)~ + @32 + e1.11
+ ~OR(4) Gender(Player1,MALE) Race(Player1,HALFORC) Race(Player1,DWARF) Race(Player1,GNOME)~ + @33 + e1.12
++ @34 + e1.13
++ @35 + e1.14
++ @36 + e1.15
END

IF ~~ e1.9
SAY @37
= @38
++ @39 + e1.16
++ @40 + e1.17
++ @41 + e1.18
END

IF ~~ e1.10
SAY @42
= @43
++ @39 + e1.16
++ @40 + e1.17
++ @41 + e1.18
END

IF ~~ e1.11
SAY @44
= @45
IF ~~ + e1.15
END

IF ~~ e1.12
SAY @46
IF ~~ + e1.15
END

IF ~~ e1.13
SAY @47
+ ~Gender(Player1,FEMALE) OR(4) Race(Player1,HUMAN) Race(Player1,HALF_ELF) Race(Player1,ELF) Race(Player1,HALFLING)~ + @48 + e1.9
+ ~Gender(Player1,FEMALE) OR(4) Race(Player1,HUMAN) Race(Player1,HALF_ELF) Race(Player1,ELF) Race(Player1,HALFLING)~ + @49 + e1.10
+ ~OR(4) Gender(Player1,MALE) Race(Player1,HALFORC) Race(Player1,DWARF) Race(Player1,GNOME)~ + @48 + e1.11
+ ~OR(4) Gender(Player1,MALE) Race(Player1,HALFORC) Race(Player1,DWARF) Race(Player1,GNOME)~ + @49 + e1.12
++ @50 + e1.15
++ @51 + e1.15
END

IF ~~ e1.14
SAY @52
+ ~Gender(Player1,FEMALE) OR(4) Race(Player1,HUMAN) Race(Player1,HALF_ELF) Race(Player1,ELF) Race(Player1,HALFLING)~ + @53 + e1.10
++ @54 + e1.13
++ @55 + e1.15
++ @56 + e1.15
END

IF ~~ e1.15
SAY @57
IF ~~ DO ~EscapeArea()~ EXIT
END

IF ~~ e1.16
SAY @58
IF ~~ DO ~TakePartyGold(10) SetGlobal("RE_EldothTalk","GLOBAL",2)
SetGlobal("RE_EldothFlirt","GLOBAL",1)
ClearAllActions() StartCutSceneMode() StartCutScene("RE_Eld1")~ EXIT
END

IF ~~ e1.17
SAY @59
IF ~~ DO ~TakePartyGold(10) SetGlobal("RE_EldothTalk","GLOBAL",2) SetGlobal("RE_EldothFlirt","GLOBAL",1) 
ClearAllActions() StartCutSceneMode() StartCutScene("RE_Eld1")~ EXIT
END

IF ~~ e1.18
SAY @60
IF ~~ DO ~EscapeArea()~ EXIT
END

// 2.

IF ~Global("RE_EldothTalk","GLOBAL",2)~ e2
SAY @61 
++ @62 DO ~SetGlobal("RE_EldothTalk","GLOBAL",3)~ + e2.2
++ @63 DO ~SetGlobal("RE_EldothTalk","GLOBAL",3)~ + e2.1
++ @64 DO ~SetGlobal("RE_EldothTalk","GLOBAL",3)~ + e2.2
++ @65 DO ~SetGlobal("RE_EldothTalk","GLOBAL",3)~ + e2.0
END

IF ~~ e2.0
SAY @66
IF ~~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("RE_Eld3")~ EXIT
END

IF ~~ e2.1
SAY @67
IF ~~ + e2.2
END

IF ~~ e2.2
SAY @68
= @69
++ @70 + e2.3
++ @71 + e2.4
++ @72 + e2.4
++ @73 + e2.0
END

IF ~~ e2.3
SAY @74
IF ~~ + e2.5
END

IF ~~ e2.4
SAY @75
IF ~~ + e2.5
END

IF ~~ e2.5
SAY @76
= @77
= @78
= @79
= @80
= @81
= @82
++ @83 + e2.6
++ @84 + e2.6
++ @85 + e2.7
++ @86 + e2.0
END 

IF ~~ e2.6
SAY @87
IF ~~ + e2.8
END

IF ~~ e2.7
SAY @88
IF ~~ + e2.8
END

IF ~~ e2.8
SAY @89
= @90
++ @91 + e2.9
++ @92 + e2.10
++ @93 + e2.0
END

IF ~~  e2.9
SAY @94
IF ~~ DO ~SetGlobal("RE_EldothTalk","GLOBAL",4) SetGlobal("RE_EldothSex","GLOBAL",1) 
ClearAllActions() StartCutSceneMode() StartCutScene("RE_Eld2")~ EXIT
END

IF ~~  e2.10
SAY @95
IF ~~ + e2.9
END

// 3.

IF ~Global("RE_EldothTalk","GLOBAL",4)~ e3
SAY @96 
= @97
++ @98 + e3.1
++ @99 + e3.4
++ @100 + e3.2
++ @101 + e3.3
END

IF ~~ e3.1
SAY @102
IF ~~ + e3.4
END

IF ~~ e3.2
SAY @103
IF ~~ + e3.4
END

IF ~~ e3.3
SAY @104
IF ~~ + e3.4
END

IF ~~ e3.4
SAY @105
= @106
+ ~PartyGoldGT(4999)~ + @107 + e3.5
++ @108 + e3.6
++ @109 + e3.6
++ @110 + e3.6
++ @111 + e3.6
END

IF ~~ e3.5
SAY @112
IF ~~ DO ~TakePartyGold(5000)~ + e3.9
END

IF ~~ e3.6
SAY @113
= @114
++ @115 + e3.7
++ @116 + e3.7
++ @117 + e3.7
+ ~PartyGoldGT(4999)~ + @118 + e3.5
+ ~PartyGoldGT(4999)~ + @119 + e3.5
END

IF ~~ e3.7
SAY @120
= @121
= @122
+ ~PartyGoldGT(4999)~ + @123 + e3.5
++ @124 + e3.5
++ @125 + e3.8
++ @126 + e3.8
END

IF ~~ e3.8
SAY @127
= @128
IF ~~ DO ~TakePartyGold(500)~ + e3.9
END

IF ~~ e3.9
SAY @129
IF ~~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("RE_Eld3")~ EXIT
END

END