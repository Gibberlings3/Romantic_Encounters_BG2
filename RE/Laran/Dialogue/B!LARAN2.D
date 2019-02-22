/* Kulyok: separating two encounters into two different files, so that SoA only players may have a go, too */
/* Saradush - encounter */
CHAIN
IF ~Global("B!LaranFlirt","GLOBAL",1) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~B!LARAN~ 2Laran1
@0 
DO ~SetGlobal("B!LaranFlirt","GLOBAL",2)~
== ~ANOME25J~ IF ~Global("AnomenRomanceActive","GLOBAL",2) GlobalGT("B!RE_AnoComplain","GLOBAL",0) InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @1
== ~B!LARAN~ @2
END
++ @3 EXTERN ~B!LARAN~ 2Laran1.1
++ @4 EXTERN ~B!LARAN~ 2Laran1.2
++ @5 EXTERN ~B!LARAN~ 2Laran1.3

APPEND ~B!LARAN~

IF ~~ THEN BEGIN 2Laran1.1
SAY @6
IF ~~ THEN GOTO 2Laran1.4
END

IF ~~ THEN BEGIN 2Laran1.2
SAY @7
IF ~~ THEN GOTO 2Laran1.4
END

IF ~~ THEN BEGIN 2Laran1.3
SAY @8
IF ~~ THEN GOTO 2Laran1.4
END

IF ~~ THEN BEGIN 2Laran1.4
SAY @9
++ @10 + 2Laran1.5
++ @11 + 2Laran1.6
++ @12 + 2Laran1.7
END

IF ~~ THEN BEGIN 2Laran1.5
SAY @13
IF ~~ THEN GOTO 2Laran1.8
END

IF ~~ THEN BEGIN 2Laran1.6
SAY @14
IF ~~ THEN GOTO 2Laran1.8
END

IF ~~ THEN BEGIN 2Laran1.7
SAY @15
IF ~~ THEN GOTO 2Laran1.8
END

IF ~~ THEN BEGIN 2Laran1.8
SAY @16
++ @17 + 2Laran1.9
++ @18 + 2Laran1.10
++ @19 + 2Laran1.11
++ @20 + 2Laran1.12
END

IF ~~ THEN BEGIN 2Laran1.9
SAY @21
IF ~~ THEN GOTO 2Laran1.13
END

IF ~~ THEN BEGIN 2Laran1.10
SAY @22
= @23
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 2Laran1.11
SAY @24
IF ~~ THEN GOTO 2Laran1.13
END

IF ~~ THEN BEGIN 2Laran1.12
SAY @25
IF ~~ THEN GOTO 2Laran1.13
END
END

CHAIN
IF ~~ THEN ~B!LARAN~ 2Laran1.13
@26
END
IF ~Global("B!GaveHair","GLOBAL",1)~ THEN EXTERN ~B!LARAN~ 2Laran1.13a
IF ~Global("B!GaveRibbon","GLOBAL",1)~ THEN EXTERN ~B!LARAN~ 2Laran1.13b
IF ~!Global("B!GaveHair","GLOBAL",1) !Global("B!GaveRibbon","GLOBAL",1)~ THEN EXTERN ~B!LARAN~ 2Laran1.13c

CHAIN
IF ~~ THEN ~B!LARAN~ 2Laran1.13a
@27
EXTERN ~B!LARAN~ 2Laran1.13c

CHAIN
IF ~~ THEN ~B!LARAN~ 2Laran1.13b
@28
EXTERN ~B!LARAN~ 2Laran1.13c

CHAIN
IF ~~ THEN ~B!LARAN~ 2Laran1.13c
@29
= @30
END
++ @31 + 2Laran1.14
++ @32 + 2Laran1.15
++ @33 + 2Laran1.16
++ @34 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + 2Laran1.16

APPEND ~B!LARAN~

IF ~~ THEN BEGIN 2Laran1.14
SAY @35
= @36
= @37
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 2Laran1.15
SAY @38
++ @39 + 2Laran1.16
++ @40 + 2Laran1.10
END

IF ~~ THEN BEGIN 2Laran1.16
SAY @41
IF ~~ THEN DO ~SetGlobal("RE_LaranMoves","GLOBAL",4)
ClearAllActions() StartCutSceneMode() StartCutScene("RE_Lar3")~ EXIT
END

IF ~Global("RE_LaranMoves","GLOBAL",4)~ THEN BEGIN 2Laran1.17
SAY @42
++ @43 DO ~SetGlobal("RE_LaranMoves","GLOBAL",5)~  + 2Laran1.18
++ @44 DO ~SetGlobal("RE_LaranMoves","GLOBAL",5)~ + 2Laran1.19
++ @45 DO ~SetGlobal("RE_LaranMoves","GLOBAL",5)~ + 2Laran1.22
END

IF ~~ THEN BEGIN 2Laran1.18
SAY @46
++ @47 + 2Laran1.19
++ @48 + 2Laran1.20
++ @49 + 2Laran1.21
++ @50 + 2Laran1.22
END

IF ~~ THEN BEGIN 2Laran1.19
SAY @51
++ @52 + 2Laran1.23
++ @53 + 2Laran1.24
++ @54 + 2Laran1.20
++ @55 + 2Laran1.25
++ @56 + 2Laran1.26
END

IF ~~ THEN BEGIN 2Laran1.20
SAY @57
= @58
++ @59 + 2Laran1.27
++ @60 + 2Laran1.28 
++ @61 + 2Laran1.26
END

IF ~~ THEN BEGIN 2Laran1.21
SAY @62
IF ~~ THEN GOTO 2Laran1.20
END

IF ~~ THEN BEGIN 2Laran1.22
SAY @63
IF ~~ THEN GOTO 2Laran1.20
END

IF ~~ THEN BEGIN 2Laran1.23
SAY @64
++ @65 + 2Laran1.29
++ @66 + 2Laran1.29
++ @67 + 2Laran1.27
++ @68 + 2Laran1.26
++ @69 + 2Laran1.30
END

IF ~~ THEN BEGIN 2Laran1.24
SAY @70
IF ~~ THEN GOTO 2Laran1.23
END

IF ~~ THEN BEGIN 2Laran1.25
SAY @71
IF ~~ THEN GOTO 2Laran1.23
END

IF ~~ THEN BEGIN 2Laran1.26
SAY @72
IF ~~ THEN DO ~SetGlobal("RE_LaranMoves","GLOBAL",6) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Lar2")~ EXIT
END

IF ~~ THEN BEGIN 2Laran1.27
SAY @73
++ @74 + 2Laran1.31
++ @75 + 2Laran1.31
++ @76 + 2Laran1.32
END

IF ~~ THEN BEGIN 2Laran1.28
SAY @77
IF ~~ THEN GOTO 2Laran1.27
END

IF ~~ THEN BEGIN 2Laran1.29
SAY @78
IF ~~ THEN GOTO 2Laran1.27
END

IF ~~ THEN BEGIN 2Laran1.30
SAY @79
IF ~~ THEN DO ~SetGlobal("RE_LaranMoves","GLOBAL",6) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Lar2")~ EXIT
END

IF ~~ THEN BEGIN 2Laran1.31
SAY @80
++ @81 + 2Laran1.33
++ @82 + 2Laran1.34
++ @83 + 2Laran1.35
END

IF ~~ THEN BEGIN 2Laran1.32
SAY @84
++ @85 + 2Laran1.36
++ @86 + 2Laran1.36
++ @87 + 2Laran1.35
++ @88 + 2Laran1.30
++ @89 + 2Laran1.35
END

IF ~~ THEN BEGIN 2Laran1.33
SAY @90
++ @91 + 2Laran1.37
++ @92 + 2Laran1.38
++ @93 + 2Laran1.39
++ @94 + 2Laran1.40
END

IF ~~ THEN BEGIN 2Laran1.34
SAY @95
++ @96 + 2Laran1.36
++ @97 + 2Laran1.41
END

IF ~~ THEN BEGIN 2Laran1.35
SAY @98
IF ~~ THEN DO ~SetGlobal("RE_LaranMoves","GLOBAL",6) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Lar2")~ EXIT
END

IF ~~ THEN BEGIN 2Laran1.36
SAY @99
IF ~~ THEN GOTO 2Laran1.33
END

IF ~~ THEN BEGIN 2Laran1.37
SAY @100
IF ~~ THEN GOTO 2Laran1.42
END

IF ~~ THEN BEGIN 2Laran1.38
SAY @101
IF ~~ THEN GOTO 2Laran1.42
END

IF ~~ THEN BEGIN 2Laran1.39
SAY @102
= @103
= @104
++ @105 + 2Laran1.38
++ @106 + 2Laran1.37
++ @107 + 2Laran1.35
END

IF ~~ THEN BEGIN 2Laran1.40
SAY @108
IF ~~ THEN GOTO 2Laran1.37
END

IF ~~ THEN BEGIN 2Laran1.41
SAY @109
IF ~~ THEN GOTO 2Laran1.33
END

IF ~~ THEN BEGIN 2Laran1.42
SAY @110
= @111
= @112
++ @113 + 2Laran1.43
++ @114 + 2Laran1.44
++ @115 + 2Laran1.35
END

IF ~~ THEN BEGIN 2Laran1.43
SAY @116
= @117
= @118
= @119
= @120
++ @121 + 2Laran1.45
++ @122 + 2Laran1.46
++ @123 + 2Laran1.47
END

IF ~~ THEN BEGIN 2Laran1.44
SAY @124
= @125  
= @126 
= @127 
= @128
= @129
++ @130 + 2Laran1.48
++ @131 + 2Laran1.48
++ @132 + 2Laran1.49
END

IF ~~ THEN BEGIN 2Laran1.45
SAY @133
= @134
++ @135 + 2Laran1.44
++ @136 + 2Laran1.47
END

IF ~~ THEN BEGIN 2Laran1.46
SAY @137
= @138
IF ~~ THEN GOTO 2Laran1.44
END

IF ~~ THEN BEGIN 2Laran1.47
SAY @139
= @140
IF ~~ THEN DO ~SetGlobal("RE_LaranMoves","GLOBAL",6)
ClearAllActions() StartCutSceneMode() StartCutScene("RE_Lar2")~ EXIT
END

IF ~~ THEN BEGIN 2Laran1.48
SAY @141
IF ~~ THEN DO ~SetGlobal("B!LaranLover2","GLOBAL",1) SetGlobal("RE_LaranSexToB","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Lar8")~ EXIT
END

IF ~~ THEN BEGIN 2Laran1.49
SAY @142
= @143
= @144
++ @145 + 2Laran1.50
++ @146 + 2Laran1.48
END

IF ~~ THEN BEGIN 2Laran1.50
SAY @147
IF ~~ THEN DO ~SetGlobal("RE_LaranMoves","GLOBAL",6) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Lar2")~ EXIT
END

/* Saradush - aftermath */
IF ~Global("B!LaranLover2","GLOBAL",1)~ THEN BEGIN 2Laran2
SAY @148 
+ ~GlobalGT("B!LaranLike","GLOBAL",3) !Alignment(Player1,MASK_EVIL)~ + @149 DO ~SetGlobal("B!LaranLover2","GLOBAL",2)~ + 2Laran2.1
+ ~OR(2) !GlobalGT("B!LaranLike","GLOBAL",3) Alignment(Player1,MASK_EVIL)~ + @149 DO ~SetGlobal("B!LaranLover2","GLOBAL",2)~ + 2Laran2.2
+ ~GlobalGT("B!LaranLike","GLOBAL",3) !Alignment(Player1,MASK_EVIL)~ + @150 DO ~SetGlobal("B!LaranLover2","GLOBAL",2)~ + 2Laran2.3a
+ ~OR(2) !GlobalGT("B!LaranLike","GLOBAL",3) Alignment(Player1,MASK_EVIL)~ + @150 DO ~SetGlobal("B!LaranLover2","GLOBAL",2)~ + 2Laran2.3b
+ ~GlobalGT("B!LaranLike","GLOBAL",3) !Alignment(Player1,MASK_EVIL)~ + @151 DO ~SetGlobal("B!LaranLover2","GLOBAL",2)~ + 2Laran2.4a
+ ~OR(2) !GlobalGT("B!LaranLike","GLOBAL",3) Alignment(Player1,MASK_EVIL)~ + @151 DO ~SetGlobal("B!LaranLover2","GLOBAL",2)~ + 2Laran2.4b
+ ~GlobalGT("B!LaranLike","GLOBAL",3)~ + @152 DO ~SetGlobal("B!LaranLover2","GLOBAL",2)~ + 2Laran2.5
+ ~OR(2) !GlobalGT("B!LaranLike","GLOBAL",3) Alignment(Player1,MASK_EVIL)~ + @152 DO ~SetGlobal("B!LaranLover2","GLOBAL",2)~ + 2Laran2.10
END

IF ~~ THEN BEGIN 2Laran2.1
SAY @153
++ @154 + 2Laran2.5
++ @155 + 2Laran2.5
++ @156 + 2Laran2.5
++ @157 + 2Laran2.6
END

IF ~~ THEN BEGIN 2Laran2.2
SAY @158
++ @159 + 2Laran2.7
++ @160 + 2Laran2.8
++ @161 + 2Laran2.9
++ @162 + 2Laran2.10
END

IF ~~ THEN BEGIN 2Laran2.3a
SAY @163
++ @154 + 2Laran2.5
++ @155 + 2Laran2.5
++ @156 + 2Laran2.5
++ @157 + 2Laran2.6
END

IF ~~ THEN BEGIN 2Laran2.3b
SAY @164
++ @159 + 2Laran2.7
++ @160 + 2Laran2.8
++ @161 + 2Laran2.9
++ @162 + 2Laran2.10
END

IF ~~ THEN BEGIN 2Laran2.4a
SAY @165
++ @154 + 2Laran2.5
++ @155 + 2Laran2.5
++ @156 + 2Laran2.5
++ @157 + 2Laran2.6
END

IF ~~ THEN BEGIN 2Laran2.4b
SAY @166
++ @159 + 2Laran2.7
++ @160 + 2Laran2.8
++ @161 + 2Laran2.9
++ @162 + 2Laran2.10
END

IF ~~ THEN BEGIN 2Laran2.5
SAY @167
++ @168 + 2Laran2.11
++ @169 + 2Laran2.11
++ @170 + 2Laran2.11
++ @171 + 2Laran2.11
++ @172 + 2Laran2.11
++ @173 + 2Laran2.12
END

IF ~~ THEN BEGIN 2Laran2.6
SAY @174
++ @168 + 2Laran2.11
++ @169 + 2Laran2.11
++ @170 + 2Laran2.11
++ @171 + 2Laran2.11
++ @172 + 2Laran2.11
++ @173 + 2Laran2.12
END

IF ~~ THEN BEGIN 2Laran2.7
SAY @175
IF ~~ THEN GOTO 2Laran2.13
END

IF ~~ THEN BEGIN 2Laran2.8
SAY @176
= @175
IF ~~ THEN GOTO 2Laran2.13
END

IF ~~ THEN BEGIN 2Laran2.9
SAY @177
IF ~~ THEN GOTO 2Laran2.13
END

IF ~~ THEN BEGIN 2Laran2.10
SAY @178
= @175
IF ~~ THEN GOTO 2Laran2.13
END

IF ~~ THEN BEGIN 2Laran2.11
SAY @179
IF ~~ THEN GOTO 2Laran2.14
END

IF ~~ THEN BEGIN 2Laran2.12
SAY @180
IF ~~ THEN GOTO 2Laran2.14
END

IF ~~ THEN BEGIN 2Laran2.13
SAY @181
IF ~~ THEN DO ~SetGlobal("RE_LaranMoves","GLOBAL",6) SetGlobal("B!LaranOver","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Lar2")~ EXIT
IF ~InParty("Anomen") OR(2) Global("AnomenRomanceActive","GLOBAL",1) Global("AnomenRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("RE_LaranAnoReactsToB","GLOBAL",1) SetGlobal("RE_LaranMoves","GLOBAL",6) SetGlobal("B!LaranOver","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Lar2")~ EXIT
END

IF ~~ THEN BEGIN 2Laran2.14
SAY @182
= @183
= @184
= @185
= @186 
++ @187 + 2Laran2.15
+ ~Class(Player1,FIGHTER_ALL)~ + @188 DO ~SetGlobal("B!LaranCourt","GLOBAL",1)~ + 2Laran2.16
+ ~Class(Player1,PALADIN_ALL)~ + @189 DO ~SetGlobal("B!LaranCourt","GLOBAL",1)~ + 2Laran2.16
+ ~Class(Player1,DRUID_ALL)~ + @190 DO ~SetGlobal("B!LaranCourt","GLOBAL",1)~ + 2Laran2.16
+ ~Class(Player1,RANGER_ALL)~ + @191 DO ~SetGlobal("B!LaranCourt","GLOBAL",1)~ + 2Laran2.16
+ ~Class(Player1,MAGE_ALL)~ + @192 DO ~SetGlobal("B!LaranCourt","GLOBAL",1)~ + 2Laran2.16
+ ~Class(Player1,CLERIC_ALL)~ + @193 DO ~SetGlobal("B!LaranCourt","GLOBAL",1)~ + 2Laran2.16
+ ~Class(Player1,BARD_ALL)~ + @194 DO ~SetGlobal("B!LaranCourt","GLOBAL",1)~ + 2Laran2.16
+ ~Class(Player1,THIEF_ALL)~ + @195 DO ~SetGlobal("B!LaranCourt","GLOBAL",1)~ + 2Laran2.16
++ @196 DO ~SetGlobal("B!LaranCourt","GLOBAL",1)~ + 2Laran2.16
++ @197 DO ~SetGlobal("B!LaranCourt","GLOBAL",1)~ + 2Laran2.16
++ @198 + 2Laran2.13
END

IF ~~ THEN BEGIN 2Laran2.15
SAY @199
= @200
IF ~~ THEN DO ~SetGlobal("RE_LaranMoves","GLOBAL",6) SetGlobal("B!LaranOver","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Lar2")~ EXIT
IF ~InParty("Anomen") OR(2) Global("AnomenRomanceActive","GLOBAL",1) Global("AnomenRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("RE_LaranAnoReactsToB","GLOBAL",1) SetGlobal("RE_LaranMoves","GLOBAL",6) SetGlobal("B!LaranOver","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Lar2")~ EXIT
END

IF ~~ THEN BEGIN 2Laran2.16
SAY @201
= @202
IF ~~ THEN DO ~SetGlobal("RE_LaranMoves","GLOBAL",6) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Lar4")~ EXIT
END
END

/* Saradush - Anomen (no Laran present) */
CHAIN
IF WEIGHT #-1 ~Global("B!LaranOver","GLOBAL",2)~ THEN ~ANOME25J~ Complain2
@203
DO ~SetGlobal("B!LaranOver","GLOBAL",3)~
END
++ @204 EXTERN ~ANOME25J~ Complain2.1
++ @205 EXTERN ~ANOME25J~ Complain2.2
++ @206 EXTERN ~ANOME25J~ Complain2.2

APPEND ~ANOME25J~

IF ~~ THEN BEGIN Complain2.1
SAY @207
IF ~~ THEN GOTO Complain2.2
END

IF ~~ THEN BEGIN Complain2.2
SAY @208
IF ~GlobalGT("B!RE_AnoComplain","GLOBAL",0)~ THEN GOTO Complain2.3
IF ~!GlobalGT("B!RE_AnoComplain","GLOBAL",0)~ THEN GOTO Complain2.4
END

IF ~~ THEN BEGIN Complain2.3
SAY @209
++ @210 + Complain2.5
++ @211 + Complain2.8
+ ~Global("B!AnomenKnowsLaranSex","GLOBAL",1)~ + @212 + Complain2.6
+ ~Global("B!AnomenKnowsLaranSex","GLOBAL",0)~ + @212 + Complain2.7
END

IF ~~ THEN BEGIN Complain2.4
SAY @213
++ @210 + Complain2.5
++ @211 + Complain2.8
++ @214 + Complain2.9
END

IF ~~ THEN BEGIN Complain2.5
SAY @215
+ ~Global("B!AnomenKnowsLaranSex","GLOBAL",1)~ + @216 + Complain2.11
+ ~Global("B!AnomenKnowsLaranSex","GLOBAL",0)~ + @216 + Complain2.12
+ ~Global("B!AnomenKnowsLaranSex","GLOBAL",1)~ + @217 + Complain2.13
+ ~Global("B!AnomenKnowsLaranSex","GLOBAL",0)~ + @217 + Complain2.14
+ ~Global("B!AnomenKnowsLaranSex","GLOBAL",1)~ + @218 + Complain2.15
+ ~Global("B!AnomenKnowsLaranSex","GLOBAL",0)~ + @218 + Complain2.16
+ ~Global("B!AnomenKnowsLaranSex","GLOBAL",1)~ + @219 + Complain2.17
+ ~Global("B!AnomenKnowsLaranSex","GLOBAL",0)~ + @219 + Complain2.18
END

IF ~~ THEN BEGIN Complain2.6
SAY @220
++ @216 + Complain2.11
++ @217 + Complain2.13
++ @218 + Complain2.15
++ @219 + Complain2.17
END
 
IF ~~ THEN BEGIN Complain2.7
SAY @221
++ @216 + Complain2.12
++ @217 + Complain2.14
++ @218 + Complain2.16
++ @219 + Complain2.18
END

IF ~~ THEN BEGIN Complain2.8
SAY @222
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Complain2.9
SAY @223
++ @216 + Complain2.12
++ @217 + Complain2.14
++ @218 + Complain2.16
++ @219 + Complain2.18
END

IF ~~ THEN BEGIN Complain2.10
SAY @224
IF ~~ THEN DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN Complain2.11
SAY @225
++ @226 + Complain2.14
++ @227 + Complain2.19
++ @228 + Complain2.20
END

IF ~~ THEN BEGIN Complain2.12
SAY @229
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Complain2.13
SAY @230
++ @226 + Complain2.14
++ @227 + Complain2.19
++ @228 + Complain2.20
END

IF ~~ THEN BEGIN Complain2.14
SAY @231
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Complain2.15
SAY @232
++ @233 + Complain2.14
++ @234 + Complain2.10
++ @235 + Complain2.17
END

IF ~~ THEN BEGIN Complain2.16
SAY @232
++ @233 + Complain2.14
++ @234 + Complain2.21
++ @235 + Complain2.18
END

IF ~~ THEN BEGIN Complain2.17
SAY @236
IF ~~ THEN DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN Complain2.18
SAY @237
IF ~~ THEN DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN Complain2.19
SAY @238
IF ~~ THEN GOTO Complain2.15
END

IF ~~ THEN BEGIN Complain2.20
SAY @239
IF ~~ THEN DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN Complain2.21
SAY @240
++ @241 + Complain2.22
++ @242 + Complain2.23
++ @243 + Complain2.24
++ @244 + Complain2.25
END

IF ~~ THEN BEGIN Complain2.22
SAY @245
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Complain2.23
SAY @246
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Complain2.24
SAY @247
++ @248 + Complain2.26
++ @249 + Complain2.22
++ @250 + Complain2.27
END

IF ~~ THEN BEGIN Complain2.25
SAY @251
IF ~~ THEN GOTO Complain2.27
END

IF ~~ THEN BEGIN Complain2.26
SAY @252
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Complain2.27
SAY @253
IF ~~ THEN DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)~ EXIT
END
END

/* Saradush - Sir Anomen (Laran present) */
CHAIN
IF ~Global("B!LaranCourt","GLOBAL",1)~ THEN ~B!LARAN~ AnomenIntro
@254 
DO ~SetGlobal("B!LaranCourt","GLOBAL",2)~
END
IF ~Alignment("Anomen",LAWFUL_GOOD) InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~ANOME25J~ LGAnomen
IF ~OR(5) !Alignment("Anomen",LAWFUL_GOOD) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("B!LaranOver","GLOBAL",1) EscapeArea()~ EXIT

CHAIN
IF ~~ THEN ~ANOME25J~ LGAnomen
@255
== ~B!LARAN~ @256
== ~ANOME25J~ @257
== ~B!LARAN~ @258
== ~ANOME25J~ @259
== ~B!LARAN~ @260
== ~ANOME25J~ @261
== ~B!LARAN~ @262
== ~ANOME25J~ @263
== ~B!LARAN~ @264
== ~ANOME25J~ @265
= @266
== ~B!LARAN~ @267
== ~ANOME25J~ @268
== ~B!LARAN~ @269
= @270
== ~ANOME25J~ @271
== ~B!LARAN~ @272
== ~ANOME25J~ @273
= @274
= @275
== ~B!LARAN~ @276
END
++ @277 EXTERN ~ANOME25J~ LGAnomen.1
++ @278 EXTERN ~ANOME25J~ LGAnomen.1
++ @279 EXTERN ~B!LARAN~ LGAnomen.2
++ @280 EXTERN ~ANOME25J~ LGAnomen.1
++ @281 EXTERN ~ANOME25J~ LGAnomen.3
++ @282 EXTERN ~B!LARAN~ LGAnomen.4
++ @283 EXTERN ~ANOME25J~ LGAnomen.3

CHAIN
IF ~~ THEN ~ANOME25J~ LGAnomen.1
@284
END
++ @285 EXTERN ~B!LARAN~ LGAnomen.5 
++ @286 EXTERN ~B!LARAN~ LGAnomen.5
++ @287 EXTERN ~ANOME25J~ LGAnomen.3

CHAIN
IF ~~ THEN ~B!LARAN~ LGAnomen.2
@288
END
++ @285 EXTERN ~B!LARAN~ LGAnomen.5
++ @286 EXTERN ~B!LARAN~ LGAnomen.5
++ @287 EXTERN ~ANOME25J~ LGAnomen.3

CHAIN
IF ~~ THEN ~ANOME25J~ LGAnomen.3
@289
DO ~SetGlobal("B!RE_Duel","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Lar5")~ 
EXIT

CHAIN
IF ~~ THEN ~B!LARAN~ LGAnomen.4
@290
DO ~SetGlobal("B!RE_Duel","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Lar5")~ 
EXIT

CHAIN
IF ~~ THEN ~B!LARAN~ LGAnomen.5
@291
END
++ @292 EXTERN ~B!LARAN~ LGAnomen.6
++ @293 EXTERN ~ANOME25J~ LGAnomen.7
++ @294 EXTERN ~B!LARAN~ LGAnomen.8

CHAIN
IF ~~ THEN ~B!LARAN~ LGAnomen.6
@295
== ~ANOME25J~ @296
== ~B!LARAN~ @297
DO ~EscapeArea()~
EXIT

CHAIN
IF ~~ THEN ~ANOME25J~ LGAnomen.7
@298
== ~B!LARAN~ @299
DO ~EscapeArea()~
EXIT

CHAIN
IF ~~ THEN ~B!LARAN~ LGAnomen.8
@300
== ~ANOME25J~ @301
== ~B!LARAN~ @297
DO ~EscapeArea()~
EXIT

CHAIN
IF ~Global("B!RE_Duel","GLOBAL",1)~ THEN ~B!LARAN~ LGAnomen.11
@302
DO ~SetGlobal("B!RE_Duel","GLOBAL",2)~
== ~ANOME25J~ @303
== ~B!LARAN~ @304
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("RE_Lar7")~
EXIT

CHAIN
IF WEIGHT #-1 ~Global("B!RE_AnomenWon","GLOBAL",1)~ THEN ~ANOME25J~ LGAnomen.9
@305
DO ~SetGlobal("B!RE_AnomenWon","GLOBAL",2)~
== ~B!LARAN~ @306
== ~ANOME25J~ @307
== ~B!LARAN~ @308 DO ~EscapeArea()~
== ~ANOME25J~ @309
= @310
DO ~SetGlobal("B!RE_Duel","GLOBAL",3) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Lar6")~
EXIT

CHAIN
IF WEIGHT #-1 ~Global("B!RE_LaranWon","GLOBAL",1)~ THEN ~ANOME25J~ LGAnomen.10
@311
DO ~SetGlobal("B!RE_LaranWon","GLOBAL",2)~
== ~B!LARAN~ @312
= @313 DO ~EscapeArea()~
== ~ANOME25J~ @314
= @315
= @310
DO ~SetGlobal("B!RE_Duel","GLOBAL",3) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Lar6")~
EXIT

BEGIN ~B!REmsn~

CHAIN
IF ~Global("B!RE_MessengerSpawn","GLOBAL",1)~ THEN ~B!REmsn~ Messenger
@316
DO ~SetGlobal("B!RE_MessengerSpawn","GLOBAL",2)~
END
++ @317 EXTERN ~B!REmsn~ Messenger.1
++ @318 EXTERN ~B!REmsn~ Messenger.2

APPEND ~B!REmsn~

IF ~~ THEN BEGIN Messenger.1
SAY @319
IF ~~ THEN DO ~GiveItemCreate("B!LarLet",Player1,1,0,0) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN Messenger.2
SAY @320
IF ~~ THEN DO ~GiveItemCreate("B!LarLet",Player1,1,0,0) EscapeArea()~ EXIT
END
END