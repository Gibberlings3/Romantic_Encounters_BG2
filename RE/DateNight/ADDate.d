// Date Night by SisterVigilante(and SisterV's first lines of .d coding, too!), coded by Kulyok

BEGIN ADKAIT
BEGIN ADWAITER
BEGIN ADHOLM 
BEGIN ADPATRON
BEGIN ADSTORMA
BEGIN ADSTORMB
BEGIN ADSTORMC
BEGIN ADSUNITE
BEGIN ADMUGGER
BEGIN ADMUGGF
BEGIN ADDYANA

IF ~Global("ADDyanaOffer","GLOBAL",1)~ dqin
SAY @0
IF ~~ DO ~SetGlobal("ADDyanaOffer","GLOBAL",2)~ + dqin.0
END

IF ~~ dqin.0
SAY @1
++ @2 + dqin.1
++ @3 + dqin.1
++ @4 + dqin.2
END

IF ~~ dqin.1
SAY @5
IF ~~ + dqin.3
END

IF ~~ dqin.2
SAY @6
IF ~~ + dqin.3
END

IF ~~ dqin.3
SAY @7
++ @8 EXIT
++ @9 + dqin.4
++ @10 + dqin.4
++ @11 + dqin.4
++ @12 +dqin.4
END

IF ~~ dqin.4
SAY @13
++ @14 + dqin.5
++ @15 +dqin.5
++ @16 +dqin.5
END

IF ~~ dqin.5
SAY @17
++ @16 + dqin.6
++ @18 +dqin.6
++ @19 + dqin.6
END

IF ~~ dqin.6
SAY @20
++ @21 + dqin.7
++ @22 + dqin.7
++ @16 + dqin.7
END

CHAIN ADDYANA dqin.7
@23
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @24
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @25
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) Global("JaheiraRomanceActive","GLOBAL",2)~ THEN @26
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) Global("AerieRomanceActive","GLOBAL",2)~ THEN @27
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenRomanceActive","GLOBAL",2)~ THEN @28
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("ViconiaRomanceActive","GLOBAL",2)~ THEN @29
END
IF ~~ EXTERN ADDYANA dqin.8

APPEND IMOEN2J

IF ~~ dqin.I
SAY @30
++ @31 DO ~SetGlobal("ADImoenDinner","GLOBAL",1) SetGlobal("ADDateSong","GLOBAL",2) SetGlobal("ADDateDinner","GLOBAL",1) SetGlobal("ADDateMugging","GLOBAL",1) SetGlobal("ADDyanaOffer","GLOBAL",3) TakePartyGold(800)~ EXTERN ADDYANA dqin.14
+ ~PartyGoldLT(800)~ + @32 EXIT
++ @33 EXIT
END

END

APPEND ADDYANA

IF ~Global("ADDyanaOffer","GLOBAL",2)~ dqin.8
SAY @34
+ ~PartyGoldGT(799) InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) Global("AerieRomanceActive","GLOBAL",2)~ + @35 DO ~SetGlobal("ADAerieDinner","GLOBAL",1)~ + dqin.9
+ ~PartyGoldGT(799) InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) Global("AerieRomanceActive","GLOBAL",2)~ + @36 DO ~SetGlobal("ADAerieDinner","GLOBAL",1)~ + dqin.9
+ ~PartyGoldGT(799) InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) Global("JaheiraRomanceActive","GLOBAL",2)~ + @35 DO ~SetGlobal("ADJaheiraDinner","GLOBAL",1)~ + dqin.9
+ ~PartyGoldGT(799) InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) Global("JaheiraRomanceActive","GLOBAL",2)~ + @36 DO ~SetGlobal("ADJaheiraDinner","GLOBAL",1)~ + dqin.9
+ ~PartyGoldGT(799) InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("ViconiaRomanceActive","GLOBAL",2)~ + @35 DO ~SetGlobal("ADViconiaDinner","GLOBAL",1)~ + dqin.9
+ ~PartyGoldGT(799) InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("ViconiaRomanceActive","GLOBAL",2)~ + @36 DO ~SetGlobal("ADViconiaDinner","GLOBAL",1)~ + dqin.9
+ ~PartyGoldGT(799) InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenRomanceActive","GLOBAL",2)~ + @35 DO ~SetGlobal("ADAnomenDinner","GLOBAL",1)~ + dqin.9
+ ~PartyGoldGT(799) InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenRomanceActive","GLOBAL",2)~ + @36 DO ~SetGlobal("ADAnomenDinner","GLOBAL",1)~ + dqin.9
++ @37 EXIT
+ ~PartyGoldGT(799) Gender(Player1,MALE) InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID) !Global("AerieRomanceActive","GLOBAL",2) !Global("AnomenRomanceActive","GLOBAL",2) !Global("JaheiraRomanceActive","GLOBAL",2) !Global("ViconiaRomanceActive","GLOBAL",2)~ + @38 EXTERN IMOEN2J dqin.I
+ ~PartyGoldLT(800)~ + @39 EXIT 
++ @40 EXIT
END

IF ~~ dqin.9
SAY @41
IF ~!Global("ADImoenDinner","GLOBAL",1)~ DO ~SetGlobal("ADDyanaOffer","GLOBAL",3) TakePartyGold(800)~ + dqin.10
IF ~Global("ADImoenDinner","GLOBAL",1)~ DO ~SetGlobal("ADDyanaOffer","GLOBAL",3) TakePartyGold(800)~ + dqin.14
END

IF ~~ dqin.10
SAY @42
= @43
++ @44 DO ~SetGlobal("ADDateDinner","GLOBAL",1) IncrementGlobal("ADDateJaheira","GLOBAL",1) IncrementGlobal("ADDateViconia","GLOBAL",-1)~ + dqin.11
++ @45 DO ~SetGlobal("ADDateDinner","GLOBAL",2) IncrementGlobal("ADDateAerie","GLOBAL",1)~ + dqin.11
+ ~PartyGoldGT(49)~ + @46 DO ~SetGlobal("ADDateDinner","GLOBAL",3) IncrementGlobal("ADDateJaheira","GLOBAL",-1) IncrementGlobal("ADDateViconia","GLOBAL",1) IncrementGlobal("ADDateAerie","GLOBAL",-1) TakePartyGold(50)~ + dqin.11
END

IF ~~ dqin.11
SAY @47
++ @48 DO ~SetGlobal("ADDateSong","GLOBAL",1) IncrementGlobal("ADDateAerie","GLOBAL",1) IncrementGlobal("ADDateAnomen","GLOBAL",-1) IncrementGlobal("ADDateJaheira","GLOBAL",-1) IncrementGlobal("ADDateViconia","GLOBAL",-1)~ + dqin.12
++ @49 DO ~SetGlobal("ADDateSong","GLOBAL",2) IncrementGlobal("ADDateAerie","GLOBAL",-1) IncrementGlobal("ADDateAnomen","GLOBAL",1) IncrementGlobal("ADDateJaheira","GLOBAL",1)~ + dqin.12
END

IF ~~ dqin.12
SAY @50
++ @51 + dqin.13
+ ~PartyGoldGT(19)~ + @52 DO ~SetGlobal("ADDateBook","GLOBAL",1) TakePartyGold(20)~ + dqin.13 
END

IF ~~ dqin.13
SAY @53
++ @54 DO ~IncrementGlobal("ADDateAerie","GLOBAL",1) SetGlobal("ADDateMugging","GLOBAL",1)~ + dqin.14
++ @55 + dqin.14
END

IF ~~ dqin.14
SAY @56
IF ~~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("ADDCut5")~ EXIT
IF ~Global("ADAerieDinner","GLOBAL",1)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("ADDCut1")~ EXIT
IF ~Global("ADJaheiraDinner","GLOBAL",1)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("ADDCut2")~ EXIT 
IF ~Global("ADViconiaDinner","GLOBAL",1)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("ADDCut3")~ EXIT
IF ~Global("ADAnomenDinner","GLOBAL",1)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("ADDCut4")~ EXIT
END

END

CHAIN IF ~Global("ADDyanaOffer","GLOBAL",3)~ THEN ADDYANA dani.0
@57
DO ~SetGlobal("ADDyanaOffer","GLOBAL",6)~
== ADKAIT @58
== AERIEJ IF ~Global("ADAerieDinner","GLOBAL",1)~ THEN @59
== VICONIJ IF ~Global("ADViconiaDinner","GLOBAL",1)~ THEN @60
== ANOMENJ IF ~Global("ADAnomenDinner","GLOBAL",1)~ THEN @61
== JAHEIRAJ IF ~Global("ADJaheiraDinner","GLOBAL",1)~ THEN @62
== IMOEN2J IF ~Global("ADImoenDinner","GLOBAL",1)~ THEN @63
== ADKAIT@64
== AERIEJ IF ~Global("ADAerieDinner","GLOBAL",1)~ THEN @65
== ADKAIT @66
== ADKAIT @67
== ADKAIT @68
== ADKAIT @69
== ADKAIT @70
END
++ @71 EXTERN ADKAIT dani.2
++ @72 EXTERN ADKAIT dani.2
++ @73 EXTERN ADKAIT dani.2
++ @74 EXTERN ADKAIT dani.2
++ @75 EXTERN ADKAIT dani.2

CHAIN ADKAIT dani.2
@76
== ADDYANA @77
END
IF ~Global("ADImoenDinner","GLOBAL",1)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("ADDCut10")~ EXIT
IF ~Global("ADAerieDinner","GLOBAL",1)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("ADDCut6")~ EXIT
IF ~Global("ADJaheiraDinner","GLOBAL",1)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("ADDCut7")~ EXIT 
IF ~Global("ADViconiaDinner","GLOBAL",1)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("ADDCut8")~ EXIT
IF ~Global("ADAnomenDinner","GLOBAL",1)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("ADDCut9")~ EXIT

// simple dinner

CHAIN IF ~Global("ADDateDinner","GLOBAL",1) Global("ADDateWaiter","GLOBAL",0)~ THEN ADWAITER danidin
@78
DO ~SetGlobal("ADDateWaiter","GLOBAL",1)~
== AERIEJ IF ~Global("ADAerieDinner","GLOBAL",1)~ THEN @79
== JAHEIRAJ IF ~Global("ADJaheiraDinner","GLOBAL",1)~ THEN @80
== VICONIJ IF ~Global("ADViconiaDinner","GLOBAL",1)~ THEN @81
== ADWAITER @82
== AERIEJ IF ~Global("ADAerieDinner","GLOBAL",1)~ THEN @83
== JAHEIRAJ IF ~Global("ADJaheiraDinner","GLOBAL",1)~ THEN @84
== ANOMENJ IF ~Global("ADAnomenDinner","GLOBAL",1)~ THEN @85
== VICONIJ IF ~Global("ADViconiaDinner","GLOBAL",1)~ THEN @86
== IMOEN2J IF ~Global("ADImoenDinner","GLOBAL",1)~ THEN @87
== ADWAITER @88
== AERIEJ IF ~Global("ADAerieDinner","GLOBAL",1)~ THEN @89
== ANOMENJ IF ~Global("ADAnomenDinner","GLOBAL",1)~ THEN @90
== JAHEIRAJ IF ~Global("ADJaheiraDinner","GLOBAL",1)~ THEN @91
== IMOEN2J IF ~Global("ADImoenDinner","GLOBAL",1)~ THEN @92
== VICONIJ IF ~Global("ADViconiaDinner","GLOBAL",1)~ THEN @93
END
IF ~~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("ADDCuta")~ EXIT
IF ~Global("ADViconiaDinner","GLOBAL",1)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("ADDCutb")~ EXIT

// fancy dinner

CHAIN IF ~Global("ADDateDinner","GLOBAL",2) Global("ADDateWaiter","GLOBAL",0)~ THEN ADWAITER danidin.3
@94
DO ~SetGlobal("ADDateWaiter","GLOBAL",1)~
== AERIEJ IF ~Global("ADAerieDinner","GLOBAL",1)~ THEN @95
== JAHEIRAJ IF ~Global("ADJaheiraDinner","GLOBAL",1)~ THEN @96
== VICONIJ IF ~Global("ADViconiaDinner","GLOBAL",1)~ THEN @81
== ADWAITER @97
== AERIEJ IF ~Global("ADAerieDinner","GLOBAL",1)~ THEN @98
== JAHEIRAJ IF ~Global("ADJaheiraDinner","GLOBAL",1)~ THEN @99
== VICONIJ IF ~Global("ADViconiaDinner","GLOBAL",1)~ THEN @86
== ANOMENJ IF ~Global("ADAnomenDinner","GLOBAL",1)~ THEN @100
== ADWAITER @101
== AERIEJ IF ~Global("ADAerieDinner","GLOBAL",1)~ THEN @102
== JAHEIRAJ IF ~Global("ADJaheiraDinner","GLOBAL",1)~ THEN @103
== ANOMENJ IF ~Global("ADAnomenDinner","GLOBAL",1)~ THEN @104
== VICONIJ IF ~Global("ADViconiaDinner","GLOBAL",1)~ THEN @93
END
IF ~~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("ADDCuta")~ EXIT
IF ~Global("ADViconiaDinner","GLOBAL",1)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("ADDCutb")~ EXIT

// unique dinner, no Viconia

CHAIN IF ~Global("ADDateWaiter","GLOBAL",0) Global("ADDateDinner","GLOBAL",3) !Global("ADViconiaDinner","GLOBAL",1)~ THEN ADWAITER danidin.5
@94
DO ~SetGlobal("ADDateWaiter","GLOBAL",1)~
== AERIEJ IF ~Global("ADAerieDinner","GLOBAL",1)~ THEN @95
== JAHEIRAJ IF ~Global("ADJaheiraDinner","GLOBAL",1)~ THEN @96
== ADWAITER @97
== AERIEJ IF ~Global("ADAerieDinner","GLOBAL",1)~ THEN @98
== JAHEIRAJ IF ~Global("ADJaheiraDinner","GLOBAL",1)~ THEN @99
== ANOMENJ IF ~Global("ADAnomenDinner","GLOBAL",1)~ THEN @100
== ADWAITER @105
== AERIEJ IF ~Global("ADAerieDinner","GLOBAL",1)~ THEN @106 
== JAHEIRAJ IF ~Global("ADJaheiraDinner","GLOBAL",1)~ THEN @107
== ANOMENJ IF ~Global("ADAnomenDinner","GLOBAL",1)~ THEN @108
END
IF ~~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("ADDCuta")~ EXIT

// unique dinner, Viconia 

CHAIN IF ~Global("ADDateWaiter","GLOBAL",0) Global("ADDateDinner","GLOBAL",3) Global("ADViconiaDinner","GLOBAL",1)~ THEN ADWAITER danidin.6
@109
DO ~SetGlobal("ADDateWaiter","GLOBAL",1)~
= @110
== VICONIJ @111
== ADWAITER @112
== VICONIJ @113
== ADWAITER @114
== VICONIJ @115
== VICONIJ @116
END
IF ~~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("ADDCuta")~ EXIT

CHAIN IF ~Global("ADDateWaiter","GLOBAL",1)~ THEN ADWAITER danidin.7
@117
DO ~SetGlobal("ADDateWaiter","GLOBAL",2)~
== ADHOLM @118
== ADWAITER @119
== ADHOLM @120
== ADPATRON @121
== AERIEJ IF ~Global("ADAerieDinner","GLOBAL",1)~ THEN @122
== ANOMENJ IF ~Global("ADAnomenDinner","GLOBAL",1)~ THEN @123
== JAHEIRAJ IF ~Global("ADJaheiraDinner","GLOBAL",1)~ THEN @124
== VICONIJ IF ~Global("ADViconiaDinner","GLOBAL",1)~ THEN @125
== IMOEN2J IF ~Global("ADImoenDinner","GLOBAL",1)~ THEN @126
END
IF ~Global("ADDateSong","GLOBAL",1)~ EXTERN ADHOLM danidin.8
IF ~!Global("ADDateSong","GLOBAL",1)~ EXTERN ADHOLM danidin.9

CHAIN ADHOLM danidin.8
@127
= @128
=@129
=@130
== JAHEIRAJ IF ~Global("ADJaheiraDinner","GLOBAL",1)~ THEN @131
== AERIEJ IF ~Global("ADAerieDinner","GLOBAL",1)~ THEN @132
== VICONIJ IF ~Global("ADViconiaDinner","GLOBAL",1)~ THEN @133
== ANOMENJ IF ~Global("ADAnomenDinner","GLOBAL",1)~ THEN @134
== ADHOLM @135
END
IF ~Global("ADImoenDinner","GLOBAL",1)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("ADDCut15")~ EXIT
IF ~Global("ADAerieDinner","GLOBAL",1)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("ADDCut11")~ EXIT
IF ~Global("ADJaheiraDinner","GLOBAL",1)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("ADDCut12")~ EXIT 
IF ~Global("ADViconiaDinner","GLOBAL",1)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("ADDCut13")~ EXIT
IF ~Global("ADAnomenDinner","GLOBAL",1)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("ADDCut14")~ EXIT

CHAIN ADHOLM danidin.9
@127
= @136
= @137
= @138
= @139
== JAHEIRAJ IF ~Global("ADJaheiraDinner","GLOBAL",1)~ THEN @140
== AERIEJ IF ~Global("ADAerieDinner","GLOBAL",1)~ THEN @141
== ANOMENJ IF ~Global("ADAnomenDinner","GLOBAL",1)~ THEN @142
== VICONIJ IF ~Global("ADViconiaDinner","GLOBAL",1)~ THEN @143
== IMOEN2J IF ~Global("ADImoenDinner","GLOBAL",1)~ THEN @144
== ADHOLM @135
END
IF ~Global("ADImoenDinner","GLOBAL",1)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("ADDCut15")~ EXIT
IF ~Global("ADAerieDinner","GLOBAL",1)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("ADDCut11")~ EXIT
IF ~Global("ADJaheiraDinner","GLOBAL",1)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("ADDCut12")~ EXIT 
IF ~Global("ADViconiaDinner","GLOBAL",1)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("ADDCut13")~ EXIT
IF ~Global("ADAnomenDinner","GLOBAL",1)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("ADDCut14")~ EXIT

// Anomen, fireworks

APPEND ANOMENJ

IF WEIGHT #-1 ~Global("ADDyanaOffer","GLOBAL",7)~ ibfano
SAY @145
++ @146 + ibfano.1
++ @147 + ibfano.2
++ @148 + ibfano.2
+ ~OR(5)
 Class(Player1,CLERIC)
 Class(Player1,FIGHTER_CLERIC)
 Class(Player1,CLERIC_MAGE)
 Class(Player1,CLERIC_THIEF)
 Class(Player1,FIGHTER_MAGE_CLERIC)
 Alignment(Player1,MASK_EVIL)~ + @149 + ibfano.3
END

IF ~~ibfano.1
SAY @150
IF ~~ + ibfano.4
END

IF ~~ ibfano.2
SAY @151
IF ~~ + ibfano.4
END

IF ~~ ibfano.3
SAY @152
IF ~~ + ibfano.4
END

IF ~~ ibfano.4
SAY @153
++ @154 + ibfano.5
+ ~CheckStatGT(Player1,11,CHR)~ + @155 DO ~IncrementGlobal("ADDateAnomen","GLOBAL",1)~ + ibfano.6
++ @156 + ibfano.7
+ ~Global("ADDateBook","GLOBAL",1)~ + @157 DO ~IncrementGlobal("ADDateAnomen","GLOBAL",1)~ + ibfano.6
++ @158 + ibfano.8
END

IF ~~ ibfano.5
SAY @159
IF ~~ + ibfano.9
END

IF ~~ ibfano.6
SAY @160
IF ~~ + ibfano.9
END

IF ~~ ibfano.7
SAY @161
IF ~~ + ibfano.9
END

IF ~~ ibfano.8
SAY @162
IF ~~ + ibfano.9
END

IF ~~ ibfano.9
SAY @163
IF ~~ DO ~SetGlobal("ADDyanaOffer","GLOBAL",8) ClearAllActions() StartCutSceneMode() StartCutScene("ADDCutc")~ EXIT
END

END

// Aerie, fireworks

APPEND AERIEJ 

IF WEIGHT #-1 ~Global("ADDyanaOffer","GLOBAL",7)~ ibfaer
SAY @164
++ @165 + ibfaer.1
++ @166 + ibfaer.1
++ @167 + ibfaer.1
+ ~OR(5)
 Class(Player1,CLERIC)
 Class(Player1,FIGHTER_CLERIC)
 Class(Player1,CLERIC_MAGE)
 Class(Player1,CLERIC_THIEF)
 Class(Player1,FIGHTER_MAGE_CLERIC)
 Alignment(Player1,MASK_EVIL)~ + @168 + ibfaer.1
END

IF ~~ ibfaer.1
SAY @169
++ @170 + ibfaer.2
+ ~CheckStatGT(Player1,10,CHR)~ + @171 DO ~IncrementGlobal("ADDateAerie","GLOBAL",1)~ + ibfaer.3
++ @172 DO ~IncrementGlobal("ADDateAerie","GLOBAL",-1)~ + ibfaer.4
+ ~Global("ADDateBook","GLOBAL",1)~ + @173 DO ~IncrementGlobal("ADDateAerie","GLOBAL",1)~ + ibfaer.2
++ @158 + ibfaer.5
END

IF ~~ ibfaer.2
SAY @174
IF ~~ + ibfaer.6
END

IF ~~ ibfaer.3
SAY @175
IF ~~ + ibfaer.6
END

IF ~~ ibfaer.4
SAY @176
IF ~~ + ibfaer.6
END

IF ~~ ibfaer.5
SAY @162
IF ~~ + ibfaer.6
END

IF ~~ ibfaer.6
SAY @177
IF ~~ DO ~SetGlobal("ADDyanaOffer","GLOBAL",8) ClearAllActions() StartCutSceneMode() StartCutScene("ADDCutc")~ EXIT
END

END

// Jaheira, fireworks

APPEND JAHEIRAJ

IF WEIGHT #-1 ~Global("ADDyanaOffer","GLOBAL",7)~ ibfjah
SAY @178
++ @179 + ibfjah.1
++ @180 + ibfjah.2
++ @181 + ibfjah.1
++ @182 + ibfjah.3
END

IF ~~ ibfjah.1
SAY @183
IF ~~ + ibfjah.4
END

IF ~~ ibfjah.2
SAY @184
IF ~~ + ibfjah.4
END

IF ~~ ibfjah.3
SAY @185
IF ~~ + ibfjah.4
END

IF ~~ ibfjah.4
SAY @186
++ @187 + ibfjah.5
++ @188 + ibfjah.5
+ ~CheckStatGT(Player1,13,CHR)~ + @189 DO ~IncrementGlobal("ADDateJaheira","GLOBAL",1)~ + ibfjah.6
+ ~Global("ADDateBook","GLOBAL",1)~ + @173 + ibfjah.7
++ @158 + ibfjah.8
END

IF ~~ ibfjah.5
SAY @190
IF ~~ + ibfjah.9 
END

IF ~~ ibfjah.6
SAY @191
IF ~~ + ibfjah.9
END

IF ~~ ibfjah.7
SAY @192
IF ~~ + ibfjah.9
END

IF ~~ ibfjah.8
SAY @162
IF ~~ + ibfjah.9
END

IF ~~ ibfjah.9
SAY @193
IF ~~ DO ~SetGlobal("ADDyanaOffer","GLOBAL",8) ClearAllActions() StartCutSceneMode() StartCutScene("ADDCutc")~ EXIT
END

END

// Viconia, fireworks

APPEND VICONIJ

IF WEIGHT #-1 ~Global("ADDyanaOffer","GLOBAL",7)~ ibfvic
SAY @194
++ @195 + ibfvic.1
++ @196 + ibfvic.1
++ @197 + ibfvic.2
+ ~OR(5)
 Class(Player1,CLERIC)
 Class(Player1,FIGHTER_CLERIC)
 Class(Player1,CLERIC_MAGE)
 Class(Player1,CLERIC_THIEF)
 Class(Player1,FIGHTER_MAGE_CLERIC)
 Alignment(Player1,MASK_EVIL)~ + @198 + ibfvic.3
END

IF ~~ ibfvic.1
SAY @199
IF ~~ + ibfvic.4
END

IF ~~ ibfvic.2
SAY @200
IF ~~ + ibfvic.4
END

IF ~~ ibfvic.3
SAY @201 
IF ~~ + ibfvic.4
END

IF ~~ ibfvic.4
SAY @202
++ @203 + ibfvic.5
+ ~CheckStatGT(Player1,12,CHR)~ + @204 DO ~IncrementGlobal("ADDateViconia","GLOBAL",1)~ + ibfvic.6
++ @205 DO ~IncrementGlobal("ADDateViconia","GLOBAL",-1)~ + ibfvic.5
+ ~Global("ADDateBook","GLOBAL",1)~ + @173 DO ~IncrementGlobal("ADDateViconia","GLOBAL",-1)~ + ibfvic.7
++ @158 + ibfvic.8
END

IF ~~ ibfvic.5
SAY @206
IF ~~ + ibfvic.9
END

IF ~~ ibfvic.6
SAY @207
IF ~~ + ibfvic.9
END

IF ~~ ibfvic.7
SAY @208
IF ~~ + ibfvic.9
END

IF ~~ ibfvic.8
SAY @162
IF ~~ + ibfvic.9
END

IF ~~ ibfvic.9
SAY @209
= @210
IF ~~ DO ~SetGlobal("ADDyanaOffer","GLOBAL",8) ClearAllActions() StartCutSceneMode() StartCutScene("ADDCutc")~ EXIT 
END

END

// Imoen, fireworks

APPEND IMOEN2J

IF WEIGHT #-1 ~Global("ADDyanaOffer","GLOBAL",7)~ ibfimo
SAY @211
++ @212 + ibfimo.1
++ @213 + ibfimo.2
++ @214 + ibfimo.3
+ ~OR(5)
 Class(Player1,CLERIC)
 Class(Player1,FIGHTER_CLERIC)
 Class(Player1,CLERIC_MAGE)
 Class(Player1,CLERIC_THIEF)
 Class(Player1,FIGHTER_MAGE_CLERIC)
 Alignment(Player1,MASK_EVIL)~ + @215 + ibfimo.4
END

IF ~~ ibfimo.1
SAY @216
IF ~~ + ibfimo.5
END

IF ~~ ibfimo.2
SAY @217
IF ~~ + ibfimo.5
END

IF ~~ ibfimo.3
SAY @218
IF ~~ + ibfimo.5
END

IF ~~ ibfimo.4
SAY @219
IF ~~ + ibfimo.6
END

IF ~~ ibfimo.5
SAY @220
++ @221 + ibfimo.6
++ @222 + ibfimo.7
++ @223 + ibfimo.8
++ @158 + ibfimo.8
END

IF ~~ ibfimo.6
SAY @224
IF ~~ + ibfimo.9
END

IF ~~ ibfimo.7
SAY @225
IF ~~ + ibfimo.9
END

IF ~~ ibfimo.8
SAY @226
IF ~~ + ibfimo.9
END

IF ~~ ibfimo.9
SAY @227
= @228
IF ~~ DO ~SetGlobal("ADDyanaOffer","GLOBAL",8) ClearAllActions() StartCutSceneMode() StartCutScene("ADDCutc")~ EXIT 
END

END

CHAIN IF ~Global("ADDyanaOffer","GLOBAL",8)~ THEN ADSTORMA a1
@229
DO ~SetGlobal("ADDyanaOffer","GLOBAL",9)~
== ADSTORMB @230
== ADSTORMC @231
== ADSUNITE @232
END
IF ~Global("ADImoenDinner","GLOBAL",1)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("ADDCut20")~ EXIT
IF ~Global("ADAerieDinner","GLOBAL",1) Global("ADDateMugging","GLOBAL",1)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("ADDCut16")~ EXIT
IF ~Global("ADJaheiraDinner","GLOBAL",1)  Global("ADDateMugging","GLOBAL",1)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("ADDCut17")~ EXIT 
IF ~Global("ADViconiaDinner","GLOBAL",1)  Global("ADDateMugging","GLOBAL",1)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("ADDCut18")~ EXIT
IF ~Global("ADAnomenDinner","GLOBAL",1)  Global("ADDateMugging","GLOBAL",1)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("ADDCut19")~ EXIT
IF ~Global("ADAerieDinner","GLOBAL",1) !Global("ADDateMugging","GLOBAL",1)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("ADDCut21")~ EXIT
IF ~Global("ADJaheiraDinner","GLOBAL",1)  !Global("ADDateMugging","GLOBAL",1)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("ADDCut22")~ EXIT 
IF ~Global("ADViconiaDinner","GLOBAL",1)  !Global("ADDateMugging","GLOBAL",1)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("ADDCut23")~ EXIT
IF ~Global("ADAnomenDinner","GLOBAL",1)  !Global("ADDateMugging","GLOBAL",1)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("ADDCut24")~ EXIT

// Cutscenes 26-30 lead to the finale and set DyanaOffer to 20.

CHAIN IF WEIGHT #-1 ~Global("ADDyanaOffer","GLOBAL",9)~ THEN PLAYER1 p11
@233
DO ~SetGlobal("ADDyanaOffer","GLOBAL",11)~
== AERIEJ IF ~Global("ADAerieDinner","GLOBAL",1)~ THEN @234
== JAHEIRAJ IF ~Global("ADJaheiraDinner","GLOBAL",1)~ THEN @235
== VICONIJ IF ~Global("ADViconiaDinner","GLOBAL",1)~ THEN @236
== IMOEN2J IF ~Global("ADImoenDinner","GLOBAL",1)~ THEN @237
== ADMUGGER @238
END
++ @239 EXTERN ADMUGGER danimug.3
++ @240 EXTERN ADMUGGER danimug.3
++ @241 EXTERN ADMUGGER danimug.4
+ ~CheckStatGT(Player1,13,INT)~ + @242 EXTERN ADMUGGER danimug.5

CHAIN ADMUGGER danimug.3
@243
END
IF ~~ EXTERN ADMUGGER danimug.6
IF ~Global("ADViconiaDinner","GLOBAL",1)~ EXTERN VICONIJ danimug.7

CHAIN ADMUGGER danimug.4
@244
END
IF ~~ EXTERN ADMUGGER danimug.6
IF ~Global("ADViconiaDinner","GLOBAL",1)~ EXTERN VICONIJ danimug.7

CHAIN ADMUGGER danimug.5
@245
END
IF ~~ EXTERN ADMUGGER danimug.6
IF ~Global("ADViconiaDinner","GLOBAL",1)~ EXTERN VICONIJ danimug.7

CHAIN VICONIJ danimug.7
@246
= @247
= @248
== ADMUGGER @249
== VICONIJ @250
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("ADDCut23")~
EXIT

APPEND ADMugger

IF ~~ danimug.6
SAY @251
++ @252 + d.5
++ @253 + d.6
+ ~CheckStatGT(Player1,14,STR)~ + @254 + d.7
++ @255 + d.8
END

IF ~~ d.5
SAY @256
IF ~~ + danimug.end
END

IF ~~ d.6
SAY @257
IF ~~ + danimug.end
END

IF ~~ d.7
SAY @258
IF ~~ + danimug.end
END

IF ~~ d.8
SAY @259
IF ~~ + danimug.end
END

END

CHAIN ADMUGGER danimug.end
@260
END
+ ~Global("ADAerieDinner","GLOBAL",1)~ + @261 EXTERN AERIEJ amug1
+ ~Global("ADAerieDinner","GLOBAL",1)~ + @262 EXTERN AERIEJ amug1
+ ~Global("ADAerieDinner","GLOBAL",1)~ + @263 EXTERN AERIEJ amug1
+ ~Global("ADAerieDinner","GLOBAL",1)~ + @264 EXTERN AERIEJ amug2
+ ~Global("ADJaheiraDinner","GLOBAL",1)~ + @265 EXTERN JAHEIRAJ jmug
+ ~Global("ADJaheiraDinner","GLOBAL",1)~ + @262 EXTERN JAHEIRAJ jmug
+ ~Global("ADJaheiraDinner","GLOBAL",1)~ + @263 EXTERN JAHEIRAJ jmug
+ ~Global("ADJaheiraDinner","GLOBAL",1)~ + @264 EXTERN JAHEIRAJ jmug
+ ~Global("ADImoenDinner","GLOBAL",1)~ + @266 EXTERN IMOEN2J imug
+ ~Global("ADImoenDinner","GLOBAL",1)~ + @267 EXTERN IMOEN2J imug
+ ~Global("ADImoenDinner","GLOBAL",1)~ + @263 EXTERN IMOEN2J imug
+ ~Global("ADImoenDinner","GLOBAL",1)~ + @264 EXTERN IMOEN2J imug

CHAIN AERIEJ amug1
@268
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("ADDCut21")~
EXIT

CHAIN AERIEJ amug2
@269
END
IF ~~ EXTERN AERIEJ amug1

CHAIN JAHEIRAJ jmug
@270
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("ADDCut22")~
EXIT

CHAIN IMOEN2J imug
@271
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("ADDCut25")~
EXIT

CHAIN IF ~Global("ADDyanaOffer","GLOBAL",10)~ THEN PLAYER1 p12
@233
DO ~SetGlobal("ADDyanaOffer","GLOBAL",11)~
== ANOMENJ @272
== ADMUGGF @273
END
++ @239 EXTERN ADMUGGF danimug.11
++ @274 EXTERN ADMUGGF danimug.11
++ @275 EXTERN ADMUGGF danimug.12
+ ~CheckStatGT(Player1,13,INT)~ + @276 EXTERN ADMUGGF danimug.13

CHAIN ADMUGGF danimug.11
@243
END
IF ~~ EXTERN ANOMENJ an1

CHAIN ADMUGGF danimug.12
@277
END
IF ~~ EXTERN ANOMENJ an1

CHAIN ADMUGGF danimug.13
@278
END
IF ~~ EXTERN ANOMENJ an1

CHAIN ANOMENJ an1
@279
END
++ @280 DO ~IncrementGlobal("ADDateAnomen","GLOBAL",1)~ EXTERN ADMUGGF danimug.14
++ @281 DO ~IncrementGlobal("ADDateAnomen","GLOBAL",1)~ EXTERN ADMUGGF danimug.14
++ @282 DO ~IncrementGlobal("ADDateAnomen","GLOBAL",-1)~ EXTERN ANOMENJ danimug.15
++ @283 DO ~IncrementGlobal("ADDateAnomen","GLOBAL",-1)~ EXTERN ANOMENJ danimug.15

CHAIN ADMUGGF danimug.14
@284
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("ADDCut24")~
EXIT

CHAIN ANOMENJ danimug.15
@285
END
++ @286 EXTERN ANOMENJ d16

CHAIN ANOMENJ d16
@287
END
++ @288 EXTERN ANOMENJ d17

CHAIN ANOMENJ d17
@289
END
++  @290 EXTERN ADMUGGF d18

CHAIN ADMUGGF d18
@291
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("ADDCut24")~
EXIT

// The Finale

CHAIN IF WEIGHT #-1 ~Global("ADDyanaOffer","GLOBAL",20) GlobalLT("ADDateAnomen","GLOBAL",1)~ THEN ANOMENJ fin1
@292
DO ~SetGlobal("ADDyanaOffer","GLOBAL",100)~
EXIT

CHAIN IF WEIGHT #-1 ~Global("ADDyanaOffer","GLOBAL",20) OR(2) Global("ADDateAnomen","GLOBAL",1) Global("ADDateAnomen","GLOBAL",2)~ THEN ANOMENJ fin2
@293
DO ~AddExperienceParty(8000) SetGlobal("ADDyanaOffer","GLOBAL",100)~
EXIT

CHAIN IF WEIGHT #-1 ~Global("ADDyanaOffer","GLOBAL",20) GlobalGT("ADDateAnomen","GLOBAL",2)~ THEN ANOMENJ fin3
@294
DO ~AddExperienceParty(10500) SetGlobal("ADDyanaOffer","GLOBAL",100)~
EXIT

CHAIN IF WEIGHT #-1 ~Global("ADDyanaOffer","GLOBAL",20) GlobalLT("ADDateAerie","GLOBAL",1)~ THEN AERIEJ fin1
@295
DO ~SetGlobal("ADDyanaOffer","GLOBAL",100)~
EXIT

CHAIN IF WEIGHT #-1 ~Global("ADDyanaOffer","GLOBAL",20) OR(2) Global("ADDateAerie","GLOBAL",1) Global("ADDateAerie","GLOBAL",2)~ THEN AERIEJ fin2
@296
DO ~AddExperienceParty(8000) SetGlobal("ADDyanaOffer","GLOBAL",100)~
EXIT

CHAIN IF WEIGHT #-1 ~Global("ADDyanaOffer","GLOBAL",20) GlobalGT("ADDateAerie","GLOBAL",2)~ THEN AERIEJ fin3
@297
DO ~AddExperienceParty(10500) SetGlobal("ADDyanaOffer","GLOBAL",100)~
EXIT

CHAIN IF WEIGHT #-1 ~Global("ADDyanaOffer","GLOBAL",20) GlobalLT("ADDateViconia","GLOBAL",1)~ THEN VICONIJ fin1
@298
DO ~SetGlobal("ADDyanaOffer","GLOBAL",100)~
EXIT

CHAIN IF WEIGHT #-1 ~Global("ADDyanaOffer","GLOBAL",20) GlobalGT("ADDateViconia","GLOBAL",0)~ THEN VICONIJ fin2
 @299
DO ~AddExperienceParty(8000) SetGlobal("ADDyanaOffer","GLOBAL",100)~
EXIT

CHAIN IF WEIGHT #-1 ~Global("ADDyanaOffer","GLOBAL",20) GlobalLT("ADDateJaheira","GLOBAL",1)~ THEN JAHEIRAJ fin1
@300
DO ~SetGlobal("ADDyanaOffer","GLOBAL",100)~
EXIT

CHAIN IF WEIGHT #-1 ~Global("ADDyanaOffer","GLOBAL",20) OR(2) Global("ADDateJaheira","GLOBAL",1) Global("ADDateJaheira","GLOBAL",2)~ THEN JAHEIRAJ fin2
 @301
DO ~AddExperienceParty(8000) SetGlobal("ADDyanaOffer","GLOBAL",100)~
EXIT

CHAIN IF WEIGHT #-1 ~Global("ADDyanaOffer","GLOBAL",20) GlobalGT("ADDateJaheira","GLOBAL",2)~ THEN JAHEIRAJ fin3
@302
= @303
DO ~AddExperienceParty(10500) SetGlobal("ADDyanaOffer","GLOBAL",100)~
EXIT

CHAIN IF WEIGHT #-1 ~Global("ADDyanaOffer","GLOBAL",20)~ THEN IMOEN2J fin
 @304
= @305
DO ~SetGlobal("ADDyanaOffer","GLOBAL",100)~
EXIT

