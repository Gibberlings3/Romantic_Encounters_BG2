EXTEND_BOTTOM ARAN 5
+ ~Gender(Player1,FEMALE) Global("RE_AranKnowBetter","GLOBAL",0)~ + @0 DO ~SetGlobal("RE_AranKnowBetter","GLOBAL",1)~ EXTERN ARAN RE_AranBetter1
END

EXTEND_BOTTOM ARAN 21
+ ~Gender(Player1,FEMALE) Global("RE_AranKnowBetter","GLOBAL",0)~ + @0 DO ~SetGlobal("RE_AranKnowBetter","GLOBAL",1)~ EXTERN ARAN RE_AranBetter2
END

EXTEND_BOTTOM ARAN 13
+ ~Gender(Player1,FEMALE) Global("RE_AranKnowBetter","GLOBAL",0)~ + @1 DO ~SetGlobal("RE_AranKnowBetter","GLOBAL",1)~ EXTERN ARAN RE_AranBetter3
END

INTERJECT ARAN 43 RE_AranDinner1
== ARAN IF ~Global("RE_AranKnowBetter","GLOBAL",1) Gender(Player1,FEMALE)~ THEN @2
END
++ @3 EXTERN ARAN RE_Aran1.1
++ @4 EXTERN ARAN RE_Aran1.3
++ @5 EXTERN ARAN RE_Aran1.4
+ ~!NumInParty(1)~ + @6 EXTERN ARAN RE_Aran1.5

INTERJECT ARAN 43 RE_AranDinner2
== ARAN IF ~Global("RE_AranKnowBetter","GLOBAL",0) Gender(Player1,FEMALE)~ THEN @7
END
++ @8 EXTERN ARAN RE_Aran1.2
++ @4 EXTERN ARAN RE_Aran1.3
++ @5 EXTERN ARAN RE_Aran1.4
+ ~!NumInParty(1)~ + @6 EXTERN ARAN RE_Aran1.5

EXTEND_BOTTOM ARAN 86
+ ~Gender(Player1,FEMALE) Global("RE_AranFlirt","GLOBAL",1)~ + @9 EXTERN ARAN RE_Aran.Help
END

APPEND ARAN

IF ~~ RE_AranBetter1
SAY @10
COPY_TRANS ARAN 5
END

IF ~~ RE_AranBetter2
SAY @10
COPY_TRANS ARAN 21
END

IF ~~ RE_AranBetter3
SAY @11
COPY_TRANS ARAN 13
END

IF ~~ RE_Aran.Help
SAY @12
IF ~~ + 88
END

IF ~~ RE_Aran1.1
SAY @13
IF ~~ + RE_Aran1.6
END

IF ~~ RE_Aran1.2
SAY @14
IF ~~ + RE_Aran1.6
END

IF ~~ RE_Aran1.3
SAY @15
IF ~~ + RE_Aran1.6
END

IF ~~ RE_Aran1.4
SAY @16
IF ~~ DO ~SetGlobal("RE_AranFlirt","GLOBAL",1)
SetGlobal("RE_AranMove","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("RE_Aran1")~ EXIT
END

IF ~~ RE_Aran1.5
SAY @17
IF ~~ + RE_Aran1.6
END

IF ~~ RE_Aran1.6
SAY @18
++ @19 + RE_Aran1.4
++ @20 + RE_Aran1.4
++ @21 + RE_Aran1.7
END

IF ~~ RE_Aran1.7
SAY @22
COPY_TRANS ARAN 43
END

IF WEIGHT #-1 ~Global("RE_AranMove","GLOBAL",1)~ RE_Aran2
SAY @23 
++ @24 + RE_Aran2.Drink
++ @25 + RE_Aran2.Drink
++ @26 + RE_Aran2.Drink
++ @27 + RE_Aran2.Drink
++ @28 + RE_Aran2.Drink
++ @29 + RE_Aran2.Poison
END

IF ~~ RE_Aran2.Poison
SAY @30
++ @31 + RE_Aran2.Drink
++ @32 + RE_Aran2.Drink
++ @33 + RE_Aran2.Subject
END

IF ~~ RE_Aran2.Drink
SAY @34
++ @35 + RE_Aran2.Will
++ @36 + RE_Aran2.AllowMe
++ @37 + RE_Aran2.AllowMe
++ @38 + RE_Aran2.AllowMe
++ @39 + RE_Aran2.AllowMe
++ @40 + RE_Aran2.AllowMe
++ @41 + RE_Aran2.AllowMe
END

IF ~~ RE_Aran2.AllowMe
SAY @42
IF ~~ + RE_Aran2.Talk
END

IF ~~ RE_Aran2.Will
SAY @43
IF ~~ + RE_Aran2.Talk
END

IF ~~ RE_Aran2.Talk
SAY @44
IF ~~ + RE_Aran2.Subject
END

IF ~~ RE_Aran2.Subject
SAY @45
++ @46 + RE_Aran2.Aran
++ @47 + RE_Aran2.Athkatla
++ @48 + RE_Aran2.Bodhi
++ @49 + RE_Aran2.Daily
++ @50 + RE_Aran2.Me
++ @51 + RE_Aran2.Dessert
++ @52 + RE_Aran2.Private
++ @53 + RE_Aran2.Go
END

IF ~~ RE_Aran2.Dessert
SAY @54
++ @55 + RE_Aran2.Tasty
++ @56 + RE_Aran2.Tasty
++ @57 + RE_Aran2.TastyMe
END

IF ~~ RE_Aran2.Tasty
SAY @58
++ @59 + RE_Aran2.Shh
++ @60 + RE_Aran2.Go
++ @61 + RE_Aran2.Go
++ @62 + RE_Aran2.Kidnap
++ @63 + RE_Aran2.Miss
END

IF ~~ RE_Aran2.Shh
SAY @64
IF ~~ + RE_Aran2.Go1
END

IF ~~ RE_Aran2.Kidnap
SAY @65
IF ~~ + RE_Aran2.Go1
END

IF ~~ RE_Aran2.Miss
SAY @66
IF ~~ + RE_Aran2.Go1
END

IF ~~ RE_Aran2.TastyMe
SAY @67
IF ~~ + RE_Aran2.Tasty
END

IF ~~ RE_Aran2.Private
SAY @68
IF ~~ + RE_Aran2.Subject
END

IF ~~ RE_Aran2.Go
SAY @69
IF ~~ DO ~SetGlobal("RE_AranMove","GLOBAL",2)
ClearAllActions()
StartCutSceneMode()
StartCutScene("RE_Aran2")~ EXIT
END

IF ~~ RE_Aran2.Go1
SAY @70
IF ~~ DO ~SetGlobal("RE_AranMove","GLOBAL",2)
ClearAllActions()
StartCutSceneMode()
StartCutScene("RE_Aran2")~ EXIT
END

IF WEIGHT #-1 ~Global("RE_AranMove","GLOBAL",2)~ RE_Aran3
SAY @71 
IF ~~ DO ~SetGlobal("RE_AranMove","GLOBAL",3)~ EXTERN ARAN 43 
END

IF ~~ RE_Aran2.Aran
SAY @72
= @73
IF ~~ + RE_Aran2.Me
END

IF ~~ RE_Aran2.Athkatla
SAY @74
= @75
++ @76 + RE_Aran2.16
++ @77 + RE_Aran2.17
++ @78 + RE_Aran2.18
++ @79 + RE_Aran2.19
++ @80 + RE_Aran2.20
END

IF ~~ RE_Aran2.16
SAY @81 
= @82
IF ~~ + RE_Aran2.Subject
END

IF ~~ RE_Aran2.17
SAY @83
IF ~~ + RE_Aran2.16
END 

IF ~~ RE_Aran2.18
SAY @84
IF ~~ + RE_Aran2.Next
END

IF ~~ RE_Aran2.19
SAY @85
IF ~~ + RE_Aran2.Next
END

IF ~~ RE_Aran2.20
SAY @86
= @87
IF ~~ + RE_Aran2.Subject
END

IF ~~ RE_Aran2.Bodhi
SAY @88
= @89
= @90
= @91
= @92
++ @93 + RE_Aran2.Daily
++ @94 + RE_Aran2.MoreWine
++ @95 + RE_Aran2.Subject
++ @96 + RE_Aran2.Aran
++ @97 + RE_Aran2.Go1
END

IF ~~ RE_Aran2.MoreWine
SAY @98
IF ~~ + RE_Aran2.Subject
END

IF ~~ RE_Aran2.Daily
SAY @99
++ @100 + RE_Aran2.11
++ @101 + RE_Aran2.12
++ @102 + RE_Aran2.13
++ @103 + RE_Aran2.Subject
END

IF ~~ RE_Aran2.11
SAY @104
IF ~~ + RE_Aran2.13
END

IF ~~ RE_Aran2.12
SAY @105
IF ~~ + RE_Aran2.13
END

IF ~~ RE_Aran2.13
SAY @106
= @107
= @108
++ @109 + RE_Aran2.Compl
++ @110 + RE_Aran2.14
++ @111 + RE_Aran2.Kiss
++ @112 + RE_Aran2.15
END

IF ~~ RE_Aran2.Compl
SAY @113
++ @114 + RE_Aran2.MoreWine
++ @115 + RE_Aran2.MoreWine
++ @116 + RE_Aran2.Subject
++ @117 + RE_Aran2.Head
END

IF ~~ RE_Aran2.Head
SAY @118
IF ~~ + RE_Aran2.Next
END

IF ~~ RE_Aran2.14
SAY @119
IF ~~ + RE_Aran2.Next
END

IF ~~ RE_Aran2.15
SAY @120
IF ~~ + RE_Aran2.Subject
END

IF ~~ RE_Aran2.Kiss
SAY @121
= @122
= @123
= @124
IF ~~ + RE_Aran2.Next
END

IF ~~ RE_Aran2.Me
SAY @125
++ @126 + RE_Aran2.1
++ @127 + RE_Aran2.2
++ @128 + RE_Aran2.3
++ @129 + RE_Aran2.4
++ @130 + RE_Aran2.5
++ @131 + RE_Aran2.6
++ @132 + RE_Aran2.7
END

IF ~~ RE_Aran2.1
SAY @133
IF ~~ + RE_Aran2.8
END

IF ~~ RE_Aran2.2
SAY @134
IF ~~ + RE_Aran2.8
END

IF ~~ RE_Aran2.3
SAY @135
IF ~~ + RE_Aran2.8
END

IF ~~ RE_Aran2.4
SAY @136
IF ~~ + RE_Aran2.8
END

IF ~~ RE_Aran2.5
SAY @137
IF ~~ + RE_Aran2.8
END

IF ~~ RE_Aran2.6
SAY @138
IF ~~ + RE_Aran2.8
END

IF ~~ RE_Aran2.7
SAY @139
IF ~~ + RE_Aran2.8
END

IF ~~ RE_Aran2.8
SAY @140
++ @141 + RE_Aran2.9
++ @142 + RE_Aran2.9
++ @143 + RE_Aran2.9
++ @144 + RE_Aran2.10
++ @145 + RE_Aran2.9
END

IF ~~ RE_Aran2.9
SAY @146
IF ~~ + RE_Aran2.Next
END

IF ~~ RE_Aran2.10
SAY @147
IF ~~ + RE_Aran2.Next
END

IF ~~ RE_Aran2.Next
SAY @148
IF ~~ + RE_Aran2.Subject
END

END