/* The ChamberMaid and the (K)Night(ess) */
/* a more "enlightened" approach to Droit du Seigneur in the Forgotten Realms */
/* Playable by male and female <CHARNAMES>. Warning: very adult content, and perhaps an offscreen pregnancy. */ 
/* Fantasy, folks - only try this at home if you regularly slay dragons, consort with elves, and carry a longsword to work. */

/* Kulyok: adding replies for Chanelle's marriage */

EXTEND_BOTTOM KPDOMO01 88
++ @0 EXTERN KPMAID01 RE_ChanChoice1
++ @1 EXTERN KPMAID01 RE_ChanChoice1
++ @2 EXTERN KPMAID01 RE_ChanChoice2
END

APPEND KPMAID01

IF ~~ RE_ChanChoice1
SAY @3
IF ~~ + RE_ChanChoice2
END

IF ~~ RE_ChanChoice2
SAY @4
= @5
IF ~~ DO ~AddExperienceParty(15500)~ EXTERN KPRANG02 7
END

END

/* Ooops... or not. Extension of Stronghold Quest */
I_C_T ~KPDOMO01~ 82 ChanelleFallout
== ~KPDOMO01~ IF ~Global("RE_ChanelleFlirt","GLOBAL",1)~ THEN @6
= @7
= @8
== ~KPDOMO01~ IF ~Gender(Player1,MALE) Global("RE_ChanelleSex","GLOBAL",1)~ THEN @9
END

/* Chanelle Beginning and Exiting */
I_C_T ~KPMAID01~ 0 C-ChanelleDiscreet0
== ~KPMAID01~ IF ~Global("RE_ChanelleSex","GLOBAL",1) Global("C-ChanelleAfterTalk","GLOBAL",0)~ THEN @10 
DO ~SetGlobal("C-ChanelleAfterTalk","GLOBAL",1) SetGlobal("C-ChanelleDiscreet0","GLOBAL",0)~
END

I_C_T ~KPMAID01~ 0 C-ChanelleDiscreet0again
== ~KPMAID01~ IF ~Global("RE_ChanelleSex","GLOBAL",1) Global("C-ChanelleAfterTalk","GLOBAL",1)~ THEN @11 
DO ~SetGlobal("C-ChanelleAfterTalk","GLOBAL",0) SetGlobal("C-ChanelleDiscreet0again","GLOBAL",0)~
END

I_C_T ~KPMAID01~ 1 C-ChanelleDiscreet1
== ~KPMAID01~ IF ~Global("RE_ChanelleSex","GLOBAL",1) Global("C-ChanelleAfterTalk","GLOBAL",0)~ THEN @10
DO ~SetGlobal("C-ChanelleAfterTalk","GLOBAL",1) SetGlobal("C-ChanelleDiscreet1","GLOBAL",0)~
END

I_C_T ~KPMAID01~ 1 C-ChanelleDiscreet1again
== ~KPMAID01~ IF ~Global("RE_ChanelleSex","GLOBAL",1) Global("C-ChanelleAfterTalk","GLOBAL",1)~ THEN @11 
DO ~SetGlobal("C-ChanelleAfterTalk","GLOBAL",0) SetGlobal("C-ChanelleDiscreet1again","GLOBAL",0)~
END

I_C_T ~KPMAID01~ 2 C-ChanelleDiscreet2
== ~KPMAID01~ IF ~Global("RE_ChanelleSex","GLOBAL",1)  Global("C-ChanelleAfterTalk","GLOBAL",0)~ THEN @10
DO ~SetGlobal("C-ChanelleAfterTalk","GLOBAL",1) SetGlobal("C-ChanelleDiscreet2","GLOBAL",0)~
END

I_C_T ~KPMAID01~ 2 C-ChanelleDiscreet2again
== ~KPMAID01~ IF ~Global("RE_ChanelleSex","GLOBAL",1) Global("C-ChanelleAfterTalk","GLOBAL",1)~ THEN @11 
DO ~SetGlobal("C-ChanelleAfterTalk","GLOBAL",0) SetGlobal("C-ChanelleDiscreet2again","GLOBAL",0)~
END

EXTEND_BOTTOM ~KPMAID01~ 0
IF ~Global("C-ChanelleFlirt","GLOBAL",0)~ THEN EXTERN ~KPMAID01~ BeginChanelleBathOne
END

EXTEND_BOTTOM ~KPMAID01~ 1
IF ~Global("C-ChanelleFlirt","GLOBAL",0)~ THEN EXTERN ~KPMAID01~ BeginChanelleBathOne
END

EXTEND_BOTTOM ~KPMAID01~ 2
IF ~Global("C-ChanelleFlirt","GLOBAL",0)~ THEN EXTERN ~KPMAID01~ BeginChanelleBathOne
END

/* PC Ecounter, Chanelle the Confidante */

CHAIN ~KPMAID01~ BeginChanelleBathOne
@12 
== ~KPMAID01~ IF ~OR(5) See(Player2) See(Player3) See(Player4) See(Player5) See(Player6)~ THEN @13
== ~KPMAID01~ @14
= @15
END
++ @16 DO ~SetGlobal("RE_ChanelleFlirt","GLOBAL",1) SetGlobal("C-ChanelleFlirt","GLOBAL",1)~ EXTERN ~KPMAID01~ ChanelleBathOneOne
++ @17 DO ~SetGlobal("RE_ChanelleFlirt","GLOBAL",1) SetGlobal("C-ChanelleFlirt","GLOBAL",1)~ EXTERN ~KPMAID01~ ChanelleBathOneTwo
++ @18 DO ~SetGlobal("RE_ChanelleFlirt","GLOBAL",1) SetGlobal("C-ChanelleFlirt","GLOBAL",1)~ EXTERN ~KPMAID01~ ChanelleBathOneThree
++ @19 DO ~SetGlobal("RE_ChanelleFlirt","GLOBAL",1) SetGlobal("C-ChanelleFlirt","GLOBAL",1)~ EXTERN ~KPMAID01~ ChanelleBathOneFour
+ ~Gender(Player1,MALE)~ + @20 DO ~SetGlobal("RE_ChanelleFlirt","GLOBAL",1) SetGlobal("C-ChanelleFlirt","GLOBAL",1)~ EXTERN ~KPMAID01~ ChanelleBathOneFive
+ ~Gender(Player1,FEMALE)~ + @21 DO ~SetGlobal("RE_ChanelleFlirt","GLOBAL",1) SetGlobal("C-ChanelleFlirt","GLOBAL",1)~ EXTERN ~KPMAID01~ ChanelleBathOneFive
++ @22 DO ~SetGlobal("C-ChanelleFlirt","GLOBAL",1)~ EXTERN ~KPMAID01~ ChanelleNotMyType

CHAIN ~KPMAID01~ ChanelleNotMyType
@23
= @24
= @25
= @26
= @27
END
++ @28 EXTERN ~KPMAID01~ ChanelleNotMyTypeGuard
+ ~Gender(Player1,FEMALE)~ + @29 EXTERN ~KPMAID01~ ChanelleNotMyTypeNoGuard
+ ~Gender(Player1,MALE)~ + @30 EXTERN ~KPMAID01~ ChanelleNotMyTypeNoGuard
+ ~Gender(Player1,MALE)~ + @31 EXTERN ~KPMAID01~ ChanelleNotMyTypeNoGuard
++ @32 EXTERN ~KPMAID01~ ChanelleNotMyTypeNoGuard
++ @33 DO ~SetGlobal("C-ChanelleFlirt","GLOBAL",2)~ EXIT

CHAIN ~KPMAID01~ ChanelleNotMyTypeGuard
@34
= @35
= @36
= @37
= @38
END
IF ~~ THEN DO ~SetGlobal("C-ChanelleFlirt","GLOBAL",2)~ EXIT

CHAIN ~KPMAID01~ ChanelleNotMyTypeNoGuard
@34
= @39
= @36
= @37
= @38
END
IF ~~ THEN DO ~SetGlobal("C-ChanelleFlirt","GLOBAL",2)~ EXIT

CHAIN ~KPMAID01~ ChanelleNoInterestNoSuds
@40
= @41
= @36
= @42
= @43
DO ~SetGlobal("C-ChanelleFlirt","GLOBAL",2)~ 
EXIT

CHAIN ~KPMAID01~ ChanelleNoInterestSuds
@44
= @41
= @36
= @42
= @45
DO ~SetGlobal("C-ChanelleFlirt","GLOBAL",2)~ 
EXIT

CHAIN ~KPMAID01~ ChanelleBathOneOne
@46
= @47
== ~KPMAID01~ IF ~Gender(Player1,MALE)~ THEN @48
== ~KPMAID01~ IF ~Gender(Player1,FEMALE)~ THEN @49
END
++ @50 EXTERN ~KPMAID01~ ChanelleBathOneSlowDown
++ @51 EXTERN ~KPMAID01~ ChanelleBathOneSlowDownPhysical
++ @52 EXTERN ~KPMAID01~ ChanelleBathOneSlowDownPhysical
++ @53 EXTERN ~KPMAID01~ ChanelleBathOneSlowDownConditional
++ @54 EXTERN ~KPMAID01~ ChanelleNoInterestNoSuds

CHAIN ~KPMAID01~ ChanelleBathOneTwo
@55
= @56
= @57
END
+ ~Gender(Player1,Male)~ + @58 EXTERN ~KPMAID01~ ChanelleBathOneSlowDown
++ @59 EXTERN ~KPMAID01~ ChanelleBathOneSlowDownPhysical
++ @60 EXTERN ~KPMAID01~ ChanelleBathOneSlowDownPhysical
++ @53 EXTERN ~KPMAID01~ ChanelleBathOneSlowDownConditional
++ @54 EXTERN ~KPMAID01~ ChanelleNoInterestNoSuds

CHAIN ~KPMAID01~ ChanelleBathOneThree
@61
= @62
= @63
END
++ @64 EXTERN ~KPMAID01~ ChanelleBathOneSlowDown
++ @65 EXTERN ~KPMAID01~ ChanelleBathOneSpeedUp
++ @66 EXTERN ~KPMAID01~ ChanelleBathOneSlowDownPhysical
++ @67 EXTERN ~KPMAID01~ ChanelleBathOneSlowDownPhysical
++ @53 EXTERN ~KPMAID01~ ChanelleBathOneSlowDownConditional
++ @54 EXTERN ~KPMAID01~ ChanelleNoInterestNoSuds

CHAIN ~KPMAID01~ ChanelleBathOneFour
@68
= @69
= @70
END
++ @71 EXTERN ~KPMAID01~ ChanelleBathOneSlowDown
++ @72 EXTERN ~KPMAID01~ ChanelleBathOneSpeedUp
++ @73 EXTERN ~KPMAID01~ ChanelleBathOneSlowDownPhysical
++ @74 EXTERN ~KPMAID01~ ChanelleBathOneSarcastic
++ @53 EXTERN ~KPMAID01~ ChanelleBathOneSlowDownConditional
++ @54 EXTERN ~KPMAID01~ ChanelleNoInterestNoSuds

CHAIN ~KPMAID01~ ChanelleBathOneFive
@75
= @76
END
++ @77 EXTERN ~KPMAID01~ ChanelleBathOneOilPerfume
++ @78 EXTERN ~KPMAID01~ ChanelleBathOneOilPerfume
+ ~Gender(Player1,MALE)~ + @79 EXTERN ~KPMAID01~ ChanelleBathOneThree
+ ~Gender(Player1,FEMALE)~ + @79 EXTERN ~KPMAID01~ ChanelleBathOneFemaleKiss
++ @80 EXTERN ~KPMAID01~ ChanelleBathOneOilPerfume
+ ~Gender(Player1,MALE)~ + @81 EXTERN ~KPMAID01~ ChanelleBathOneThree
+ ~Gender(Player1,FEMALE)~ + @81 EXTERN ~KPMAID01~ ChanelleBathOneFemaleKiss
++ @53 EXTERN ~KPMAID01~ ChanelleBathOneSlowDownConditional
++ @82 EXTERN ~KPMAID01~ ChanelleNotMyTypeGuard
++ @54 EXTERN ~KPMAID01~ ChanelleNoInterestNoSuds

CHAIN ~KPMAID01~ ChanelleBathOneOilPerfume
@83
= @84
= @85
= @86
END
++ @87 EXTERN ~KPMAID01~ ChanelleBathOneSpeedUp
++ @50 EXTERN ~KPMAID01~ ChanelleBathOneSlowDown
++ @88 EXTERN ~KPMAID01~ ChanelleBathOneSlowDownPhysical
++ @52 EXTERN ~KPMAID01~ ChanelleBathOneSlowDownPhysical
++ @54 EXTERN ~KPMAID01~ ChanelleNoInterestNoSuds

CHAIN ~KPMAID01~ ChanelleBathOneFemaleKiss
@89
= @90
= @91
= @92
= @93
= @94
END
++ @95 EXTERN ~KPMAID01~ ChanelleBathOneSlowDown
++ @96 EXTERN ~KPMAID01~ ChanelleBathOneSlowDown
++ @97 EXTERN ~KPMAID01~ ChanelleNotMyType
++ @53 EXTERN ~KPMAID01~ ChanelleBathOneSlowDownConditional

CHAIN ~KPMAID01~ ChanelleBathOneSlowDown
@98
= @99
END
++ @100 EXTERN ~KPMAID01~ ChanelleDArnese
++ @53 EXTERN ~KPMAID01~ ChanelleBathOneSlowDownConditional

CHAIN ~KPMAID01~ ChanelleBathOneSlowDownPhysical
@101
= @102
= @103
= @63
END
++ @100 EXTERN ~KPMAID01~ ChanelleDArnese
++ @104 EXTERN ~KPMAID01~ ChanelleNotMyType
++ @53 EXTERN ~KPMAID01~ ChanelleBathOneSlowDownConditional

CHAIN ~KPMAID01~ ChanelleDArnese
@105
= @106
= @107
= @108
= @109
END
++ @110 EXTERN ~KPMAID01~ ChanelleDArneseInstruction
++ @111 EXTERN ~KPMAID01~ ChanelleDArneseInstruction
++ @112 EXTERN ~KPMAID01~ ChanelleDArneseInstruction

CHAIN ~KPMAID01~ ChanelleBathOneSpeedUp
@113
= @103
= @63
END
++ @100 EXTERN ~KPMAID01~ ChanelleDArnese
++ @114 EXTERN ~KPMAID01~ ChanelleNotMyType
++ @53 EXTERN ~KPMAID01~ ChanelleBathOneSlowDownConditional

CHAIN ~KPMAID01~ ChanelleBathOneSlowDownConditional
@115
= @116
= @117
= @118
= @119
= @120
= @121
END
++ @100 EXTERN ~KPMAID01~ ChanelleDArnese
++ @112 EXTERN ~KPMAID01~ ChanelleDArneseInstruction
++ @104 EXTERN ~KPMAID01~ ChanelleNotMyType

CHAIN ~KPMAID01~ ChanelleDArneseInstruction
@122
= @123
END
IF ~~ THEN EXTERN ~KPMAID01~ ChanelleFinalFlirtOne

CHAIN ~KPMAID01~ ChanelleBathOneSarcastic
@124
= @125
END
++ @126 EXTERN ~KPMAID01~ ChanelleBathOneFive
++ @100 EXTERN ~KPMAID01~ ChanelleDArnese
++ @127 EXTERN ~KPMAID01~ ChanelleNotMyType
++ @128 EXTERN ~KPMAID01~ ChanelleBathOneFive
++ @129 EXTERN ~KPMAID01~ ChanelleBathOneSlowDownConditional
++ @22 EXTERN ~KPMAID01~ ChanelleNotMyType

/* Chanelle - Bathing Scene */

CHAIN ~KPMAID01~ ChanelleFinalFlirtOne
@130
= @131
= @132
= @133
= @134
= @135
= @136
END
++ @137 EXTERN ~KPMAID01~ ChanelleFinalFlirtGentle
++ @138 DO ~SetGlobal("RE_ChanelleFlirt","GLOBAL",1)~ EXTERN ~KPMAID01~ ChanelleFinalFlirtRough
++ @139 EXTERN ~KPMAID01~ ChanelleFinalFlirtRough 
++ @140 EXTERN ~KPMAID01~ YouAreBlowingIt
++ @54 EXTERN ~KPMAID01~ ChanelleNoInterestSuds

CHAIN ~KPMAID01~ ChanelleFinalFlirtGentle
@141
== ~KPMAID01~ @142
== ~KPMAID01~ @143
== ~KPMAID01~ @144
== ~KPMAID01~ IF ~Gender(Player1,MALE)~ THEN @145
== ~KPMAID01~ IF ~Gender(Player1,MALE)~ THEN @146
== ~KPMAID01~ IF ~Gender(Player1,MALE)~ THEN @147
== ~KPMAID01~ IF ~Gender(Player1,FEMALE)~ THEN @148
== ~KPMAID01~ IF ~Gender(Player1,FEMALE)~ THEN @149
== ~KPMAID01~ IF ~Gender(Player1,FEMALE)~ THEN @147
== ~KPMAID01~ @150
END
++ @151 EXTERN ~KPMAID01~ MeasuringFacing
++ @152 EXTERN ~KPMAID01~ MeasuringNotFacing
++ @153 EXTERN ~KPMAID01~ MeasuringNotFacing
++ @154 EXTERN ~KPMAID01~ MeasuringNotFacing
++ @155 EXTERN ~KPMAID01~ ChanelleWhy
++ @54 EXTERN ~KPMAID01~ ChanelleNoInterestSuds

CHAIN ~KPMAID01~ ChanelleFinalFlirtRough
@156
== ~KPMAID01~ @157
== ~KPMAID01~ @158
== ~KPMAID01~ IF ~Gender(Player1,MALE)~ THEN @159
== ~KPMAID01~ IF ~Gender(Player1,MALE)~ THEN @160
== ~KPMAID01~ IF ~Gender(Player1,MALE)~ THEN @147
== ~KPMAID01~ IF ~Gender(Player1,FEMALE)~ THEN @161
== ~KPMAID01~ IF ~Gender(Player1,FEMALE)~ THEN @162
== ~KPMAID01~ IF ~Gender(Player1,FEMALE)~ THEN @147
== ~KPMAID01~ @163
END
++ @164 EXTERN ~KPMAID01~ MeasuringFacing
++ @152 EXTERN ~KPMAID01~ MeasuringNotFacing
++ @153 EXTERN ~KPMAID01~ MeasuringNotFacing
++ @154 EXTERN ~KPMAID01~ MeasuringNotFacing
++ @155 EXTERN ~KPMAID01~ ChanelleWhy
++ @54 EXTERN ~KPMAID01~ ChanelleNoInterestSuds

CHAIN ~KPMAID01~ ChanelleWhy
@165
= @166
= @167
= @168
END
++ @169 EXTERN ~KPMAID01~ ChanelleNoInterestSuds
++ @170 EXTERN ~KPMAID01~ MeasuringNotFacing
++ @171 EXTERN ~KPMAID01~ MeasuringNotFacing
++ @172 EXTERN ~KPMAID01~ MeasuringNotFacing

CHAIN ~KPMAID01~ MeasuringNotFacing
@173
= @174
= @175
= @176
= @177
END
++ @178 EXTERN ~KPMAID01~ ChanelleDelayed
++ @179 EXTERN ~KPMAID01~ ChanelleDelayed
++ @180 EXTERN ~KPMAID01~ ChanelleDelayed
++ @54 EXTERN ~KPMAID01~ ChanelleNoInterestSuds

CHAIN ~KPMAID01~ MeasuringFacing
@181
= @182
= @183
= @184
END
++ @178 EXTERN ~KPMAID01~ ChanelleDelayed
++ @179 EXTERN ~KPMAID01~ ChanelleDelayed
++ @180 EXTERN ~KPMAID01~ ChanelleDelayed
++ @54 EXTERN ~KPMAID01~ ChanelleNoInterestSuds

CHAIN ~KPMAID01~ ChanelleDelayed
@185
= @186
== ~KPMAID01~ IF ~Gender(Player1,FEMALE)~ THEN @187
== ~KPMAID01~ IF ~Gender(Player1,MALE)~ THEN @188
== ~KPMAID01~ @189
END
+ ~Gender(Player1,FEMALE)~ + @190 EXTERN ~KPMAID01~ ChanelleSexDelayed
+ ~Gender(Player1,MALE)~ + @191 EXTERN ~KPMAID01~ ChanelleSexDelayed
+ ~Gender(Player1,MALE)~ + @192 EXTERN ~KPMAID01~ ChanelleSexImmediate
+ ~Gender(Player1,FEMALE)~ + @192 EXTERN ~KPMAID01~ ChanelleSexImmediateFemale
++ @193 EXTERN ~KPMAID01~ ChanelleToBeMeasured
++ @54 EXTERN ~KPMAID01~ ChanelleNoInterestSuds

CHAIN ~KPMAID01~ ChanelleToBeMeasured
@194
= @195
= @196
END
++ @197 EXTERN ~KPMAID01~ ChanelleSexImmediate
+ ~Gender(Player1,FEMALE)~ + @190 EXTERN ~KPMAID01~ ChanelleSexDelayed
+ ~Gender(Player1,MALE)~ + @191 EXTERN ~KPMAID01~ ChanelleSexDelayed
++ @198 EXTERN ~KPMAID01~ ChanelleSexDelayed
++ @199 EXTERN ~KPMAID01~ ChanelleSexDelayed

CHAIN ~KPMAID01~ YouAreBlowingIt
@200
= @201
= @202
= @203
= @204
= @205
END
++ @206 EXTERN ~KPMAID01~ ChanelleImOuttaHere
++ @207 EXTERN ~KPMAID01~ ChanelleImOuttaHere
++ @208 EXTERN ~KPMAID01~ Apology
++ @209 EXTERN ~KPMAID01~ Apology
++ @210 EXTERN ~KPMAID01~ ChanelleImOuttaHere

CHAIN ~KPMAID01~ ChanelleImOuttaHere
@211
= @212
= @213
END
IF ~~ THEN DO ~SetGlobal("C-ChanelleFlirt","GLOBAL",2)~ EXIT

CHAIN ~KPMAID01~ Apology
@214
= @215
END
++ @216 EXTERN ~KPMAID01~ Mollified
++ @217 EXTERN ~KPMAID01~ ChanelleImOuttaHere
++ @218 EXTERN ~KPMAID01~ Mollified
++ @219 EXTERN ~KPMAID01~ ChanelleImOuttaHere

CHAIN ~KPMAID01~ Mollified
@220
= @221
= @222
END
++ @223 EXTERN ~KPMAID01~ ChanelleFinalFlirtRough
++ @224 EXTERN ~KPMAID01~ ChanelleFinalFlirtGentle

CHAIN ~KPMAID01~ ChanelleSexDelayed
@225
= @226
= @227
= @228
= @229
== ~KPMAID01~ IF ~Gender(Player1,MALE)~ THEN @230
== ~KPMAID01~ IF ~Gender(Player1,FEMALE)~ THEN @231
== ~KPMAID01~ @232
== ~KPMAID01~ IF ~Gender(Player1,MALE)~ THEN @233
== ~KPMAID01~ IF ~Gender(Player1,MALE)~ THEN @234
== ~KPMAID01~ IF ~Gender(Player1,MALE)~ THEN @235
== ~KPMAID01~ IF ~Gender(Player1,MALE)~ THEN @236
== ~KPMAID01~ IF ~Gender(Player1,FEMALE)~ THEN @237
== ~KPMAID01~ IF ~Gender(Player1,FEMALE)~ THEN @238
== ~KPMAID01~ @239
END
+ ~Gender(Player1,MALE)~ + @240 EXTERN ~KPMAID01~ ChanelleSexImmediate
+ ~Gender(Player1,MALE)~ + @241 EXTERN ~KPMAID01~ ChanelleSexImmediate
+ ~Gender(Player1,FEMALE)~ + @242 EXTERN ~KPMAID01~ ChanelleSexImmediateFemale
+ ~Gender(Player1,FEMALE)~ + @243 EXTERN ~KPMAID01~ ChanelleMeasuredEnd

CHAIN ~KPMAID01~ ChanelleSexImmediate
@244
= @245
= @246
= @247
= @248
= @249
= @250
= @251
END
IF ~~ THEN EXTERN ~KPMAID01~ ChanelleMeasuredEnd

CHAIN ~KPMAID01~ ChanelleSexImmediateFemale
@252
= @253
= @254
= @255
= @256
END
IF ~~ THEN EXTERN ~KPMAID01~ ChanelleMeasuredEnd

CHAIN ~KPMAID01~ ChanelleMeasuredEnd
@257
= @258
= @259
END
++ @260 EXTERN ~KPMAID01~ ChanelleMeasuredEndOne
++ @261 EXTERN ~KPMAID01~ ChanelleMeasuredEndOne

CHAIN ~KPMAID01~ ChanelleMeasuredEndOne
@262
= @263
= @264
END
++ @265 EXTERN ~KPMAID01~ ChanelleMeasuredEndTwo
++ @266 EXTERN ~KPMAID01~ ChanelleMeasuredEndTwo
++ @267 EXTERN ~KPMAID01~ ChanelleMeasuredEndTwo

CHAIN ~KPMAID01~ ChanelleMeasuredEndTwo
@268
= @269
= @270
= @271
= @272
= @273
END
++ @274 EXTERN ~KPMAID01~ ChanelleMeasuredEndFinale
++ @275 EXTERN ~KPMAID01~ ChanelleMeasuredEndFinale
++ @276 EXTERN ~KPMAID01~ ChanelleMeasuredEndFinale

CHAIN ~KPMAID01~ ChanelleMeasuredEndFinale
@277
= @278
= @279
= @280
END
IF ~~ THEN DO ~SetGlobal("C-ChanelleFlirt","GLOBAL",3) SetGlobal("RE_ChanelleSex","GLOBAL",1)~ EXIT

IF ~Gender(Player1,MALE) InParty("Aerie") OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_ChanelleFlirtAerie","GLOBAL",1) SetGlobal("C-ChanelleFlirt","GLOBAL",3) SetGlobal("RE_ChanelleSex","GLOBAL",1)~ EXIT
IF ~Gender(Player1,MALE) InParty("Jaheira") OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_ChanelleFlirtJaheira","GLOBAL",1) SetGlobal("C-ChanelleFlirt","GLOBAL",3) SetGlobal("RE_ChanelleSex","GLOBAL",1)~ EXIT
IF ~Gender(Player1,MALE) InParty("Viconia") OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_ChanelleFlirtViconia","GLOBAL",1) SetGlobal("C-ChanelleFlirt","GLOBAL",3) SetGlobal("RE_ChanelleSex","GLOBAL",1)~ EXIT

IF ~Gender(Player1,MALE) InParty("Aerie") OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2) 
InParty("Jaheira") OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_ChanelleFlirtAerie","GLOBAL",1) SetGlobal("RE_ChanelleFlirtJaheira","GLOBAL",1) SetGlobal("C-ChanelleFlirt","GLOBAL",3) SetGlobal("RE_ChanelleSex","GLOBAL",1)~ EXIT
IF ~Gender(Player1,MALE) InParty("Aerie") OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2) 
InParty("Viconia") OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_ChanelleFlirtAerie","GLOBAL",1) SetGlobal("RE_ChanelleFlirtViconia","GLOBAL",1) SetGlobal("C-ChanelleFlirt","GLOBAL",3) SetGlobal("RE_ChanelleSex","GLOBAL",1)~ EXIT
IF ~Gender(Player1,MALE) InParty("Jaheira") OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2)
InParty("Viconia") OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_ChanelleFlirtJaheira","GLOBAL",1) SetGlobal("RE_ChanelleFlirtViconia","GLOBAL",1) SetGlobal("C-ChanelleFlirt","GLOBAL",3) SetGlobal("RE_ChanelleSex","GLOBAL",1)~ EXIT

IF ~Gender(Player1,MALE) InParty("Aerie") OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2) 
InParty("Jaheira") OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2)
InParty("Viconia") OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_ChanelleFlirtAerie","GLOBAL",1) SetGlobal("RE_ChanelleFlirtJaheira","GLOBAL",1) SetGlobal("RE_ChanelleFlirtViconia","GLOBAL",1) SetGlobal("C-ChanelleFlirt","GLOBAL",3) SetGlobal("RE_ChanelleSex","GLOBAL",1)~ EXIT
