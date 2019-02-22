/* Romantic Encounter Entry: "Storms and Lightning" by berelinde, June X, 2007 */

/* WeatherMistress Ada Encounter 1 - Entry and "hook"  */

I_C_T ~TALMISS~ 0 WeatherMistressOver1
== ~TALMISS~ IF ~Global("RE_AdaSex","GLOBAL",1) Global("B!WeatherMistressDone","GLOBAL",0)~ THEN @0 DO ~SetGlobal("B!WeatherMistressDone","GLOBAL",1)~
END

I_C_T ~TALMISS~ 0 WeatherMistressOver2
== ~TALMISS~ IF ~Global("RE_AdaSex","GLOBAL",1) Global("B!WeatherMistressDone","GLOBAL",1)~ THEN @1 DO ~SetGlobal("B!WeatherMistressDone","GLOBAL",2)~
END

I_C_T ~TALMISS~ 0 WeatherMistressOver3
== ~TALMISS~ IF ~Global("RE_AdaSex","GLOBAL",1) Global("B!WeatherMistressDone","GLOBAL",2)~ THEN @2 DO ~SetGlobal("B!WeatherMistressDone","GLOBAL",3)~
END

EXTEND_BOTTOM ~TALMISS~ 0
+ ~Gender(Player1,MALE) OR(4) Race(Player1,HUMAN) Race(Player1,HALF_ELF) Race(Player1,ELF) Race(Player1,HALFORC) Global("B!AdaFlirt","GLOBAL",0) !Global("RE_AdaSex","GLOBAL",1)~ + @3 DO ~SetGlobal("B!AdaFlirt","GLOBAL",1)~ EXTERN ~TALMISS~ BeginWeathermistress0.1
+ ~Gender(Player1,MALE) Global("B!AdaFlirt","GLOBAL",1) !Global("RE_AdaSex","GLOBAL",1)~ + @4 DO ~SetGlobal("B!AdaFlirt","GLOBAL",2)~ EXTERN ~TALMISS~ BeginWeathermistress0.2
+ ~Gender(Player1,MALE) Global("B!AdaFlirt","GLOBAL",2) !Global("RE_AdaSex","GLOBAL",1)~ + @5 DO ~SetGlobal("B!AdaFlirt","GLOBAL",3)~ EXTERN ~TALMISS~ BeginWeathermistress0.3
+ ~Gender(Player1,MALE) Global("B!AdaFlirt","GLOBAL",3) !Global("RE_AdaSex","GLOBAL",1)~ + @6 EXTERN ~TALMISS~ BeginWeathermistress0.4
END

CHAIN
IF ~~ THEN ~TALMISS~ BeginWeathermistress0.1
@7
END
++ @8 EXTERN ~TALMISS~ BeginWeathermistress
++ @9 DO ~StartStore("temtalos",LastTalkedToBy())~ EXIT

CHAIN
IF ~~ THEN ~TALMISS~ BeginWeathermistress0.2
@10
END
++ @11 EXTERN ~TALMISS~ Begone
++ @12 DO ~StartStore("temtalos",LastTalkedToBy())~ EXIT

CHAIN
IF ~~ THEN ~TALMISS~ BeginWeathermistress0.3
@13
END
++ @14 EXTERN ~TALMISS~ BeginWeathermistress1
++ @15 EXTERN ~TALMISS~ BeginWeathermistress3

CHAIN
IF ~~ THEN ~TALMISS~ BeginWeathermistress0.4
@16
EXTERN ~TALMISS~ Begone

CHAIN
IF ~~ THEN ~TALMISS~ Begone
@17
EXIT

CHAIN
IF ~~ THEN ~TALMISS~ BeginWeathermistress
@18
= @19
== ~KELDORJ~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @20
== ~AERIEJ~ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2)~ THEN @21
== ~ANOMENJ~ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @22 
== ~TALMISS~ @23
END
++ @24 EXTERN ~TALMISS~ BeginWeathermistress1
++ @25 EXTERN ~TALMISS~ BeginWeathermistress2
++ @26 EXTERN ~TALMISS~ BeginWeathermistress3

APPEND ~TALMISS~

IF ~~ THEN BEGIN BeginWeathermistress1
SAY @27
IF ~~ THEN DO ~SetGlobalTimer("B!WeathermistressTime","GLOBAL",200) SetGlobal("B!AdaFlirt","GLOBAL",4) SetGlobal("B!MistressAdaEncounter","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN BeginWeathermistress2
SAY @28
++ @29 + BeginWeathermistress1
++ @30 + BeginWeathermistress5
END

IF ~~ THEN BEGIN BeginWeathermistress3
SAY @31
++ @29 DO ~SetGlobal("B!AdaFlirt","GLOBAL",3)~ + BeginWeathermistress1
++ @30 DO ~SetGlobal("B!AdaFlirt","GLOBAL",3)~ + BeginWeathermistress4
END

IF ~~ THEN BEGIN BeginWeathermistress4
SAY @32
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN BeginWeathermistress5
SAY @33
IF ~~ THEN EXIT
END
END

/* WeatherMistress Ada Encounter 1 - Set up. */
CHAIN IF WEIGHT #-1 ~!GlobalTimerExpired("B!WeathermistressTime","GLOBAL") Global("B!MistressAdaEncounter","GLOBAL",1)~ THEN ~TALMISS~ NotYet
@34
EXIT

CHAIN IF WEIGHT #-1 ~GlobalTimerExpired("B!WeathermistressTime","GLOBAL") Global("B!MistressAdaEncounter","GLOBAL",1)~  THEN ~TALMISS~ FirstFlirt
@35
DO ~SetGlobal("B!MistressAdaEncounter","GLOBAL",2) DayNight(NOON)~
END
IF ~NumInParty(1)~ THEN EXTERN ~TALMISS~ FollowMe1
IF ~NumInParty(2)~ THEN EXTERN ~TALMISS~ FollowMe2
IF ~NumInPartyGT(2)~ THEN EXTERN ~TALMISS~ FollowMe3

CHAIN
IF ~~ THEN ~TALMISS~ FollowMe1
@36
EXTERN ~TALMISS~ KeepUp

CHAIN
IF ~~ THEN ~TALMISS~ FollowMe2
@37
EXTERN ~TALMISS~ KeepUp

CHAIN
IF ~~ THEN ~TALMISS~ FollowMe3
@38
EXTERN ~TALMISS~ KeepUp

CHAIN
IF ~~ THEN ~TALMISS~ KeepUp
@39
END
IF ~~ DO ~SetGlobal("RE_AdaMoves","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Ada1")~ EXIT

IF ~InParty("Aerie") OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_AdaFlirtAerie","GLOBAL",1) SetGlobal("RE_AdaMoves","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Ada1")~ EXIT
IF ~InParty("Jaheira") OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_AdaFlirtJaheira","GLOBAL",1) SetGlobal("RE_AdaMoves","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Ada1")~ EXIT
IF ~InParty("Viconia") OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_AdaFlirtViconia","GLOBAL",1) SetGlobal("RE_AdaMoves","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Ada1")~ EXIT

IF ~InParty("Aerie") OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2) 
InParty("Jaheira") OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_AdaFlirtAerie","GLOBAL",1) SetGlobal("RE_AdaFlirtJaheira","GLOBAL",1) SetGlobal("RE_AdaMoves","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Ada1")~ EXIT
IF ~InParty("Aerie") OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2) 
InParty("Viconia") OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_AdaFlirtAerie","GLOBAL",1) SetGlobal("RE_AdaFlirtViconia","GLOBAL",1) SetGlobal("RE_AdaMoves","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Ada1")~ EXIT
IF ~InParty("Jaheira") OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2)
InParty("Viconia") OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_AdaFlirtJaheira","GLOBAL",1) SetGlobal("RE_AdaFlirtViconia","GLOBAL",1) SetGlobal("RE_AdaMoves","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Ada1")~ EXIT

IF ~InParty("Aerie") OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2) 
InParty("Jaheira") OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2)
InParty("Viconia") OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_AdaFlirtAerie","GLOBAL",1) SetGlobal("RE_AdaFlirtJaheira","GLOBAL",1) SetGlobal("RE_AdaFlirtViconia","GLOBAL",1) SetGlobal("RE_AdaMoves","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Ada1")~ EXIT


CHAIN
IF WEIGHT #-1 ~Global("RE_AdaMoves","GLOBAL",1)~ THEN ~TALMISS~ HereYouAre
@40
DO ~SetGlobal("RE_AdaFlirt","GLOBAL",1)~
= @41
DO ~SetGlobal("RE_AdaMoves","GLOBAL",2)~
END
++ @42 DO ~SetGlobal("B!MistressAdaEncounter","GLOBAL",2)~ EXTERN ~TALMISS~ FirstFlirtOne
++ @43 DO ~SetGlobal("B!MistressAdaEncounter","GLOBAL",2)~ EXTERN ~TALMISS~ FirstFlirtTwo
++ @44 DO ~SetGlobal("B!MistressAdaEncounter","GLOBAL",2)~ EXTERN ~TALMISS~ FirstFlirtThree
++ @45 DO ~SetGlobal("B!MistressAdaEncounter","GLOBAL",2)~ EXTERN ~TALMISS~ FirstFlirtFour
+ ~CheckStatGT(Player1,14,CON)~ + @46  DO ~SetGlobal("B!MistressAdaEncounter","GLOBAL",2)~ EXTERN ~TALMISS~ FirstFlirtFive
++ @47 DO ~SetGlobal("B!MistressAdaEncounter","GLOBAL",2)~ EXTERN ~TALMISS~ NotMyType

CHAIN IF ~~ THEN ~TALMISS~ NotMyType
@48
= @49
END
++ @50 EXTERN ~TALMISS~ FirstFlirtSix
++ @51 DO ~SetGlobal("B!MistressAdaEncounter","GLOBAL",5)~ EXTERN ~TALMISS~ NotMyTypeRegret
++ @52 DO ~SetGlobal("B!MistressAdaEncounter","GLOBAL",5)~ EXTERN ~TALMISS~ NotMyTypeNoTaste

CHAIN IF ~~ THEN ~TALMISS~ NotMyTypeRegret
@53
DO ~SetGlobal("RE_AdaMoves","GLOBAL",3)
ClearAllActions() StartCutSceneMode() StartCutScene("RE_Ada2")~ 
EXIT

CHAIN IF ~~ THEN ~TALMISS~ NotMyTypeNoTaste
@54
DO ~SetGlobal("RE_AdaMoves","GLOBAL",3)
ClearAllActions() StartCutSceneMode() StartCutScene("RE_Ada2")~ 
EXIT

CHAIN IF WEIGHT #-1 ~Global("RE_AdaOnlyOnce","GLOBAL",0) !Global("B!MistressAdaEncounter_DumpedPC","GLOBAL",1) Global("B!MistressAdaEncounter","GLOBAL",20)~  THEN ~TALMISS~ RepeatingFriendlyInteraction
@55
END
++ @56 DO ~SetGlobal("RE_AdaOnlyOnce","GLOBAL",1)~ EXIT
++ @57 DO ~SetGlobal("RE_AdaOnlyOnce","GLOBAL",1) StartStore("temtalos",LastTalkedToBy())~ EXIT

CHAIN IF WEIGHT #-1 ~Global("RE_AdaOnlyOnce","GLOBAL",0) Global("B!MistressAdaEncounter_DumpedPC","GLOBAL",1)~  THEN ~TALMISS~ RepeatingUnfriendlyInteraction
@58
END
++ @59 DO ~SetGlobal("RE_AdaOnlyOnce","GLOBAL",1)~ EXIT
++ @60 DO ~SetGlobal("RE_AdaOnlyOnce","GLOBAL",1) StartStore("temtalos",LastTalkedToBy())~ EXIT


CHAIN ~TALMISS~ FirstFlirtOne
@61
END
++ @62 EXTERN ~TALMISS~ FirstFlirtSlowDown
++ @63 EXTERN ~TALMISS~ FirstFlirtSpeedUp
++ @64 EXTERN ~TALMISS~ FirstFlirtSlowDownPhysical
+ ~Class(Player1,PALADIN_ALL)~ + @65 EXTERN ~TALMISS~ FirstFlirtSlowDownConditional
++ @66 DO ~SetGlobal("B!MistressAdaEncounter","GLOBAL",5)~ EXTERN ~TALMISS~ NotMyType

CHAIN  ~TALMISS~ FirstFlirtTwo
@67
= @68
END
++ @62 EXTERN ~TALMISS~ FirstFlirtSlowDown
++ @63 EXTERN ~TALMISS~ FirstFlirtSpeedUp
++ @64 EXTERN ~TALMISS~ FirstFlirtSlowDownPhysical
+ ~Class(Player1,PALADIN_ALL)~ + @65 EXTERN ~TALMISS~ FirstFlirtSlowDownConditional
++ @66 DO ~SetGlobal("B!MistressAdaEncounter","GLOBAL",5)~ EXTERN ~TALMISS~ NotMyType

CHAIN  ~TALMISS~ FirstFlirtThree
@69
= @68
END
++ @62 EXTERN ~TALMISS~ FirstFlirtSlowDown
++ @63 EXTERN ~TALMISS~ FirstFlirtSpeedUp
++ @64 EXTERN ~TALMISS~ FirstFlirtSlowDownPhysical
+ ~Class(Player1,PALADIN_ALL)~ + @65 EXTERN ~TALMISS~ FirstFlirtSlowDownConditional
++ @70 DO ~SetGlobal("B!MistressAdaEncounter","GLOBAL",5)~ EXTERN ~TALMISS~ NotMyType

CHAIN  ~TALMISS~ FirstFlirtFour
@71
END
++ @62 EXTERN ~TALMISS~ FirstFlirtSlowDown
++ @63 EXTERN ~TALMISS~ FirstFlirtSpeedUp
++ @64 EXTERN ~TALMISS~ FirstFlirtSlowDownPhysical
+ ~Alignment(Player1,MASK_GOOD) OR(3) Class(Player1,PALADIN_ALL) Class(Player1,RANGER_ALL) Class(Player1,CLERIC_ALL)~ + @65 EXTERN ~TALMISS~ FirstFlirtSlowDownConditional
++ @70 DO ~SetGlobal("B!MistressAdaEncounter","GLOBAL",5)~ EXTERN ~TALMISS~ NotMyType
++ @72 EXTERN ~TALMISS~ FirstFlirtSarcastic

CHAIN  ~TALMISS~ FirstFlirtFive
@73
END
++ @62 EXTERN ~TALMISS~ FirstFlirtSlowDown
++ @63 EXTERN ~TALMISS~ FirstFlirtSpeedUp
++ @64 EXTERN ~TALMISS~ FirstFlirtSlowDownPhysical
+ ~Class(Player1,PALADIN_ALL)~ + @65 EXTERN ~TALMISS~ FirstFlirtSlowDownConditional
++ @70 DO ~SetGlobal("B!MistressAdaEncounter","GLOBAL",5)~ EXTERN ~TALMISS~ NotMyType
++ @72 EXTERN ~TALMISS~ FirstFlirtSarcastic

CHAIN  ~TALMISS~ FirstFlirtSix
@74
END
++ @62 EXTERN ~TALMISS~ FirstFlirtSlowDown
++ @63 EXTERN ~TALMISS~ FirstFlirtSpeedUp
++ @64 EXTERN ~TALMISS~ FirstFlirtSlowDownPhysical
+ ~Class(Player1,PALADIN_ALL)~ + @65 EXTERN ~TALMISS~ FirstFlirtSlowDownConditional
++ @70 DO ~SetGlobal("B!MistressAdaEncounter","GLOBAL",5)~ EXTERN ~TALMISS~ NotMyType
++ @72 EXTERN ~TALMISS~ FirstFlirtSarcastic

CHAIN ~TALMISS~ FirstFlirtSlowDown
@75
= @76
END
++ @77 EXTERN ~TALMISS~ Instruct
++ @78 DO ~SetGlobal("B!MistressAdaEncounter","GLOBAL",5) SetGlobal("RE_AdaGuardMoves","GLOBAL",2)~ EXIT


CHAIN ~TALMISS~ FirstFlirtSpeedUp
@75
= @79
END
++ @77 EXTERN ~TALMISS~ Instruct
++ @78 DO ~SetGlobal("B!MistressAdaEncounter","GLOBAL",5) SetGlobal("RE_AdaGuardMoves","GLOBAL",2)~ EXIT

CHAIN ~TALMISS~ FirstFlirtSlowDownPhysical
@75
= @80
END
++ @77 EXTERN ~TALMISS~ Instruct
++ @78 DO ~SetGlobal("B!MistressAdaEncounter","GLOBAL",5) SetGlobal("RE_AdaGuardMoves","GLOBAL",2)~ EXIT

CHAIN ~TALMISS~ FirstFlirtSlowDownConditional
@81
= @82
END
++ @77 EXTERN ~TALMISS~ Instruct
++ @83 DO ~SetGlobal("B!MistressAdaEncounter","GLOBAL",5) SetGlobal("RE_AdaGuardMoves","GLOBAL",2)~ EXIT

CHAIN ~TALMISS~ FirstFlirtSarcastic
@84
END
++ @77 EXTERN ~TALMISS~ Instruct
++ @78 DO ~SetGlobal("B!MistressAdaEncounter","GLOBAL",5) SetGlobal("RE_AdaGuardMoves","GLOBAL",2)~ EXIT

CHAIN ~TALMISS~ Instruct
@85
END
++ @86 DO ~SetGlobal("B!MistressAdaEncounter","GLOBAL",4)~ EXTERN ~TALMISS~ MoreActionLessTalk
++ @87 DO ~SetGlobal("B!MistressAdaEncounter","GLOBAL",4)~  EXTERN ~TALMISS~ MoreActionLessTalk
++ @88 DO ~SetGlobal("B!MistressAdaEncounter","GLOBAL",4)~  EXTERN ~TALMISS~ MoreTalkLessAction
++ @89 DO ~SetGlobal("B!MistressAdaEncounter","GLOBAL",4)~ EXTERN ~TALMISS~ YouAreBlowingIt
+ ~Alignment(Player1,MASK_GOOD) OR(3) Class(Player1,PALADIN_ALL) Class(Player1,RANGER_ALL) Class(Player1,CLERIC_ALL)~ + @90  DO ~SetGlobal("B!MistressAdaEncounter","GLOBAL",4)~ EXTERN ~TALMISS~ SpecialIsCool


CHAIN ~TALMISS~ MoreActionLessTalk
@91
END
++ @92 EXTERN ~TALMISS~ OKImExcitedNowOne
++ @93 EXTERN ~TALMISS~ OKImExcitedNowTwo
++ @94 EXTERN ~TALMISS~ OKImExcitedNowThree
++ @95 EXTERN ~TALMISS~ HeyWhyAllTheTalk
++ @96 EXTERN ~TALMISS~ ImOuttaHere

CHAIN ~TALMISS~ MoreTalkLessAction
@97
= @98
END
++ @99 EXTERN ~TALMISS~ OKImExcitedNowThree
++ @100 EXTERN ~TALMISS~ OKImExcitedNowThree
++ @101 EXTERN ~TALMISS~ WayTooMuchTooFast
++ @102 EXTERN ~TALMISS~ NekkidButNotInterested

CHAIN IF ~~ THEN ~TALMISS~ NekkidButNotInterested
@103
DO ~SetGlobal("RE_AdaMoves","GLOBAL",3)
ClearAllActions() StartCutSceneMode() StartCutScene("RE_Ada2")~ 
EXIT

CHAIN ~TALMISS~ YouAreBlowingIt
@104
= @105
END
++ @92 EXTERN ~TALMISS~ OKImExcitedNowOne
++ @93 EXTERN ~TALMISS~ OKImExcitedNowTwo
++ @106 EXTERN ~TALMISS~ OKImExcitedNowThree
++ @95 EXTERN ~TALMISS~ HeyWhyAllTheTalk
++ @96 EXTERN ~TALMISS~ ImOuttaHere

CHAIN ~TALMISS~ SpecialIsCool
@107
= @108
= @109
END
++ @92 EXTERN ~TALMISS~ OKImExcitedNowOne
++ @93 EXTERN ~TALMISS~ OKImExcitedNowTwo
++ @106 EXTERN ~TALMISS~ OKImExcitedNowThree
++ @95 EXTERN ~TALMISS~ HeyWhyAllTheTalk
++ @101 EXTERN ~TALMISS~ WayTooMuchTooFast
++ @96 EXTERN ~TALMISS~ ImOuttaHere

CHAIN ~TALMISS~ OKImExcitedNowOne
@110
= @111
END
++ @112 EXTERN ~TALMISS~ OKImExcitedNowTwo
++ @113 EXTERN ~TALMISS~ OKImExcitedNowThree
++ @114 EXTERN ~TALMISS~ ImOuttaHere


CHAIN ~TALMISS~ OKImExcitedNowTwo
@115
= @116
END
++ @117 EXTERN ~TALMISS~ OKImExcitedNowOne
++ @118 EXTERN ~TALMISS~ OKImExcitedNowThree
++ @114 EXTERN ~TALMISS~ ImOuttaHere


CHAIN ~TALMISS~ OKImExcitedNowThree
@119
= @120
= @121
END
++ @122 EXTERN ~TALMISS~ OnslaughtOfPassion
++ @123 EXTERN ~TALMISS~ BeginForeplay
++ @124 EXTERN ~TALMISS~ BeginForeplay
++ @125 EXTERN ~TALMISS~ FreeToGo

CHAIN ~TALMISS~ FreeToGo
@126
END
++ @127 EXTERN ~TALMISS~ OnslaughtOfPassion
++ @128 EXTERN ~TALMISS~ Undecided
++ @129 EXTERN ~TALMISS~ NekkidButNotInterested

CHAIN ~TALMISS~ OnslaughtOfPassion
@130
EXTERN ~TALMISS~ BeginForeplay

CHAIN ~TALMISS~ Undecided
@131
END
++ @132 EXTERN ~TALMISS~ BeginForeplay
++ @133 EXTERN ~TALMISS~ BeginForeplay
++ @134 EXTERN ~TALMISS~ NekkidButNotInterested

CHAIN ~TALMISS~ HeyWhyAllTheTalk
@135
= @136
END
++ @92 EXTERN ~TALMISS~ OKImExcitedNowOne
++ @93 EXTERN ~TALMISS~ OKImExcitedNowTwo
++ @106 EXTERN ~TALMISS~ OKImExcitedNowThree
++ @95 EXTERN ~TALMISS~ HeyWhyAllTheTalk
++ @101 EXTERN ~TALMISS~ WayTooMuchTooFast
++ @96 EXTERN ~TALMISS~ ImOuttaHere
++ @137 EXTERN ~TALMISS~ ImOuttaHere

CHAIN ~TALMISS~ WayTooMuchTooFast
@138
END
IF ~~ THEN EXTERN ~TALMISS~ YouAreBlowingIt

CHAIN ~TALMISS~ ImOuttaHere
@139
= @140
END
++ @141 DO ~SetGlobal("B!MistressAdaEncounter_DumpedPC","GLOBAL",1)~ EXTERN ~TALMISS~ Dump1
++ @142 DO ~SetGlobal("B!MistressAdaEncounter_DumpedPC","GLOBAL",1)~  EXTERN ~TALMISS~ Dump2
++ @143 DO ~SetGlobal("B!MistressAdaEncounter_DumpedPC","GLOBAL",1)~ EXTERN ~TALMISS~ Dump3

CHAIN ~TALMISS~ Dump1
@144
DO ~SetGlobal("RE_AdaMoves","GLOBAL",3)
ClearAllActions() StartCutSceneMode() StartCutScene("RE_Ada2")~ 
EXIT

CHAIN ~TALMISS~ Dump2
@145
DO ~SetGlobal("RE_AdaMoves","GLOBAL",3)
ClearAllActions() StartCutSceneMode() StartCutScene("RE_Ada2")~ 
EXIT

CHAIN ~TALMISS~ Dump3
@146
DO ~SetGlobal("RE_AdaMoves","GLOBAL",3)
ClearAllActions() StartCutSceneMode() StartCutScene("RE_Ada2")~ 
EXIT

CHAIN ~TALMISS~ BeginForeplay
@147
= @148
= @149
END
++ @150 EXTERN ~TALMISS~ Please
++ @151 EXTERN ~TALMISS~ Please
++ @152 EXTERN ~TALMISS~ Please
++ @153 EXTERN ~TALMISS~ NoKiss

CHAIN ~TALMISS~ Please
@154
= @155
END
++ @156 EXTERN ~TALMISS~ Stroke
++ @157 EXTERN ~TALMISS~ Stroke
++ @158 EXTERN ~TALMISS~ Stroke
++ @159 EXTERN ~TALMISS~ Mercy

CHAIN ~TALMISS~ NoKiss
@160
= @161
= @155
END
++ @157 EXTERN ~TALMISS~ Stroke
++ @158 EXTERN ~TALMISS~ Stroke
++ @159 EXTERN ~TALMISS~ Mercy

CHAIN ~TALMISS~ Stroke
@162
END
++ @163 EXTERN ~TALMISS~ InBed
++ @164 EXTERN ~TALMISS~ SoSoon
++ @165 EXTERN ~TALMISS~ Yikes

CHAIN ~TALMISS~ Mercy
@166
END
++ @163 EXTERN ~TALMISS~ InBed
++ @164 EXTERN ~TALMISS~ SoSoon
++ @165 EXTERN ~TALMISS~ Yikes

CHAIN ~TALMISS~ Yikes
@167
END
++ @168 EXTERN ~TALMISS~ InBed
++ @169 EXTERN ~TALMISS~ SoSoon
++ @170 EXTERN ~TALMISS~ ImOuttaHere

CHAIN ~TALMISS~ SoSoon
@171
END
++ @172 EXTERN ~TALMISS~ InBed
++ @173 EXTERN ~TALMISS~ ImOuttaHere

CHAIN ~TALMISS~ InBed
@174
= @175
= @176
= @177
END
++ @178  EXTERN ~TALMISS~ Mount
++ @179 EXTERN ~TALMISS~ ImOuttaHere

CHAIN ~TALMISS~ Mount
@180
= @181
= @182
END
++ @183 EXTERN ~TALMISS~ EnjoyTheRide
++ @184 EXTERN ~TALMISS~ NotYetDammit
++ @185 EXTERN ~TALMISS~ NotYetDammit
++ @186 EXTERN ~TALMISS~ MakeItLast
++ @187 EXTERN ~TALMISS~ ImOuttaHere

CHAIN ~TALMISS~ MakeItLast
@188
EXTERN ~TALMISS~ EnjoyTheRide

CHAIN ~TALMISS~ NotYetDammit
@189
= @190
EXTERN ~TALMISS~ EnjoyTheRide

CHAIN ~TALMISS~ EnjoyTheRide
@191
= @192
= @193
= @194
END
++ @178 EXTERN ~TALMISS~ Release
++ @195 EXTERN ~TALMISS~ ImOuttaHere

CHAIN ~TALMISS~ Release
@196
= @197
= @198
= @199
DO ~SetGlobal("RE_AdaSex","GLOBAL",1) SetGlobal("RE_AdaMoves","GLOBAL",4) 
ClearAllActions() StartCutSceneMode() StartCutScene("RE_Ada3")~ 
EXIT

CHAIN
IF WEIGHT #-1 ~Global("RE_AdaMoves","GLOBAL",4)~ THEN ~TALMISS~ YouLive
@200
END
++ @201 DO ~SetGlobal("B!WeatherMistressDone","GLOBAL",3)~ EXTERN ~TALMISS~ Goodbye1
++ @202 DO ~SetGlobal("B!WeatherMistressDone","GLOBAL",3)~ EXTERN ~TALMISS~ Goodbye1
++ @203 EXTERN ~TALMISS~ Goodbye2

CHAIN ~TALMISS~ Goodbye1
@204
DO ~SetGlobal("RE_AdaMoves","GLOBAL",5) SetGlobal("B!MistressAdaEncounter","GLOBAL",20)
ClearAllActions() StartCutSceneMode() StartCutScene("RE_Ada2")~ 
EXIT

CHAIN ~TALMISS~ Goodbye2
@205
DO ~SetGlobal("RE_AdaMoves","GLOBAL",5)
ClearAllActions() StartCutSceneMode() StartCutScene("RE_Ada2")~ 
EXIT
