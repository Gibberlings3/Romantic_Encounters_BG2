// "I will almost miss you. Almost."

I_C_T MGTEOS01 88 RE_TeosGoodbye1
== MGTEOS01 IF ~Global("RE_TeosFlirt","GLOBAL",1) Gender(Player1,FEMALE)~ THEN @0
== MGTEOS01 IF ~Global("RE_TeosFlirt","GLOBAL",1) Gender(Player1,FEMALE)~ THEN @1
END

I_C_T MGTEOS01 90 RE_TeosGoodbye2
== MGTEOS01 IF ~Global("RE_TeosFlirt","GLOBAL",1) Gender(Player1,FEMALE)~ THEN @1
END

EXTEND_BOTTOM MGTEOS01 0
+ ~Gender(Player1,FEMALE)~ + @2 DO ~SetGlobal("MetTeos","GLOBAL",1)~ EXTERN MGTEOS01 RE_Teos0
+ ~Gender(Player1,FEMALE)~ + @3 DO ~SetGlobal("MetTeos","GLOBAL",1)~ EXTERN MGTEOS01 RE_Teos0
END

EXTEND_BOTTOM MGTEOS01 2
+ ~Gender(Player1,FEMALE)~ + @4 EXTERN MGTEOS01 RE_Teos1
+ ~Gender(Player1,FEMALE)~ + @5 EXTERN MGTEOS01 RE_Teos1
END

EXTEND_BOTTOM MGTEOS01 5
++ @6 EXTERN MGTEOS01 RE_Teos5
++ @7 EXTERN MGTEOS01 RE_Teos5
END

EXTEND_BOTTOM MGTEOS01 15
++ @8 EXTERN MGTEOS01 RE_Teos15.B
++ @9 EXTERN MGTEOS01 RE_Teos15
++ @10 EXTERN MGTEOS01 RE_Teos15
END

EXTEND_BOTTOM MGTEOS01 20
++ @11 EXTERN MGTEOS01 RE_Teos20.1
++ @12 EXTERN MGTEOS01 RE_Teos20.2
END

EXTEND_BOTTOM MGTEOS01 26
++ @13 EXTERN MGTEOS01 RE_Teos26
END

EXTEND_BOTTOM MGTEOS01 30
+ ~Gender(Player1,FEMALE)~ + @14 EXTERN MGTEOS01 RE_Teos30
END

EXTEND_BOTTOM MGTEOS01 38
+ ~Gender(Player1,FEMALE)~ + @15 EXTERN MGTEOS01 RE_Teos40
+ ~Gender(Player1,FEMALE)~ + @16 EXTERN MGTEOS01 RE_Teos40
END

EXTEND_BOTTOM MGTEOS01 39
+ ~Gender(Player1,FEMALE)~ + @15 EXTERN MGTEOS01 RE_Teos40
+ ~Gender(Player1,FEMALE)~ + @16 EXTERN MGTEOS01 RE_Teos40
END
 
EXTEND_BOTTOM MGTEOS01 50
+ ~Gender(Player1,FEMALE)~ + @15 DO ~SetGlobal("ApprentiGrad","GLOBAL",3)~ EXTERN MGTEOS01 RE_Teos50
+ ~Gender(Player1,FEMALE)~ + @16 DO ~SetGlobal("ApprentiGrad","GLOBAL",3)~ EXTERN MGTEOS01 RE_Teos50
END

EXTEND_BOTTOM MGTEOS01 59
++ @17 + 60
+ ~Gender(Player1,FEMALE) Global("Re_TeosSex","GLOBAL",1)~ + @18 + 60
END

EXTEND_BOTTOM MGTEOS01 63
++ @19 + 64
+ ~Gender(Player1,FEMALE) Global("Re_TeosSex","GLOBAL",1)~ + @20 + RE_Teos63
+ ~Gender(Player1,FEMALE) Global("Re_TeosFlirt","GLOBAL",1)~ + @21 + RE_Teos63
END

EXTEND_BOTTOM MGTEOS01 67
+ ~Global("Re_TeosFlirt","GLOBAL",1) Gender(Player1,FEMALE)~ + @22 + RE_Teos67
+ ~Global("Re_TeosFlirt","GLOBAL",1) Gender(Player1,FEMALE)~ + @23 + RE_Teos67.1
END

EXTEND_BOTTOM MGTEOS01 79
+ ~Gender(Player1,FEMALE) Global("Re_TeosT1","GLOBAL",0)~ + @24 DO ~SetGlobal("Re_TeosT1","GLOBAL",1)~ EXTERN MGTEOS01 RE_TeosT1
+ ~Gender(Player1,FEMALE) Global("Re_TeosT2","GLOBAL",0) Global("RE_TeosFlirt","GLOBAL",1)~ + @25 DO ~SetGlobal("Re_TeosT2","GLOBAL",1)~ EXTERN MGTEOS01 RE_TeosT2
+ ~Gender(Player1,FEMALE) Global("Re_TeosT3","GLOBAL",0)~ + @26 DO ~SetGlobal("Re_TeosT3","GLOBAL",1)~ EXTERN MGTEOS01 RE_TeosT3
+ ~Gender(Player1,FEMALE) Global("Re_TeosFlirt","GLOBAL",1) !Global("Re_TeosSex","GLOBAL",1) Global("Re_TeosAgain","GLOBAL",0)~ + @27 DO ~SetGlobal("Re_TeosAgain","GLOBAL",1)~ EXTERN MGTEOS01 RE_Teos72.1
+ ~Gender(Player1,FEMALE) Global("Re_TeosSex","GLOBAL",1) Global("Re_TeosAgain","GLOBAL",0)~ + @27 DO ~SetGlobal("Re_TeosAgain","GLOBAL",1)~ EXTERN MGTEOS01 RE_Teos72.2
+ ~Gender(Player1,FEMALE) Global("Re_TeosFlirt","GLOBAL",1) !Global("Re_TeosSex","GLOBAL",1) Global("Re_TeosAgain","GLOBAL",0)~ + @28 DO ~SetGlobal("Re_TeosAgain","GLOBAL",1)~ EXTERN MGTEOS01 RE_Teos72.1
+ ~Gender(Player1,FEMALE) Global("Re_TeosSex","GLOBAL",1) Global("Re_TeosAgain","GLOBAL",0)~ + @28 DO ~SetGlobal("Re_TeosAgain","GLOBAL",1)~ EXTERN MGTEOS01 RE_Teos72.2
+ ~Gender(Player1,FEMALE) Global("Re_TeosSex","GLOBAL",1) Global("Re_TeosAgain","GLOBAL",1)~ + @28 EXTERN MGTEOS01 RE_Teos79
END

APPEND MGTEOS01

IF ~~ RE_Teos0
SAY @29
++ @30 + RE_Teos0.3
++ @31 + RE_Teos0.3
++ @32 + RE_Teos0.1
++ @33 + RE_Teos0.2
END

IF ~~ RE_Teos0.1
SAY @34
IF ~~ + RE_Teos0.3
END

IF ~~ RE_Teos0.2
SAY @35
IF ~~ + RE_Teos0.3
END

IF ~~ RE_Teos0.3
SAY @36
IF ~~ + 1
END

IF ~~ RE_Teos1
SAY @37
IF ~~ + 3
END

IF ~~ RE_Teos5
SAY @38
IF ~~ + 6
END

IF ~~ RE_Teos15.B
SAY @39
IF ~~ + RE_Teos15.BB
END

IF ~~ RE_Teos15
SAY @40 
IF ~~ + RE_Teos15.BB
END

IF ~~ RE_Teos15.BB
SAY @41
++ @42 + RE_Teos15.1
++ @43 + RE_Teos15.2
++ @44 + RE_Teos15.3
END

IF ~~ RE_Teos15.1
SAY @45
IF ~~ + RE_Teos15.3
END

IF ~~ RE_Teos15.2
SAY @46
IF ~~ + RE_Teos15.3
END

IF ~~ RE_Teos15.3
SAY @47
= @48
= @49
= @50
IF ~~ + 16
END

IF ~~ RE_Teos20.1
SAY @51
IF ~~ + RE_Teos20.3
END

IF ~~ RE_Teos20.2
SAY @52
IF ~~ + RE_Teos20.3
END

IF ~~ RE_Teos20.3
SAY @53
IF ~~ + 24
END

IF ~~ RE_Teos26
SAY @54
IF ~~ + 27
END

IF ~~ RE_Teos30
SAY @55
++ @56 + RE_Teos30.1
++ @57 + RE_Teos30.2
++ @58 + RE_Teos30.3
END

IF ~~ RE_Teos30.1
SAY @59
IF ~~ + RE_Teos30.4
END

IF ~~ RE_Teos30.2
SAY @60
IF ~~ + RE_Teos30.4
END

IF ~~ RE_Teos30.3
SAY @61
IF ~~ + RE_Teos30.4
END

IF ~~ RE_Teos30.4
SAY @62
= @63
IF ~~ + 31
END

IF ~~ RE_Teos40
SAY @64
IF ~~ DO ~SetGlobal("RE_TeosApprFailed","LOCALS",1)~ + RE_Teos50.1
END

IF ~~ RE_Teos50
SAY @65
IF ~~ + RE_Teos50.1
END

IF ~~ RE_Teos50.1
SAY @66
= @67
++ @68 + RE_Teos50.3
++ @69 + RE_Teos50.2
++ @70 + RE_Teos50.3
++ @71 + RE_Teos50.4
++ @72 + RE_Teos50.2
END

IF ~~ RE_Teos50.2
SAY @73
IF ~Global("RE_TeosApprFailed","LOCALS",1)~ + 40
IF ~!Global("RE_TeosApprFailed","LOCALS",1)~ + 57
END

IF ~~ RE_Teos50.4
SAY @74
IF ~~ + RE_Teos50.3
END

IF ~~ RE_Teos50.3
SAY @75
IF ~~ DO ~SetGlobal("RE_TeosGo","GLOBAL",1)
SetGlobal("RE_TeosFlirt","GLOBAL",1)
ClearAllActions() StartCutSceneMode() StartCutScene("Re_Teos1")~ EXIT
END

IF WEIGHT #-1 ~Global("RE_TeosGo","GLOBAL",1)~ RE_Teos50.5
SAY @76 
++ @77 DO ~SetGlobal("RE_TeosGo","GLOBAL",2)~ + RE_Teos50.6
++ @78 DO ~SetGlobal("RE_TeosGo","GLOBAL",2)~ + RE_Teos50.6
++ @79 DO ~SetGlobal("RE_TeosGo","GLOBAL",2)~ + RE_Teos50.6
END

IF ~~ RE_Teos50.6
SAY @80
= @81
= @82
++ @83 + RE_Teos50.7
++ @84 + RE_Teos50.8
++ @85 + RE_Teos50.9
++ @86 + RE_Teos50.10
++ @87 + RE_Teos50.11
++ @88 + RE_Teos50.11
++ @89 + RE_Teos50.11
END

IF ~~ RE_Teos50.7
SAY @90
IF ~~ + RE_Teos50.12
END

IF ~~ RE_Teos50.8
SAY @91
IF ~~ + RE_Teos50.12
END

IF ~~ RE_Teos50.9
SAY @92
IF ~~ + RE_Teos50.12
END

IF ~~ RE_Teos50.10
SAY @93
IF ~~ + RE_Teos50.12
END

IF ~~ RE_Teos50.11
SAY @94
IF ~~ DO ~SetGlobal("RE_TeosBack","GLOBAL",1)
ClearAllActions() StartCutSceneMode() StartCutScene("Re_Teos2")~ EXIT
END

IF ~~ RE_Teos50.12
SAY @95
= @96
++ @97 + RE_Teos50.13
++ @98 + RE_Teos50.14
++ @99 + RE_Teos50.15
++ @100 + RE_Teos50.11
END

IF ~~ RE_Teos50.13
SAY @101
IF ~~ + RE_Teos50.16
END

IF ~~ RE_Teos50.14
SAY @102
IF ~~ + RE_Teos50.16
END

IF ~~ RE_Teos50.15
SAY @103 
IF ~~ DO ~SetGlobal("RE_TeosSex","GLOBAL",1)
SetGlobal("RE_TeosDone","GLOBAL",1)
ClearAllActions() StartCutSceneMode() StartCutScene("Re_Teos3")~ EXIT
END

IF ~~ RE_Teos50.16
SAY @104 
IF ~~ DO ~SetGlobal("RE_TeosSex","GLOBAL",1)
SetGlobal("RE_TeosDone","GLOBAL",1)
ClearAllActions() StartCutSceneMode() StartCutScene("Re_Teos3")~ EXIT
END

IF WEIGHT #-1 ~Global("RE_TeosDone","GLOBAL",1)~ RE_Teos50.Done1
SAY @105
++ @106 DO ~SetGlobal("RE_TeosDone","GLOBAL",2)~
+ RE_Teos50.17
++ @107 DO ~SetGlobal("RE_TeosDone","GLOBAL",2)~
+ RE_Teos50.18
++ @108 DO ~SetGlobal("RE_TeosDone","GLOBAL",2)~
+ RE_Teos50.17
++ @109 DO ~SetGlobal("RE_TeosDone","GLOBAL",2)~
+ RE_Teos50.19
END

IF ~~ RE_Teos50.17
SAY @110
IF ~~ + RE_Teos50.20
END

IF ~~ RE_Teos50.18
SAY @111
IF ~~ + RE_Teos50.20
END

IF ~~ RE_Teos50.19
SAY @112
IF ~~ + RE_Teos50.20
END

IF ~~ RE_Teos50.20
SAY @113
= @114
= @115
IF ~~ DO ~SetGlobal("RE_TeosBack","GLOBAL",1)
ClearAllActions() StartCutSceneMode() StartCutScene("Re_Teos2")~ EXIT
END

IF WEIGHT #-1 ~Global("RE_TeosBack","GLOBAL",1)~ RE_Teos50.21
SAY @116
IF ~Global("RE_TeosApprFailed","LOCALS",1)~ DO ~SetGlobal("RE_TeosBack","GLOBAL",2)~ + 40
IF ~!Global("RE_TeosApprFailed","LOCALS",1)~ DO ~SetGlobal("RE_TeosBack","GLOBAL",2)~ + 57
END

IF ~~ RE_Teos63
SAY @117
IF ~~ + 64
END

IF ~~ RE_Teos67
SAY @118
IF ~~ + RE_Teos67.1
END

IF ~~ RE_Teos67.1
SAY @119
= @120
IF ~~ + 68
END

IF ~~ RE_Teos72.1
SAY @121 
++ @122 + RE_Teos72.4
++ @123 + RE_Teos72.4
++ @124 + RE_Teos72.3
END

IF ~~ RE_Teos72.2
SAY @125
= @126
IF ~~ DO ~SetGlobal("RE_TeosGo","GLOBAL",3)
ClearAllActions() StartCutSceneMode() StartCutScene("Re_Teos1")~ EXIT
END

IF ~~ RE_Teos72.3
SAY @127
IF ~~ EXIT
END

IF ~~ RE_Teos72.4
SAY @128
IF ~~ + RE_Teos72.2
END

IF WEIGHT #-1 ~Global("RE_TeosGo","GLOBAL",3)~ RE_Teos72.5
SAY @129 
++ @130 DO ~SetGlobal("RE_TeosGo","GLOBAL",4)~ + RE_Teos72.10
++ @131 DO ~SetGlobal("RE_TeosGo","GLOBAL",4)~ + RE_Teos72.6
++ @132 DO ~SetGlobal("RE_TeosGo","GLOBAL",4)~ + RE_Teos72.7
++ @133 DO ~SetGlobal("RE_TeosGo","GLOBAL",4)~ + RE_Teos72.8
++ @134 DO ~SetGlobal("RE_TeosGo","GLOBAL",4)~ + RE_Teos72.9
++ @135 DO ~SetGlobal("RE_TeosGo","GLOBAL",4)~ + RE_Teos72.No
END

IF ~~ RE_Teos72.No
SAY @136
IF ~~ DO ~SetGlobal("RE_TeosBack","GLOBAL",3)
ClearAllActions() StartCutSceneMode() StartCutScene("Re_Teos2")~ EXIT
END

IF ~~ RE_Teos72.6
SAY @137
IF ~~ + RE_Teos72.10
END

IF ~~ RE_Teos72.7
SAY @138
IF ~~ + RE_Teos72.10
END

IF ~~ RE_Teos72.8
SAY @139
IF ~~ + RE_Teos72.10
END

IF ~~ RE_Teos72.9
SAY @140
IF ~~ + RE_Teos72.10
END

IF ~~ RE_Teos72.10
SAY @141
IF ~~ DO ~SetGlobal("RE_TeosSex","GLOBAL",1)
SetGlobal("RE_TeosDone","GLOBAL",3)
ClearAllActions() StartCutSceneMode() StartCutScene("Re_Teos3")~ EXIT
END

IF WEIGHT #-1 ~Global("RE_TeosDone","GLOBAL",3)~ RE_Teos72.11
SAY @142
++ @143 DO ~SetGlobal("RE_TeosDone","GLOBAL",4)~ + RE_Teos72.12
++ @144 DO ~SetGlobal("RE_TeosDone","GLOBAL",4)~ + RE_Teos72.13
++ @145 DO ~SetGlobal("RE_TeosDone","GLOBAL",4)~ + RE_Teos72.14
++ @146 DO ~SetGlobal("RE_TeosDone","GLOBAL",4)~ + RE_Teos72.15
END

IF ~~ RE_Teos72.12
SAY @147
IF ~~ + RE_Teos72.16
END

IF ~~ RE_Teos72.13
SAY @148
IF ~~ + RE_Teos72.16
END

IF ~~ RE_Teos72.14
SAY @149
IF ~~ + RE_Teos72.16
END

IF ~~ RE_Teos72.15
SAY @150
IF ~~ + RE_Teos72.16
END

IF ~~ RE_Teos72.16
SAY @151
= @152
IF ~~ DO ~SetGlobal("RE_TeosBack","GLOBAL",3)
ClearAllActions() StartCutSceneMode() StartCutScene("Re_Teos2")~ EXIT
END

IF WEIGHT #-1 ~Global("RE_TeosBack","GLOBAL",3)~ RE_Teos72.20
SAY @153
IF ~~ DO ~SetGlobal("RE_TeosBack","GLOBAL",4)~ EXIT
END

IF ~~ RE_Teos79
SAY @154
= @155
IF ~~ EXIT
END

IF ~~ RE_TeosT1
SAY @156
++ @157 + RE_TeosT1.1
++ @158 + RE_TeosT1.2
++ @159 + RE_TeosT1.3
++ @160 + RE_TeosT1.4
END

IF ~~ RE_TeosT1.1
SAY @161
IF ~~ + RE_TeosT1.4
END

IF ~~ RE_TeosT1.2
SAY @162
IF ~~ + RE_TeosT1.4
END

IF ~~ RE_TeosT1.3
SAY @163
IF ~~ EXIT
END

IF ~~ RE_TeosT1.4
SAY @164
IF ~~ EXIT
END

IF ~~ RE_TeosT2
SAY @165
++ @166 + RE_TeosT2.1
++ @167 + RE_TeosT2.2
++ @168 + RE_TeosT2.3
END

IF ~~ RE_TeosT2.1
SAY @169
IF ~~ EXIT
END

IF ~~ RE_TeosT2.2
SAY @170
= @171
IF ~~ EXIT
END

IF ~~ RE_TeosT2.3
SAY @172
IF ~~ EXIT
END

IF ~~ RE_TeosT3
SAY @173
= @174
= @175
= @176
++ @177 + RE_TeosT3.1
++ @178 + RE_TeosT3.2
++ @179 + RE_TeosT3.3
++ @180 + RE_TeosT3.3
END

IF ~~ RE_TeosT3.1
SAY @181
IF ~~ + RE_TeosT3.3
END

IF ~~ RE_TeosT3.2
SAY @182
IF ~~ + RE_TeosT3.3
END

IF ~~ RE_TeosT3.3
SAY @183
= @184
= @185
++ @186 + RE_TeosT3.4
++ @187 + RE_TeosT3.5
++ @188 + RE_TeosT3.6
END

IF ~~ RE_TeosT3.4
SAY @189
IF ~~ EXIT
END

IF ~~ RE_TeosT3.5
SAY @190
IF ~~ EXIT
END

IF ~~ RE_TeosT3.6
SAY @191
IF ~~ EXIT
END

END