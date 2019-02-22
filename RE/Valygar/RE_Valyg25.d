APPEND VALYG25J

// 1. Valygar recruited

IF WEIGHT #-1 ~Global("RE_ValygarToB","GLOBAL",2)~ v1
SAY @0 
++ @1 + v1.1
+ ~Race(Player1,ELF)~ + @2 + v1.2
++ @3 + v1.3
++ @4 + v1.4
++ @5 + v1.0
END

IF ~~ v1.0
SAY @6
IF ~~ DO ~IncrementGlobal("RE_ValygarToB","GLOBAL",1) IncrementGlobal("RE_ValygarToBNo","GLOBAL",1) RealSetGlobalTimer("RE_ValygarToBTimer","GLOBAL",2000)~ EXIT
IF ~GlobalGT("RE_ValygarToBNo","GLOBAL",2)~ DO ~SetGlobal("RE_ValygarToB","GLOBAL",999)~ EXIT
END

IF ~~ v1.end
SAY @7
IF ~~ DO ~SetGlobal("RE_ValygarToB","GLOBAL",999)~ EXIT
END

IF ~~ v1.1
SAY @8
IF ~~ + v1.5
END

IF ~~ v1.2
SAY @9
IF ~~ + v1.5
END

IF ~~ v1.3
SAY @10
= @11
IF ~~ + v1.5
END

IF ~~ v1.4
SAY @12
IF ~~ + v1.5
END

IF ~~ v1.5
SAY @13
= @14
++ @15 + v1.6
++ @16 + v1.7
++ @17 + v1.8
++ @18 + v1.9
END

IF ~~ v1.6
SAY @19
IF ~~ + v1.10
END

IF ~~ v1.7
SAY @20
IF ~~ + v1.10
END

IF ~~ v1.8
SAY @21
IF ~~ + v1.10
END

IF ~~ v1.9
SAY @22
IF ~~ + v1.10
END

IF ~~ v1.10
SAY @23
++ @24 + v1.11
++ @25 + v1.12
++ @26 + v1.11
END

IF ~~  v1.11
SAY @27
IF ~~ DO ~IncrementGlobal("RE_ValygarToB","GLOBAL",1)~ EXIT
END

IF ~~ v1.12
SAY @28
IF ~~ + v1.11
END

// 2. After entering Saradush

IF WEIGHT #-1 ~Global("RE_ValygarToB","GLOBAL",4)~ v2
SAY @29 
++ @30 + v2.1
++ @31 + v2.2
++ @32 + v2.3
++ @5 + v1.0
END

IF ~~ v2.1
SAY @33
IF ~~ + v2.4
END

IF ~~ v2.2
SAY @34
IF ~~ + v2.4
END

IF ~~ v2.3
SAY @35
IF ~~ + v2.4
END

IF ~~ v2.4
SAY @36
= @37
= @38
++ @39 + v2.5
++ @40 + v2.6
++ @41 + v2.7
END

IF ~~ v2.5
SAY @42
IF ~~ + v2.8
END

IF ~~ v2.6
SAY @43
IF ~~ + v2.8
END

IF ~~ v2.7
SAY @44 
IF ~~ + v2.8
END

IF ~~ v2.8
SAY @45
++ @46 + v2.9
++ @47 + v2.10
++ @48 + v2.11
++ @49 + v2.12
++ @50 + v1.end
END

IF ~~ v2.9
SAY @51
IF ~~ + v2.12
END

IF ~~ v2.10
SAY @52
IF ~~ + v2.12
END

IF ~~ v2.11
SAY @53
IF ~~ + v2.12
END

IF ~~ v2.12
SAY @54
IF ~~ DO ~IncrementGlobal("RE_ValygarToB","GLOBAL",1)~ EXIT
END

// 3. Outside of Saradush

IF WEIGHT #-1 ~Global("RE_ValygarToB","GLOBAL",6)~ v3
SAY @55 
++ @56 + v3.1
++ @57 + v3.1
++ @58 + v3.2
++ @59 + v1.0
++ @60 + v1.end
END

IF ~~ v3.1
SAY @61
IF ~~ + v3.2
END

IF ~~ v3.2
SAY @62
++ @63 + v3.3
++ @64 + v3.4
++ @65 + v3.5
END

IF ~~ v3.3
SAY @66
++ @67 + v3.3a
++ @68 + v3.3a
++ @69 + v3.3a
END

IF ~~ v3.3a
SAY @70
= @71
IF ~~ + v3.5
END

IF ~~ v3.4
SAY @72
= @73
= @74 
IF ~~ + v3.5
END

IF ~~ v3.5
SAY @75
++ @76 + v3.6
++ @77 + v3.7
++ @78 + v3.8
END

IF ~~ v3.6
SAY  @79
IF ~~ DO ~IncrementGlobal("RE_ValygarToB","GLOBAL",1)~ EXIT
END

IF ~~ v3.7
SAY @80
++ @6 + v3.7a
++ @81 + v3.7a
++ @82 + v3.7b
END

IF ~~ v3.7a
SAY @83
IF ~~ + v3.6
END

IF ~~ v3.7b
SAY @84
IF ~~ + v3.6
END

IF ~~ v3.8
SAY @85
= @86
IF ~~ + v3.6
END

// 4. After Gorion's ghost

IF WEIGHT #-1 ~Global("RE_ValygarToB","GLOBAL",8)~ v4
SAY @87 
++ @88 + v4.1
++ @89 + v4.2
++ @90 + v4.3
++ @5 + v1.0
END

IF ~~ v4.1
SAY @91
IF ~~ + v4.4
END

IF ~~ v4.2
SAY @92
IF ~~ + v4.4
END

IF ~~ v4.3
SAY @93
IF ~~ + v4.4
END

IF ~~ v4.4
SAY @94
= @95
= @96
++ @97 + v4.5
++ @98 + v4.5
++ @99 + v4.6
END

IF ~~ v4.5
SAY @100
IF ~~ + v4.6
END

IF ~~ v4.6
SAY @101
++ @102 + v4.7
++ @103 + v4.8
++ @104 + v4.7
++ @105 + v4.9
++ @106 + v1.end
END

IF ~~ v4.7
SAY @107
IF ~~ + v4.10
END

IF ~~ v4.8
SAY @108
IF ~~ + v4.10
END

IF ~~ v4.9
SAY @109
IF ~~ + v4.10
END

IF ~~ v4.10
SAY @110
IF ~~ DO ~IncrementGlobal("RE_ValygarToB","GLOBAL",1) RealSetGlobalTimer("RE_ValygarToBTimer","GLOBAL",2000)~ EXIT
END

// 5.

IF WEIGHT #-1 ~Global("RE_ValygarToB","GLOBAL",10)~ v5
SAY @111 
++ @112 + v5.2
++ @113 + v5.1
++ @114 + v5.1
++ @5 + v1.0
END

IF ~~ v5.1
SAY @70
= @115
IF ~~ + v5.2
END

IF ~~ v5.2
SAY @116
++ @82 + v5.3
++ @117 + v5.3
++ @118 + v5.3
++ @119 + v5.3
END

IF ~~ v5.3
SAY @120
= @121
= @122
++ @123 + v5.4
++ @124 + v5.5
++ @125 + v5.6
++ @126 + v5.7
++ @127 + v1.end
END

IF ~~ v5.4
SAY @128
IF ~~ + v5.8
END

IF ~~ v5.5
SAY @129
IF ~~ + v5.8
END

IF ~~ v5.6
SAY @130
IF ~~ + v5.8
END

IF ~~ v5.7
SAY @131
IF ~~ + v5.8
END

IF ~~ v5.8
SAY @132
= @133
= @134
++ @135 + v5.9
++ @136 + v5.10
++ @137 + v5.11
++ @138 + v5.11a
++ @139 + v5.12
++ @140 + v5.12
++ @141 + v1.end
END

IF ~~ v5.9
SAY @142
= @143
IF ~~ + v5.12
END

IF ~~ v5.10
SAY @144
IF ~~ + v5.12
END

IF ~~ v5.11
SAY @145 
IF ~~ + v5.12
END

IF ~~ v5.11a
SAY @146 
IF ~~ + v5.12
END

IF ~~ v5.12
SAY @147
= @148
= @149
IF ~~ DO ~IncrementGlobal("RE_ValygarToB","GLOBAL",1) RealSetGlobalTimer("RE_ValygarToBTimer","GLOBAL",2000)~ EXIT
END

// 6.

IF WEIGHT #-1 ~Global("RE_ValygarToB","GLOBAL",12)~ v6
SAY @150 
= @151
++ @152 + v6.1
++ @153 + v6.2
++ @154 + v6.1
++ @155 + v1.0
END

IF ~~ v6.1
SAY @156
IF ~~ + v6.3
END

IF ~~ v6.2
SAY @157
IF ~~ + v6.3
END

IF ~~ v6.3
SAY @158
= @159
IF ~~ DO ~GiveItemCreate("RE_Valyg",Player1,1,0,0)~ + v6.3a
END

IF ~~ v6.3a
SAY @160
++ @161 + v6.4
++ @162 + v6.4
++ @163 + v6.4
END

IF ~~ v6.4
SAY @164
= @165
= @166
++ @167 + v6.5
++ @168 + v6.6
++ @169 + v6.7
++ @49 + v6.8
++ @170 + v1.end
END

IF ~~ v6.5
SAY @70
= @171
IF ~~ + v6.8
END

IF ~~ v6.6
SAY @172
= @173
= @174
IF ~~ + v6.8
END

IF ~~ v6.7
SAY @175
= @176
IF ~~ + v6.8
END

IF ~~ v6.8
SAY @177
= @178
++ @179 + v6.9
++ @180 + v6.10
++ @181 + v1.end
END

IF ~~ v6.9
SAY @182
IF ~~ DO ~IncrementGlobal("RE_ValygarToB","GLOBAL",1) RealSetGlobalTimer("RE_ValygarToBTimer","GLOBAL",2000)~ EXIT
END

IF ~~ v6.10
SAY @183
IF ~~ DO ~IncrementGlobal("RE_ValygarToB","GLOBAL",1) RealSetGlobalTimer("RE_ValygarToBTimer","GLOBAL",2000)~ EXIT
END

// 7.
 
IF WEIGHT #-1 ~Global("RE_ValygarToB","GLOBAL",14)~ v7
SAY @184 
= @185
++ @186 + v7.1
++ @187 + v7.2
++ @5 + v1.0
END

IF ~~ v7.1
SAY @188
IF ~~ + v7.3
END

IF ~~ v7.2
SAY @189
IF ~~ + v7.3
END

IF ~~ v7.3
SAY @190
= @191
++ @192 + v7.4
++ @193 + v7.5
++ @194 + v7.6
++ @195 + v7.7
END

IF ~~ v7.4
SAY @196
IF ~~ + v7.7
END

IF ~~ v7.5
SAY @197
IF ~~ + v7.7
END

IF ~~ v7.6
SAY @198
IF ~~ + v7.7
END

IF ~~ v7.7
SAY @199
= @200
++ @201 + v7.8
++ @202 + v7.10
++ @203 + v7.9
END

IF ~~ v7.8
SAY @204
IF ~~ + v7.10
END

IF ~~ v7.9
SAY @205
IF ~~ + v7.10
END

IF ~~ v7.10
SAY @206
= @207
++ @208 + v7.11
++ @209 + v7.12
++ @210 + v7.13
++ @211 + v1.end
END

IF ~~ v7.11
SAY @212
IF ~~ + v7.12
END

IF ~~ v7.12
SAY @213
IF ~~ DO ~IncrementGlobal("RE_ValygarToB","GLOBAL",1) RealSetGlobalTimer("RE_ValygarToBTimer","GLOBAL",2000)~ EXIT
END

IF ~~ v7.13
SAY @214
IF ~~ + v7.12
END

// 8.

IF WEIGHT #-1 ~Global("RE_ValygarToB","GLOBAL",16)~ v8
SAY @215 
++ @216 + v8.1
++ @217 + v8.1
++ @218 + v1.end
END

IF ~~ v8.1
SAY @219
= @220
++ @221 + v8.2
++ @222 + v8.2
++ @223 + v8.3
++ @224 + v8.4
END

IF ~~ v8.2
SAY @225
= @226
IF ~~ + v8.3
END

IF ~~ v8.3
SAY @227
IF ~~ + v8.5
END

IF ~~ v8.4
SAY @228
IF ~~ + v8.5
END

IF ~~ v8.5
SAY @229
= @230
= @231
++ @232 + v8.6
++ @233 + v8.7
++ @234 + v8.8
++ @235 + v8.9
END

IF ~~ v8.6
SAY @236
IF ~~ + v8.10
END

IF ~~ v8.7
SAY @237
IF ~~ + v8.10
END

IF ~~ v8.8
SAY @238
IF ~~ + v8.10
END

IF ~~ v8.9
SAY @239
IF ~~ + v8.10
END

IF ~~ v8.10
SAY @240
IF ~~ DO ~IncrementGlobal("RE_ValygarToB","GLOBAL",1)~ EXIT
END

// 9. At rest

IF WEIGHT #-1 ~Global("RE_ValygarToB","GLOBAL",18)~ v9
SAY @241 
++ @242 + v9.1
++ @243 + v9.0
++ @244 + v9.end
END

IF ~~ v9.0
SAY @245
IF ~~ DO ~IncrementGlobal("RE_ValygarToB","GLOBAL",1) RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END

IF ~~ v9.1
SAY @246
= @247
= @248
= @249
++ @250 + v9.2
++ @251 + v9.3
++ @252 + v9.4
++ @253 + v9.5
++ @254 + v9.end
END

IF ~~ v9.end
SAY @255
IF ~~ DO ~SetGlobal("RE_ValygarToB","GLOBAL",999) RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END

IF ~~ v9.2
SAY @256
IF ~~ DO ~IncrementGlobal("RE_ValygarToB","GLOBAL",1) RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END

IF ~~ v9.3
SAY @257
++ @258 + v9.6
++ @259 + v9.7
++ @260 + v9.2
END

IF ~~ v9.4
SAY @261
IF ~~ + v9.8
END

IF ~~ v9.5
SAY @262
IF ~~ + v9.8
END

IF ~~ v9.6
SAY @263
IF ~~ DO ~IncrementGlobal("RE_ValygarToB","GLOBAL",1) RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END

IF ~~ v9.7
SAY @264
IF ~~ + v9.8
END

IF ~~ v9.8
SAY @265
IF ~~ DO ~IncrementGlobal("RE_ValygarToB","GLOBAL",1) SetGlobal("RE_ValygarSex","GLOBAL",1) RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END

// 10. After the Five are dead

IF WEIGHT #-1 ~Global("RE_ValygarToB","GLOBAL",20)~ v10
SAY @266 
++ @267 + v10.1
++ @268 + v10.2
++ @269 + v10.3
END

IF ~~ v10.1
SAY @270
IF ~~ + v10.4
END

IF ~~ v10.2
SAY @271
IF ~~ + v10.4
END

IF ~~ v10.3
SAY @272
IF ~~ + v10.4
END

IF ~~ v10.4
SAY @273
= @274
++ @275 + v10.5
++ @276 + v10.5
++ @277 + v10.6
++ @278 + v10.6
END

IF ~~ v10.5
SAY @279
IF ~~ DO ~SetGlobal("RE_ValygarEscape","GLOBAL",1) SetGlobal("ValygarRomanceActive","GLOBAL",2)~ + v10.7 // this variable is set to trigger the Throne of Bhaal's romantic commentary written by Gaider
END

IF ~~ v10.6
SAY @280
= @281
IF ~~ DO ~SetGlobal("RE_ValygarToB","GLOBAL",999)~ EXIT
END

IF ~~ v10.7
SAY @282
= @283
++ @284 + v10.8
++ @285 + v10.9
++ @286 + v10.8
END

IF ~~ v10.8
SAY @287
= @288
IF ~~ DO ~IncrementGlobal("RE_ValygarToB","GLOBAL",1)~ EXIT
IF ~Global("AnomenRomanceActive","GLOBAL",2)~ DO ~IncrementGlobal("RE_ValygarToB","GLOBAL",1) SetGlobal("AnomenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ v10.9
SAY @289
IF ~~ + v10.8
END

END
