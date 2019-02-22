// The Love Song of Logan, Lord Logan, By Ajnos, Monday, July 09, 2007

APPEND CELOGAN

// 1.

IF WEIGHT #-1 ~AreaCheck("AR2007") Global("loganjob1","GLOBAL",2) Global("loganjob2","GLOBAL",2) Global("RE_LoganTalk","GLOBAL",0) IsGabber(Player1) Gender(Player1,FEMALE)~ L1
SAY @0
++ @1 DO ~SetGlobal("RE_LoganTalk","GLOBAL",1)~ + L1Sta 
++ @2 DO ~SetGlobal("RE_LoganTalk","GLOBAL",1)~ + Ll00B
++ @3 DO ~SetGlobal("RE_LoganTalk","GLOBAL",10)~ EXIT
END

IF ~~ Ll00B 
SAY @4
++ @5 + L1Sta
++ @6 + L1Sta
++ @7 + L1Sta
END

IF ~~ L1Sta 
SAY @8
++ @9 + L1Formal
++ @10 + L1Gracious
++ @11 + L1Chivalry
++ @12 + L1Direct
END

IF ~~ L1Formal 
SAY @13
++ @14 + L1Self
++ @15 + L1Swift
++ @16 + L1Goofus
END

IF ~~ L1Self 
SAY @17
++ @18 + L1KCactus
++ @19 + L1KCactus
++ @20 + L1KCactus
END

IF ~~ L1KCactus
SAY @21
++ @22 + L1Molli
++ @23 + L1Knot1
++ @24 DO ~SetGlobal("RE_LoganTalk","GLOBAL",10)~ EXIT
++ @25 + L1Knot1
END

IF ~~ L1Molli 
SAY @26
= @27
= @28
= @29
++ @30 + L1Briefs
++ @31 + L1Charm
++ @32 + L1Back
++ @33 + L1GoOn
END

IF ~~ L1Briefs 
SAY @34 
IF ~~ + L1Knot1
END

IF ~~ L1Charm 
SAY @35
IF ~~ + L1Knot1
END

IF ~~ L1Back 
SAY @36
IF ~~ + L1Knot1
END

IF ~~ L1GoOn 
SAY @37
IF ~~ + L1Knot1
END

IF ~~ L1Swift 
SAY @38
++ @39 + L1Damn
++ @40 + L1Noah
++ @41 + L1Ohmy
++ @42 + L1Yay
END

IF ~~ L1Damn 
SAY @43
IF ~~ + L1Knot1
END

IF ~~ L1Noah 
SAY @44
= @45
+ ~Class(Player1,DRUID_ALL)~ + @46 + L1Moon
+ ~Class(Player1,DRUID_ALL)~ + @47 + L1Moon
++ @48 + L1Duck
++ @49 + L1Swamp
++ @50 + L1Walk
END

IF ~~ L1Moon 
SAY @51
IF ~~ + L1Knot1
END

IF ~~ L1Duck 
SAY @52
IF ~~ + L1Knot1
END

IF ~~ L1Swamp 
SAY @53
IF ~~ + L1Knot1
END

IF ~~ L1Walk 
SAY @54 
IF ~~ + L1Knot1
END

IF ~~ L1Ohmy 
SAY @55 
IF ~~ + L1KCactus
END

IF ~~ L1Yay 
SAY @56
++ @57 + L1Harold
++ @58 + L1Augustus
++ @59 + L1Shorty
++ @60 + L1Politesse
END

IF ~~ L1Harold 
SAY @61
IF ~~ + L1Knot1
END

IF ~~ L1Augustus 
SAY @62
IF ~~ + L1Knot1
END

IF ~~ L1Shorty 
SAY @63
IF ~~ + L1Knot1
END

IF ~~ L1Politesse 
SAY @64
IF ~~ + L1Knot1
END

IF ~~ L1Goofus 
SAY @65
++ @66 + L1Clerk
++ @67 + L1Twee
++ @68 + L1Leaf
++ @69 + L1Coy
END

IF ~~ L1Clerk 
SAY @70 
IF ~~ + L1Trouble
END

IF ~~ L1Twee 
SAY @71 
IF ~~ + L1Trouble
END

IF ~~ L1Leaf 
SAY @72
IF ~~ + L1Trouble
END

IF ~~ L1Coy 
SAY @73 
IF ~~ + L1Trouble
END

IF ~~ L1Trouble 
SAY @74
++ @75 + L1Twink
++ @76 + L1Boo
++ @77 + L1Vous
++ @78 + L1Liar
END

IF ~~ L1Twink 
SAY @79 
IF ~~ + L1Knot1
END

IF ~~ L1Boo 
SAY @80 
IF ~~ + L1Knot1
END

IF ~~ L1Vous 
SAY @81
IF ~~ + L1Knot1
END

IF ~~ L1Liar 
SAY @82
IF ~~ + L1Knot1
END

IF ~~ L1Gracious 
SAY @83
++ @84 + L1Yes
++ @85 + L1Hippy
++ @86 + L1Acco
END

IF ~~ L1Yes 
SAY @87
IF ~~ + L1Knot1
END

IF ~~ L1Hippy 
SAY @88
IF ~~ + L1Knot1
END

IF ~~ L1Acco 
SAY @89
IF ~~ + L1Knot1
END

IF ~~ L1Chivalry 
SAY @90
++ @91 + L1Dope
++ @92 + L1Easy
++ @93 + L1Task
END

IF ~~ L1Dope 
SAY @94
IF ~~ + L1Knot1
END

IF ~~ L1Easy 
SAY @95
IF ~~ + L1Knot1
END

IF ~~ L1Task 
SAY @96
IF ~~ + L1Knot1
END

IF ~~L1Direct 
SAY @97
++ @98 + L1Fine
++ @99 + L1Hint
++ @100 + L1Saso
++ @101 + L1Tour
END

IF ~~ L1Fine 
SAY @102
IF ~~ + L1Knot1
END

IF ~~ L1Hint 
SAY @103
IF ~~ + L1Knot1
END

IF ~~ L1Saso 
SAY @104
IF ~~ + L1Knot1
END

IF ~~ L1Tour 
SAY @105
++ @106 + L1Scort
++ @107 + L1Mish
++ @108 + L1Bath
++ @109 + L1List
END

IF ~~ L1Scort 
SAY @110 
IF ~~ + L1Trouble
END

IF ~~ L1Mish 
SAY @111
IF ~~ + L1Knot1
END

IF ~~ L1Bath 
SAY @112 
IF ~~ + L1Trouble
END

IF ~~ L1List 
SAY @113
IF ~~ + L1Knot1
END

IF ~~ L1Knot1 
SAY @114
++ @115 + L1Find
++ @116 + L1Trull
++ @117 + L1Wood
++ @118 + L1Gold
++ @119 DO ~SetGlobal("RE_LoganTalk","GLOBAL",10)~ EXIT
END

IF ~~ L1Find 
SAY @120 
IF ~~ + L1Knot2
END

IF ~~ L1Trull 
SAY @121
IF ~~ + L1Knot2
END

IF ~~ L1Wood 
SAY @122
IF ~~ + L1Knot2
END

IF ~~ L1Gold 
SAY @123
IF ~~ + L1Knot2
END

IF ~~ L1Knot2 
SAY @124
= @125
++ @126 + L1Eve
++ @127 + L1Red
++ @128 + L1Tart
++ @129 + L1Sure
++ @130 + L1Air
++ @131 + L1PA
++ @132 DO ~SetGlobal("RE_LoganTalk","GLOBAL",10)~ EXIT
END

IF ~~ L1Eve 
SAY @133
IF ~~ EXIT
END

IF ~~ L1Red 
SAY @134 
IF ~~ + L1Wrap
END

IF ~~ L1Tart 
SAY @135 
IF ~~ + L1Wrap
END

IF ~~ L1Sure 
SAY @136 
IF ~~ EXIT
END

IF ~~L1Air
SAY @137 
IF ~~ + L1Wrap
END

IF ~~ L1PA 
SAY @138 
IF ~~ + L1Wrap
END

IF ~~ L1Wrap 
SAY @139 
IF ~~ EXIT
END

IF WEIGHT #-1 ~AreaCheck("AR2007") Global("RE_LoganTalk","GLOBAL",1) TimeOfDay(DAY) IsGabber(Player1) Gender(Player1,FEMALE)~ L1.1
SAY @139 
IF ~~ EXIT
END

// 2.

IF WEIGHT #-1 ~AreaCheck("AR2007") Global("RE_LoganTalk","GLOBAL",1) IsGabber(Player1) Gender(Player1,FEMALE)~ L2
SAY @140
++ @141 DO ~SetGlobal("RE_LoganFlirt","GLOBAL",1) SetGlobal("RE_LoganTalk","GLOBAL",2)~ + L2Nightx
++ @142 DO ~SetGlobal("RE_LoganFlirt","GLOBAL",1) SetGlobal("RE_LoganTalk","GLOBAL",2)~ + L2Avek
++ @143 DO ~SetGlobal("RE_LoganFlirt","GLOBAL",1) SetGlobal("RE_LoganTalk","GLOBAL",2)~ + L2Latef
++ @144 DO ~SetGlobal("RE_LoganFlirt","GLOBAL",1) SetGlobal("RE_LoganTalk","GLOBAL",2)~ + L2Rainl
END

IF ~~ L2Nightx 
SAY @145
= @146
++ @147 + L2Totallyx
++ @148 + L2Pushyx
++ @149 + L2Stuffx
++ @150 + L2Grubx
END

IF ~~ L2Totallyx 
SAY @151 
IF ~~ + L2Gox
END

IF ~~ L2Pushyx 
SAY @152
IF ~~ + L2Gox
END

IF ~~ L2Stuffx 
SAY @153 
IF ~~ + L2Gox
END

IF ~~ L2Grubx 
SAY @154
= @155 
IF ~~ + L2Gox
END

IF ~~ L2Gox 
SAY @156
++ @157 + L2Lickx
++ @158 + L2Twicex
++ @159 + L2Blitherx
++ @160 + L2Umyesx
END

IF ~~ L2Lickx 
SAY @161
= @162
++ @163 + L2AwayNowx
++ @164 + L2Goingx
++ @165 + L2AwayNowx
++ @166 + L2Gonex
END

IF ~~ L2AwayNowx
SAY @167 
IF ~~ EXIT
END

IF ~~ L2Goingx 
SAY @168
IF ~~ + L2AwayNowx
END

IF ~~ L2Gonex 
SAY @169
IF ~~ + L2AwayNowx
END

IF ~~ L2Twicex 
SAY @170
= @171
++ @172 + L2Mercix
++ @173 + L2Flutterx
++ @174 + L2Finalsx
++ @175 + L2Noblex
END

IF ~~ L2Blitherx 
SAY @176
= @177
++ @172 + L2Mercix
++ @173 + L2Flutterx
++ @174 + L2Finalsx
++ @178 + L2Noblex
END

IF ~~ L2Umyesx 
SAY @179
= @180
++ @172 + L2Mercix
++ @173 + L2Flutterx
++ @174 + L2Finalsx
++ @178 + L2Noblex
END

IF ~~ L2Mercix 
SAY @181 
IF ~~ EXIT
END

IF ~~ L2Flutterx 
SAY @182 
IF ~~ EXIT
END

IF ~~ L2Noblex 
SAY @183
= @184
IF ~~ + L2AwayNowx
END

IF ~~ L2Finalsx 
SAY @185 
IF ~~ + L2Knotf
END

IF ~~ L2Avek 
SAY @186
= @187
++ @188 + L2Injunk
++ @189 + L2Parfaitk
++ @190 + L2Emptyk
END

IF ~~ L2Injunk 
SAY @191 
IF ~~ + L2Knotf
END

IF ~~ L2Parfaitk 
SAY @192 
IF ~~ + L2Knotf
END

IF ~~ L2Emptyk 
SAY @193 
IF ~~ + L2Knotf
END

IF ~~ L2Latef 
SAY @194
= @195
++ @196 + L2Ouif
++ @197 + L2Arrivef
++ @198 + L2Famousf
END

IF ~~ L2Ouif 
SAY @199
IF ~~ + L2Knotf
END

IF ~~ L2Arrivef 
SAY @200
IF ~~ + L2Knotf
END

IF ~~ L2Famousf 
SAY @201
IF ~~ + L2Knotf
END

IF ~~ L2Knotf 
SAY @202 
IF ~~ + L2Askf
END

IF ~~ L2Askf 
SAY @203
IF ~~ + L2Ask2f
END

IF ~~ L2Ask2f
SAY @204
++ @205 + L2Anyf
++ @206 + L2Heirf
++ @207 + L2Maf
++ @208 + L2Omgf
++ @209 + L2Townief
++ @210 + L2Badgerf
++ @211 + L2Retiref
++ @212 + L2Dunf
END

IF ~~ L2Anyf 
SAY @213 
IF ~~ + L2Ask2f
END

IF ~~ L2Heirf 
SAY @214
IF ~~ + L2Ask2f
END

IF ~~ L2Maf 
SAY @215 
IF ~~ + L2Ask2f
END

IF ~~ L2Omgf 
SAY @216
IF ~~ + L2Ask2f
END

IF ~~ L2Townief 
SAY @217
IF ~~ + L2Ask2f
END

IF ~~ L2Badgerf 
SAY @218 
IF ~~ + L2Ask2f
END

IF ~~ L2Retiref 
SAY @219
IF ~~ + L2Ask2f
END

IF ~~ L2Dunf 
SAY @220
++ @221 + L2Fin1f 
++ @222 + L2Fin2f
++ @223 + L2Endef
END

IF ~~ L2Fin1f 
SAY @224
++ @225 + L2Birdf
++ @226 + L2Codaf
++ @227 + L2Slimf
++ @228 + L2Getitf
END

IF ~~ L2Birdf 
SAY @229 
IF ~~ + L2Endef
END

IF ~~ L2Codaf 
SAY @230 
IF ~~ + L2Endef
END

IF ~~ L2Slimf 
SAY @231
IF ~~ + L2Endef
END

IF ~~ L2Getitf 
SAY @232
IF ~~ + L2Endef
END
 
IF ~~ L2Fin2f 
SAY @233 
IF ~~ + L2Endef
END

IF ~~ L2Endef 
SAY @234 
IF ~~ EXIT
END

IF ~~ L2Rainl 
SAY @235
= @236
= @237
++ @238 + L2FallL
++ @239 + L2KindL
++ @240 + L2DrinkL
END

IF ~~ L2FallL 
SAY @241
++ @242 + L2DripL
++ @243 + L2SunL
++ @244 + L2ObsessL
++ @245 + L2TutorL
END

IF ~~ L2DripL 
SAY @246 
IF ~~ + L2GiftL
END

IF ~~ L2SunL 
SAY @247 
IF ~~ + L2GiftL
END

IF ~~ L2ObsessL 
SAY @248 
IF ~~ + L2GiftL
END

IF ~~ L2TutorL 
SAY @249 
IF ~~ + L2GiftL
END

IF ~~ L2GiftL 
SAY @250
++ @251 + L2NosL
++ @252 + L2NantucketL
++ @253 + L2JuggleL
END

IF ~~ L2NosL 
SAY @254
IF ~~ + L2Knot4L
END

IF ~~ L2NantucketL 
SAY @255 
IF ~~ + L2Knot4L
END

IF ~~ L2JuggleL 
SAY @256 
IF ~~ + L2Knot4L
END

IF ~~ L2KindL 
SAY @257
++ @258 + L2MannersL
++ @259 + L2InstinctL
++ @260 + L2TrustL
++ @261 + L2CardiffL
END

IF ~~ L2MannersL 
SAY @262 
IF ~~ + L2Knot4L
END

IF ~~ L2InstinctL 
SAY @263
IF ~~ + L2Knot4L
END

IF ~~ L2TrustL 
SAY @264
IF ~~ + L2Knot4L
END

IF ~~ L2CardiffL 
SAY @265 
IF ~~ + L2Knot4L
END

IF ~~ L2DrinkL 
SAY @266
++ @267 + L2TickL
++ @268 + L2AloeL
++ @269 + L2SanteL
++ @270 + L2LushL
END

IF ~~ L2TickL 
SAY @271 
IF ~~ + L2KnotALa
END

IF ~~ L2AloeL 
SAY @272 
IF ~~ + L2KnotALa
END

IF ~~ L2SanteL 
SAY @273
IF ~~ + L2KnotALa
END

IF ~~ L2LushL 
SAY @274
IF ~~ + L2KnotALa
END

IF ~~ L2Knot4L 
SAY @275
++ @276 + L2WoeL
++ @277 + L2CryL
++ @278 + L2WhyL
END

IF ~~ L2KnotALa 
SAY @279
++ @276 + L2WoeL
++ @277 + L2CryL
++ @278 + L2WhyL
END

IF ~~ L2WoeL 
SAY @280
++ @281 + L2DwellL
++ @282 + L2LotsL
++ @283 + L2ReallyL
END

IF ~~ L2DwellL 
SAY @284 
IF ~~ + L2Knot4Lb
END

IF ~~ L2LotsL 
SAY @285
= @286
IF ~~ + L2Knot4Lb
END

IF ~~ L2ReallyL 
SAY @287
= @288
IF ~~ + L2Knot4Lb
END

IF ~~ L2CryL 
SAY @289
= @290
++ @291 + L2WeepyL
++ @292 + L2SirenL
++ @293 + L2MoodyL
END

IF ~~ L2WeepyL 
SAY @294
= @295
IF ~~ + L2Knot4Lb
END

IF ~~ L2SirenL 
SAY @296
IF ~~ + L2Knot4Lb
END

IF ~~ L2MoodyL 
SAY @297 
= @298
IF ~~ + L2Knot4Lb
END

IF ~~ L2WhyL 
SAY @299
++ @300 + L2SheeshL
++ @301 + L2GirlyL
++ @302 + L2RasenL
END

IF ~~ L2SheeshL 
SAY @303 
IF ~~ + L2Knot4Lb 
END

IF ~~ L2GirlyL 
SAY @304 
IF ~~ + L2Knot4Lb
END

IF ~~ L2RasenL 
SAY @305 
IF ~~ + L2Knot4Lb
END

IF ~~ L2Knot4Lb 
SAY @306
IF ~~ + L2ConfideL
END

IF ~~ L2ConfideL
SAY @307
IF ~~ + L2ConfideLa
END

IF ~~ L2ConfideLa 
SAY @308
++ @309 + L2QAL
++ @310 + L2DuckL
++ @311 + L2AuraL
++ @312 + L2TormL
++ @313 + L2RashturlL
++ @314 + L2EliotL
++ @315 + L2AloneL
++ @316 + L2FairestL
++ @317 + L2MermaidL
END

IF ~~ L2QAL 
SAY @318
= @319 
IF ~~ + L2ConfideLa
END

IF ~~ L2DuckL 
SAY @320
= @321
IF ~~ + L2ConfideLa
END

IF ~~ L2AuraL 
SAY  @322
IF ~~ + L2ConfideLa
END

IF ~~ L2TormL 
SAY @323
IF ~~ + L2ConfideLa
END

IF ~~ L2RashturlL 
SAY @324
IF ~~ + L2ConfideLa
END

IF ~~ L2EliotL
SAY @325
= @326
IF ~~ + L2ConfideLa
END

IF ~~ L2AloneL 
SAY @327 IF ~~ + L2ConfideLa
END

IF ~~ L2FairestL 
SAY @328
IF ~~ + L2ConfideLa
END

IF ~~ L2MermaidL 
SAY @329
++ @330 + L2LuckL
++ @331 + L2HesitateL
++ @332 + L2LightL
++ @333 + L2KissL
END

IF ~~ L2LuckL 
SAY @334 
IF ~~ EXIT
END

IF ~~ L2HesitateL 
SAY @335
= @336
IF ~~ EXIT
END

IF ~~ L2LightL 
SAY @337
= @338
IF ~~ EXIT
END

IF ~~ L2KissL 
SAY @339
= @340 
IF ~~ EXIT
END

END
