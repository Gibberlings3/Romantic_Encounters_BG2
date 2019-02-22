APPEND VALYGARJ

// 1.
 
IF WEIGHT #-1 ~Global("RE_ValygarRomance","GLOBAL",2)~ v1
SAY @0 
++ @1 DO ~SetGlobal("RE_ValygarRomance","GLOBAL",3) RealSetGlobalTimer("RE_ValygarTimer","GLOBAL",1000)~ + v1.0
++ @2 DO ~SetGlobal("RE_ValygarRomance","GLOBAL",3) RealSetGlobalTimer("RE_ValygarTimer","GLOBAL",1000)~ + v1.wi
++ @3 DO ~SetGlobal("RE_ValygarRomance","GLOBAL",3) RealSetGlobalTimer("RE_ValygarTimer","GLOBAL",1000)~ + v1.0
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ + @4 DO ~SetGlobal("RE_ValygarRomance","GLOBAL",3) RealSetGlobalTimer("RE_ValygarTimer","GLOBAL",1000)~ + v1.0
+ ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)~ + @5 DO ~SetGlobal("RE_ValygarRomance","GLOBAL",3) RealSetGlobalTimer("RE_ValygarTimer","GLOBAL",1000)~ + v1.so
END

IF ~~ v1.wi
SAY @6
IF ~~ + v1.0
END

IF ~~ v1.so
SAY @7
IF ~~ + v1.0
END

IF ~~ v1.0
SAY @8
++ @9 + v1.4
++ @10 + v1.4
++ @11 + v1.2
++ @12 + v1.2
++ @13 + v1.3
END

IF ~~ v1.2
SAY @14
IF ~~ + v1.4
END

IF ~~ v1.3
SAY @15
IF ~~ + v1.4
END

IF ~~ v1.4
SAY @16
++ @17 + v1.5
++ @18 + v1.6
++ @19 + v1.7
++ @20 + v1.5
++ @21 + v1.8
END

IF ~~ v1.5
SAY @22
IF ~~ EXIT
END

IF ~~ v1.6
SAY @23
IF ~~ EXIT
END

IF ~~ v1.7
SAY @24
IF ~~ EXIT
END

IF ~~ v1.8
SAY @25
IF ~~ EXIT
END

// 2.
 
IF WEIGHT #-1 ~Global("RE_ValygarRomance","GLOBAL",4)~ v2
SAY @26 
++ @27 DO ~SetGlobal("RE_ValygarRomance","GLOBAL",5) RealSetGlobalTimer("RE_ValygarTimer","GLOBAL",2000)~ + v2.1
++ @28 DO ~SetGlobal("RE_ValygarRomance","GLOBAL",5) RealSetGlobalTimer("RE_ValygarTimer","GLOBAL",2000)~ + v2.1
++ @29 DO ~SetGlobal("RE_ValygarRomance","GLOBAL",5) RealSetGlobalTimer("RE_ValygarTimer","GLOBAL",2000)~ + v2.0
END

IF ~~ v2.0
SAY @30
IF ~~ DO ~SetGlobal("RE_Valygar","GLOBAL",100)~ EXIT
END

IF ~~ v2.1
SAY @31
IF ~~ EXIT
END

// 3.
 
IF WEIGHT #-1 ~Global("RE_ValygarRomance","GLOBAL",6)~ v3
SAY @32 
++ @33 DO ~SetGlobal("RE_ValygarRomance","GLOBAL",7)~ + v3.1
++ @34 DO ~SetGlobal("RE_ValygarRomance","GLOBAL",7)~ + v3.2
++ @35 DO ~SetGlobal("RE_ValygarRomance","GLOBAL",7)~ + v3.3
++ @36 DO ~SetGlobal("RE_ValygarRomance","GLOBAL",7)~ + v3.4
++ @37 DO ~SetGlobal("RE_ValygarRomance","GLOBAL",7)~ + v3.5
++ @38 DO ~SetGlobal("RE_ValygarRomance","GLOBAL",7)~ + v3.5
END

IF ~~ v3.1
SAY @39 
IF ~~ + v3.6
END

IF ~~ v3.2
SAY @40 
IF ~~ + v3.6
END

IF ~~ v3.3
SAY @41 
IF ~~ + v3.6
END

IF ~~ v3.4
SAY @42 
IF ~~ + v3.6
END

IF ~~ v3.5
SAY @43
IF ~~ + v3.6
END

IF ~~ v3.6
SAY @44
++ @45 + v3.7
++ @46 + v3.8
++ @47 + v3.8
++ @48 + v3.7
END

IF ~~ v3.7
SAY @49
IF ~~ + v3.8
END

IF ~~ v3.8
SAY @50
= @51
++ @52 + v3.9
++ @53 + v3.9
++ @54 + v3.9
END

IF ~~ v3.9
SAY @55
= @56
IF ~~ EXIT
END

// 4. (at waking up)

IF WEIGHT #-1 ~Global("RE_ValygarRomance","GLOBAL",8)~ v4
SAY @57 
++ @58 DO ~SetGlobal("RE_ValygarRomance","GLOBAL",9) RealSetGlobalTimer("RE_ValygarTimer","GLOBAL",3000)~ + v4.1
++ @59 DO ~SetGlobal("RE_ValygarRomance","GLOBAL",9) RealSetGlobalTimer("RE_ValygarTimer","GLOBAL",3000)~ + v4.1
++ @60 DO ~SetGlobal("RE_ValygarRomance","GLOBAL",9) RealSetGlobalTimer("RE_ValygarTimer","GLOBAL",3000)~ + v4.0
END

IF ~~ v4.0
SAY @61
IF ~~ DO ~SetGlobal("RE_Valygar","GLOBAL",100)~ EXIT
END

IF ~~ v4.1
SAY @62 
= @63
++ @64 + v4.2
++ @65 + v4.3
++ @66 + v4.3
++ @67 + v4.3
++ @68 + v4.6
END

IF ~~ v4.2
SAY @69
IF ~~ + v4.3
END

IF ~~ v4.3
SAY @70
++ @71 + v4.5
++ @72 + v4.4
++ @73 + v4.5
++ @74 + v4.4
END

IF ~~ v4.4
SAY @75
IF ~~ EXIT
END

IF ~~ v4.5
SAY @76
IF ~~ EXIT
END

IF ~~ v4.6
SAY @77
IF ~~ DO ~SetGlobal("RE_Valygar","GLOBAL",100)~ EXIT
END

// 5. 

IF WEIGHT #-1 ~Global("RE_ValygarRomance","GLOBAL",10)~ v5
SAY @78 
++ @79 DO ~SetGlobal("RE_ValygarRomance","GLOBAL",11) RealSetGlobalTimer("RE_ValygarTimer","GLOBAL",3000)~ + v5.1
++ @80 DO ~SetGlobal("RE_ValygarRomance","GLOBAL",11) RealSetGlobalTimer("RE_ValygarTimer","GLOBAL",3000)~ + v5.main
++ @81 DO ~SetGlobal("RE_ValygarRomance","GLOBAL",11) RealSetGlobalTimer("RE_ValygarTimer","GLOBAL",3000)~ + v5.2
++ @82 DO ~SetGlobal("RE_ValygarRomance","GLOBAL",11) RealSetGlobalTimer("RE_ValygarTimer","GLOBAL",3000)~ + v5.0
END

IF ~~ v5.0
SAY @83
IF ~~ EXIT
END

IF ~~ v5.1
SAY @84
IF ~~ + v5.3
END

IF ~~ v5.2
SAY @85
IF ~~ + v5.3
END

IF ~~ v5.3
SAY @86
++ @87 + v5.main
++ @88 + v5.main
++ @89 + v5.main
++ @90 + v5.0
END

IF ~~ v5.main
SAY @91 
++ @92 + v5.4
++ @93 + v5.5
++ @94 + v5.6
++ @95 + v5.7
++ @96 + v5.7
++ @97 + v5.8
END

IF ~~ v5.4
SAY @98
IF ~~ + v5.9
END

IF ~~ v5.5
SAY @99
IF ~~ + v5.9
END

IF ~~ v5.6
SAY @100
IF ~~ + v5.9
END

IF ~~ v5.7
SAY @101
IF ~~ + v5.9
END

IF ~~ v5.8
SAY @102
IF ~~ + v5.9
END

IF ~~ v5.9
SAY @103
IF ~~ EXIT
END

// 5a (tavern) 

IF WEIGHT #-1 ~Global("RE_ValygarRomanceInn","GLOBAL",1)~ v5a
SAY @104 
++ @105 DO ~SetGlobal("RE_ValygarRomanceInn","GLOBAL",2)~ + v5a.1
++ @106 DO ~SetGlobal("RE_ValygarRomanceInn","GLOBAL",2)~ + v5a.1
++ @107 DO ~SetGlobal("RE_ValygarRomanceInn","GLOBAL",2)~ + v5a.1
++ @108 DO ~SetGlobal("RE_ValygarRomanceInn","GLOBAL",2)~ + v5a.0
END

IF ~~ v5a.0
SAY @109
IF ~~ EXIT
END

IF ~~ v5a.1
SAY @110
= @111
++ @112 + v5a.2
++ @113 + v5a.2
++ @114 + v5a.2
++ @115 + v5a.3
END

IF ~~ v5a.3
SAY @116
IF ~~ DO ~SetGlobal("RE_Valygar","GLOBAL",100)~ EXIT
END

IF ~~ v5a.2
SAY @117
++ @118 + v5a.4
++ @119 + v5a.5
++ @120 + v5a.6
++ @121 + v5a.4
END

IF ~~ v5a.4
SAY @122
IF ~~ + v5a.7
END

IF ~~ v5a.5
SAY @123
IF ~~ + v5a.7
END

IF ~~ v5a.6
SAY @124
IF ~~ + v5a.7
END

IF ~~ v5a.7
SAY @125
= @126
= @127
++ @128 + v5a.9
++ @129 + v5a.9
++ @130 + v5a.8
END

IF ~~ v5a.8
SAY @131
IF ~~ EXIT
END

IF ~~ v5a.9
SAY @132
IF ~~ EXIT
END

// 5b (outdoors, night)

IF WEIGHT #-1 ~Global("RE_ValygarRomanceNight","GLOBAL",1)~ v5b
SAY @133 
++ @134 DO ~SetGlobal("RE_ValygarRomanceNight","GLOBAL",2)~ + v5b.1
++ @135 DO ~SetGlobal("RE_ValygarRomanceNight","GLOBAL",2)~ + v5b.1
++ @136 DO ~SetGlobal("RE_ValygarRomanceNight","GLOBAL",2)~ + v5b.1
++ @137 DO ~SetGlobal("RE_ValygarRomanceNight","GLOBAL",2)~ + v5b.1
END

IF ~~ v5b.1
SAY @138
= @139
++ @140 + v5b.2
++ @141 + v5b.2
++ @142 + v5b.3
END

IF ~~ v5b.2
SAY @143
++ @144 + v5b.4
++ @145 + v5b.5
++ @146 + v5b.last
END

IF ~~ v5b.3
SAY @147
= @148
IF ~~ + v5b.last
END

IF ~~ v5b.4
SAY @149
IF ~~ + v5b.last
END

IF ~~ v5b.5
SAY @150
IF ~~ + v5b.last
END

IF ~~ v5b.last
SAY @151
IF ~~ EXIT
END

// 6. 

IF WEIGHT #-1 ~Global("RE_ValygarRomance","GLOBAL",12)~ v6
SAY @152 
++ @153 DO ~SetGlobal("RE_ValygarRomance","GLOBAL",13) RealSetGlobalTimer("RE_ValygarTimer","GLOBAL",3000)~ + v6.1
++ @154 DO ~SetGlobal("RE_ValygarRomance","GLOBAL",13) RealSetGlobalTimer("RE_ValygarTimer","GLOBAL",3000)~ + v6.1
++ @155 DO ~SetGlobal("RE_ValygarRomance","GLOBAL",13) RealSetGlobalTimer("RE_ValygarTimer","GLOBAL",3000)~ + v6.1
++ @156 DO ~SetGlobal("RE_ValygarRomance","GLOBAL",13) RealSetGlobalTimer("RE_ValygarTimer","GLOBAL",3000)~ + v6.1
END

IF ~~ v6.1
SAY @157
= @158
++ @159 + v6.2
++ @160 + v6.2
++ @161 + v6.3
++ @162 + v6.3
END

IF ~~ v6.2
SAY @163
IF ~~ + v6.main
END

IF ~~ v6.3
SAY @164
IF ~~ EXIT
END

IF ~~ v6.main
SAY @165
++ @166 + v6.4
++ @167 + v6.4
++ @168 + v6.4
++ @169 + v6.4
END

IF ~~ v6.4
SAY @170 
= @171
= @172
IF ~~ EXIT
END

// 7. 

IF WEIGHT #-1 ~Global("RE_ValygarRomance","GLOBAL",14)~ v7
SAY @173 
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_3%)~ + @174 DO ~SetGlobal("RE_ValygarRomance","GLOBAL",15) RealSetGlobalTimer("RE_ValygarTimer","GLOBAL",3000)~ + v7.1
++ @175 DO ~SetGlobal("RE_ValygarRomance","GLOBAL",15) RealSetGlobalTimer("RE_ValygarTimer","GLOBAL",3000)~ + v7.1
++ @176 DO ~SetGlobal("RE_ValygarRomance","GLOBAL",15) RealSetGlobalTimer("RE_ValygarTimer","GLOBAL",3000)~ + v7.4
++ @177 DO ~SetGlobal("RE_ValygarRomance","GLOBAL",15) RealSetGlobalTimer("RE_ValygarTimer","GLOBAL",3000)~ + v7.2
++ @178 DO ~SetGlobal("RE_ValygarRomance","GLOBAL",15) RealSetGlobalTimer("RE_ValygarTimer","GLOBAL",3000)~ + v7.3a
++ @179 DO ~SetGlobal("RE_ValygarRomance","GLOBAL",15) RealSetGlobalTimer("RE_ValygarTimer","GLOBAL",3000)~ + v7.3
END

IF ~~ v7.1
SAY @180
IF ~~ + v7.4
END

IF ~~ v7.2
SAY @181
IF ~~ + v7.4
END

IF ~~ v7.3
SAY @182
IF ~~ + v7.4
END

IF ~~ v7.3a
SAY @183
IF ~~ + v7.4
END

IF ~~ v7.4
SAY @184
= @185
++ @186 + v7.6
++ @187 + v7.5
++ @188 + v7.6
++ @189 + v7.6
END

IF ~~ v7.5
SAY @190
= @191
IF ~~ + v7.6
END

IF ~~ v7.6
SAY @192
= @193
= @194
= @195
++ @196 + v7.7
++ @197 + v7.8
++ @198 + v7.9
++ @199 + v7.10
END

IF ~~ v7.7
SAY @200
IF ~~ + v7.fin
END

IF ~~ v7.8
SAY @201
IF ~~ + v7.fin
END

IF ~~ v7.9
SAY @202
= @203
IF ~~ EXIT
END

IF ~~ v7.10
SAY @204
IF ~~ + v7.fin
END

IF ~~ v7.fin
SAY @205
= @206
IF ~~ EXIT
END

// 8. 

IF WEIGHT #-1 ~Global("RE_ValygarRomance","GLOBAL",16)~ v8
SAY @207 
++ @208 DO ~SetGlobal("RE_ValygarRomance","GLOBAL",17) RealSetGlobalTimer("RE_ValygarTimer","GLOBAL",3000)~ + v8.1
++ @209 DO ~SetGlobal("RE_ValygarRomance","GLOBAL",17) RealSetGlobalTimer("RE_ValygarTimer","GLOBAL",3000)~ + v8.1
++ @210 DO ~SetGlobal("RE_ValygarRomance","GLOBAL",17) RealSetGlobalTimer("RE_ValygarTimer","GLOBAL",3000)~ + v8.1
++ @211 DO ~SetGlobal("RE_ValygarRomance","GLOBAL",17) RealSetGlobalTimer("RE_ValygarTimer","GLOBAL",3000)~ + v8.0
END

IF ~~ v8.0
SAY @212
IF ~~ EXIT
END

IF ~~ v8.1
SAY @213
= @214
= @215
++ @216 + v8.4
++ @217 + v8.2
++ @218 + v8.3
++ @219 + v8.4
END

IF ~~ v8.2
SAY @220
IF ~~ + v8.4
END

IF ~~ v8.3
SAY @221
IF ~~ + v8.4
END

IF ~~ v8.4
SAY @222
++ @223 + v8.5
++ @224 + v8.5
++ @225 + v8.5
END

IF ~~ v8.5
SAY @226
= @227
IF ~~ EXIT
END

// 9. 

IF WEIGHT #-1 ~Global("RE_ValygarRomance","GLOBAL",18)~ v9
SAY @228 
++ @229 DO ~SetGlobal("RE_ValygarRomance","GLOBAL",19) RealSetGlobalTimer("RE_ValygarTimer","GLOBAL",3000)~ + v9.1
++ @230 DO ~SetGlobal("RE_ValygarRomance","GLOBAL",19) RealSetGlobalTimer("RE_ValygarTimer","GLOBAL",3000)~ + v9.1
++ @231 DO ~SetGlobal("RE_ValygarRomance","GLOBAL",19) RealSetGlobalTimer("RE_ValygarTimer","GLOBAL",3000)~ + v9.1
END

IF ~~ v9.1
SAY @232
= @233
= @234
++ @235 + v9.2
++ @236 + v9.2
++ @237 + v9.2
++ @238 + v9.2
END

IF ~~ v9.2
SAY @239
= @240
= @241
++ @242 + v9.4
++ @243 + v9.4
++ @244 + v9.4
++ @245 + v9.3
END

IF ~~ v9.3
SAY @246
IF ~~ + v9.4
END

IF ~~ v9.4
SAY @247
= @248 
= @249
= @22
IF ~~ EXIT
END

// 10. (outdoors, daylight)
 
IF WEIGHT #-1 ~Global("RE_ValygarRomance","GLOBAL",20)~ v10
SAY @250 
++ @229 DO ~SetGlobal("RE_ValygarRomance","GLOBAL",21) RealSetGlobalTimer("RE_ValygarTimer","GLOBAL",3000)~ + v10.1
++ @251 DO ~SetGlobal("RE_ValygarRomance","GLOBAL",21) RealSetGlobalTimer("RE_ValygarTimer","GLOBAL",3000)~ + v10.1
++ @252 DO ~SetGlobal("RE_ValygarRomance","GLOBAL",21) RealSetGlobalTimer("RE_ValygarTimer","GLOBAL",3000)~ + v10.1
++ @253 DO ~SetGlobal("RE_ValygarRomance","GLOBAL",21) RealSetGlobalTimer("RE_ValygarTimer","GLOBAL",3000)~ + v10.0
END

IF ~~ v10.0
SAY @254
IF ~~ DO ~SetGlobal("RE_Valygar","GLOBAL",100)~ EXIT
END

IF ~~ v10.1
SAY @255
++ @256 + v10.2
++ @257 + v10.4
++ @258 + v10.4
++ @259 + v10.3
++ @260 + v10.0
END

IF ~~ v10.2
SAY @261
IF ~~ + v10.4
END

IF ~~ v10.3
SAY @262
IF ~~ + v10.4
END

IF ~~ v10.4
SAY @263
++ @264 + v10.5
++ @265 + v10.5
++ @266 + v10.5
++ @267 + v10.0
++ @268 + v10.0
END

IF ~~ v10.5
SAY @269
= @270
IF ~~ EXIT
END

// 11. 

IF WEIGHT #-1 ~Global("RE_ValygarRomance","GLOBAL",22)~ v11
SAY @271 
++ @272 DO ~SetGlobal("RE_ValygarRomance","GLOBAL",23) RealSetGlobalTimer("RE_ValygarTimer","GLOBAL",1000)~ + v11.1
++ @273 DO ~SetGlobal("RE_ValygarRomance","GLOBAL",23) RealSetGlobalTimer("RE_ValygarTimer","GLOBAL",1000)~ + v11.0
++ @274 DO ~SetGlobal("RE_ValygarRomance","GLOBAL",23) RealSetGlobalTimer("RE_ValygarTimer","GLOBAL",1000)~ + v11.0
END

IF ~~ v11.0
SAY @275
++ @276 + v11.1
++ @277 + v11.00
++ @278 + v11.00
END

IF ~~ v11.00
SAY @279
IF ~~ DO ~SetGlobal("RE_ValygarRomance","GLOBAL",25)~ EXIT
END

IF ~~ v11.1
SAY @280
= @281
++ @282 + v11.2
++ @283 + v11.3
++ @284 + v11.4
++ @285 + v11.5
++ @286 + v11.00
END

IF ~~ v11.2
SAY @287
IF ~~ + v11.3
END

IF ~~ v11.3
SAY @288
++ @289 + v11.6
++ @290 + v11.6
++ @291 + v11.6
++ @292 + v11.4
END

IF ~~ v11.4
SAY @293
= @294
IF ~~ EXIT
END

IF ~~ v11.5
SAY @295
IF ~~ + v11.3
END

IF ~~ v11.6
SAY @296
= @297
IF ~~ EXIT
END

// 12.

IF WEIGHT #-1 ~Global("RE_ValygarRomance","GLOBAL",24)~ v12
SAY @298 
IF ~~ DO ~SetGlobal("RE_ValygarRomance","GLOBAL",25) RealSetGlobalTimer("RE_ValygarTimer","GLOBAL",2000)~ + v12.0
END

IF ~~ v12.0
SAY @299
++ @300 + v12.7
++ @301 + v12.8
++ @302 + v12.9
++ @303 + v12.10
END

IF ~~ v12.7
SAY @304
IF ~~ EXIT
END

IF ~~ v12.8
SAY @305
IF ~~ EXIT
END

IF ~~ v12.9
SAY @306
= @307
IF ~~ EXIT
END

IF ~~ v12.10
SAY @308
IF ~~ DO ~SetGlobal("RE_Valygar","GLOBAL",100)~ EXIT
END

// 13.
 
IF WEIGHT #-1 ~Global("RE_ValygarRomance","GLOBAL",26)~ v13
SAY @309 
++ @310 DO ~SetGlobal("RE_ValygarRomance","GLOBAL",27) RealSetGlobalTimer("RE_ValygarTimer","GLOBAL",3000)~ + v13.1
++ @311 DO ~SetGlobal("RE_ValygarRomance","GLOBAL",27) RealSetGlobalTimer("RE_ValygarTimer","GLOBAL",3000)~ + v13.1
++ @312 DO ~SetGlobal("RE_ValygarRomance","GLOBAL",27) RealSetGlobalTimer("RE_ValygarTimer","GLOBAL",3000)~ + v13.0
END

IF ~~ v13.0
SAY @313
IF ~~ DO ~SetGlobal("RE_Valygar","GLOBAL",100)~ EXIT
END

IF ~~ v13.1
SAY @314 
= @315
= @316
= @317
++ @318 + v13.2
++ @319 + v13.3
++ @320 + v13.3
++ @321 + v13.0
END

IF ~~ v13.2
SAY @322
IF ~~ + v13.3
END

IF ~~ v13.3
SAY @323
IF ~~ EXIT
END

// 14.

IF WEIGHT #-1 ~Global("RE_ValygarRomance","GLOBAL",28)~ v14
SAY @324 
++ @311 DO ~SetGlobal("RE_ValygarRomance","GLOBAL",29)~ + v14.0
++ @325 DO ~SetGlobal("RE_ValygarRomance","GLOBAL",29)~ + v14.1
++ @326 DO ~SetGlobal("RE_ValygarRomance","GLOBAL",29)~ + v14.1
++ @327 DO ~SetGlobal("RE_ValygarRomance","GLOBAL",29)~ + v14.2
END

IF ~~ v14.0
SAY @328
IF ~~ + v14.1
END

IF ~~ v14.1
SAY @329
IF ~~ EXIT
END

IF ~~ v14.2
SAY @330
IF ~~ DO ~SetGlobal("RE_Valygar","GLOBAL",100)~ EXIT
END

// 15. 

IF WEIGHT #-1 ~Global("RE_ValygarRomance","GLOBAL",30)~ v15
SAY @331 
IF ~~ DO ~SetGlobal("RE_ValygarRomance","GLOBAL",31)~ + v15.1
END

IF ~~ v15.1
SAY @332
++ @333 + v15.2
++ @334 + v15.3
++ @335 + v15.3
END

IF ~~ v15.2
SAY @336
IF ~~ + v15.3
END

IF ~~ v15.3
SAY @337
= @338
IF ~~ EXIT
END

// 16.

IF WEIGHT #-1 ~Global("RE_ValygarRomance","GLOBAL",32)~ v16
SAY @339 
IF ~~ DO ~SetGlobal("RE_ValygarRomance","GLOBAL",33) 
SetGlobal("RE_ValygarFlirt","GLOBAL",1)
GiveItemCreate("RE_Valam",Player1,1,0,0)~ + v16.0
END

IF ~~ v16.0
SAY @340
= @341
++ @229 + v16.2
++ @342 + v16.2
++ @343 + v16.1
END

IF ~~ v16.1
SAY @344 
IF ~~ + v16.2
END

IF ~~ v16.2
SAY @345
= @346
++ @347 + v16.4
++ @348 + v16.4
++ @349 + v16.3
++ @350 + v16.4
END

IF ~~ v16.3
SAY @351
IF ~~ + v16.4
END

IF ~~ v16.4
SAY @352
= @353
++ @354 + v16.7
++ @355 + v16.7
++ @356 + v16.6
END

IF ~~ v16.5
SAY @357
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ v16.6
SAY @358
IF ~~ + v16.7
END

IF ~~ v16.7
SAY @359
IF ~~ + v16.5
END

// 17.

IF WEIGHT #-1 ~Global("RE_ValygarRomance","GLOBAL",34)~ v17
SAY @360 
IF ~~ DO ~SetGlobal("RE_ValygarRomance","GLOBAL",35) 
RealSetGlobalTimer("RE_ValygarTimer","GLOBAL",1000)~ EXIT
END

// 18.

IF WEIGHT #-1 ~Global("RE_ValygarRomance","GLOBAL",36)~ v18
SAY @361 
= @362
IF ~~ DO ~SetGlobal("RE_ValygarRomance","GLOBAL",37)~ EXIT
END

END