APPEND YOSHJ

// 1. 

IF ~Global("RE_YoshimoTalk","GLOBAL",2)~ RE_Yosh1
SAY @0 
++ @1 DO ~RealSetGlobalTimer("RE_YoshimoTimer","GLOBAL",100) SetGlobal("RE_YoshimoTalk","GLOBAL",3)~ + RE_Yosh1.1
++ @2 DO ~RealSetGlobalTimer("RE_YoshimoTimer","GLOBAL",100) SetGlobal("RE_YoshimoTalk","GLOBAL",3)~ + RE_Yosh1.1
++ @3 DO ~RealSetGlobalTimer("RE_YoshimoTimer","GLOBAL",100) SetGlobal("RE_YoshimoTalk","GLOBAL",500) RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
++ @4 DO ~RealSetGlobalTimer("RE_YoshimoTimer","GLOBAL",100) SetGlobal("RE_YoshimoTalk","GLOBAL",3)~ + RE_Yosh1.1
END

IF ~~ RE_Yosh1.1
SAY @5
++ @6 + RE_Yosh1.2
++ @7 + RE_Yosh1.3
++ @8 + RE_Yosh1.3
END

IF ~~ RE_Yosh1.2
SAY @9
++ @10 + RE_Yosh1.3
++ @11 + RE_Yosh1.4
++ @12 + RE_Yosh1.4
++ @13 + RE_Yosh1.4
++ @14 + RE_Yosh1.4
END

IF ~~ RE_Yosh1.3
SAY @15
= @16
IF ~~ DO ~RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END

IF ~~ RE_Yosh1.4
SAY @17
= @18
= @19
++ @20 + RE_Yosh1.3
++ @21 + RE_Yosh1.3
++ @22 + RE_Yosh1.3
++ @23 + RE_Yosh1.3
END

// 2.

IF ~Global("RE_YoshimoTalk","GLOBAL",4)~ RE_Yosh2
SAY @24 
++ @25 DO ~SetGlobal("RE_YoshimoTalk","GLOBAL",5) RealSetGlobalTimer("RE_YoshimoTimer","GLOBAL",100)~ + RE_Yosh2.0
++ @26 DO ~RealSetGlobalTimer("RE_YoshimoTimer","GLOBAL",100) SetGlobal("RE_YoshimoTalk","GLOBAL",5) ~ + RE_Yosh2.1
++ @27 DO ~RealSetGlobalTimer("RE_YoshimoTimer","GLOBAL",100) SetGlobal("RE_YoshimoTalk","GLOBAL",5)~ + RE_Yosh2.2
++ @28 DO ~RealSetGlobalTimer("RE_YoshimoTimer","GLOBAL",100) SetGlobal("RE_YoshimoTalk","GLOBAL",5)~ + RE_Yosh2.3
++ @29 DO ~SetGlobal("RE_YoshimoTalk","GLOBAL",500)~ + RE_Yosh2.4
END

IF ~~ RE_Yosh2.0
SAY @30
++ @31 + RE_Yosh2.T
++ @32 + RE_Yosh2.T
++ @33 DO ~SetGlobal("RE_YoshimoTalk","GLOBAL",500)~ + RE_Yosh2.4
++ @34 + RE_Yosh2.3
++ @35 + RE_Yosh2.5
END

IF ~~ RE_Yosh2.T
SAY @36
IF ~~ + RE_Yosh2.11
END

IF ~~ RE_Yosh2.1
SAY @37
++ @38 + RE_Yosh2.5
++ @39 + RE_Yosh2.5
++ @40 + RE_Yosh2.3
END

IF ~~ RE_Yosh2.2
SAY @41
++ @42 + RE_Yosh2.1
++ @43 + RE_Yosh2.3
++ @44 + RE_Yosh2.3
++ @45 DO ~SetGlobal("RE_YoshimoTalk","GLOBAL",500)~ + RE_Yosh2.4
END

IF ~~ RE_Yosh2.3
SAY @46
++ @47 + RE_Yosh2.9
++ @48 + RE_Yosh2.10
++ @49 + RE_Yosh2.9
END

IF ~~ RE_Yosh2.4
SAY @50
IF ~~ DO ~RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END

IF ~~ RE_Yosh2.5
SAY @51
= @52
= @53
++ @54 + RE_Yosh2.3
++ @55 + RE_Yosh2.6
++ @56 + RE_Yosh2.7
++ @57 DO ~SetGlobal("RE_YoshimoTalk","GLOBAL",500)~ + RE_Yosh2.4
END

IF ~~ RE_Yosh2.6
SAY @58
IF ~~ + RE_Yosh2.8
END

IF ~~ RE_Yosh2.7
SAY @59
IF ~~ + RE_Yosh2.8
END

IF ~~ RE_Yosh2.8
SAY @60
IF ~~ + RE_Yosh2.9
END

IF ~~ RE_Yosh2.9
SAY @61
++ @62 + RE_Yosh2.11
++ @63 + RE_Yosh2.12
++ @64 + RE_Yosh2.11
++ @65 + RE_Yosh2.11
++ @66 DO ~SetGlobal("RE_YoshimoTalk","GLOBAL",500)~ + RE_Yosh2.4
END

IF ~~ RE_Yosh2.10
SAY @67
IF ~~ + RE_Yosh2.9
END

IF ~~ RE_Yosh2.11
SAY @68
++ @69 + RE_Yosh2.14
++ @70 + RE_Yosh2.14
++ @71 + RE_Yosh2.13
++ @72 DO ~SetGlobal("RE_YoshimoTalk","GLOBAL",500)~ + RE_Yosh2.4
++ @73 + RE_Yosh2.14
END

IF ~~ RE_Yosh2.12
SAY @74
++ @75 + RE_Yosh2.11
++ @62 DO ~SetGlobal("RE_YoshimoTalk","GLOBAL",500)~ + RE_Yosh2.4
END

IF ~~ RE_Yosh2.13
SAY @76
++ @77 DO ~SetGlobal("RE_YoshimoTalk","GLOBAL",500)~ + RE_Yosh2.4
++ @78 + RE_Yosh2.14
++ @79 + RE_Yosh2.14
END

IF ~~ RE_Yosh2.14
SAY @80
++ @81 + RE_Yosh2.15
++ @82 + RE_Yosh2.16
++ @83 + RE_Yosh2.16
++ @84 + RE_Yosh2.17
++ @85 DO ~SetGlobal("RE_YoshimoTalk","GLOBAL",500)~ + RE_Yosh2.4
END

IF ~~ RE_Yosh2.15
SAY @86
++ @87 + RE_Yosh2.16
++ @88 + RE_Yosh2.17
++ @89 DO ~SetGlobal("RE_YoshimoTalk","GLOBAL",500)~ + RE_Yosh2.4
END

IF ~~ RE_Yosh2.16
SAY @90
++ @91 + RE_Yosh2.19
++ @92 + RE_Yosh2.18
++ @93 + RE_Yosh2.20
END

IF ~~ RE_Yosh2.17
SAY @94
++ @95 + RE_Yosh2.18
++ @96 + RE_Yosh2.16
++ @97 + RE_Yosh2.16
++ @98 DO ~SetGlobal("RE_YoshimoTalk","GLOBAL",500)~ + RE_Yosh2.4
++ @99 DO ~SetGlobal("RE_YoshimoTalk","GLOBAL",500)~ + RE_Yosh2.4
END

IF ~~ RE_Yosh2.18
SAY @100
++ @101 + RE_Yosh2.20
++ @102 + RE_Yosh2.20
++ @103 + RE_Yosh2.20
++ @104 + RE_Yosh2.19
++ @105 DO ~SetGlobal("RE_YoshimoTalk","GLOBAL",500)~ + RE_Yosh2.4
END

IF ~~ RE_Yosh2.19
SAY @106
++ @107 + RE_Yosh2.20
++ @108 + RE_Yosh2.20
++ @109 DO ~SetGlobal("RE_YoshimoTalk","GLOBAL",500)~ + RE_Yosh2.4
END

IF ~~ RE_Yosh2.20
SAY @110
IF ~~ DO ~RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty() SetGlobal("RE_YoshimoFlirt","GLOBAL",1)~ EXIT
END

// 3.

IF ~Global("RE_YoshimoTalk","GLOBAL",6)~ RE_Yosh3
SAY @111 
++ @112 DO ~SetGlobal("RE_YoshimoTalk","GLOBAL",7)~ + RE_Yosh3.1
++ @113 DO ~SetGlobal("RE_YoshimoTalk","GLOBAL",7)~ + RE_Yosh3.2
++ @114 DO ~SetGlobal("RE_YoshimoTalk","GLOBAL",500)~ + RE_Yosh3.0
++ @115 DO ~SetGlobal("RE_YoshimoTalk","GLOBAL",7)~ + RE_Yosh3.2
END

IF ~~ RE_Yosh3.0
SAY @116
IF ~~ DO ~RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END

IF ~~ RE_Yosh3.1
SAY @117
++ @118 + RE_Yosh3.2
++ @119 + RE_Yosh3.3
++ @120 DO ~SetGlobal("RE_YoshimoTalk","GLOBAL",500)~ + RE_Yosh3.0
END

IF ~~ RE_Yosh3.2
SAY @121
++ @122 + RE_Yosh3.4
++ @123 + RE_Yosh3.4
++ @124 + RE_Yosh3.4
END

IF ~~ RE_Yosh3.3
SAY @125
IF ~~ + RE_Yosh3.2
END

IF ~~ RE_Yosh3.4
SAY @126
++ @127 + RE_Yosh3.5
++ @128 + RE_Yosh3.6
++ @129 + RE_Yosh3.7
++ @130 DO ~SetGlobal("RE_YoshimoTalk","GLOBAL",500)~ + RE_Yosh3.8
END

IF ~~ RE_Yosh3.5
SAY @131
IF ~~ + RE_Yosh3.7
END

IF ~~ RE_Yosh3.6
SAY @132
IF ~~ + RE_Yosh3.7
END

IF ~~ RE_Yosh3.7
SAY @133
IF ~~ DO ~SetGlobal("RE_YoshimoSex","GLOBAL",1)
SetGlobal("RE_YoshimoTalk","GLOBAL",8)
ClearAllActions()
StartCutSceneMode()
StartCutScene("RE_Yosh1")~ EXIT
END

IF ~~ RE_Yosh3.8
SAY @134
IF ~~ DO ~RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END

IF ~Global("RE_YoshimoTalk","GLOBAL",8)~ RE_Yosh4
SAY @135 
= @136
= @137
IF ~~ DO ~SetGlobal("RE_YoshimoTalk","GLOBAL",9) RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END

END