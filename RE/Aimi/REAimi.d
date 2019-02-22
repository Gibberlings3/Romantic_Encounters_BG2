BEGIN REAimi

EXTEND_BOTTOM TRINNK01 14
+ ~Global("RE_AimiSex","GLOBAL",1) GlobalGT("RE_AimiCruel","GLOBAL",5) !Global("RE_AimiGoodWord","GLOBAL",1) Global("RE_AskAimi","GLOBAL",0)~ + @0 DO ~SetGlobal("RE_AskAimi","GLOBAL",1)~ + RETrinnk01.1
+ ~Global("RE_AimiSex","GLOBAL",1) !GlobalGT("RE_AimiCruel","GLOBAL",5) !Global("RE_AimiGoodWord","GLOBAL",1) Global("RE_AskAimi","GLOBAL",0)~ + @0 DO ~SetGlobal("RE_AskAimi","GLOBAL",1)~  + RETrinnk01.2
+ ~Global("RE_AimiSex","GLOBAL",1) GlobalGT("RE_AimiCruel","GLOBAL",5) Global("RE_AimiGoodWord","GLOBAL",1) Global("RE_AskAimi","GLOBAL",0)~ + @0 DO ~SetGlobal("RE_AskAimi","GLOBAL",1)~  + RETrinnk01.2
+ ~Global("RE_AimiSex","GLOBAL",1) !GlobalGT("RE_AimiCruel","GLOBAL",5) Global("RE_AimiGoodWord","GLOBAL",1) Global("RE_AskAimi","GLOBAL",0)~ + @0 DO ~SetGlobal("RE_AskAimi","GLOBAL",1)~  + RETrinnk01.3
END

APPEND TRINNK01

IF ~~ RETrinnk01.1
SAY @1
= @2
= @3
COPY_TRANS TRINNK01 14
END

IF ~~ RETrinnk01.2
SAY @1
= @4
= @3
COPY_TRANS TRINNK01 14
END

IF ~~ RETrinnk01.3
SAY @5
= @6
= @3
COPY_TRANS TRINNK01 14
END
END

APPEND REAimi

IF ~!Global("loganjob2","GLOBAL",2)~ m0
SAY @7
IF ~~ THEN DO ~SetGlobal("RE_MetPC1","GLOBAL",1)~ EXIT
END

IF ~IsGabber(Player1) Global("loganjob2","GLOBAL",2) Global("RE_AimiFlirt","GLOBAL",0) Global("RE_TalkedToAimi","GLOBAL",0)~ m1
SAY @8
++ @9 DO ~SetGlobal("RE_TalkedToAimi","GLOBAL",1)~ + m1.1
++ @10 DO ~SetGlobal("RE_TalkedToAimi","GLOBAL",1)~ + m1.2
++ @11 DO ~SetGlobal("RE_TalkedToAimi","GLOBAL",1)~ + m1.2
+ ~Gender(Player1,MALE)~ + @12 DO ~SetGlobal("RE_AimiFlirt","GLOBAL",1) SetGlobal("RE_TalkedToAimi","GLOBAL",1)~ + m1.3m
+ ~Gender(Player1,FEMALE)~ + @12 DO ~SetGlobal("RE_TalkedToAimi","GLOBAL",1)~ + m1.3f
END

IF ~~ m1.1
SAY @13
++ @14 + m1.4
+ ~Gender(Player1,MALE)~ + @15 DO ~SetGlobal("RE_AimiFlirt","GLOBAL",1)~ + m1.3m
++ @16 + m1.2
++ @17 DO ~IncrementGlobal("RE_AimiCruel","GLOBAL",1)~ + m1.9
++ @18 + m1.5
END

IF ~~ m1.2
SAY @19
IF ~Gender(Player1,FEMALE)~ THEN EXIT
IF ~Gender(Player1,MALE)~ THEN GOTO m1.6
END

IF ~~ m1.3m
SAY @20
IF ~~ THEN GOTO m1.6
END

IF ~~ m1.3f
SAY @21
IF ~~ THEN EXIT
END

IF ~~ m1.4
SAY @22
IF ~Gender(Player1,FEMALE)~ THEN EXIT
IF ~Gender(Player1,MALE)~ THEN GOTO m1.6
END

IF ~~ m1.5
SAY @23
IF ~Gender(Player1,FEMALE)~ THEN EXIT
IF ~Gender(Player1,MALE)~ THEN GOTO m1.6
END

IF ~~ m1.6
SAY @24
++ @25 + m1.7
++ @26 + m1.8
END

IF ~~ m1.7
SAY @27
IF ~~ THEN EXIT
END

IF ~~ m1.8
SAY @28
IF ~~ THEN EXIT
END

IF ~~ m1.9
SAY @29
IF ~~ THEN EXIT
END


IF ~!IsGabber(Player1) Global("loganjob2","GLOBAL",2)~ m2
SAY @30
IF ~~ THEN EXIT
END

IF ~Global("loganjob2","GLOBAL",2) Global("RE_TalkedToAimi","GLOBAL",1) Gender(Player1,FEMALE)~ m3
SAY @31
++ @32 + m3.1
++ @33 + m3.2
++ @34 + m3.3
++ @35 + m3.4
END

IF ~~ m3.1
SAY @36
IF ~~ THEN EXIT
END

IF ~~ m3.2
SAY @37
IF ~~ THEN EXIT
END

IF ~~ m3.3
SAY @38
IF ~~ THEN EXIT
END

IF ~~ m3.4
SAY @39
IF ~~ THEN EXIT
END

IF ~Global("loganjob2","GLOBAL",2) Global("RE_TalkedToAimi","GLOBAL",1) Gender(Player1,MALE) GlobalLT("RE_AimiVisit","GLOBAL",2)~ m4
SAY @40
++ @41 DO ~SetGlobal("RE_AimiFlirt","GLOBAL",1)~ + m4.1
++ @33 + m4.2
++ @32 + m4.3
++ @34 + m4.4
++ @42 + m4.5
++ @43 DO ~SetGlobal("RE_AimiFlirt","GLOBAL",1)~ + m4.6
+ ~Global("RE_AimiVisit","GLOBAL",1)~ + @44 + m4.22
++ @35 + m4.7
END

IF ~~ m4.1
SAY @45
++ @46 + m4.8
++ @47 + m4.9
++ @48 + m4.10
++ @49 DO ~IncrementGlobal("RE_AimiCruel","GLOBAL",1)~ + m4.11
 END

IF ~~ m4.2
SAY @50
IF ~~ THEN + m4.12
END

IF ~~ m4.3
SAY @51
IF ~~ THEN + m4.12
END

IF ~~ m4.4
SAY @52
++ @53 DO ~SetGlobal("RE_AimiFlirt","GLOBAL",1)~ + m4.1
++ @54 DO ~IncrementGlobal("RE_AimiCruel","GLOBAL",1)~ + m4.13
++ @55 + m4.14
++ @56 + m4.12
END

IF ~~ m4.5
SAY @57
IF ~~ THEN + m4.12
END

IF ~~ m4.6
SAY @58
IF ~~ THEN + m4.12
END

IF ~~ m4.7
SAY @59
IF ~~ THEN EXIT
END

IF ~~ m4.8
SAY @60
IF ~~ THEN + m4.20
END

IF ~~ m4.9
SAY @61
IF ~~ THEN + m4.20
END

IF ~~ m4.10
SAY @62
IF ~~ THEN DO ~SetGlobal("RE_AimiVisit","GLOBAL",1)~ EXIT
END

IF ~~ m4.11
SAY @63
++ @64 + m4.21
++ @65 DO ~IncrementGlobal("RE_AimiCruel","GLOBAL",1)~ + m4.15
END

IF ~~ m4.12
SAY @66
++ @42 + m4.5
++ @47 + m4.9
++ @48 + m4.10
++ @67 DO ~IncrementGlobal("RE_AimiCruel","GLOBAL",1)~ + m4.11
++ @35 + m4.7
END

IF ~~ m4.13
SAY @68
IF ~~ THEN + m4.11
END

IF ~~ m4.14
SAY @69
IF ~~ THEN + m4.11
END

IF ~~ m4.15
SAY @70
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ m4.16
SAY @71
IF ~~ THEN DO ~SetGlobal("RE_AimiVisit","GLOBAL",1)~ EXIT
END

IF ~~ m4.17
SAY @72
IF ~~ THEN DO ~SetGlobal("RE_AimiVisit","GLOBAL",1)~ EXIT
END

IF ~~ m4.18
SAY @73
IF ~~ THEN EXIT
END

IF ~~ m4.20
SAY @74
= @75
++ @76 + m4.16
++ @77 + m4.17
++ @78 + m4.18
++ @79 DO ~IncrementGlobal("RE_AimiCruel","GLOBAL",1)~ + m4.11
END

IF ~~ m4.21
SAY @80
IF ~~ THEN DO ~SetGlobal("RE_AimiVisit","GLOBAL",1)~ EXIT
END

IF ~~ m4.22
SAY @81
IF ~~ THEN EXIT
END

END

CHAIN 
IF ~Global("RE_AimiVisit","GLOBAL",2)~ THEN PLAYER1 m4
@82 
DO ~SetGlobal("RE_AimiVisit","GLOBAL",3)~
END
++ @83 EXTERN PLAYER1 m4.1
++ @84 DO ~RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT

CHAIN PLAYER1 m4.1
@85
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("RE_Aimi1")~
EXIT

CHAIN 
IF ~Global("RE_AimiVisit","GLOBAL",3)~ THEN REAimi m5
@86
DO ~SetGlobal("RE_AimiVisit","GLOBAL",4)~
END
++ @87 EXTERN REAimi m5.1
++ @88 EXTERN REAimi m5.2
++ @89 EXTERN REAimi m5.3
++ @90 EXTERN REAimi m5.4
++ @91 EXTERN REAimi m5.5
++ @92 EXTERN REAimi m5.6
++ @93 DO ~IncrementGlobal("RE_AimiCruel","GLOBAL",1)~ EXTERN REAimi m5.7

APPEND REAimi

IF ~~ m5.1
SAY @94
IF ~~ THEN + m5.8
END

IF ~~ m5.2
SAY @95
++ @96 + m5.1
++ @97 DO ~IncrementGlobal("RE_AimiCruel","GLOBAL",1)~ + m5.9
++ @98 + m5.1
++ @99 + m5.11
++ @100 + m5.19
++ @101 DO ~IncrementGlobal("RE_AimiCruel","GLOBAL",1)~ + m5.7
++ @102 + m5.6
END

IF ~~ m5.3
SAY @103
IF ~~ THEN + m5.10
END

IF ~~ m5.4
SAY @104
++ @105 + m5.10
++ @106 DO ~IncrementGlobal("RE_AimiCruel","GLOBAL",1)~ + m5.1
++ @107 + m5.2
END

IF ~~ m5.5
SAY @108
IF ~~ THEN + m5.end1
END

IF ~~ m5.6
SAY @109
++ @110 + m5.10
++ @111 + m5.end1
END

IF ~~ m5.7
SAY @29
IF ~~ THEN + m5.end2
END

IF ~~ m5.8
SAY @112
IF ~~ THEN + m5.18
END

IF ~~ m5.9
SAY @113
IF ~~ THEN + m5.1
END

IF ~~ m5.10
SAY @114
IF ~~ THEN + m5.8
END

IF ~~ m5.11
SAY @115
++ @116 + m5.1
++ @117 + m5.1
++ @118 + m5.19
++ @119 DO ~IncrementGlobal("RE_AimiCruel","GLOBAL",1)~ + m5.end2
END

IF ~~ m5.12
SAY @120
++ @121 + m5.20
++ @122 DO ~IncrementGlobal("RE_AimiCruel","GLOBAL",1)~ + m5.15
++ @123 + m5.16
++ @124 DO ~IncrementGlobal("RE_AimiCruel","GLOBAL",1)~ + m5.17
++ @125 + m5.22
++ @126 + m5.20
++ @127 + m5.13
++ @128 DO ~IncrementGlobal("RE_AimiCruel","GLOBAL",1)~ + m5.end2
END

IF ~~ m5.13
SAY @129
++ @130 + m5.20
++ @131 + m5.21
++ @132 + m5.24
++ @133 + m5.22
++ @134 + m5.23
++ @135 DO ~IncrementGlobal("RE_AimiCruel","GLOBAL",1)~ + m5.14
++ @136 DO ~IncrementGlobal("RE_AimiCruel","GLOBAL",1)~ + m5.end2
END

IF ~~ m5.14
SAY @137
IF ~~ THEN + m5.33
END

IF ~~ m5.15
SAY @138
IF ~~ THEN + m5.14
END

IF ~~ m5.16
SAY @139
= @140
IF ~~ THEN + m5.14
END

IF ~~ m5.17
SAY @141
IF ~~ THEN + m5.33
END

IF ~~ m5.18
SAY @142
++ @143 + m5.12
++ @144 + m5.13
++ @145 + m5.14
++ @146 DO ~IncrementGlobal("RE_AimiCruel","GLOBAL",1)~ + m5.15
++ @147 + m5.16
++ @148 DO ~IncrementGlobal("RE_AimiCruel","GLOBAL",1)~ + m5.17
END

IF ~~ m5.19
SAY @149
IF ~~ THEN + m5.end1
END

IF ~~ m5.20
SAY @150
++ @151 + m5.34
+ ~GlobalLT("RE_AimiCruel","GLOBAL",2)~ + @152 + m5.35
+ ~GlobalGT("RE_AimiCruel","GLOBAL",1)~ + @152 + m5.36
++ @153 + m5.14
++ @154 DO ~IncrementGlobal("RE_AimiCruel","GLOBAL",1)~ + m5.15
++ @155 DO ~IncrementGlobal("RE_AimiCruel","GLOBAL",1)~ + m5.37
END

IF ~~ m5.21
SAY @156
IF ~~ THEN + m5.end1
END

IF ~~ m5.22
SAY @157
IF ~~ THEN + m5.25
END

IF ~~ m5.23
SAY @158
IF ~~ THEN + m5.end1
END

IF ~~ m5.24
SAY @159
IF ~~ THEN + m5.25
END

IF ~~ m5.25
SAY @160
IF ~~ THEN + m5.bj1
END

IF ~~ m5.26
SAY @161
IF ~~ THEN + m5.25
END

IF ~~ m5.27
SAY @162
IF ~~ THEN + m5.25
END

IF ~~ m5.28
SAY @163
++ @164 DO ~IncrementGlobal("RE_AimiCruel","GLOBAL",1)~ + m5.25
++ @165 + m5.27
++ @166 + m5.25
++ @167 + m5.dress1
++ @168 DO ~IncrementGlobal("RE_AimiCruel","GLOBAL",1)~ + m5.38
++ @169 DO ~IncrementGlobal("RE_AimiCruel","GLOBAL",1)~ + m5.dress2
END

IF ~~ m5.29
SAY @170
IF ~~ THEN + m5.25
END

IF ~~ m5.30
SAY @171
IF ~~ THEN + m5.bj1
END

IF ~~ m5.31
SAY @172
++ @173 + m5.25
++ @174 + m5.25
++ @175 + m5.39
END

IF ~~ m5.32
SAY @176
++ @173 + m5.25
++ @174 + m5.25
++ @177 + m5.dress2
END

IF ~~ m5.33
SAY @178
= @179
++ @180 DO ~IncrementGlobal("RE_AimiCruel","GLOBAL",1)~ + m5.25
++ @181 + m5.28
++ @182 + m5.26
++ @183 + m5.27
++ @184 + m5.25
++ @185 + m5.bj1
++ @186 + m5.29
++ @187 + m5.30
++ @188 + m5.31
++ @189 DO ~IncrementGlobal("RE_AimiCruel","GLOBAL",1)~ + m5.32
END

IF ~~ m5.34
SAY @190 
IF ~~ THEN + m5.40
END

IF ~~ m5.35
SAY @191
IF ~~ THEN + m5.40
END

IF ~~ m5.36
SAY @192
IF ~~ THEN + m5.40
END

IF ~~ m5.37
SAY @193
IF ~~ THEN + m5.13
END

IF ~~ m5.38
SAY @194
IF ~~ THEN + m5.25
END

IF ~~ m5.39
SAY @195
++ @196 + m5.25
++ @197 + m5.25
++ @198 + m5.25
++ @199 + m5.19
++ @200 + m5.end2
END

IF ~~ m5.40
SAY @201
++ @202 + m5.14
++ @203 + m5.23
++ @204 + m5.14
++ @205 + m5.23
++ @206 DO ~IncrementGlobal("RE_AimiCruel","GLOBAL",1)~ + m5.23 
END

IF ~~ m5.41
SAY @207
IF ~~ THEN + m5.offer
END

IF ~~ m5.42
SAY @208
IF ~~ THEN + m5.end1
END

IF ~~ m5.43
SAY @209
IF ~~ THEN + m5.sex2gentle
END

IF ~~ m5.44
SAY @210
IF ~~ THEN + m5.46
END

IF ~~ m5.45
SAY @211
IF ~~ THEN + m5.46
END

IF ~~ m5.46
SAY @212
++ @213 + m5.sex2gentle
++ @214 + m5.sex2
++ @215 DO ~IncrementGlobal("RE_AimiCruel","GLOBAL",1)~ + m5.sex2
++ @216 DO ~IncrementGlobal("RE_AimiCruel","GLOBAL",1)~ + m5.sex2
++ @217 DO ~IncrementGlobal("RE_AimiCruel","GLOBAL",1)~ + m5.dress2
++ @218 + m5.dress1
END

IF ~~ m5.47
SAY @219
IF ~~ THEN + m5.46
END


IF ~~ m5.dress1
SAY @220
= @221
IF ~~ THEN + m5.end1
END

IF ~~ m5.dress2
SAY @222
IF ~~ THEN + m5.end2
END

IF ~~ m5.bj1
SAY @223
= @224
= @225
++ @226 + m5.bj2
++ @227 + m5.bj2
++ @228 + m5.offer
++ @229 DO ~IncrementGlobal("RE_AimiCruel","GLOBAL",1)~ + m5.bj2
++ @230 DO ~IncrementGlobal("RE_AimiCruel","GLOBAL",1)~ + m5.sex1
++ @231 DO ~IncrementGlobal("RE_AimiCruel","GLOBAL",1)~ + m5.41
END

IF ~~ m5.bj2
SAY @232
= @233
= @234
++ @235 + m5.bj3
++ @236 + m5.bj3
++ @237 DO ~IncrementGlobal("RE_AimiCruel","GLOBAL",1)~ + m5.bj3
++ @238 + m5.offer
++ @239 DO ~IncrementGlobal("RE_AimiCruel","GLOBAL",1)~ + m5.bj3
++ @240 DO ~IncrementGlobal("RE_AimiCruel","GLOBAL",1)~ + m5.sex1
++ @241 + m5.41
END

IF ~~ m5.bj3
SAY @242
= @243
++ @244 DO ~SetGlobal("RE_AimiSex","GLOBAL",1)~ + m5.end3
++ @245 DO ~SetGlobal("RE_AimiSex","GLOBAL",1)~ + m5.42
++ @246 DO ~SetGlobal("RE_AimiSex","GLOBAL",1)~ + m5.recovery
++ @247 DO ~IncrementGlobal("RE_AimiCruel","GLOBAL",1) SetGlobal("RE_AimiSex","GLOBAL",1)~ + m5.recovery
++ @248 DO ~SetGlobal("RE_AimiSex","GLOBAL",1)~ + m5.recovery
++ @249 DO ~IncrementGlobal("RE_AimiCruel","GLOBAL",1) SetGlobal("RE_AimiSex","GLOBAL",1)~ + m5.end2
END

IF ~~ m5.recovery
SAY @250
IF ~~ THEN + m5.offer
END

IF ~~ m5.offer
SAY @251
IF ~~ THEN + m5.sex1
END

IF ~~ m5.sex1
SAY @252
++ @253 + m5.43
++ @254 + m5.44
++ @255 + m5.45
++ @256 + m5.47
++ @257 DO ~IncrementGlobal("RE_AimiCruel","GLOBAL",1)~ + m5.46
++ @258 + m5.46
++ @259 DO ~IncrementGlobal("RE_AimiCruel","GLOBAL",1)~ + m5.sex2
++ @260 + m5.dress1
++ @261 DO ~IncrementGlobal("RE_AimiCruel","GLOBAL",1)~ + m5.dress2
END

IF ~~ m5.sex2gentle
SAY @262
= @263
++ @264 + m5.sex2gentle1
++ @265 + m5.sex2gentle2
++ @266 + m5.sex2rough
++ @267 + m5.dress1
END

IF ~~ m5.sex2gentle1
SAY @268
IF ~~ THEN + m5.sex2gentle2
END

IF ~~ m5.sex2gentle2
SAY @269
= @270
= @271
= @272
IF ~~ THEN DO ~SetGlobal("RE_AimiSex","GLOBAL",1) SetGlobal("RE_AimiGoodWord","GLOBAL",1)~ + m5.end3
END

IF ~~ m5.sex2
SAY @273
++ @274 DO ~IncrementGlobal("RE_AimiCruel","GLOBAL",1)~ + m5.sex2floor
++ @275 + m5.sex2gentle
++ @276 + m5.sex2kneel
++ @277 + m5.sex2gentle
++ @278 + m5.dress1
END

IF ~~ m5.sex2floor
SAY @279
++ @280 DO ~IncrementGlobal("RE_AimiCruel","GLOBAL",1)~ + m5.sex2rough
++ @281 + m5.sex3
++ @282 DO ~IncrementGlobal("RE_AimiCruel","GLOBAL",1)~ + m5.sex2kneel
++ @283 + m5.sex2gentle2
++ @284 DO ~IncrementGlobal("RE_AimiCruel","GLOBAL",1)~ + m5.dress2
END

IF ~~ m5.sex2kneel
SAY @285
++ @286 DO ~IncrementGlobal("RE_AimiCruel","GLOBAL",1)~ + m5.sex2rough
++ @287 + m5.sex2kneel2
++ @288 + m5.sex2gentle
++ @289 + m5.dress1
END

IF ~~ m5.sex2kneel2
SAY @290
= @291
= @292
IF ~~ THEN DO ~SetGlobal("RE_AimiSex","GLOBAL",1) SetGlobal("RE_AimiGoodWord","GLOBAL",1)~ + m5.end3
END


IF ~~ m5.sex3
SAY @293
++ @294 DO ~IncrementGlobal("RE_AimiCruel","GLOBAL",1)~ + m5.sex2rough
++ @295 + m5.sex2gentle2
++ @296 + m5.dress1
END

IF ~~ m5.sex2rough
SAY @297
++ @298 DO ~IncrementGlobal("RE_AimiCruel","GLOBAL",1)~ + m5.sex2rough2
++ @299 DO ~IncrementGlobal("RE_AimiCruel","GLOBAL",1)~ + m5.sex2rough3
++ @300 DO ~IncrementGlobal("RE_AimiCruel","GLOBAL",1)~ + m5.sex2rough4
++ @301 + m5.sex2rough5
++ @302 + m5.sex2done
END

IF ~~ m5.sex2rough2
SAY @303
= @304
= @305
= @306
= @307
= @308
= @306
= @309
IF ~~ THEN + m5.sex2done
END

IF ~~ m5.sex2rough3
SAY @310
IF ~~ THEN + m5.sex2done
END

IF ~~ m5.sex2rough4
SAY @311
= @312
IF ~~ THEN + m5.sex2done
END

IF ~~ m5.sex2rough5
SAY @313
= @314
IF ~~ THEN + m5.sex2done
END

IF ~~ m5.sex2done
SAY @315
= @316
IF ~~ THEN  DO ~SetGlobal("RE_AimiSex","GLOBAL",1)~ + m5.end2
END
END

CHAIN REAimi m5.end1
@317
DO ~ClearAllActions() 
StartCutSceneMode() 
StartCutScene("RE_Aimi2")~ 
EXIT

CHAIN REAimi m5.end2
@318
DO ~ClearAllActions() 
StartCutSceneMode() 
StartCutScene("RE_Aimi2")~ 
EXIT

CHAIN REAimi m5.end3
@319
DO ~ClearAllActions() 
StartCutSceneMode() 
StartCutScene("RE_Aimi2")~ 
EXIT

