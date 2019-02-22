/* Romantic Encounters Entry: "Sheri D'Avignon", by cmorgan, June, 2007 */

BEGIN ~C-SHERI~

/* First dialogue with the male player */

CHAIN IF ~IsGabber(Player1) Gender(Player1,MALE) Global("RE_SheriMatch","GLOBAL",0)~ THEN ~C-SHERI~ SheriTalk1
@0 
DO ~SetGlobal("RE_SheriMatch","GLOBAL",2)~
= @1
END
++ @2 EXTERN ~C-SHERI~ C-SheriTalk1GeneralJustASong
++ @3 EXTERN ~C-SHERI~ C-SheriTalk1Beautiful
++ @4 EXTERN ~C-SHERI~ C-SheriTalk1Beautiful
++ @5 EXTERN ~C-SHERI~ C-SheriTalk1Beautiful
++ @6 EXTERN ~C-SHERI~ C-SheriTalk1Beautiful
++ @7 EXTERN ~C-SHERI~ C-SheriTalk1Beautiful
++ @8 EXTERN ~C-SHERI~ C-SheriTalk1GeneralNotInterested

/* General dialogue */

CHAIN IF ~OR(5) Gender(Player1,FEMALE) !IsGabber(Player1) !GlobalTimerExpired("RE_SheriTimer1","GLOBAL") Global("RE_SheriBawdySong","GLOBAL",1) Global("RE_SheriMatch","GLOBAL",4)~ THEN ~C-SHERI~ SheriBanter1
@9 
== ~C-SHERI~ IF ~IsGabber(Player1) Global("RE_SheriMatch","GLOBAL",2) !GlobalTimerExpired("RE_SheriTimer1","GLOBAL")~ THEN @10
== ~C-SHERI~ IF ~IsGabber(Player1) Global("RE_SheriMatch","GLOBAL",4)~ THEN @11
== ~BAERIE~ IF ~Global("C-SheriSings","GLOBAL",0) InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @12
== ~BAERIE~ IF ~Global("C-SheriSingsAerie","GLOBAL",1) InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @13 DO ~SetGlobal("C-SheriSingsAerie","GLOBAL",2)~
== ~BANOMEN~ IF ~Global("C-SheriSings","GLOBAL",1) Gender(Player1,FEMALE) InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @14
== ~BEDWIN~ IF ~Global("C-SheriSings","GLOBAL",2) InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @15
== ~BHAERDA~ IF ~Global("C-SheriSings","GLOBAL",1) InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @16
== ~BHAERDA~ IF ~Global("C-SheriSings","GLOBAL",2) InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @17
== ~BKELDOR~ IF ~Global("C-SheriSings","GLOBAL",3) InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @18 
== ~BJAHEIR~ IF ~Global("C-SheriSings","GLOBAL",2) InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @19
== ~BMINSC~ IF ~Global("C-SheriSings","GLOBAL",2) InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @20
== ~BMINSC~ IF ~Global("C-SheriSings","GLOBAL",4) InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @21
== ~BVICONI~ IF ~Global("C-SheriSings","GLOBAL",0) InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @22
== ~BVICONI~ IF ~Global("C-SheriSings","GLOBAL",1) InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @23
== ~BKORGAN~ IF ~Global("C-SheriSings","GLOBAL",1) InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @24
== ~BYOSHIM~ IF ~Global("C-SheriSings","GLOBAL",0) InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @25
== ~BYOSHIM~ IF ~Global("C-SheriSings","GLOBAL",1) InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @26
== ~BYOSHIM~ IF ~Global("C-SheriSings","GLOBAL",2) InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @27
== ~BYOSHIM~ IF ~Global("C-SheriSings","GLOBAL",3) InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @28
== ~BYOSHIM~ IF ~Global("C-SheriSings","GLOBAL",4) InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @29
== ~C-SHERI~ @30
END
++ @31 EXIT
+ ~RandomNum(8,1)~ + @32 DO ~IncrementGlobal("C-SheriSings","GLOBAL",1)~ EXTERN ~C-SHERI~ SheriBawdySongs1
+ ~RandomNum(8,2)~ + @32 DO ~IncrementGlobal("C-SheriSings","GLOBAL",1)~ EXTERN ~C-SHERI~ SheriBawdySongs2
+ ~RandomNum(8,3)~ + @32 DO ~IncrementGlobal("C-SheriSings","GLOBAL",1)~ EXTERN ~C-SHERI~ SheriBawdySongs3
+ ~RandomNum(8,4)~ + @32 DO ~IncrementGlobal("C-SheriSings","GLOBAL",1)~ EXTERN ~C-SHERI~ SheriBawdySongs4
+ ~RandomNum(8,5)~ + @32 DO ~IncrementGlobal("C-SheriSings","GLOBAL",1)~ EXTERN ~C-SHERI~ SheriBawdySongs5
+ ~RandomNum(8,6)~ + @32 DO ~IncrementGlobal("C-SheriSings","GLOBAL",1)~ EXTERN ~C-SHERI~ SheriBawdySongs6
+ ~RandomNum(8,7)~ + @32 DO ~IncrementGlobal("C-SheriSings","GLOBAL",1)~ EXTERN ~C-SHERI~ SheriBawdySongs7
+ ~RandomNum(8,8)~ + @32 DO ~IncrementGlobal("C-SheriSings","GLOBAL",1)~ EXTERN ~C-SHERI~ SheriBawdySongs8
++ @33 DO ~IncrementGlobal("C-SheriSings","GLOBAL",1)~ EXTERN ~C-SHERI~ SheriBawdySongs1
++ @34 DO ~IncrementGlobal("C-SheriSings","GLOBAL",1)~ EXTERN ~C-SHERI~ SheriBawdySongs2
++ @35 DO ~IncrementGlobal("C-SheriSings","GLOBAL",1)~ EXTERN ~C-SHERI~ SheriBawdySongs3
++ @36 DO ~IncrementGlobal("C-SheriSings","GLOBAL",1)~ EXTERN ~C-SHERI~ SheriBawdySongs4
++ @37 DO ~IncrementGlobal("C-SheriSings","GLOBAL",1)~ EXTERN ~C-SHERI~ SheriBawdySongs5
++ @38 DO ~IncrementGlobal("C-SheriSings","GLOBAL",1)~ EXTERN ~C-SHERI~ SheriBawdySongs6
++ @39 DO ~IncrementGlobal("C-SheriSings","GLOBAL",1)~ EXTERN ~C-SHERI~ SheriBawdySongs7
++ @40 DO ~IncrementGlobal("C-SheriSings","GLOBAL",1)~ EXTERN ~C-SHERI~ SheriBawdySongs8

/* The Riddle Song (traditional, Celtic/Appalachain), adapted by cmorgan */
CHAIN ~C-SHERI~ SheriBawdySongs1
@41
= @42
= @43
== ~BAERIE~ IF ~Global("C-SheriSingsAerie","GLOBAL",0) InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @44 DO ~SetGlobal("C-SheriSingsAerie","GLOBAL",1)~
END
IF ~~ THEN EXIT

/* The Riddle Song (traditional, Celtic/Appalachain) */
/* "ribald" version, adapted by cmorgan from lyrics by Allan Sherman. */
CHAIN ~C-SHERI~ SheriBawdySongs2
@45
= @46
== ~BAERIE~ IF ~Global("C-SheriSingsAerie","GLOBAL",0) InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @44 DO ~SetGlobal("C-SheriSingsAerie","GLOBAL",1)~
END
IF ~~ THEN EXIT

/* The Whistling Gypsy Rover, Celtic Traditional, Popular Childe Ballad. Also known as The Gypsy Rover. */
/* recommended listening: The Kinsgston trio, Clancy Brothers, many others. */
CHAIN ~C-SHERI~ SheriBawdySongs3
@47
= @48
= @49
= @50
= @51
= @52
= @53
= @54
= @55
END
IF ~~ THEN EXIT

/* A Maiden Did Bathing Go, Traditional */
/* http://www.traditionalmusic.co.uk/bawdy-songs/000076.HTM Public Domain Goddess change for FR */
CHAIN ~C-SHERI~ SheriBawdySongs4
@56
= @57
= @58
= @59
= @60
= @61
== ~BAERIE~ IF ~Global("C-SheriSingsAerie","GLOBAL",0) InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @44 DO ~SetGlobal("C-SheriSingsAerie","GLOBAL",1)~
END
IF ~~ THEN EXIT

/* Blow The Candles Out, Traditional */
/* http://www.traditionalmusic.co.uk/bawdy-songs/001073.HTM Public Domain (place change for FR) */
/* one of the most beautiful songs ever arranged for high school choir, in spite of its subject matter... */
CHAIN ~C-SHERI~ SheriBawdySongs5
@62
= @63
= @64
= @65
= @66
== ~BAERIE~ IF ~Global("C-SheriSingsAerie","GLOBAL",0) InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @44 DO ~SetGlobal("C-SheriSingsAerie","GLOBAL",1)~
END
IF ~~ THEN EXIT

/* Two Maidens Went Milking One Day, Traditional */
/* http://www.traditionalmusic.co.uk/bawdy-songs/010514.HTM Public Domain */
CHAIN ~C-SHERI~ SheriBawdySongs6
@67
= @68
= @69
= @70
= @71
== ~BAERIE~ IF ~Global("C-SheriSingsAerie","GLOBAL",0) InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @44 DO ~SetGlobal("C-SheriSingsAerie","GLOBAL",1)~
END
IF ~~ THEN EXIT

/* Sweet Joan, Traditional */
/* http://www.traditionalmusic.co.uk/bawdy-songs/009910.HTM Public Domain */
CHAIN ~C-SHERI~ SheriBawdySongs7
@72
= @73
= @74
== ~BAERIE~ IF ~Global("C-SheriSingsAerie","GLOBAL",0) InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @44 DO ~SetGlobal("C-SheriSingsAerie","GLOBAL",1)~
END
IF ~~ THEN EXIT

/* The Shape Of Things, by Sheldon Harnick */
/* (copyright date unknown, but pre 1952) FR minor adjustments */
CHAIN ~C-SHERI~ SheriBawdySongs8
@75
= @76
= @77
= @78
== ~BAERIE~ IF ~Global("C-SheriSingsAerie","GLOBAL",0) InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @44 DO ~SetGlobal("C-SheriSingsAerie","GLOBAL",1)~
END
IF ~~ THEN EXIT

CHAIN ~C-SHERI~ C-SheriTalk1GeneralJustASong
@79
DO ~SetGlobal("C-SheriSteal","GLOBAL",1) SetGlobalTimer("RE_SheriTimer1","GLOBAL",ONE_DAY)~
EXIT

CHAIN ~C-SHERI~ C-SheriTalk1GeneralNotInterested
@80
DO ~SetGlobal("RE_SheriMatch","GLOBAL",10) SetGlobal("RE_SheriBawdySong","GLOBAL",1)~
EXIT

CHAIN ~C-SHERI~ C-SheriTalk1Beautiful
@81
END
++ @82 EXTERN ~C-SHERI~ C-SheriTalk1Insult
++ @83 EXTERN ~C-SHERI~ C-SheriTalk1Laugh
+ ~!Class(Player1,BARD_ALL)~ + @84 EXTERN ~C-SHERI~ C-SheriTalk1Laugh
+ ~Class(Player1,BARD_ALL)~ + @85 EXTERN ~C-SHERI~ C-SheriTalk1Laugh
++ @86 EXTERN ~C-SHERI~ C-SheriTalk1Tomorrow

CHAIN ~C-SHERI~ C-SheriTalk1Tomorrow
@87
END
IF ~~ THEN DO ~SetGlobal("C-SheriSteal","GLOBAL",1) SetGlobalTimer("RE_SheriTimer1","GLOBAL",ONE_DAY)~ EXIT

CHAIN ~C-SHERI~ C-SheriTalk1Laugh
@88
= @89
END
++ @90 EXTERN ~C-SHERI~ C-SheriTalk1Song
++ @91 EXTERN ~C-SHERI~ C-SheriTalk1Song
++ @92 EXTERN ~C-SHERI~ C-SheriTalk1Song
++ @93 EXTERN ~C-SHERI~ C-SheriTalk1NoCoin
++ @94 EXTERN ~C-SHERI~ C-SheriTalk1Flatter

CHAIN ~C-SHERI~ C-SheriTalk1NoCoin
@95
= @96
END
++ @97 EXTERN ~C-SHERI~ C-SheriTalk1Song
++ @98 EXTERN ~C-SHERI~ C-SheriTalk1Song
++ @99 EXTERN ~C-SHERI~ C-SheriTalk1Song
++ @100 EXTERN ~C-SHERI~ C-SheriTalk1Song2

CHAIN ~C-SHERI~ C-SheriTalk1Flatter
@101
= @102
= @96
END
++ @97 EXTERN ~C-SHERI~ C-SheriTalk1Song
++ @98 EXTERN ~C-SHERI~ C-SheriTalk1Song
++ @99 EXTERN ~C-SHERI~ C-SheriTalk1Song
++ @103 EXTERN ~C-SHERI~ C-SheriTalk1NoCoin
++ @104 EXTERN ~C-SHERI~ C-SheriTalk1Tomorrow

CHAIN ~C-SHERI~ C-SheriTalk1Song
@105
END
IF ~~ EXTERN C-SHERI C-SheriTalk1SongSing

CHAIN ~C-SHERI~ C-SheriTalk1Song2
@106
END
IF ~~ EXTERN C-SHERI C-SheriTalk1SongSing

CHAIN ~C-SHERI~ C-SheriTalk1SongSing
@107
= @108
= @43
END
++ @109 EXTERN ~C-SHERI~ C-SheriTalk1Falter
++ @110 EXTERN ~C-SHERI~ C-SheriTalk1Falter
++ @111 EXTERN ~C-SHERI~ C-SheriTalk1Falter
++ @112 EXTERN ~C-SHERI~ C-SheriTalk1Angry
++ @113 EXTERN ~C-SHERI~ C-SheriTalk1Angry

CHAIN ~C-SHERI~ C-SheriTalk1Falter
@114
= @115
= @45
= @46
= @116
END
++ @117 EXTERN ~C-SHERI~ C-SheriTalk1Unnamed
++ @118 EXTERN ~C-SHERI~ C-SheriTalk1Finale
++ @119 EXTERN ~C-SHERI~ C-SheriTalk1Beautiful2

CHAIN ~C-SHERI~ C-SheriTalk1Unnamed
@120
= @121
END
IF ~~ THEN EXTERN ~C-SHERI~ C-SheriTalk1Finale

CHAIN ~C-SHERI~ C-SheriTalk1Angry
@122
= @123
= @45
= @124
= @125
END
++ @117 EXTERN ~C-SHERI~ C-SheriTalk1Angry2
++ @118 EXTERN ~C-SHERI~ C-SheriTalk1AngryNamed
++ @119 EXTERN ~C-SHERI~ C-SheriTalk1Beautiful2

CHAIN ~C-SHERI~ C-SheriTalk1Beautiful2
@126
END
++ @127 EXTERN ~C-SHERI~ C-SheriTalkLaughInterest
++ @128 EXTERN ~C-SHERI~ C-SheriTalkLaughInterest
++ @129 EXTERN ~C-SHERI~ C-SheriTalk1AngryNamed

CHAIN ~C-SHERI~ C-SheriTalkLaughInterest
@130
END
++ @131 EXTERN ~C-SHERI~ C-SheriTalk1AngryNamed
++ @132 EXTERN ~C-SHERI~ C-SheriTalk1HappyNamed
++ @133 EXTERN ~C-SHERI~ C-SheriTalk1HappyNamed
++ @134 EXTERN ~C-SHERI~ C-SheriTalk1HappyNamed
++ @135 EXTERN ~C-SHERI~ C-SheriTalk1Finale

APPEND ~C-SHERI~
 
IF ~~ THEN C-SheriTalk1HappyNamed
SAY @136
IF ~~ THEN GOTO C-SheriTalk1Finale
END

END

CHAIN ~C-SHERI~ C-SheriTalk1AngryNamed
@137
END
++ @138 EXTERN ~C-SHERI~ C-SheriTalk1CoinCatch
++ @139 DO ~SetGlobal("C-SheriSteal","GLOBAL",1) SetGlobalTimer("RE_SheriTimer1","GLOBAL",ONE_DAY)~ EXIT
++ @140 EXTERN ~C-SHERI~ C-SheriTalk1CoinCatch

CHAIN ~C-SHERI~ C-SheriTalk1Angry2
@120
= @121
END
IF ~~ THEN EXTERN ~C-SHERI~ C-SheriTalk1Finale

CHAIN ~C-SHERI~ C-SheriTalk1Insult
@141
= @142
END
++ @143 EXTERN ~C-SHERI~ C-SheriTalk1Tomorrow
++ @144 EXTERN ~C-SHERI~ C-SheriTalk1Tomorrow
++ @145 EXTERN ~C-SHERI~ C-SheriTalk1Tomorrow

CHAIN ~C-SHERI~ C-SheriTalk1CoinCatch
@146
= @147
DO ~SetGlobal("C-SheriSeduce","GLOBAL",1) SetGlobalTimer("RE_SheriTimer1","GLOBAL",ONE_DAY)~
EXIT

CHAIN ~C-SHERI~ C-SheriTalk1Finale
@148
= @149
END
++ @150 DO ~SetGlobal("C-SheriSeduce","GLOBAL",1) SetGlobalTimer("RE_SheriTimer1","GLOBAL",ONE_DAY)~ EXIT
++ @151 DO ~SetGlobal("C-SheriSteal","GLOBAL",1) SetGlobalTimer("RE_SheriTimer1","GLOBAL",ONE_DAY)~ EXIT
++ @152 DO ~SetGlobal("C-SheriSeduce","GLOBAL",1) SetGlobalTimer("RE_SheriTimer1","GLOBAL",ONE_DAY)~ EXIT
++ @153 DO ~SetGlobal("C-SheriSeduce","GLOBAL",1) SetGlobalTimer("RE_SheriTimer1","GLOBAL",ONE_DAY)~ EXIT
++ @154 DO ~SetGlobal("C-SheriSeduce","GLOBAL",1) SetGlobalTimer("RE_SheriTimer1","GLOBAL",ONE_DAY)~ EXIT

/* Day 2 */

CHAIN IF WEIGHT #-1 ~IsGabber(Player1) Global("RE_SheriMatch","GLOBAL",2) GlobalTimerExpired("RE_SheriTimer1","GLOBAL")~ THEN ~C-SHERI~ SheriTalk2
@155 
DO ~SetGlobal("RE_SheriMatch","GLOBAL",4)~ 
= @156
= @157
= @158
== ~C-SHERI~ IF ~Global("C-SheriSeduce","GLOBAL",1)~ @159
== ~C-SHERI~ IF ~Global("C-SheriSteal","GLOBAL",1)~ @160
== ~C-SHERI~ @161
END
++ @162 EXTERN ~C-SHERI~ C-SheriInterestedEyes
++ @163 EXTERN ~C-SHERI~ C-SheriInspiration
++ @164 EXTERN ~C-SHERI~ C-SheriFinishGypsy
+ ~Global("C-SheriSteal","GLOBAL",1)~ + @165 EXTERN ~C-SHERI~ C-SheriStartOver
+ ~Global("C-SheriSteal","GLOBAL",1)~ + @166 EXTERN ~C-SHERI~ C-SheriTwoWordsFU
+ ~Global("C-SheriSeduce","GLOBAL",1)~ + @167 EXTERN ~C-SHERI~ C-SheriDance

CHAIN ~C-SHERI~ C-SheriInspiration
@168
END
++ @169 EXTERN ~C-SHERI~ Incorageable
++ @170 EXTERN ~C-SHERI~ Incorageable
++ @171 EXTERN ~C-SHERI~ C-SheriTwoWordsFU

CHAIN ~C-SHERI~ Incorageable
@172
= @173
END
++ @174 EXTERN ~C-SHERI~ C-SheriDance
++ @175 EXTERN ~C-SHERI~ C-SheriDance
++ @176 EXTERN ~C-SHERI~ C-SheriDance
++ @177 EXTERN ~C-SHERI~ C-SheriDance
++ @178 EXTERN ~C-SHERI~ ComeUpAndSeeMeSomeTime

CHAIN ~C-SHERI~ ComeUpAndSeeMeSomeTime
@179
== ~C-SHERI~ IF ~Global("C-SheriSeduce","GLOBAL",1)~ THEN @180 DO ~SetGlobal("C-SheriSeduce","GLOBAL",2)~
== ~C-SHERI~ IF ~Global("C-SheriSteal","GLOBAL",1)~ THEN @181 DO ~SetGlobal("C-SheriSteal","GLOBAL",2)~
EXIT

CHAIN ~C-SHERI~ C-SheriDance
@182
DO ~SetGlobal("RE_SheriFlirt","GLOBAL",1)~
= @183
== ~C-SHERI~ IF ~Global("C-SheriSeduce","GLOBAL",1)~ THEN @184
== ~C-SHERI~ IF ~Global("C-SheriSteal","GLOBAL",1)~ THEN @185
== ~C-SHERI~ IF ~Global("C-SheriSeduce","GLOBAL",1)~ THEN @186
== ~C-SHERI~ IF ~Global("C-SheriSteal","GLOBAL",1)~ THEN @187
== ~C-SHERI~ IF ~Global("C-SheriSeduce","GLOBAL",1)~ THEN @188
== ~C-SHERI~ @189
END
++ @190 EXTERN ~C-SHERI~ C-SheriDance2
++ @191 EXTERN ~C-SHERI~ C-SheriDance2
++ @192 EXTERN ~C-SHERI~ C-SheriDance2
+ ~Global("C-SheriSteal","GLOBAL",1)~ + @193 EXTERN ~C-SHERI~ C-SheriTwoWordsFU
++ @178 EXTERN ~C-SHERI~ ComeUpAndSeeMeSomeTime

CHAIN ~C-SHERI~ C-SheriDance2
@194
DO ~SetGlobal("RE_SheriFlirt","GLOBAL",1)~
= @195
= @196
= @197
= @198
END
++ @199 EXTERN ~C-SHERI~ C-SheriMakeout
++ @178 EXTERN ~C-SHERI~ ComeUpAndSeeMeSomeTime
++ @200 EXTERN ~C-SHERI~ C-SheriMakeout
++ @201 EXTERN ~C-SHERI~ C-SheriMakeout

CHAIN ~C-SHERI~ C-SheriMakeout
@202
= @203
= @204
= @205
END
++ @206 EXTERN ~C-SHERI~ C-SheriRubLegs
++ @207 EXTERN ~C-SHERI~ C-SheriRubLegs
++ @208 EXTERN ~C-SHERI~ C-RubSheriLegs2
++ @209 EXTERN ~C-SHERI~ C-SheriNotYet
++ @210 EXTERN ~C-SHERI~ ComeUpAndSeeMeSomeTime

CHAIN ~C-SHERI~ C-SheriRubLegs
@211
= @212
= @213
= @214
END
++ @215 EXTERN ~C-SHERI~ C-SheriRubLegs2
++ @216 EXTERN ~C-SHERI~ C-RubSheriLegs2
++ @217 EXTERN ~C-SHERI~ C-SheriRubLegs2

CHAIN ~C-SHERI~ C-RubSheriLegs2
@218
= @219
= @220
= @221
END
++ @209 EXTERN ~C-SHERI~ C-SheriNotYet
++ @222 EXTERN ~C-SHERI~ C-SheriNotYet
++ @223 EXTERN ~C-SHERI~ C-SheriNice
++ @224 EXTERN ~C-SHERI~ C-SheriCareful

CHAIN ~C-SHERI~ C-SheriRubLegs2
@225
= @219
= @226
= @227
= @228
END
++ @209 EXTERN ~C-SHERI~ C-SheriNotYet
++ @222 EXTERN ~C-SHERI~ C-SheriNotYet
++ @223 EXTERN ~C-SHERI~ C-SheriNice
++ @224 EXTERN ~C-SHERI~ C-SheriCareful

CHAIN ~C-SHERI~ C-SheriNotYet
@229
= @230
END
IF ~~ THEN EXTERN ~C-SHERI~ C-SheriCareful

CHAIN ~C-SHERI~ C-SheriCareful
@231
= @232
= @233
= @234
= @235
= @236
= @237
END
IF ~~ THEN EXTERN ~C-SHERI~ C-SheriGoneTooFar

CHAIN ~C-SHERI~ C-SheriNice
@238
= @230
= @239
END
IF ~~ THEN EXTERN ~C-SHERI~ C-SheriGoneTooFar

CHAIN ~C-SHERI~ C-SheriStartOver
@240
== ~C-SHERI~ IF ~ReputationLT(Player1,10)~ THEN @241
== ~C-SHERI~ IF ~ReputationGT(Player1,9) ReputationLT(Player1,15)~ THEN @242
== ~C-SHERI~ IF ~ReputationGT(Player1,14)~ THEN @243
END
+ ~ReputationLT(Player1,10)~ + @244 EXTERN ~C-SHERI~ ComeUpAndSeeMeSomeTime
+ ~ReputationGT(Player1,9)~ + @245 EXTERN ~C-SHERI~ C-SheriStartOverDance
+ ~ReputationGT(Player1,9)~ + @246 EXTERN ~C-SHERI~ C-SheriStartOverDance
++ @247 EXTERN ~C-SHERI~ C-SheriTwoWordsFU
++ @248 EXTERN ~C-SHERI~ C-SheriTwoWordsFU

CHAIN ~C-SHERI~ C-SheriStartOverDance
@249
END
IF ~~ DO ~SetGlobal("RE_SheriFlirt","GLOBAL",1)~ EXTERN C-SHERI C-RE-D

IF ~InParty("Aerie") OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_SheriFlirtAerie","GLOBAL",1) SetGlobal("RE_SheriFlirt","GLOBAL",1)~ EXTERN C-SHERI C-RE-D
IF ~InParty("Jaheira") OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_SheriFlirtJaheira","GLOBAL",1) SetGlobal("RE_SheriFlirt","GLOBAL",1)~ EXTERN C-SHERI C-RE-D
IF ~InParty("Viconia") OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_SheriFlirtViconia","GLOBAL",1) SetGlobal("RE_SheriFlirt","GLOBAL",1)~ EXTERN C-SHERI C-RE-D

IF ~InParty("Aerie") OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2) 
InParty("Jaheira") OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_SheriFlirtAerie","GLOBAL",1) SetGlobal("RE_SheriFlirtJaheira","GLOBAL",1) SetGlobal("RE_SheriFlirt","GLOBAL",1)~ EXTERN C-SHERI C-RE-D
IF ~InParty("Aerie") OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2) 
InParty("Viconia") OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_SheriFlirtAerie","GLOBAL",1) SetGlobal("RE_SheriFlirtViconia","GLOBAL",1) SetGlobal("RE_SheriFlirt","GLOBAL",1)~ EXTERN C-SHERI C-RE-D
IF ~InParty("Jaheira") OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2)
InParty("Viconia") OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_SheriFlirtJaheira","GLOBAL",1) SetGlobal("RE_SheriFlirtViconia","GLOBAL",1) SetGlobal("RE_SheriFlirt","GLOBAL",1)~ EXTERN C-SHERI C-RE-D

IF ~InParty("Aerie") OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2) 
InParty("Jaheira") OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2)
InParty("Viconia") OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_SheriFlirtAerie","GLOBAL",1) SetGlobal("RE_SheriFlirtJaheira","GLOBAL",1) SetGlobal("RE_SheriFlirtViconia","GLOBAL",1) SetGlobal("RE_SheriFlirt","GLOBAL",1)~ EXTERN C-SHERI C-RE-D



CHAIN ~C-SHERI~ C-RE-D
@250
= @185
= @251
= @188
END
++ @190 EXTERN ~C-SHERI~ C-SheriDance2
++ @191 EXTERN ~C-SHERI~ C-SheriDance2
++ @192 EXTERN ~C-SHERI~ C-SheriDance2
+ ~Global("C-SheriSteal","GLOBAL",1)~ + @252 EXTERN ~C-SHERI~ C-SheriHopeless
++ @178 EXTERN ~C-SHERI~ ComeUpAndSeeMeSomeTime
++ @253 EXTERN ~C-SHERI~ ComeUpAndSeeMeSomeTime

CHAIN ~C-SHERI~ C-SheriTwoWordsFU
@254
END
++ @255 EXTERN ~C-SHERI~ C-SheriBadBoys
++ @256 EXTERN ~C-SHERI~ C-SheriBadBoys
++ @257 EXTERN ~C-SHERI~ C-SheriStartOver
++ @258 EXTERN ~C-SHERI~ C-SheriBadBoys

CHAIN ~C-SHERI~ C-SheriBadBoys
@259
= @260
== ~C-SHERI~ IF ~ReputationLT(Player1,10)~ THEN @261
== ~C-SHERI~ IF ~ReputationGT(Player1,9) ReputationLT(Player1,15)~ THEN @262
== ~C-SHERI~ IF ~ReputationGT(Player1,14)~ THEN @263
END
+ ~ReputationGT(Player1,9)~ + @264 EXTERN ~C-SHERI~ C-SheriStartOver
+ ~ReputationLT(Player1,10)~ + @264 EXTERN ~C-SHERI~ C-SheriHopeless1
++ @265 DO ~SetGlobal("C-SheriSteal","GLOBAL",2)~ EXTERN ~C-SHERI~ C-SheriHopeless
++ @266 DO ~SetGlobal("C-SheriSteal","GLOBAL",2)~ EXTERN ~C-SHERI~ C-SheriHopeless
++ @267 DO ~SetGlobal("C-SheriSteal","GLOBAL",2)~ EXTERN ~C-SHERI~ C-SheriHopeless
+ ~ReputationGT(Player1,9)~ + @268 EXTERN ~C-SHERI~ C-SheriStartOver
+ ~ReputationLT(Player1,10)~ + @268 EXTERN ~C-SHERI~ C-SheriHopeless1

CHAIN ~C-SHERI~ C-SheriFinishGypsy
@49 
= @50
= @51
= @52
= @53
= @54
= @269
END
++ @270 EXTERN ~C-SHERI~ C-SheriInterestedEyes
+ ~Class(Player1,BARD_ALL)~ + @271 EXTERN ~C-SHERI~ C-SheriInterestedThroat
+ ~Class(Player1,FIGHTER_ALL)~ + @272 EXTERN ~C-SHERI~ C-SheriInterestedEyes
+ ~Class(Player1,MAGE_ALL)~ + @273 EXTERN ~C-SHERI~ C-SheriInterestedEyes
+ ~Class(Player1,CLERIC_ALL)~ + @274 EXTERN ~C-SHERI~ C-SheriInterestedEyes
+ ~Class(Player1,PALADIN_ALL)~ + @275 EXTERN ~C-SHERI~ C-SheriInterestedEyes
++ @276 EXTERN ~C-SHERI~ C-SheriInterestedEyes
++ @277 EXTERN ~C-SHERI~ C-SheriInterestedEyes

CHAIN ~C-SHERI~ C-SheriInterestedThroat
@278
= @279
= @280
END
++ @281 EXTERN ~C-SHERI~ C-SheriPrivateAudience
++ @282 EXTERN ~C-SHERI~ C-SheriPrivateAudience
++ @283 EXTERN ~C-SHERI~ C-SheriSongForEar

CHAIN ~C-SHERI~ C-SheriInterestedEyes
@278
= @284
= @285
END
++ @281 EXTERN ~C-SHERI~ C-SheriPrivateAudience
++ @282 EXTERN ~C-SHERI~ C-SheriPrivateAudience
++ @283 EXTERN ~C-SHERI~ C-SheriSongForEar

APPEND ~C-SHERI~

IF ~~ THEN C-SheriHopeless
SAY @286
= @287 
IF ~~ DO ~SetGlobal("RE_SheriMatch","GLOBAL",10) SetGlobal("RE_SheriBawdySong","GLOBAL",1)~ EXIT
END

IF ~~ THEN C-SheriHopeless1
SAY @288 
IF ~~ DO ~SetGlobal("RE_SheriMatch","GLOBAL",10) SetGlobal("RE_SheriBawdySong","GLOBAL",1)~ EXIT
END

IF ~~ THEN C-SheriSongForEar
SAY @289
IF ~~THEN REPLY @290 GOTO C-SheriMoreThanEar
IF ~~ THEN REPLY @291 GOTO C-SheriPrivateAudience
IF ~~THEN REPLY @292 GOTO C-SheriMoreThanEar
END

IF ~~ THEN C-SheriMoreThanEar
SAY @293
IF ~~ THEN REPLY @294 GOTO C-SheriPrivateAudience
IF ~~ THEN REPLY @295 GOTO C-SheriPrivateAudience
IF ~~ THEN REPLY @296 GOTO C-SheriPrivateAudience
END

IF ~~ THEN C-SheriDanceDrink
SAY @297
IF ~~ THEN GOTO C-SheriDance
END

IF ~~ THEN C-SheriGoneTooFar
SAY @298
IF ~~ THEN DO ~SetGlobal("C-SheriSeduce","GLOBAL",2)~ EXIT
END

END

CHAIN ~C-SHERI~ C-SheriPrivateAudience
@299
= @300
END
++ @301 EXTERN ~C-SHERI~ ComeUpAndSeeMeSomeTime
++ @302 EXTERN ~C-SHERI~ C-SheriDance
++ @303 EXTERN ~C-SHERI~ C-SheriDanceDrink

/* Night scene */ 

CHAIN ~C-SHERI~ C-SheriBedSceneNo
@304
= @305
END
IF ~~ THEN DO ~SetGlobal("RE_SheriMatch","GLOBAL",10) SetGlobal("RE_SheriBawdySong","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("RE_She4")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("RE_SheriMatch","GLOBAL",5)~ THEN ~C-SHERI~ C-SheriBedScene
@306 
DO ~SetGlobal("RE_SheriMatch","GLOBAL",6)~ 
= @307
END
++ @308 EXTERN ~C-SHERI~ C-SheriBedSceneOneSilent
++ @309 EXTERN ~C-SHERI~ C-SheriBedSceneOneSilent
++ @310 EXTERN ~C-SHERI~ C-SheriBedSceneOneSilent
++ @311 EXTERN ~C-SHERI~ C-SheriBedSceneOneTalk
++ @312 EXTERN ~C-SHERI~ C-SheriBedSceneOneTalk

CHAIN ~C-SHERI~ C-SheriBedSceneOneSilent
@313
= @314
END
++ @308 EXTERN ~C-SHERI~ C-SheriBedSceneTwoSilent
++ @315 EXTERN ~C-SHERI~ C-SheriBedSceneTwoSilent
++ @309 EXTERN ~C-SHERI~ C-SheriBedSceneTwoSilent
+ ~Global("C-SheriSeduce","GLOBAL",2)~ + @316 EXTERN ~C-SHERI~ C-SheriBedSceneTwoTalk
+ ~Global("C-SheriSeduce","GLOBAL",2)~ + @317 EXTERN ~C-SHERI~ C-SheriBedSceneComfortable
+ ~Global("C-SheriSteal","GLOBAL",2)~ + @317 EXTERN ~C-SHERI~ C-SheriBedSceneOneTalk
+ ~Global("C-SheriSteal","GLOBAL",2)~ + @318 EXTERN ~C-SHERI~ RE_SheriSequence

CHAIN ~C-SHERI~ C-SheriBedSceneTwoSilent
@319
END
++ @320 EXTERN ~C-SHERI~ C-SheriAware
+ ~Global("RE_SheriRolledOver","GLOBAL",0)~ + @310 EXTERN ~C-SHERI~ C-SheriAware
++ @309 EXTERN ~C-SHERI~ C-SheriAware
++ @321 EXTERN ~C-SHERI~ C-SheriAware
++ @322 EXTERN ~C-SHERI~ RE_SheriSequence

CHAIN ~C-SHERI~ C-SheriAware
@323
END
IF ~~ EXTERN ~C-SHERI~ RE_SheriSequence

CHAIN ~C-SHERI~ C-SheriBedSceneComfortable
@324
= @325
= @326
END
IF ~~ EXTERN ~C-SHERI~ RE_SheriSequence

CHAIN ~C-SHERI~ C-SheriBedSceneOneTalk
@327
= @328
END
IF ~~ EXTERN ~C-SHERI~ RE_SheriSequence

CHAIN ~C-SHERI~ C-SheriBedSceneTwoTalk
@329
END
IF ~~ EXTERN ~C-SHERI~ RE_SheriSequence

CHAIN ~C-SHERI~ RE_SheriSequence
@330
== ~C-SHERI~ IF ~Global("C-SheriSeduce","GLOBAL",2)~ THEN @331
== ~C-SHERI~ IF ~Global("C-SheriSteal","GLOBAL",2)~ THEN @332
== ~C-SHERI~ IF ~Global("C-SheriSteal","GLOBAL",2)~ THEN @333
== ~C-SHERI~ @334 
END
++ @335 EXTERN ~C-SHERI~ C-SheriBedSceneFour
++ @336 EXTERN ~C-SHERI~ C-SheriBedSceneFour
++ @337 EXTERN ~C-SHERI~ C-SheriIKnowWhatISaid
++ @338 EXTERN ~C-SHERI~ C-SheriBedSceneFour
++ @339 EXTERN ~C-SHERI~ C-SheriBedSceneFour
++ @340 EXTERN ~C-SHERI~ C-SheriBedSceneNo

CHAIN ~C-SHERI~ C-SheriBedSceneFour
@341
= @342
END
++ @343 EXTERN ~C-SHERI~ C-SheriBedSceneLips
++ @344 EXTERN ~C-SHERI~ C-SheriBedSceneThroat
++ @345 EXTERN ~C-SHERI~ C-SheriBedSceneLips
++ @340 EXTERN ~C-SHERI~ C-SheriBedSceneNo

CHAIN ~C-SHERI~ C-SheriIKnowWhatISaid
@346
= @347
END
++ @348 EXTERN ~C-SHERI~ C-SheriBedSceneNo
++ @349 EXTERN ~C-SHERI~ C-SheriBedSceneFour
++ @350 EXTERN ~C-SHERI~ C-SheriBedSceneFour

APPEND ~C-SHERI~

IF ~~ THEN C-SheriBedSceneLips
SAY @351
IF ~~ THEN GOTO C-SheriBedSceneSeven
END

IF ~~ THEN C-SheriBedSceneThroat
SAY @352
IF ~~ THEN GOTO C-SheriBedSceneSeven
END

END

CHAIN ~C-SHERI~ C-SheriBedSceneSeven
@353
= @354
= @355
= @356
= @357
= @358
= @359
END
++ @360 EXTERN ~C-SHERI~ C-SheriBodice
++ @361 EXTERN ~C-SHERI~ C-SheriBodice
++ @362 EXTERN ~C-SHERI~ C-SheriCharTakeCommand
++ @363 EXTERN ~C-SHERI~ C-SheriBodice
++ @364 EXTERN ~C-SHERI~ C-SheriBodice
++ @365 EXTERN ~C-SHERI~ C-SheriBedSceneNo
++ @366 EXTERN ~C-SHERI~ C-SheriBedSceneNo

CHAIN ~C-SHERI~ C-SheriBodice
@367
= @368
= @369
= @370
END
++ @371 EXTERN ~C-SHERI~ C-SheriBodiceContinue
++ @372 EXTERN ~C-SHERI~ C-SheriBodiceContinue
++ @373 EXTERN ~C-SHERI~ C-SheriBedSceneNo
++ @374 EXTERN ~C-SHERI~ C-SheriBodiceContinue

CHAIN ~C-SHERI~ C-SheriBodiceContinue
@375
= @376
= @377
END
++ @378 EXTERN ~C-SHERI~ C-SheriCharTakeCommand
++ @379 EXTERN ~C-SHERI~ C-SheriTakeCommand
++ @380 EXTERN ~C-SHERI~ C-SheriBedSceneNo

CHAIN ~C-SHERI~ C-SheriTakeCommand
@381
= @382
= @383
= @384
= @385
END
IF ~~ THEN EXTERN ~C-SHERI~ C-SheriCharTakeCommand

CHAIN ~C-SHERI~ C-SheriCharTakeCommand
@386
= @387
= @388
= @389
= @390
= @391
= @392
= @393
END
IF ~~ DO ~SetGlobal("RE_SheriSex","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("RE_She2")~ EXIT



/* Aftermath */

CHAIN IF WEIGHT #-1 ~Global("RE_SheriMatch","GLOBAL",6)~ THEN ~C-SHERI~ C-AfterwardsTalkSex
@394 
DO ~SetGlobal("RE_SheriMatch","GLOBAL",7)~
== ~C-SHERI~ IF ~Global("C-SheriSteal","GLOBAL",2)~ THEN @395
== ~C-SHERI~ IF ~Global("C-SheriSeduce","GLOBAL",2)~ THEN @396
== ~C-SHERI~ @397
END
+ ~Global("C-SheriSeduce","GLOBAL",2)~ + @398 EXTERN ~C-SHERI~ SheriSeduceAftermath
+ ~Global("C-SheriSeduce","GLOBAL",2)~ + @399 EXTERN ~C-SHERI~ SheriSeduceAftermath
+ ~Global("C-SheriSeduce","GLOBAL",2)~ + @400 EXTERN ~C-SHERI~ SheriSeduceAftermath
+ ~Global("C-SheriSteal","GLOBAL",2)~ + @398 EXTERN ~C-SHERI~ SheriStolenAftermath
+ ~Global("C-SheriSteal","GLOBAL",2)~ + @399 EXTERN ~C-SHERI~ SheriStolenAftermath
+ ~Global("C-SheriSteal","GLOBAL",2)~ + @400 EXTERN ~C-SHERI~ SheriStolenAftermath

CHAIN ~C-SHERI~ SheriStolenAftermath
@401
END
++ @402 EXTERN ~C-SHERI~ SheriStolen
++ @403 EXTERN ~C-SHERI~ SheriStolen
++ @404 EXTERN ~C-SHERI~ SheriStolen

CHAIN ~C-SHERI~ SheriStolen
@405
= @406
= @407
= @408
= @409
= @410
= @411
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("RE_She4")~
EXIT

CHAIN ~C-SHERI~ SheriSeduceAftermath
@412
= @413
END
++ @414 EXTERN ~C-SHERI~ SheriSeduceAftermathFinale
++ @415 EXTERN ~C-SHERI~ SheriSeduceAftermathFinale
++ @416 EXTERN ~C-SHERI~ SheriSeduceAftermathFinale

CHAIN ~C-SHERI~ SheriSeduceAftermathFinale
@417
= @418
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("RE_She3")~
EXIT

/* The last visit */ 

CHAIN IF WEIGHT #-1 ~IsGabber(Player1) Global("RE_SheriMatch","GLOBAL",7)~ THEN ~C-Sheri~ SheriCoda
@419 
DO ~SetGlobal("RE_SheriMatch","GLOBAL",8)~ 
== ~C-SHERI~ IF ~Global("C-SheriSeduce","GLOBAL",2)~ THEN @420
== ~C-SHERI~ IF ~Global("C-SheriSteal","GLOBAL",2)~ THEN @421
== ~C-SHERI~ IF ~Global("C-SheriSteal","GLOBAL",2)~ THEN @422
== ~C-SHERI~ @423
END
+ ~Global("C-SheriSeduce","GLOBAL",2)~ + @424 EXTERN ~C-SHERI~ SheriTalkLeavingFOREVAR
+ ~Global("C-SheriSeduce","GLOBAL",2)~ + @425 EXTERN ~C-SHERI~ SheriTalkLeavingFOREVAR
++ @426 EXTERN ~C-SHERI~ SheriTalkLeavingFOREVAR
+ ~Global("C-SheriSteal","GLOBAL",2)~ + @427 EXTERN ~C-SHERI~ SheriTalkLeavingDark
+ ~Global("C-SheriSteal","GLOBAL",2)~ + @428 EXTERN ~C-SHERI~ SheriTalkLeavingDark
+ ~Global("C-SheriSteal","GLOBAL",2)~ + @429 EXTERN ~C-SHERI~ SheriTalkLeavingDark

CHAIN ~C-SHERI~ SheriTalkLeavingDark
@430
= @431
END
++ @432 EXTERN ~C-SHERI~ SheriTalkLeavingFOREVAR
++ @433 EXTERN ~C-SHERI~ SheriTalkLeavingFOREVAR
++ @434 EXTERN ~C-SHERI~ SheriTalkLeavingFOREVAR

CHAIN ~C-SHERI~ SheriTalkLeavingFOREVAR
@435
= @436
== ~C-SHERI~ IF ~Global("C-SheriSeduce","GLOBAL",2)~ THEN @437
== ~C-SHERI~ @438
= @439
END
++ @440 EXTERN ~C-SHERI~ C-SheriCoinFinale
++ @441 EXTERN ~C-SHERI~ C-SheriCoinFinale
++ @442 EXTERN ~C-SHERI~ C-SheriCoinFinale
++ @443 EXTERN ~C-SHERI~ C-SheriCoinFinale
++ @444 EXTERN ~C-SHERI~ C-SheriCoinFinale

CHAIN ~C-SHERI~ C-SheriCoinFinale
@445
== ~C-SHERI~ IF ~Global("C-SheriSteal","GLOBAL",2)~ THEN @446
== ~C-SHERI~ IF ~Global("C-SheriSeduce","GLOBAL",2)~ @447
END
++ @448 EXTERN ~C-SHERI~ C-SheriCoinFinaleYourToss
++ @449 EXTERN ~C-SHERI~ C-SheriCoinFinaleHerToss
++ @450 EXTERN ~C-SHERI~ C-SheriCoinFinaleHerToss
++ @451 EXTERN ~C-SHERI~ C-SheriCoinFinaleYourToss
++ @452 EXTERN ~C-SHERI~ C-SheriCoinFinaleEvil

CHAIN ~C-SHERI~ C-SheriCoinFinaleYourToss
@453
= @454
= @455
= @456
= @457
DO ~EscapeArea()~
EXIT

CHAIN ~C-SHERI~ C-SheriCoinFinaleHerToss
@458
= @453
= @459
= @460
= @457
DO ~EscapeArea()~
EXIT

CHAIN ~C-SHERI~ C-SheriCoinFinaleEvil
@461
DO ~EscapeArea()~
EXIT