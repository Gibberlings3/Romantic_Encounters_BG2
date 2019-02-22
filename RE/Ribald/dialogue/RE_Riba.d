BEGIN ~RE_Riba~

// Kulyok: adding "kill romance" option

EXTEND_BOTTOM RIBALD 0
IF ~IsGabber(Player1)
Gender(Player1,FEMALE)
OR(2)
Global("RE_RibaldRomanceActive","GLOBAL",1)
Global("RE_RibaldRomanceActive","GLOBAL",2)~ THEN REPLY @0 DO ~ SetGlobal("RE_RibaldRomanceActive","GLOBAL",3) SetGlobal("RE_RibaldDump","GLOBAL",1)~ EXTERN RIBALD RE_RibaldSheBreaks
END

APPEND RIBALD

IF ~~ THEN BEGIN RE_RibaldSheBreaks
SAY @1
IF ~~ EXIT
END
END

// 1) First encounter with Ribald

EXTEND_BOTTOM RIBALD 0
IF ~IsGabber(Player1)
Gender(Player1,FEMALE)
CheckStatGT(Player1,12,CHR)
Global("RE_RibaldSex","GLOBAL",0)~ THEN REPLY @2 DO ~ChangeAIScript("RE_RIBA",GENERAL)~ EXTERN RIBALD RE_RibaldEncounterStart
END

APPEND RIBALD

IF ~~ THEN BEGIN RE_RibaldEncounterStart
SAY @3
IF ~~ THEN REPLY @4 GOTO WrapItUp
IF ~~ THEN REPLY @5 GOTO BeHere
IF ~~ THEN REPLY @6 GOTO ServeMe
END

IF ~~ THEN BEGIN WrapItUp
SAY @7 
IF ~~ THEN DO ~StartStore("ribald",LastTalkedToBy())
~ EXIT
END

IF ~~ THEN BEGIN BeHere
SAY @8 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ServeMe
SAY @9
IF ~~ THEN REPLY @10 DO ~SetGlobal("RE_RibaldFlirt","GLOBAL",1)~ GOTO Come
IF ~~ THEN REPLY @5 GOTO BeHere
END

IF ~~ THEN BEGIN Come
SAY @11
= @12
IF ~~ THEN REPLY @13 GOTO GoodChoice
IF ~~ THEN REPLY @14 GOTO BeHere
IF ~~ THEN REPLY @15 GOTO Slow
END

IF ~~ THEN BEGIN GoodChoice
SAY @16
IF ~~ THEN DO ~StartStore("ribald",LastTalkedToBy())
~ EXIT
END

IF ~~ THEN BEGIN Slow
SAY @17
= @18
IF ~~ THEN REPLY @19 GOTO Sensates
IF ~~ THEN REPLY @20 GOTO BeHere
END

IF ~~ THEN BEGIN Sensates
SAY @21
IF ~~ THEN REPLY @22 GOTO Deidre
IF ~~ THEN REPLY @23 GOTO AllDay
IF ~~ THEN REPLY @24 GOTO HotRod
END

IF ~~ THEN BEGIN Deidre
SAY @25
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN AllDay
SAY @26
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN HotRod
SAY @27
IF ~~ THEN REPLY @28 GOTO GoodChoice
IF ~~ THEN REPLY @29 GOTO AllDay
IF ~~ THEN REPLY @30 GOTO MoneySpinner
END

IF ~~ THEN BEGIN MoneySpinner
SAY @31
IF ~~ THEN REPLY @32 GOTO Treasure
IF ~~ THEN REPLY @33 GOTO SexyTime
END

IF ~~ THEN BEGIN Treasure
SAY @34
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SexyTime
SAY @35
= @36
= @37
IF ~~ THEN DO ~SetGlobal("RE_RibaldSex","GLOBAL",1)
SetGlobal("RE_RibaldMorningAfter","LOCALS",1)
RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END

IF WEIGHT #-1
~Global("RE_RibaldMorningAfter","LOCALS",1)~
THEN BEGIN MorningAfter
SAY @38
IF ~~ THEN REPLY @39 DO ~SetGlobal("RE_RibaldMorningAfter","LOCALS",2)~ GOTO Exigent
IF ~~ THEN REPLY @40 DO ~SetGlobal("RE_RibaldMorningAfter","LOCALS",2)~ GOTO DownToBusiness
IF ~~ THEN REPLY @41 DO ~SetGlobal("RE_RibaldMorningAfter","LOCALS",2)~ GOTO GoodDeal
END

IF ~~ THEN BEGIN Exigent
SAY @42
= @43
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN DownToBusiness
SAY @44
= @43
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GoodDeal
SAY @45
= @43
IF ~~ THEN EXIT
END

END



// 2) Old Ribald's Random Speciality Volume 1 (aka Flirts)

// I added another (introductory) conversation, because I thought there was something missing.

EXTEND_BOTTOM RIBALD 0
IF ~IsGabber(Player1)
Gender(Player1,FEMALE)
CheckStatGT(Player1,12,CHR)
Global("RE_RibaldMorningAfter","LOCALS",2)~ THEN REPLY @46 EXTERN RIBALD RE_RibaldSpecialTalksStart
END



APPEND RIBALD

IF ~~ THEN BEGIN RE_RibaldSpecialTalksStart
SAY @47
= @48
IF ~~ THEN REPLY @49 DO ~SetGlobal("RE_RibaldMorningAfter","LOCALS",3)~ GOTO Boasting
IF ~~ THEN REPLY @50 DO ~SetGlobal("RE_RibaldMorningAfter","LOCALS",3)~ GOTO HealingPotions
IF ~~ THEN REPLY @51 DO ~SetGlobal("RE_RibaldMorningAfter","LOCALS",3)~ GOTO BigMistake
END

IF ~~ THEN BEGIN Boasting
SAY @52
= @53
IF ~~ THEN DO ~SetGlobal("RE_RibaldRomanceActive","GLOBAL",1)
RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END

IF ~~ THEN BEGIN HealingPotions
SAY @54
= @55
IF ~~ THEN REPLY @56 DO ~SetGlobal("RE_RibaldRomanceActive","GLOBAL",3)~ GOTO IDoHaveIt
IF ~~ THEN REPLY @57 GOTO PassionateHours
END

IF ~~ THEN BEGIN PassionateHours
SAY @58
= @59
IF ~~ THEN DO ~SetGlobal("RE_RibaldRomanceActive","GLOBAL",1)
RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END

IF ~~ THEN BEGIN BigMistake
SAY @60
= @61
= @62
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN IDoHaveIt
SAY @63
= @61
= @62
IF ~~ THEN EXIT
END

END



// Now to the random flirts

EXTEND_BOTTOM RIBALD 0
IF ~IsGabber(Player1)
Gender(Player1,FEMALE)
CheckStatGT(Player1,12,CHR)
Global("RE_RibaldRomanceActive","GLOBAL",1)
RandomNum(6,1)~ THEN REPLY @64 EXTERN RIBALD Special1
END

EXTEND_BOTTOM RIBALD 0
IF ~IsGabber(Player1)
Gender(Player1,FEMALE)
CheckStatGT(Player1,12,CHR)
Global("RE_RibaldRomanceActive","GLOBAL",1)
RandomNum(6,2)~ THEN REPLY @64 EXTERN RIBALD Special2
END

EXTEND_BOTTOM RIBALD 0
IF ~IsGabber(Player1)
Gender(Player1,FEMALE)
CheckStatGT(Player1,12,CHR)
Global("RE_RibaldRomanceActive","GLOBAL",1)
RandomNum(6,3)~ THEN REPLY @64 EXTERN RIBALD Special3
END

EXTEND_BOTTOM RIBALD 0
IF ~IsGabber(Player1)
Gender(Player1,FEMALE)
CheckStatGT(Player1,12,CHR)
Global("RE_RibaldRomanceActive","GLOBAL",1)
RandomNum(6,4)~ THEN REPLY @64 EXTERN RIBALD Special4
END

EXTEND_BOTTOM RIBALD 0
IF ~IsGabber(Player1)
Gender(Player1,FEMALE)
CheckStatGT(Player1,12,CHR)
Global("RE_RibaldRomanceActive","GLOBAL",1)
RandomNum(6,5)~ THEN REPLY @64 EXTERN RIBALD Special5
END

EXTEND_BOTTOM RIBALD 0
IF ~IsGabber(Player1)
Gender(Player1,FEMALE)
CheckStatGT(Player1,12,CHR)
Global("RE_RibaldRomanceActive","GLOBAL",1)
RandomNum(6,6)~ THEN REPLY @64 EXTERN RIBALD Special6
END



APPEND RIBALD

IF ~~ THEN BEGIN Special1
SAY @65
IF ~~ THEN DO ~RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END

IF ~~ THEN BEGIN Special2
SAY @66
IF ~~ THEN DO ~RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END

IF ~~ THEN BEGIN Special3
SAY @67
IF ~~ THEN DO ~RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END

IF ~~ THEN BEGIN Special4
SAY @68
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Special5
SAY @69
IF ~~ THEN DO ~RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END

IF ~~ THEN BEGIN Special6
SAY @70
IF ~~ THEN DO ~RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END

END



// Old Ribald's Specialities Volume 1 (aka Lovetalks)

// 3) Sick, Sad World

APPEND RIBALD

IF WEIGHT #-1
~Global("RE_RibaldSpecialTalk","GLOBAL",2)~ THEN BEGIN SAndM
SAY @71
IF ~~ THEN REPLY @72 DO ~IncrementGlobal("RE_RibaldSpecialTalk","GLOBAL",1) RealSetGlobalTimer("RE_RibaldTimer","GLOBAL",1800)~ GOTO PoorJudgement1
IF ~~ THEN REPLY @73 DO ~IncrementGlobal("RE_RibaldSpecialTalk","GLOBAL",1) RealSetGlobalTimer("RE_RibaldTimer","GLOBAL",1800)~ GOTO PoorJudgement2
IF ~~ THEN REPLY @74 DO ~IncrementGlobal("RE_RibaldSpecialTalk","GLOBAL",1) RealSetGlobalTimer("RE_RibaldTimer","GLOBAL",1800)~ GOTO Cherries
IF ~~ THEN REPLY @75 DO ~IncrementGlobal("RE_RibaldSpecialTalk","GLOBAL",1) RealSetGlobalTimer("RE_RibaldTimer","GLOBAL",1800)~ GOTO WeAimToPlease
IF ~~ THEN REPLY @76 DO ~IncrementGlobal("RE_RibaldSpecialTalk","GLOBAL",1) RealSetGlobalTimer("RE_RibaldTimer","GLOBAL",1800)~ GOTO AllDay
END

IF ~~ THEN BEGIN PoorJudgement1
SAY @77
IF ~OR(3) !InParty("Viconia") !InMyArea("Viconia") StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN REPLY @78 GOTO MeMotto
IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN REPLY @78 GOTO ToEachHisOwnViccy
IF ~~ THEN REPLY @79 GOTO WeAimToPlease
END

IF ~~ THEN BEGIN PoorJudgement2
SAY @77
IF ~OR(3) !InParty("Aerie") !InMyArea("Aerie") StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN REPLY @78 GOTO MeMotto
IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN REPLY @78 GOTO ToEachHisOwnAerie
IF ~~ THEN REPLY @79 GOTO WeAimToPlease
END

IF ~~ THEN BEGIN MeMotto
SAY @80
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ToEachHisOwnViccy
SAY @80
= @81
IF ~~ THEN EXTERN VICONIJ ViccySM
END

IF ~~ THEN BEGIN ToEachHisOwnAerie
SAY @80
= @81
IF ~~ THEN EXTERN AERIEJ AerieSissy
END

IF ~~ THEN BEGIN Cherries
SAY @82 
=@83
IF ~~ THEN DO ~
RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END

IF ~~ THEN BEGIN WeAimToPlease
SAY @83
IF ~~ THEN DO ~
RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END
END



CHAIN VICONIJ ViccySM
@84
== RIBALD @85
== VICONIJ @86 
== VICONIJ @87
EXIT

CHAIN AERIEJ AerieSissy
@88
== AERIEJ @89
EXIT



// 4) Temporary (?) Impotence

APPEND RIBALD

IF WEIGHT #-1
~Global("RE_RibaldSpecialTalk","GLOBAL",4)~ THEN BEGIN DayOff
SAY @90
IF ~~ THEN REPLY @91 DO ~IncrementGlobal("RE_RibaldSpecialTalk","GLOBAL",1) RealSetGlobalTimer("RE_RibaldTimer","GLOBAL",1800)~ GOTO OpenShop
IF ~~ THEN REPLY @92 DO ~IncrementGlobal("RE_RibaldSpecialTalk","GLOBAL",1) RealSetGlobalTimer("RE_RibaldTimer","GLOBAL",1800)~ GOTO Exhausted
END

IF ~~ THEN BEGIN OpenShop
SAY @93
IF ~~ THEN DO ~StartStore("ribald",LastTalkedToBy())
~ EXIT
END

IF ~~ THEN BEGIN Exhausted
SAY @94
IF ~~ THEN REPLY @95 GOTO LegsMan
IF ~~ THEN REPLY @96 GOTO Pouting
IF ~~ THEN REPLY @97 GOTO SeeYouLater
IF ~~ THEN REPLY @98 GOTO PleaseTalkToMe
IF ~~ THEN REPLY @99 GOTO FalsePromise
IF ~~ THEN REPLY @100 GOTO Alzheimer
END

IF ~~ THEN BEGIN PleaseTalkToMe
SAY @101
= @102
= @103
IF ~~ THEN DO ~SetGlobal("RE_RibaldConversation","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN LegsMan
SAY @104
= @105
= @103 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Pouting
SAY @106
= @107
= @103
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SeeYouLater
SAY @108
= @103
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FalsePromise
SAY @109
= @110
= @103
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Alzheimer
SAY @111
= @112
IF ~~ THEN DO ~SetGlobal("RE_RibaldGotcha","GLOBAL",1)~ EXIT
END

END



// 5) Present

APPEND RIBALD

IF WEIGHT #-1
~Global("RE_RibaldSpecialTalk","GLOBAL",6)~ THEN BEGIN Present
SAY @113
IF ~~ THEN REPLY @114 DO ~IncrementGlobal("RE_RibaldSpecialTalk","GLOBAL",1) RealSetGlobalTimer("RE_RibaldTimer","GLOBAL",1800)~ GOTO Grateful
IF ~~ THEN REPLY @115 DO ~IncrementGlobal("RE_RibaldSpecialTalk","GLOBAL",1) RealSetGlobalTimer("RE_RibaldTimer","GLOBAL",1800)~ GOTO Sappy
END

IF ~~ THEN BEGIN Grateful
SAY @116
= @117
= @118
IF ~~ THEN DO ~GiveItemCreate("RE_Riba",Player1,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN Sappy
SAY @119
= @120
= @121
IF ~~ THEN DO ~GiveItemCreate("RE_Riba",Player1,0,0,0)~ EXIT
END

END



// 6) Old Ribald's Special Speciality - Decision Time! (What is love? Baby, don't hurt me, don't hurt me no more...)

APPEND RIBALD

IF WEIGHT #-1
~Global("RE_RibaldSpecialTalk","GLOBAL",8)~ THEN BEGIN IsItLove
SAY @122
= @123
= @124
IF ~~ THEN REPLY @125 DO ~IncrementGlobal("RE_RibaldSpecialTalk","GLOBAL",1)~ GOTO GetItOn
IF ~~ THEN REPLY @126 DO ~IncrementGlobal("RE_RibaldSpecialTalk","GLOBAL",1)~ GOTO LeaveAlready
END

IF ~~ THEN BEGIN LeaveAlready
SAY @127
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN GetItOn
SAY @128
IF ~~ THEN DO ~SetGlobal("RE_RibaldDecision","LOCALS",1)
RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END



IF WEIGHT #-1
~Global("RE_RibaldDecision","LOCALS",1)~
THEN BEGIN TheBigDecision
SAY @129
IF ~Global("RE_RibaldConversation","GLOBAL",0)~ THEN REPLY @130 DO ~SetGlobal("RE_RibaldDecision","LOCALS",2) RealSetGlobalTimer("RE_RibaldTimer","GLOBAL",1800)~ GOTO VeryCasual
IF ~Global("RE_RibaldConversation","GLOBAL",1)~ THEN REPLY @130 DO ~SetGlobal("RE_RibaldDecision","LOCALS",2) RealSetGlobalTimer("RE_RibaldTimer","GLOBAL",1800)~ GOTO ButYouSaid
IF ~Global("RE_RibaldConversation","GLOBAL",0)~ THEN REPLY @131 DO ~SetGlobal("RE_RibaldDecision","LOCALS",2) RealSetGlobalTimer("RE_RibaldTimer","GLOBAL",1800)~ GOTO WhatDoYouMean
IF ~Global("RE_RibaldConversation","GLOBAL",1)~ THEN REPLY @131 DO ~SetGlobal("RE_RibaldDecision","LOCALS",2) RealSetGlobalTimer("RE_RibaldTimer","GLOBAL",1800)~ GOTO IRemember
IF ~~ THEN REPLY @132 DO ~SetGlobal("RE_RibaldDecision","LOCALS",2) RealSetGlobalTimer("RE_RibaldTimer","GLOBAL",1800)~ GOTO StaySilent
END

IF ~~ THEN BEGIN VeryCasual
SAY @133 
= @134
= @135
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ButYouSaid
SAY @136
= @137
= @134
= @135
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN IRemember
SAY @138
IF ~~ THEN REPLY @139 GOTO IWontTell
IF ~~ THEN REPLY @140 GOTO Confessions
END

IF ~~ THEN BEGIN WhatDoYouMean
SAY @141
IF ~~ THEN REPLY @142 GOTO IWontTell
IF ~~ THEN REPLY @143 GOTO Confessions
END

IF ~~ THEN BEGIN IWontTell
SAY @144
= @134
= @135
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Confessions
SAY @145
IF ~~ THEN REPLY @146 GOTO IWontTell
IF ~~ THEN REPLY @147 GOTO ILoveYouSoRibald
END

IF ~~ THEN BEGIN ILoveYouSoRibald
SAY @148
IF ~~ THEN REPLY @149 GOTO NotThisTime
IF ~~ THEN REPLY @150 GOTO MoreToMe
IF ~~ THEN REPLY @151 GOTO DoYouLoveMe
END

IF ~~ THEN BEGIN NotThisTime
SAY @152
= @153
= @154
= @155
= @156
IF ~~ THEN REPLY @157 GOTO OnlyOne
IF ~~ THEN REPLY @158 GOTO GuessedIt
IF ~Global("JaheiraCurious","GLOBAL",4)~ THEN REPLY @159 GOTO JaheiraIsATelltale
END

IF ~~ THEN BEGIN MoreToMe
SAY @160
= @153
= @154
= @155
= @156
IF ~~ THEN REPLY @157 GOTO OnlyOne
IF ~~ THEN REPLY @158 GOTO GuessedIt
IF ~Global("JaheiraCurious","GLOBAL",4)~ THEN REPLY @159 GOTO JaheiraIsATelltale
END

IF ~~ THEN BEGIN DoYouLoveMe
SAY @161
= @153
= @154
= @155
= @156
IF ~~ THEN REPLY @157 GOTO OnlyOne
IF ~~ THEN REPLY @158 GOTO GuessedIt
IF ~Global("JaheiraCurious","GLOBAL",4)~ THEN REPLY @159 GOTO JaheiraIsATelltale
END

IF ~~ THEN BEGIN OnlyOne
SAY @162
= @163
= @164
= @165
= @166
= @167
= @168
IF ~~ THEN REPLY @169 DO ~SetGlobal("RE_RibaldRomanceActive","GLOBAL",3)~ GOTO EverlastingDisappointment
IF ~~ THEN REPLY @170 GOTO LittleDistraction
END

IF ~~ THEN BEGIN GuessedIt
SAY @171
= @172
= @164
= @165
= @166
= @167
= @168
IF ~~ THEN REPLY @169 DO ~SetGlobal("RE_RibaldRomanceActive","GLOBAL",3)~ GOTO EverlastingDisappointment
IF ~~ THEN REPLY @170 GOTO LittleDistraction
END

IF ~~ THEN BEGIN JaheiraIsATelltale
SAY @173
= @174
= @175
= @165
= @166
= @167
= @168
IF ~~ THEN REPLY @169 DO ~SetGlobal("RE_RibaldRomanceActive","GLOBAL",3)~ GOTO EverlastingDisappointment
IF ~~ THEN REPLY @170 GOTO LittleDistraction
END

IF ~~ THEN BEGIN EverlastingDisappointment
SAY @176
= @177
= @178
= @179
= @180
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN LittleDistraction
SAY @181
= @182
= @183
= @184
IF ~~ THEN REPLY @185 DO ~SetGlobal("RE_RibaldRomanceActive","GLOBAL",2)
RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
IF ~~ THEN REPLY @186 DO ~SetGlobal("RE_RibaldRomanceActive","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN StaySilent
SAY @187
= @188
= @189
= @190
= @191
= @192
IF ~~ THEN EXIT
END
END



// 7) Old Ribald's Random Speciality Reloaded (aka advanced Flirts)

EXTEND_BOTTOM RIBALD 0
IF ~IsGabber(Player1)
Gender(Player1,FEMALE)
CheckStatGT(Player1,12,CHR)
Global("RE_RibaldRomanceActive","GLOBAL",2)
RandomNum(5,1)~ THEN REPLY @64 EXTERN RIBALD Reloaded1
END

EXTEND_BOTTOM RIBALD 0
IF ~IsGabber(Player1)
Gender(Player1,FEMALE)
CheckStatGT(Player1,12,CHR)
Global("RE_RibaldRomanceActive","GLOBAL",2)
RandomNum(5,2)~ THEN REPLY @64 EXTERN RIBALD Reloaded2
END

EXTEND_BOTTOM RIBALD 0
IF ~IsGabber(Player1)
Gender(Player1,FEMALE)
CheckStatGT(Player1,12,CHR)
Global("RE_RibaldRomanceActive","GLOBAL",2)
RandomNum(5,3)~ THEN REPLY @64 EXTERN RIBALD Reloaded3
END

EXTEND_BOTTOM RIBALD 0
IF ~IsGabber(Player1)
Gender(Player1,FEMALE)
CheckStatGT(Player1,12,CHR)
Global("RE_RibaldRomanceActive","GLOBAL",2)
RandomNum(5,4)~ THEN REPLY @64 EXTERN RIBALD Reloaded4
END

EXTEND_BOTTOM RIBALD 0
IF ~IsGabber(Player1)
Gender(Player1,FEMALE)
CheckStatGT(Player1,12,CHR)
Global("RE_RibaldRomanceActive","GLOBAL",2)
RandomNum(5,5)~ THEN REPLY @64 EXTERN RIBALD Reloaded5
END



APPEND RIBALD

IF ~~ THEN BEGIN Reloaded1
SAY @193
IF ~~ THEN DO ~RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END

IF ~~ THEN BEGIN Reloaded2
SAY @194
IF ~~ THEN DO ~RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END

IF ~~ THEN BEGIN Reloaded3
SAY @195
IF ~~ THEN DO ~RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END

IF ~~ THEN BEGIN Reloaded4
SAY @196
IF ~~ THEN DO ~RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END

IF ~~ THEN BEGIN Reloaded5
SAY @197
IF ~~ THEN DO ~RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END

END



// Old Ribald's Special Speciality reloaded (aka advanced Lovetalks)



// 8)  Let's talk about ye and me

APPEND RIBALD

IF WEIGHT #-1
~Global("RE_RibaldSpecialTalk","GLOBAL",10)~ THEN BEGIN LetUsTalk
SAY @198
= @199
IF ~~ THEN REPLY @200 GOTO DontFeelLikeTalking
IF ~~ THEN REPLY @201 DO ~IncrementGlobal("RE_RibaldSpecialTalk","GLOBAL",1) RealSetGlobalTimer("RE_RibaldTimer","GLOBAL",1800)~ GOTO MoreRevelations
END

IF ~~ THEN BEGIN DontFeelLikeTalking
SAY @202
IF ~~ THEN REPLY @203 GOTO ShutUpAlready
IF ~~ THEN REPLY @204 DO ~IncrementGlobal("RE_RibaldSpecialTalk","GLOBAL",1) RealSetGlobalTimer("RE_RibaldTimer","GLOBAL",1800)~ GOTO MoreRevelations
END

IF ~~ THEN BEGIN ShutUpAlready
SAY @205
IF ~~ THEN DO ~SetGlobal("RE_RibaldDump","GLOBAL",1)
StartStore("ribald",LastTalkedToBy())~ EXIT
END

IF ~~ THEN BEGIN MoreRevelations
SAY @206
= @207
= @208
= @209
IF ~Global("RE_RibaldConversation","GLOBAL",0)~ THEN REPLY @210 GOTO Skillful1
IF ~Global("RE_RibaldConversation","GLOBAL",1)~ THEN REPLY @210 GOTO Skillful2
IF ~Global("RE_RibaldConversation","GLOBAL",0)~ THEN REPLY @211 GOTO StillTheSame1
IF ~Global("RE_RibaldConversation","GLOBAL",1)~ THEN REPLY @211 GOTO StillTheSame2
IF ~Global("RE_RibaldConversation","GLOBAL",0)~ THEN REPLY @212 GOTO ThisIsPrivate1
IF ~Global("RE_RibaldConversation","GLOBAL",1)~ THEN REPLY @212 GOTO ThisIsPrivate2
END

IF ~~ THEN BEGIN Skillful1
SAY @213
= @214
= @215
= @216
IF ~~ THEN REPLY @217 GOTO EmotionallyDistant
IF ~~ THEN REPLY @218 GOTO EmotionallyClose
END

IF ~~ THEN BEGIN Skillful2
SAY @213
= @219
= @215
= @216
IF ~~ THEN REPLY @217 GOTO EmotionallyDistant
IF ~~ THEN REPLY @218 GOTO EmotionallyClose
END

IF ~~ THEN BEGIN StillTheSame1
SAY @220
= @221
= @222
= @215
= @216
IF ~~ THEN REPLY @217 GOTO EmotionallyDistant
IF ~~ THEN REPLY @223 GOTO EmotionallyClose
END

IF ~~ THEN BEGIN StillTheSame2
SAY @220
= @221
= @224
= @215
= @216
IF ~~ THEN REPLY @217 GOTO EmotionallyDistant
IF ~~ THEN REPLY @225 GOTO EmotionallyClose
END

IF ~~ THEN BEGIN ThisIsPrivate1
SAY @226
= @227
= @215
= @216
IF ~~ THEN REPLY @217 GOTO EmotionallyDistant
IF ~~ THEN REPLY @218 GOTO EmotionallyClose
END

IF ~~ THEN BEGIN ThisIsPrivate2
SAY @226
= @228 = @215
= @216
IF ~~ THEN REPLY @217 GOTO EmotionallyDistant
IF ~~ THEN REPLY @229 GOTO EmotionallyClose
END

IF ~~ THEN BEGIN EmotionallyDistant
SAY @230
= @231
= @232
IF ~~ THEN DO ~SetGlobal("RE_RibaldDump","GLOBAL",1)~ EXIT
END

//////////////////////////////

IF ~~ THEN BEGIN EmotionallyClose
SAY @233
IF ~Global("RE_RibaldGotcha","GLOBAL",1)~ THEN REPLY @234 GOTO OhRibald
IF ~Global("RE_RibaldGotcha","GLOBAL",0)~ THEN REPLY @235 GOTO OtherWomen
IF ~~ THEN REPLY @236 GOTO HowIsBusiness
IF ~~ THEN REPLY @237 GOTO RibaldsTravels
IF ~~ THEN REPLY @238 GOTO YourHobbies
IF ~~ THEN REPLY @239 GOTO LucyInTheSky
IF ~~ THEN REPLY @240 GOTO EmotionallyDistant
END

IF ~~ THEN BEGIN OhRibald
SAY @241
= @242
= @243
IF ~~ THEN REPLY @244 GOTO AnotherQuestion
IF ~~ THEN REPLY @245 GOTO TitForTat
END

IF ~~ THEN BEGIN OtherWomen
SAY @246
= @243
IF ~~ THEN REPLY @244 GOTO AnotherQuestion
IF ~~ THEN REPLY @245 GOTO TitForTat
END

///////////////////////////////

IF ~~ THEN BEGIN AnotherQuestion
SAY @247
IF ~Global("RE_RibaldGotcha","GLOBAL",1)~ THEN REPLY @234 GOTO OhRibald
IF ~Global("RE_RibaldGotcha","GLOBAL",0)~ THEN REPLY @235 GOTO OtherWomen
IF ~~ THEN REPLY @236 GOTO HowIsBusiness
IF ~~ THEN REPLY @237 GOTO RibaldsTravels
IF ~~ THEN REPLY @238 GOTO YourHobbies
IF ~~ THEN REPLY @239 GOTO LucyInTheSky
IF ~~ THEN REPLY @245 GOTO TitForTat
END

IF ~~ THEN BEGIN HowIsBusiness
SAY @248
= @249
= @250
IF ~~ THEN REPLY @251 GOTO AreYouRich
IF ~~ THEN REPLY @252 GOTO AnotherQuestion
IF ~~ THEN REPLY @245 GOTO TitForTat
END

IF ~~ THEN BEGIN AreYouRich
SAY @253
IF ~~ THEN REPLY @254 GOTO Discount
IF ~~ THEN REPLY @252 GOTO AnotherQuestion
IF ~~ THEN REPLY @245 GOTO TitForTat
END

IF ~~ THEN BEGIN Discount
SAY @255
= @256
IF ~~ THEN REPLY @252 GOTO AnotherQuestion
IF ~~ THEN REPLY @245 GOTO TitForTat
END

IF ~~ THEN BEGIN RibaldsTravels
SAY @257
= @258
= @259
= @260
= @261
= @262
IF ~~ THEN REPLY @252 GOTO AnotherQuestion
IF ~~ THEN REPLY @245 GOTO TitForTat
END

IF ~~ THEN BEGIN YourHobbies
SAY @263
= @264
= @265
IF ~~ THEN REPLY @266 GOTO Bored
IF ~~ THEN REPLY @252 GOTO AnotherQuestion
IF ~~ THEN REPLY @245 GOTO TitForTat
END

IF ~~ THEN BEGIN Bored
SAY @267
IF ~~ THEN REPLY @252 GOTO AnotherQuestion
IF ~~ THEN REPLY @245 GOTO TitForTat
END 

IF ~~ THEN BEGIN LucyInTheSky
SAY @268
= @269
= @270
IF ~~ THEN REPLY @252 GOTO AnotherQuestion
IF ~~ THEN REPLY @245 GOTO TitForTat
END

///////////////////////////

IF ~~ THEN BEGIN TitForTat
SAY @271
IF ~~ THEN REPLY @272 GOTO InYourArms
IF ~~ THEN REPLY @273 GOTO Bhaal
IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)~ THEN REPLY @274 GOTO Underdark
IF ~~ THEN REPLY @275 GOTO SayMyName
IF ~~ THEN REPLY @276 GOTO TiredOfThisGame
END

IF ~~ THEN BEGIN SayMyName
SAY @277
IF ~~ THEN REPLY @278 GOTO WhatIsWrongWithIt
IF ~~ THEN REPLY @279 GOTO TitForTat
END

IF ~~ THEN BEGIN WhatIsWrongWithIt
SAY @280
IF ~Global("RE_RibaldGotcha","GLOBAL",0)~ THEN REPLY @281 GOTO MyLooks1
IF ~Global("RE_RibaldGotcha","GLOBAL",1)~ THEN REPLY @281 GOTO MyLooks2
IF ~~ THEN REPLY @282 GOTO SayItOnce
IF ~~ THEN REPLY @283 GOTO Jealous
END

IF ~~ THEN BEGIN MyLooks1
SAY @284
= @285
= @286
= @287
= @288
IF ~~ THEN REPLY @289 GOTO TitForTat
IF ~~ THEN REPLY @276 GOTO TiredOfThisGame
END

IF ~~ THEN BEGIN MyLooks2
SAY @290
= @285
= @286
= @287
= @288
IF ~~ THEN REPLY @289 GOTO TitForTat
IF ~~ THEN REPLY @276 GOTO TiredOfThisGame
END

IF ~~ THEN BEGIN SayItOnce
SAY @291
= @292
= @288
IF ~~ THEN REPLY @289 GOTO TitForTat
IF ~~ THEN REPLY @276 GOTO TiredOfThisGame
END

IF ~~ THEN BEGIN Jealous
SAY @293
= @294
= @287
= @288
IF ~~ THEN REPLY @289 GOTO TitForTat
IF ~~ THEN REPLY @276 GOTO TiredOfThisGame
END

IF ~~ THEN BEGIN InYourArms
SAY @295
= @296
= @297
= @298
= @299
= @300
IF ~~ THEN REPLY @301 GOTO NothingRather
IF ~~ THEN REPLY @302 GOTO NotNow
END

IF ~~ THEN BEGIN Bhaal
SAY @303
= @304
IF ~~ THEN REPLY @305 GOTO MyHeritage
IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)~ THEN REPLY @274 GOTO Underdark
IF ~~ THEN REPLY @289 GOTO TitForTat
END

IF ~~ THEN BEGIN MyHeritage
SAY @306
IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)~ THEN REPLY @307 GOTO GiantLobsterGirl
IF ~~ THEN REPLY @308 GOTO NotRidiculous
IF ~~ THEN REPLY @309 GOTO IKnowIt
IF ~~ THEN REPLY @310 GOTO TitForTat
IF ~~ THEN REPLY @276 GOTO TiredOfThisGame
END
 
IF ~~ THEN BEGIN NotRidiculous
SAY @311
= @312
= @313
IF ~~ THEN REPLY @289 GOTO TitForTat
IF ~~ THEN REPLY @276 GOTO TiredOfThisGame
END

IF ~~ THEN BEGIN GiantLobsterGirl
SAY @314
= @315
IF ~~ THEN REPLY @316 GOTO NotEnoughForRibald
IF ~~ THEN REPLY @274 GOTO Underdark
IF ~~ THEN REPLY @310 GOTO TitForTat
END

IF ~~ THEN BEGIN IKnowIt
SAY @317
= @318
= @313
IF ~~ THEN REPLY @289 GOTO TitForTat
IF ~~ THEN REPLY @276 GOTO TiredOfThisGame
END

IF ~~ THEN BEGIN NotEnoughForRibald
SAY @319
= @318
= @313
IF ~~ THEN REPLY @289 GOTO TitForTat
IF ~~ THEN REPLY @276 GOTO TiredOfThisGame
END

IF ~~ THEN BEGIN Underdark
SAY @320
IF ~~ THEN REPLY @321 GOTO Emptiness
IF ~~ THEN REPLY @322 GOTO Irenicus
IF ~~ THEN REPLY @323 GOTO TitForTat
END

IF ~~ THEN BEGIN Emptiness
SAY @324
= @325
= @326
= @327
= @328
= @329
IF ~~ THEN REPLY @289 GOTO TitForTat
IF ~~ THEN REPLY @276 GOTO TiredOfThisGame
END

IF ~~ THEN BEGIN Irenicus
SAY @330
= @331
= @332
IF ~~ THEN REPLY @289 GOTO TitForTat
IF ~~ THEN REPLY @276 GOTO TiredOfThisGame
END

IF ~~ THEN BEGIN TiredOfThisGame
SAY @297
= @333
= @334
= @300
IF ~~ THEN REPLY @301 GOTO NothingRather
IF ~~ THEN REPLY @302 GOTO NotNow
END

IF ~~ THEN BEGIN NothingRather
SAY @335
= @336
IF ~~ THEN DO ~RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END

IF ~~ THEN BEGIN NotNow
SAY @337
IF ~~ THEN EXIT
END

///////////////////////////////



// 9) We're almost there

IF WEIGHT #-1
~Global("RE_RibaldSpecialTalk","GLOBAL",12)~ THEN BEGIN WeAreAlmostThere
SAY @338
IF ~~ THEN REPLY @339 DO ~IncrementGlobal("RE_RibaldSpecialTalk","GLOBAL",1) RealSetGlobalTimer("RE_RibaldTimer","GLOBAL",1800)~ GOTO Foul
IF ~~ THEN REPLY @340 DO ~IncrementGlobal("RE_RibaldSpecialTalk","GLOBAL",1) RealSetGlobalTimer("RE_RibaldTimer","GLOBAL",1800)~ GOTO WhyDidYouCome
IF ~~ THEN REPLY @341 GOTO SpeakUp
END

IF ~~ THEN BEGIN Foul
SAY @342
IF ~~ THEN REPLY @343 GOTO GrabHim
IF ~~ THEN REPLY @344 GOTO MockMe
IF ~~ THEN REPLY @341 GOTO SpeakUp
END

IF ~~ THEN BEGIN WhyDidYouCome
SAY @345
IF ~~ THEN REPLY @346 GOTO Ammo
IF ~~ THEN REPLY @347 GOTO OnMyLap
END

IF ~~ THEN BEGIN OnMyLap
SAY @348
IF ~~ THEN REPLY @341 GOTO SpeakUp
IF ~~ THEN REPLY @349 GOTO SpeakUpLap
IF ~~ THEN REPLY @350 GOTO FondleRibald
END

IF ~~ THEN BEGIN FondleRibald
SAY @351
IF ~~ THEN REPLY @352 GOTO SpeakUp
IF ~~ THEN REPLY @353 GOTO OtherStores
END

IF ~~ THEN BEGIN MockMe
SAY @354
= @355
IF ~~ THEN REPLY @356 GOTO Spoilsport
IF ~~ THEN REPLY @341 GOTO SpeakUp
END

IF ~~ THEN BEGIN Spoilsport
SAY @357
IF ~~ THEN REPLY @358 GOTO SpeakUp
IF ~~ THEN REPLY @349 GOTO SpeakUpLap
IF ~~ THEN REPLY @359 GOTO OtherStores
END

IF ~~ THEN BEGIN GrabHim
SAY @360
IF ~~ THEN REPLY @361 GOTO Position
IF ~~ THEN REPLY @362 GOTO SpeakUp
END

IF ~~ THEN BEGIN Position
SAY @363
IF ~~ THEN REPLY @364 GOTO OtherStores
IF ~~ THEN REPLY @352 GOTO SpeakUp
END

IF ~~ THEN BEGIN Ammo
SAY @365
IF ~~ THEN REPLY @352 GOTO SpeakUp
IF ~~ THEN REPLY @366 GOTO OtherStores
END

IF ~~ THEN BEGIN OtherStores
SAY @367
IF ~~ THEN DO ~SetGlobal("RE_RibaldDump","GLOBAL",1)
SetGlobal("RE_RibaldRomanceActive","GLOBAL",3)~ EXIT
END

//////////////////////

// SpeakUp

IF ~~ THEN BEGIN SpeakUp
SAY @368
= @369
= @370
IF ~~ THEN REPLY @371 GOTO YeAreRefreshing
IF ~~ THEN REPLY @372 GOTO JustHowMany
END

IF ~~ THEN BEGIN JustHowMany
SAY @373
= @374
IF ~~ THEN REPLY @375 GOTO YeAreRefreshing
IF ~~ THEN REPLY @376 GOTO YeAreRefreshing
END

IF ~~ THEN BEGIN YeAreRefreshing
SAY @377
= @378
= @379
= @380
IF ~~ THEN REPLY @381 GOTO HowOftenHaveYou
IF ~~ THEN REPLY @382 GOTO ImportantThing
END

IF ~~ THEN BEGIN ImportantThing
SAY @383
= @384
= @385
IF ~~ THEN REPLY @386 GOTO RibaldsAttitude
IF ~~ THEN REPLY @387 GOTO DanceAJig
END

IF ~~ THEN BEGIN HowOftenHaveYou
SAY @388
= @383
= @384
= @385
IF ~~ THEN REPLY @386 GOTO RibaldsAttitude
IF ~~ THEN REPLY @387 GOTO DanceAJig
END

IF ~~ THEN BEGIN RibaldsAttitude
SAY @389
= @390
= @391
IF ~~ THEN REPLY @392 GOTO DidYouMind
IF ~~ THEN REPLY @393 GOTO PleaseContinue
IF ~~ THEN REPLY @394 GOTO ThisIsTakingTooLong
END

IF ~~ THEN BEGIN DanceAJig
SAY @395
= @390
= @391
IF ~~ THEN REPLY @392 GOTO DidYouMind
IF ~~ THEN REPLY @393 GOTO PleaseContinue
IF ~~ THEN REPLY @394 GOTO ThisIsTakingTooLong
END

IF ~~ THEN BEGIN ThisIsTakingTooLong
SAY @396
= @397
= @398
= @399
= @400
IF ~~ THEN REPLY @401 GOTO Tenterhooks1
IF ~~ THEN REPLY @402 GOTO Tenterhooks1
IF ~~ THEN REPLY @403 GOTO GettingLaid1
IF ~~ THEN REPLY @404 GOTO Yawn1
END

IF ~~ THEN BEGIN DidYouMind
SAY @405
= @397
= @398
= @399
= @400
IF ~~ THEN REPLY @401 GOTO Tenterhooks1
IF ~~ THEN REPLY @402 GOTO Tenterhooks1
IF ~~ THEN REPLY @403 GOTO GettingLaid1
IF ~~ THEN REPLY @404 GOTO Yawn1
END

IF ~~ THEN BEGIN PleaseContinue
SAY @406
= @398
= @399
= @400
IF ~~ THEN REPLY @402 GOTO Tenterhooks1
IF ~~ THEN REPLY @403 GOTO GettingLaid1
IF ~~ THEN REPLY @404 GOTO Yawn1
END

IF ~~ THEN BEGIN Tenterhooks1
SAY @407
= @408
IF ~~ THEN REPLY @409 GOTO BetterBeWorth
IF ~~ THEN REPLY @410 GOTO FreshAir
END

IF ~~ THEN BEGIN GettingLaid1
SAY @411
= @408
IF ~~ THEN REPLY @409 GOTO BetterBeWorth
IF ~~ THEN REPLY @410 GOTO FreshAir
END

IF ~~ THEN BEGIN Yawn1
SAY @412
= @413
IF ~~ THEN REPLY @409 GOTO BetterBeWorth
IF ~~ THEN REPLY @410 GOTO FreshAir
END

IF ~~ THEN BEGIN BetterBeWorth
SAY @414
= @415
IF ~~ THEN DO ~RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END

IF ~~ THEN BEGIN FreshAir
SAY @416
IF ~~ THEN EXIT
END

////////////////////////////

// SpeakUpLap

IF ~~ THEN BEGIN SpeakUpLap
SAY @368
= @369
= @370
IF ~~ THEN REPLY @371 GOTO YeAreRefreshingLap
IF ~~ THEN REPLY @372 GOTO JustHowManyLap
END

IF ~~ THEN BEGIN JustHowManyLap
SAY @373
= @374
IF ~~ THEN REPLY @375 GOTO YeAreRefreshingLap
IF ~~ THEN REPLY @376 GOTO YeAreRefreshingLap
END

IF ~~ THEN BEGIN YeAreRefreshingLap
SAY @377
= @378
= @379
= @380
IF ~~ THEN REPLY @381 GOTO HowOftenHaveYouLap
IF ~~ THEN REPLY @382 GOTO ImportantThingLap
END

IF ~~ THEN BEGIN ImportantThingLap
SAY @383
= @384
= @385
IF ~~ THEN REPLY @386 GOTO RibaldsAttitudeLap
IF ~~ THEN REPLY @387 GOTO DanceAJigLap
END

IF ~~ THEN BEGIN HowOftenHaveYouLap
SAY @388
= @383
= @384
= @385
IF ~~ THEN REPLY @386 GOTO RibaldsAttitudeLap
IF ~~ THEN REPLY @387 GOTO DanceAJigLap
END

IF ~~ THEN BEGIN RibaldsAttitudeLap
SAY @389
= @390
= @391
IF ~~ THEN REPLY @392 GOTO DidYouMindLap
IF ~~ THEN REPLY @393 GOTO PleaseContinueLap
IF ~~ THEN REPLY @394 GOTO ThisIsTakingTooLongLap
END

IF ~~ THEN BEGIN DanceAJigLap
SAY @395
= @390
= @391
IF ~~ THEN REPLY @392 GOTO DidYouMindLap
IF ~~ THEN REPLY @393 GOTO PleaseContinueLap
IF ~~ THEN REPLY @394 GOTO ThisIsTakingTooLongLap
END

IF ~~ THEN BEGIN ThisIsTakingTooLongLap
SAY @396
= @397
= @398
= @399
= @400
IF ~~ THEN REPLY @401 GOTO Tenterhooks1Lap
IF ~~ THEN REPLY @402 GOTO Tenterhooks1Lap
IF ~~ THEN REPLY @403 GOTO GettingLaid1Lap
IF ~~ THEN REPLY @404 GOTO Yawn1Lap
END

IF ~~ THEN BEGIN DidYouMindLap
SAY @405
= @397
= @398
= @399
= @400
IF ~~ THEN REPLY @401 GOTO Tenterhooks1Lap
IF ~~ THEN REPLY @402 GOTO Tenterhooks1Lap
IF ~~ THEN REPLY @403 GOTO GettingLaid1Lap
IF ~~ THEN REPLY @404 GOTO Yawn1Lap
END

IF ~~ THEN BEGIN PleaseContinueLap
SAY @406
= @417
= @398
= @399
= @400
IF ~~ THEN REPLY @401 GOTO Tenterhooks1Lap
IF ~~ THEN REPLY @402 GOTO Tenterhooks1Lap
IF ~~ THEN REPLY @403 GOTO GettingLaid1Lap
IF ~~ THEN REPLY @404 GOTO Yawn1Lap
END

IF ~~ THEN BEGIN Tenterhooks1Lap
SAY @407
= @408
= @418
IF ~~ THEN DO ~RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END

IF ~~ THEN BEGIN GettingLaid1Lap
SAY @411
= @419
= @418
IF ~~ THEN DO ~RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END

IF ~~ THEN BEGIN Yawn1Lap
SAY @412
= @420
IF ~~ THEN DO ~RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END

END


// 10) And now to the final (?) talk


APPEND RIBALD

IF WEIGHT #-1
~Global("RE_RibaldSpecialTalk","GLOBAL",14)
Global("RE_RibaldDump","GLOBAL",0)
GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)~ THEN BEGIN FinalTalk
SAY @421
IF ~~ THEN REPLY @422 DO ~IncrementGlobal("RE_RibaldSpecialTalk","GLOBAL",1) RealSetGlobalTimer("RE_RibaldTimer","GLOBAL",1800)~ GOTO JustArrived
IF ~~ THEN REPLY @423 DO ~IncrementGlobal("RE_RibaldSpecialTalk","GLOBAL",1) RealSetGlobalTimer("RE_RibaldTimer","GLOBAL",1800)~ GOTO EverComeBack
END

IF ~~ THEN BEGIN JustArrived
SAY @424
= @425
= @426
= @427
IF ~~ THEN REPLY @428 GOTO CrushOnYou
IF ~~ THEN REPLY @429 GOTO NowItsTooLateYeOldFool
END

IF ~~ THEN BEGIN CrushOnYou
SAY @430
IF ~~ THEN REPLY @431 GOTO JoinMeInDeath1
IF ~~ THEN REPLY @432 GOTO Yep1
END

IF ~~ THEN BEGIN NowItsTooLateYeOldFool
SAY @433
IF ~~ THEN REPLY @431 GOTO JoinMeInDeath1
IF ~~ THEN REPLY @432 GOTO Yep1
END

IF ~~ THEN BEGIN EverComeBack
SAY @434
= @435
= @427
IF ~~ THEN REPLY @428 GOTO CrushOnYou
IF ~~ THEN REPLY @429 GOTO NowItsTooLateYeOldFool
END

IF ~~ THEN BEGIN JoinMeInDeath1
SAY @436
= @437
= @438
IF ~~ THEN REPLY @432 GOTO Yep2
IF ~~ THEN REPLY @439 GOTO FinalDecision
IF ~~ THEN REPLY @440 GOTO WaitForFinalWords
END

IF ~~ THEN BEGIN JoinMeInDeath2
SAY @436
= @437
= @438
IF ~~ THEN REPLY @439 GOTO FinalDecision
IF ~~ THEN REPLY @440 GOTO WaitForFinalWords
END

IF ~~ THEN BEGIN Yep1
SAY @441
= @442
= @443
IF ~~ THEN REPLY @444 GOTO Winky1
IF ~~ THEN REPLY @431 GOTO JoinMeInDeath2
IF ~~ THEN REPLY @439 GOTO FinalDecision
IF ~~ THEN REPLY @440 GOTO WaitForFinalWords
END

IF ~~ THEN BEGIN Yep2
SAY @441
= @442
= @443
IF ~~ THEN REPLY @444 GOTO Winky2
IF ~~ THEN REPLY @439 GOTO FinalDecision
IF ~~ THEN REPLY @440 GOTO WaitForFinalWords
END

IF ~~ THEN BEGIN Winky1
SAY @445
IF ~~ THEN REPLY @446 GOTO RibaldIsSilent1
IF ~~ THEN REPLY @431 GOTO JoinMeInDeath2
IF ~~ THEN REPLY @439 GOTO FinalDecision
IF ~~ THEN REPLY @440 GOTO WaitForFinalWords
END

IF ~~ THEN BEGIN Winky2
SAY @445
IF ~~ THEN REPLY @446 GOTO RibaldIsSilent2
IF ~~ THEN REPLY @439 GOTO FinalDecision
IF ~~ THEN REPLY @440 GOTO WaitForFinalWords
END

IF ~~ THEN BEGIN RibaldIsSilent1
SAY @447
= @448
IF ~~ THEN REPLY @431 GOTO JoinMeInDeath2
IF ~~ THEN REPLY @439 GOTO FinalDecision
IF ~~ THEN REPLY @440 GOTO WaitForFinalWords
END

IF ~~ THEN BEGIN RibaldIsSilent2
SAY @447
= @448
IF ~~ THEN REPLY @439 GOTO FinalDecision
IF ~~ THEN REPLY @440 GOTO WaitForFinalWords
END

IF ~~ THEN BEGIN FinalDecision
SAY @449
= @450
= @451
= @452
= @453
= @454
IF ~~ THEN REPLY @455 GOTO Deal
IF ~~ THEN REPLY @456 GOTO NoDeal
END

IF ~~ THEN BEGIN WaitForFinalWords
SAY @457
= @451
= @452
= @453
= @454
IF ~~ THEN REPLY @455 GOTO Deal
IF ~~ THEN REPLY @456 GOTO NoDeal
END

IF ~~ THEN BEGIN NoDeal
SAY @458
= @459
IF ~~ THEN DO ~SetGlobal("RE_RibaldGoodbye","LOCALS",1) RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END

IF ~~ THEN BEGIN Deal
SAY @460
= @461
= @462
= @463
IF ~~ THEN DO ~SetGlobal("RE_RibaldGoodbye","LOCALS",1) RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END



IF WEIGHT #-1
~Global("RE_RibaldGoodbye","LOCALS",1)~ THEN BEGIN FarewellMePretty
SAY @464
= @465
IF ~~ THEN DO ~SetGlobal("RE_RibaldGoodbye","LOCALS",2)~ EXIT
END
END