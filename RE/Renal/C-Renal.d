/* Romantic Encounters Entry: "Renal Bloodscalp: A Dangerous Affair", by cmorgan, July 1, 2007 */

EXTEND_BOTTOM ~RENAL~ 62
+ ~Gender(Player1,FEMALE) Global("RE_RenalFlirt","GLOBAL",0)~ + @0 DO ~ SetGlobalTimer("RE_RenalTime","GLOBAL",ONE_DAY) SetGlobal("RE_RenalFlirt","GLOBAL",1)~ EXTERN RENAL MakePass
END

INTERJECT RENAL 75 RE_RenalPassThief2-2
== RENAL IF ~Gender(Player1,FEMALE) Global("RE_RenalFlirt","GLOBAL",0)~ THEN @1
END
++ @0 DO ~ SetGlobalTimer("RE_RenalTime","GLOBAL",ONE_DAY) SetGlobal("RE_RenalFlirt","GLOBAL",1)~ EXTERN RENAL MakePassThief2
++ @2 EXTERN RENAL NoPass2

/* Kulyok: adding clues */
I_C_T RENAL 75 RE_RenalReminds1
== RENAL IF ~Global("C-RenalInn","GLOBAL",1)~ THEN @3
DO ~SetGlobal("RE_RenalReminds1","GLOBAL",0)~
END

I_C_T RENAL 75 RE_RenalReminds2
== RENAL IF ~Global("C-Bloodscalp","GLOBAL",1)~ THEN @4
DO ~SetGlobal("RE_RenalReminds2","GLOBAL",0)~
END

I_C_T RENAL 76 RE_RenalReminds1
== RENAL IF ~Global("C-RenalInn","GLOBAL",1)~ THEN @3
DO ~SetGlobal("RE_RenalReminds1","GLOBAL",0)~
END

I_C_T RENAL 76 RE_RenalReminds2
== RENAL IF ~Global("C-Bloodscalp","GLOBAL",1)~ THEN @4
DO ~SetGlobal("RE_RenalReminds2","GLOBAL",0)~
END

APPEND ~RENAL~

IF ~~ THEN BEGIN MakePass
SAY @5
= @6
= @7
COPY_TRANS ~RENAL~ 62
END

IF ~~ THEN BEGIN NoPass
SAY @8
COPY_TRANS ~RENAL~ 63
END

IF ~~ THEN BEGIN NoPass2
SAY @9
COPY_TRANS ~RENAL~ 75
END

IF ~~ THEN BEGIN MakePassThief2
SAY @5
= @6
= @10
COPY_TRANS ~RENAL~ 75
END

IF WEIGHT #-1 ~Global("RE_RenalFlirt","GLOBAL",1) !GlobalTimerExpired("RE_RenalTime","GLOBAL")~ THEN BEGIN NotYet
SAY @11
IF ~~ THEN EXIT
END

IF WEIGHT #-1 ~Global("RE_RenalFlirt","GLOBAL",1) GlobalTimerExpired("RE_RenalTime","GLOBAL") Global("C-RenalMeeting","GLOBAL",0)~ THEN BEGIN PrivateMeeting
SAY @12
++ @13 DO ~SetGlobal("C-RenalMeeting","GLOBAL",1)~ + Risky
++ @14 DO ~SetGlobal("C-RenalMeeting","GLOBAL",1)~ + Risky
++ @15 DO ~SetGlobal("C-RenalMeeting","GLOBAL",1)~ + Risky
++ @16 DO ~SetGlobal("C-RenalMeeting","GLOBAL",1)~ + Tease1
++ @17 DO ~SetGlobal("C-RenalMeeting","GLOBAL",1)~ + JustBusiness
END

IF ~~ THEN BEGIN Risky
SAY @18
= @19
++ @20 + Tease2
++ @21 + Tease1
++ @22 + JustBusiness
END

IF ~~ THEN BEGIN Tease1
SAY @23
++ @24 + Privacy
++ @25 + Privacy
++ @26 + Privacy
++ @27 + WorthIt
END

IF ~~ THEN BEGIN JustBusiness
SAY @28
++ @29 + Rejection
++ @30 + AloneWithRenal
++ @31 + RenalGoesToInn
++ @32 + Rejection
END

IF ~~ THEN BEGIN Tease2
SAY @33
++ @29 + Rejection
++ @30 + AloneWithRenal
++ @31 + RenalGoesToInn
++ @32 + Rejection
END

IF ~~ THEN BEGIN Privacy
SAY @34
++ @29 + Rejection
++ @30 + AloneWithRenal
++ @31 + RenalGoesToInn
++ @32 + Rejection
END

IF ~~ THEN BEGIN WorthIt
SAY @35
++ @29 + Rejection
++ @30 + AloneWithRenal
++ @31 + RenalGoesToInn
++ @32 + Rejection
END

IF ~~ THEN BEGIN Rejection
SAY @36
++ @37 EXIT
++ @38 + ChangeMind1
++ @31 + RenalGoesToInn
END

IF ~~ THEN BEGIN ChangeMind1
SAY @39 
IF ~~ THEN GOTO AloneWithRenal
END

END

CHAIN ~RENAL~ RenalGoesToInn
@40
END
++ @41 EXTERN ~RENAL~ RenalMakeoutOne
++ @42 EXTERN ~RENAL~ FullOfSurprises
+ ~Class(Player1,THIEF_ALL)~ + @43 EXTERN ~RENAL~ RenalPerhaps
++ @44 EXTERN ~RENAL~ RenalPerhaps
++ @45 EXTERN ~RENAL~ RenalPerhaps
++ @46 EXTERN ~RENAL~ FullOfSurprises

CHAIN ~RENAL~ FullOfSurprises
@47
= @48
DO ~SetGlobal("C-RenalInn","GLOBAL",1)~
EXIT

CHAIN ~RENAL~ RenalPerhaps
@47
= @49
DO ~SetGlobal("C-RenalInn","GLOBAL",1)~
EXIT

CHAIN ~RENAL~ AloneWithRenal
@50
END
++ @41 EXTERN ~RENAL~ RenalMakeoutOne
++ @42 EXTERN ~RENAL~ RenalMakeoutTwo
+ ~Class(Player1,THIEF_ALL)~ + @51 EXTERN ~RENAL~ RenalMakeoutTwo
++ @44 EXTERN ~RENAL~ RenalPerhaps
++ @46 EXTERN ~RENAL~ FullOfSurprises

CHAIN ~RENAL~ RenalMakeoutOne
@52
= @53
= @54
END
++ @55 EXTERN ~RENAL~ RenalPerhaps
++ @56 EXTERN ~RENAL~ RenalMakeoutTwo
++ @57 EXTERN ~RENAL~ RenalMakeoutTwo

CHAIN ~RENAL~ RenalMakeoutTwo
@58
= @59
= @60
DO ~SetGlobal("C-Bloodscalp","GLOBAL",1)~
EXIT

/* Bloodscalp - Enter His Bedchamber */

CHAIN ~RENAL~ RunAwayLittleGirl
@61
END
++ @62 EXTERN RENAL RE_RunCutscene1
++ @63 EXTERN RENAL RE_RunCutscene11
++ @64 EXTERN RENAL RE_RunCutscene11
++ @65 EXTERN RENAL RE_RunCutscene1
++ @66 EXTERN RENAL RE_RunCutscene1

CHAIN RENAL RE_RunCutscene1
@67
DO ~ClearAllActions() 
StartCutSceneMode() 
StartCutScene("RE_Ren2")~ 
EXIT

CHAIN RENAL RE_RunCutscene11
@68
DO ~ClearAllActions() 
StartCutSceneMode() 
StartCutScene("RE_Ren2")~ 
EXIT

CHAIN 
IF WEIGHT #-1 ~Global("C-Bloodscalp","GLOBAL",2)~ THEN PLAYER1 BeginBloodscalpBed1
@69 
END
++ @70 DO ~SetGlobal("C-Bloodscalp","GLOBAL",3)~ EXTERN PLAYER1 RE_GoSeeHim1
++ @71 DO ~SetGlobal("C-Bloodscalp","GLOBAL",4) RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT

CHAIN PLAYER1 RE_GoSeeHim1
@72
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("RE_Ren1")~
EXIT

CHAIN 
IF WEIGHT #-1 ~Global("C-Bloodscalp","GLOBAL",3)~ THEN ~RENAL~ BeginBloodscalpBed2
@73 
DO ~SetGlobal("C-Bloodscalp","GLOBAL",4)~
END
++ @74 EXTERN ~RENAL~ BloodscalpBedSerious
++ @75 EXTERN ~RENAL~ BloodscalpBedDismissive
++ @76 EXTERN ~RENAL~ BloodscalpBedAgressive
++ @77 EXTERN ~RENAL~ BloodscalpBedSarcastic
+ ~Class(Player1,THIEF_ALL)~ + @78 EXTERN ~RENAL~ BloodscalpBedConditional
++ @79 EXTERN ~RENAL~ RunAwayLittleGirl

CHAIN ~RENAL~ BloodscalpBedSerious
@80
END
++ @81 EXTERN ~RENAL~ InitiateDuelDagger
++ @82 EXTERN ~RENAL~ InitiateDuelDagger
++ @83 EXTERN ~RENAL~ InitiateDuelNoDagger
++ @79 EXTERN ~RENAL~ RunAwayLittleGirl

CHAIN ~RENAL~ BloodscalpBedDismissive
@84
END
++ @81 EXTERN ~RENAL~ InitiateDuelDagger
++ @82 EXTERN ~RENAL~ InitiateDuelDagger
++ @83 EXTERN ~RENAL~ InitiateDuelNoDagger
++ @79 EXTERN ~RENAL~ RunAwayLittleGirl

CHAIN ~RENAL~ BloodscalpBedAgressive
@85
= @86
END
++ @87 EXTERN ~RENAL~ InitiateDuelNoDagger
++ @82 EXTERN ~RENAL~ InitiateDuelDagger
++ @88 EXTERN ~RENAL~ InitiateDuelNoDagger
++ @89 EXTERN ~RENAL~ InitiateDuelNoDagger
++ @79 EXTERN ~RENAL~ RunAwayLittleGirl

CHAIN ~RENAL~ BloodscalpBedSarcastic
@90
= @91
END
++ @92 EXTERN ~RENAL~ InitiateDuelDagger
++ @93 EXTERN ~RENAL~ InitiateDuelNoDagger
++ @94 EXTERN ~RENAL~ InitiateDuelNoDagger
++ @79 EXTERN ~RENAL~ RunAwayLittleGirl

CHAIN ~RENAL~ BloodscalpBedConditional
@95
= @96
END
++ @82 EXTERN ~RENAL~ InitiateDuelDagger
++ @93 EXTERN ~RENAL~ InitiateDuelNoDagger
++ @94 EXTERN ~RENAL~ InitiateDuelNoDagger
++ @79 EXTERN ~RENAL~ RunAwayLittleGirl

/* Duel Entry point 1: Dagger */
CHAIN ~RENAL~ InitiateDuelDagger
@97
= @98
= @99
END
++ @100 EXTERN ~RENAL~ RenalLittleDeath
++ @101 EXTERN ~RENAL~ RenalLittleDeath
++ @102 EXTERN ~RENAL~ RenalLittleDeath
++ @103 EXTERN ~RENAL~ RenalLittleDeath
++ @104 EXTERN ~RENAL~ Satisfaction
++ @105 EXTERN ~RENAL~ RunAwayLittleGirl

/* Duel Entry point 2: No Dagger */
CHAIN ~RENAL~ InitiateDuelNoDagger
@97
= @98
= @99
END
++ @106 EXTERN ~RENAL~ RenalLittleDeathND
++ @102 EXTERN ~RENAL~RenalLittleDeathND
++ @103 EXTERN ~RENAL~ RenalLittleDeathND
++ @104 EXTERN ~RENAL~ SatisfactionND
++ @105 EXTERN ~RENAL~ RunAwayLittleGirl

CHAIN ~RENAL~ RenalLittleDeath
@107
= @108
END
++ @109 EXTERN ~RENAL~ AgressiveStance
++ @110 EXTERN ~RENAL~ PassiveStance
++ @111 EXTERN ~RENAL~ EqualStance
++ @112 EXTERN ~RENAL~ EquippedStance
++ @113 EXTERN ~RENAL~ RunAwayLittleGirl

CHAIN ~RENAL~ RenalLittleDeathND
@107
= @114
= @115
END
++ @109 EXTERN ~RENAL~ AgressiveStance
++ @110 EXTERN ~RENAL~ PassiveStance
++ @111 EXTERN ~RENAL~ EqualStance
++ @116 EXTERN ~RENAL~ EquippedStance
++ @117 EXTERN ~RENAL~ RunAwayLittleGirl

CHAIN ~RENAL~ Satisfaction
@118
END
IF ~~ EXTERN ~RENAL~ RenalLittleDeath

CHAIN ~RENAL~ SatisfactionND
@118
END
IF ~~ EXTERN ~RENAL~ RenalLittleDeathND

CHAIN ~RENAL~ AgressiveStance
@119
= @120
= @121
END
++ @122 EXTERN ~RENAL~ PCAboveRenal
++ @123 EXTERN ~RENAL~ PCAboveRenal
++ @124 EXTERN ~RENAL~ PCAboveRenal
++ @125 EXTERN ~RENAL~ PCOnBottom

CHAIN ~RENAL~ PassiveStance
@126
= @127
= @128
= @129
END
++ @130 EXTERN ~RENAL~ PCOnBottom
++ @131 EXTERN ~RENAL~ PCKissRenal
++ @132 EXTERN ~RENAL~ PCAboveRenal
++ @133 EXTERN ~RENAL~ RunAwayLittleGirl

CHAIN ~RENAL~ EqualStance
@134
= @135
END
++ @136 EXTERN ~RENAL~ PCKissRenal
++ @137 EXTERN ~RENAL~ PCAboveRenal
++ @138 EXTERN ~RENAL~ PCOnBottom
++ @139 EXTERN ~RENAL~ PCEqualTouching
++ @140 EXTERN ~RENAL~ RunAwayLittleGirl

CHAIN ~RENAL~ PCEqualTouching
@141
= @142
END
++ @143 EXTERN ~RENAL~ PCKissRenal
++ @144 EXTERN ~RENAL~ PCOnBottom
++ @145 EXTERN ~RENAL~ PCAboveRenal
++ @140 EXTERN ~RENAL~ RunAwayLittleGirl

CHAIN ~RENAL~ EquippedStance
@146
= @147
= @148
= @149
= @150
END
++ @132 EXTERN ~RENAL~ PCAboveRenal
++ @143 EXTERN ~RENAL~ PCKissRenal
++ @151 EXTERN ~RENAL~ PCOnBottom
++ @139 EXTERN ~RENAL~ PCEqualTouching
++ @152 EXTERN ~RENAL~ RunAwayLittleGirl

CHAIN ~RENAL~ PCAboveRenal
@153
= @154
= @155
= @156
END
++ @157 EXTERN ~RENAL~ Completion
++ @158 EXTERN ~RENAL~ Completion
++ @159 EXTERN ~RENAL~ Completion
++ @160 EXTERN ~RENAL~ RunAwayLittleGirl

CHAIN ~RENAL~ PCKissRenal
@161
= @162
= @163
END
++ @164 EXTERN ~RENAL~ PCOnBottom
++ @165 EXTERN ~RENAL~ PCAboveRenal
++ @166 EXTERN ~RENAL~ RunAwayLittleGirl

CHAIN ~RENAL~ PCOnBottom
@167
= @168
= @155
= @156
END
++ @169 EXTERN ~RENAL~ Completion
++ @158 EXTERN ~RENAL~ Completion
++ @170 EXTERN ~RENAL~ Completion
++ @171 EXTERN ~RENAL~ RunAwayLittleGirl

CHAIN ~RENAL~ Completion
@172
= @173
= @174
= @175
= @176
END
++ @65 EXTERN RENAL RE_AfterChambers1
++ @177 EXTERN RENAL RE_AfterChambers1
++ @178 EXTERN RENAL RE_AfterChambers1
++ @179 EXTERN RENAL RE_AfterChambers1
++ @180 EXTERN RENAL RE_AfterChambers1
++ @181 EXTERN RENAL RE_AfterChambers1

CHAIN RENAL RE_AfterChambers1
@182
= @37
DO ~SetGlobal("RE_RenalSex","GLOBAL",1)
ClearAllActions() 
StartCutSceneMode() 
StartCutScene("RE_Ren2")~ 
EXIT

/* Inn encounter */

CHAIN ~RENAL~ RunAwayLittleGirlInn
@61
END
++ @62 EXTERN RENAL RE_RunCutscene2
++ @183 EXTERN RENAL RE_RunCutscene2
++ @63 EXTERN RENAL RE_RunCutscene22
++ @184 EXTERN RENAL RE_RunCutscene22
++ @185 EXTERN ~RENAL~ CompletionInn
++ @186 EXTERN RENAL RE_RunCutscene2

CHAIN RENAL RE_RunCutscene2
@67
DO ~ClearAllActions() 
StartCutSceneMode() 
StartCutScene("RE_Ren2")~ 
EXIT

CHAIN RENAL RE_RunCutscene22
@187
DO ~ClearAllActions() 
StartCutSceneMode() 
StartCutScene("RE_Ren2")~ 
EXIT

/* Bloodscalp - The Inn */

CHAIN IF WEIGHT #-1 ~Global("C-RenalInn","GLOBAL",2)~ THEN ~RENAL~ BeginBloodscalpBed
@188 
DO ~SetGlobal("C-RenalInn","GLOBAL",3)~ 
= @189
= @190
= @191
= @192
END
++ @193 EXTERN ~RENAL~ BloodscalpBedSeriousInn
++ @194 EXTERN ~RENAL~ BloodscalpBedDismissiveInn
++ @195 EXTERN ~RENAL~ BloodscalpBedAgressiveInn
++ @196 EXTERN ~RENAL~ RunAwayLittleGirlInn

CHAIN ~RENAL~ BloodscalpBedSeriousInn
@197
= @198
END
++ @199 EXTERN ~RENAL~ InitiateDuelDaggerInn
++ @200 EXTERN ~RENAL~ InitiateDuelNoDaggerInn
++ @201 EXTERN ~RENAL~ RunAwayLittleGirlInn

CHAIN ~RENAL~ BloodscalpBedDismissiveInn
@202
= @203
END
++ @199 EXTERN ~RENAL~ InitiateDuelDaggerInn
++ @200 EXTERN ~RENAL~ InitiateDuelNoDaggerInn
++ @204 EXTERN ~RENAL~ RunAwayLittleGirlInn

CHAIN ~RENAL~ BloodscalpBedAgressiveInn
@205
END
++ @200 EXTERN ~RENAL~ InitiateDuelNoDaggerInn
++ @199 EXTERN ~RENAL~ InitiateDuelDaggerInn
++ @206 EXTERN ~RENAL~ RunAwayLittleGirlInn

/* Duel Entry point 1: Dagger */
CHAIN ~RENAL~ InitiateDuelDaggerInn
@207
= @208
END
++ @209 EXTERN ~RENAL~ RenalLittleDeathInn
++ @210 EXTERN ~RENAL~ RenalLittleDeathInn
++ @211 EXTERN ~RENAL~ RenalLittleDeathInn
++ @212 EXTERN ~RENAL~ RunAwayLittleGirlInn

/* Duel Entry point 2: No Dagger */
CHAIN ~RENAL~ InitiateDuelNoDaggerInn
@213
= @214
END
++ @215 EXTERN ~RENAL~ RenalLittleDeathNDInn
++ @211 EXTERN ~RENAL~ RenalLittleDeathNDInn
++ @216 EXTERN ~RENAL~ RenalLittleDeathNDInn
++ @217 EXTERN ~RENAL~ RunAwayLittleGirlInn

CHAIN ~RENAL~ RenalLittleDeathInn
@107
= @108
END
++ @218 EXTERN ~RENAL~ AgressiveStanceInn
++ @219 EXTERN ~RENAL~ PassiveStanceInn
++ @220 EXTERN ~RENAL~ EqualStanceInn
++ @221 EXTERN ~RENAL~ EquippedStanceInn
++ @222 EXTERN ~RENAL~ RunAwayLittleGirlInn

CHAIN ~RENAL~ RenalLittleDeathNDInn
@107
= @114
= @223
END
++ @218 EXTERN ~RENAL~ AgressiveStanceInn
++ @219 EXTERN ~RENAL~ PassiveStanceInn
++ @220 EXTERN ~RENAL~ EqualStanceInn
++ @221 EXTERN ~RENAL~ EquippedStanceInn
++ @222 EXTERN ~RENAL~ RunAwayLittleGirlInn

CHAIN ~RENAL~ AgressiveStanceInn
@119
= @120
= @121
END
++ @122 EXTERN ~RENAL~ PCAboveRenalInn
++ @123 EXTERN ~RENAL~ PCAboveRenalInn
++ @124 EXTERN ~RENAL~ PCAboveRenalInn
++ @125 EXTERN ~RENAL~ PCOnBottomInn

CHAIN ~RENAL~ PassiveStanceInn
@224
= @225
= @128
= @129
END
++ @130 EXTERN ~RENAL~ PCOnBottomInn
++ @131 EXTERN ~RENAL~ PCKissRenalInn
++ @132 EXTERN ~RENAL~ PCAboveRenalInn
++ @226 EXTERN ~RENAL~ RunAwayLittleGirlInn

CHAIN ~RENAL~ EqualStanceInn
@134
= @135
END
++ @136 EXTERN ~RENAL~ PCKissRenalInn
++ @137 EXTERN ~RENAL~ PCAboveRenalInn
++ @138 EXTERN ~RENAL~ PCOnBottomInn
++ @139 EXTERN ~RENAL~ PCEqualTouchingInn
++ @227 EXTERN ~RENAL~ RunAwayLittleGirlInn

CHAIN ~RENAL~ EquippedStanceInn
@228
= @147
= @148
= @150
END
++ @132 EXTERN ~RENAL~ PCAboveRenalInn
++ @143 EXTERN ~RENAL~ PCKissRenalInn
++ @151 EXTERN ~RENAL~ PCOnBottomInn
++ @139 EXTERN ~RENAL~ PCEqualTouchingInn
++ @229 EXTERN ~RENAL~ RunAwayLittleGirlInn

CHAIN ~RENAL~ PCEqualTouchingInn
@141
= @142
END
++ @143 EXTERN ~RENAL~ PCKissRenalInn
++ @138 EXTERN ~RENAL~ PCOnBottomInn
++ @145 EXTERN ~RENAL~ PCAboveRenalInn
++ @230 EXTERN ~RENAL~ RunAwayLittleGirlInn

CHAIN ~RENAL~ PCAboveRenalInn
@153
= @154
= @155
= @156
END
++ @157 EXTERN ~RENAL~ CompletionInn
++ @158 EXTERN ~RENAL~ CompletionInn
++ @159 EXTERN ~RENAL~ CompletionInn
++ @231 EXTERN ~RENAL~ RunAwayLittleGirlInn

CHAIN ~RENAL~ PCKissRenalInn
@161
= @162
= @163
END
++ @164 EXTERN ~RENAL~ PCOnBottomInn
++ @165 EXTERN ~RENAL~ PCAboveRenalInn
++ @232 EXTERN ~RENAL~ RunAwayLittleGirlInn

CHAIN ~RENAL~ PCOnBottomInn
@167
= @168
= @155
= @156
END
++ @169 EXTERN ~RENAL~ CompletionInn
++ @158 EXTERN ~RENAL~ CompletionInn
++ @170 EXTERN ~RENAL~ CompletionInn
++ @233 EXTERN ~RENAL~ RunAwayLittleGirlInn

CHAIN ~RENAL~ CompletionInn
@172
= @173
= @174
= @175
= @234
= @235
DO ~SetGlobal("RE_RenalSex","GLOBAL",1)
ClearAllActions() 
StartCutSceneMode() 
StartCutScene("RE_Ren2")~ 
EXIT