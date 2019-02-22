I_C_T2 TRHMER01 37 RE_BusyaMeet
== TRHMER01 IF ~Gender(Player1,MALE)~ THEN @0
END

I_C_T2 TRHMER01 13 RE_BusyaMeet
== TRHMER01 IF ~Gender(Player1,MALE)~ THEN @0
END

APPEND TRHMER01

IF WEIGHT #-1 ~Global("RE_BusyaTalked","GLOBAL",1)~ b1
SAY @1
++ @2 + b1.1
++ @3 + b1.2
++ @4 + b2.3
END

IF ~~ b1.1
SAY @5
IF ~~ EXIT
END

IF ~~ b1.2
SAY @6
= @7
++ @8 + b2.1
++ @9 + b2.2
++ @10 + b2.3
END

IF ~~ b2.1
SAY @11
IF ~~ EXIT
END

IF ~~ b2.2
SAY @12
++ @13 + b2.1
++ @14 + b1.3
++ @15 + faith1
END

IF ~~ faith1
SAY @16
IF ~~ + helpyou1
END

IF ~~ helpyou1
SAY @17
++ @18 + reward1
++ @19 + reward2
++ @20 + reward3
++ @21 + reward4
++ @22 + reward5
++ @23 + date3
++ @24 + b1.1
END

IF ~~ b2.3
SAY @25
++ @18 + reward1
++ @19 + reward2
++ @20 + reward3
++ @21 + reward4
++ @22 + reward5
++ @23 + date3
++ @26 + b1.1
END

IF ~~ b1.3 
SAY @27
++ @28 + b3.1
++ @29 + b3.2
++ @30 + b3.3
END

IF ~~ b3.1 
SAY @31 
IF ~~ + helpyou1
END

IF ~~ b3.2
SAY @32
IF ~~ + helpyou1
END

IF ~~ b3.3
SAY @33
IF ~~ + helpyou1
END

IF ~~ reward1
SAY @34
= @35
++ @36 + merchant1
++ @37 + merchant2
++ @38 + reward5
END

IF ~~ merchant1
SAY @39
IF ~~ + helpyou1
END

IF ~~ merchant2
SAY @40
IF ~~ + helpyou1
END

IF ~~ reward2
SAY @41
= @42
= @43
++ @44 + relationship1
++ @45 + relationship2
++ @46 + relationship3
END

IF ~~ relationship1
SAY @47
= @48
IF ~~ EXIT
END

IF ~~ relationship2
SAY @49
IF ~~ + helpyou1
END

IF ~~ relationship3
SAY @50
= @51
IF ~~ + helpyou1
END

IF ~~ reward3
SAY @52
=  @53
++ @54 + greedy1
++ @55 + greedy2
++ @56 + greedy3
++ @57 + greedy4
++ @58 + greedy5
++ @59 + reward5
END

IF ~~ greedy1
SAY @60
IF ~~ + helpyou1
END
 
IF ~~ greedy2
SAY @61
IF ~~ + greedy1.go
END

IF ~~ greedy3
SAY @62
= @63
IF ~~ + greedy1.go
END

IF ~~ greedy4
SAY @64
IF ~~ + greedy1.go
END

IF ~~ greedy5
SAY @65
= @66
IF ~~ DO ~EscapeArea() SetGlobal("RE_BusyaTalked","GLOBAL",10)~ EXIT
END

IF ~~ greedy1.go
SAY @67
IF ~~ DO ~EscapeArea() SetGlobal("RE_BusyaTalked","GLOBAL",10)~ EXIT
END

IF ~~ reward4 
SAY @68
=  @69
= @70
++ @71 + rescue1
++ @72 + rescue1
++ @73 + rescue2
++ @74 + rescue3
END

IF ~~ rescue1 
SAY @75
= @76
= @77
IF ~~ + helpyou1
END

IF ~~ rescue2 
SAY @78
++ @79 + goal
++ @80 + rescue1
END

IF ~~ rescue3
SAY @81
= @82
IF ~~ EXIT
END

IF ~~ goal
SAY @83
= @84
= @85
IF ~~ DO ~EscapeArea() SetGlobal("RE_BusyaTalked","GLOBAL",10)~ EXIT
END

IF ~~ reward5
SAY @86
= @87
++ @88 + date1
++ @89 + date2
++ @90 + date3
++ @91 + okay
END

IF ~~ date1
SAY @92
IF ~~ DO ~SetGlobal("RE_BusyaFlirt","GLOBAL",1)
SetGlobal("RE_BusyaTalked","GLOBAL",2)
EscapeAreaMove("AR2010",811,534,0)~ EXIT
END

IF ~~ date2
SAY @93
= @94
IF ~~ DO ~SetGlobal("RE_BusyaFlirt","GLOBAL",1)
SetGlobal("RE_BusyaTalked","GLOBAL",3)
EscapeAreaMove("AR2000",1378,3166,0)~ EXIT
END

IF ~~ date3
SAY @95
= @96
IF ~~ DO ~SetGlobal("RE_BusyaFlirt","GLOBAL",1) EscapeArea() SetGlobal("RE_BusyaTalked","GLOBAL",10)~ EXIT
END

IF ~~ okay
SAY @97 
IF ~~ + helpyou1
END

// Tavern 1

IF WEIGHT #-1 ~Global("RE_BusyaTalked","GLOBAL",2)~ tavern1
SAY @98
= @99
++ @100 + flirt
++ @101 + settle
++ @102 + city
++ @103 + country
++ @104 + shame
END

IF ~~ flirt
SAY @105
++ @106 + drink
++ @107 + dance
++ @108 + bed
END

IF ~~ drink
SAY @109
++ @110 + flirt2
++ @111 + sorry
++ @112 + bed
END

IF ~~ dance
SAY @113
++ @114 + bed
++ @115 + agreement
++ @116 + sorry
END

IF ~~ agreement
SAY @117
++ @118 + goodnight
++ @119 + bed
END

IF ~~goodnight
SAY @120
= @121
IF ~~ DO ~EscapeArea() SetGlobal("RE_BusyaTalked","GLOBAL",10)~ EXIT
END

IF ~~ flirt2
SAY @122
= @123
++ @124 + dance
++ @125 + talking
++ @126 + bed
++ @111 + sorry
END

IF ~~ talking
SAY @127
= @128
++ @129 + bed
++ @130 + bed
++ @131 + sorry
END

IF ~~ settle 
SAY @132
= @133
++ @134 + future
++ @135 + vagrant
++ @136 + sorry
END

IF ~~ future
SAY @137
++ @129 + bed
++ @130 + bed
++ @131 + sorry
END

IF ~~ vagrant
SAY @138
= @139
= @140
++ @141 + bed
++ @142 + travelling
++ @143 + sorry
END

IF ~~ travelling
SAY @144
++ @145 + bed
++ @146 + sorry
END

IF ~~ sorry
SAY @147
= @148
IF ~~ DO ~EscapeArea() SetGlobal("RE_BusyaTalked","GLOBAL",10)~ EXIT
END

IF ~~ city
SAY @149
= @150
++ @151 + bed
++ @152 + sorry
++ @153 + drink
++ @154 + dance
END

IF ~~ shame
SAY @155
IF ~~ + sorry
END

IF ~~ country
SAY @156
= @157
++ @158 + vagrant
++ @159 + bed
END

IF ~~ bed 
SAY @160
IF ~~ DO ~SetGlobal("RE_BusyaSex","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Bus3")~ EXIT

IF ~InParty("Aerie") OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_BusyaSexAerie","GLOBAL",1) SetGlobal("RE_BusyaSex","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Bus3")~ EXIT
IF ~InParty("Jaheira") OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_BusyaSexJaheira","GLOBAL",1) SetGlobal("RE_BusyaSex","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Bus3")~ EXIT
IF ~InParty("Viconia") OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_BusyaSexViconia","GLOBAL",1) SetGlobal("RE_BusyaSex","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Bus3")~ EXIT

IF ~InParty("Aerie") OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2) 
InParty("Jaheira") OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_BusyaSexAerie","GLOBAL",1) SetGlobal("RE_BusyaSexJaheira","GLOBAL",1) SetGlobal("RE_BusyaSex","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Bus3")~ EXIT
IF ~InParty("Aerie") OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2) 
InParty("Viconia") OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_BusyaSexAerie","GLOBAL",1) SetGlobal("RE_BusyaSexViconia","GLOBAL",1) SetGlobal("RE_BusyaSex","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Bus3")~ EXIT
IF ~InParty("Jaheira") OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2)
InParty("Viconia") OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_BusyaSexJaheira","GLOBAL",1) SetGlobal("RE_BusyaSexViconia","GLOBAL",1) SetGlobal("RE_BusyaSex","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Bus3")~ EXIT

IF ~InParty("Aerie") OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2) 
InParty("Jaheira") OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2)
InParty("Viconia") OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_BusyaSexAerie","GLOBAL",1) SetGlobal("RE_BusyaSexJaheira","GLOBAL",1) SetGlobal("RE_BusyaSexViconia","GLOBAL",1) SetGlobal("RE_BusyaSex","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Bus3")~ EXIT

END

// Gates

IF WEIGHT #-1 ~Global("RE_BusyaTalked","GLOBAL",3)~ gates
SAY @161
= @162
++ @163 + idea1
++ @164 + idea1
++ @165 + idea3
END

IF ~~ idea1
SAY @166
= @167
IF ~~ + idea4
END

IF ~~ idea3
SAY @168
IF ~~ + show_sights1
END

IF ~~ idea4
SAY @169
++ @170 + oflirt1
++ @171 + business
++ @172 + simple
END

IF ~~ oflirt1
SAY @173
IF ~~ + show_sights1
END

IF ~~ show_sights1
SAY @174
++ @175 + statue
++ @176 + lead
++ @177 + home
END

IF ~~ business
SAY @178
IF ~~ + show_sights1
END

IF ~~ simple 
SAY @179
= @180 
IF ~~ + show_sights1
END

IF ~~ statue
SAY @181
= @182
++ @183 + sorry2
++ @184 + home
++ @185 + lead
END

IF ~~ sorry2
SAY @186
= @187
IF ~~ DO ~EscapeArea() SetGlobal("RE_BusyaTalked","GLOBAL",10)~ EXIT
END

IF ~~ lead
SAY @188
= @189
= @190
= @191
++ @192 + temple
++ @193 + Take_Park1
++ @194 + inn
END

IF ~~ Take_Park1
SAY @195 
IF ~~ DO ~SetGlobal("RE_BusyaTalked","GLOBAL",4)
ClearAllActions()
StartCutSceneMode()
StartCutScene("RE_Bus1")~ EXIT
END

IF ~~ inn
SAY @196 
IF ~~ DO ~SetGlobal("RE_BusyaTalked","GLOBAL",5)
ClearAllActions()
StartCutSceneMode()
StartCutScene("RE_Bus2")~ EXIT
END

IF ~~ temple
SAY @197
= @198
= @199
++ @200 + tales
++ @201 + b.other1
++ @202 + b.other1
++ @203 + b.other1
END

IF ~~ tales
SAY @204
IF ~~ + tales1
END

IF ~~ tales1
SAY @205
++ @184 + home
++ @206 + inn3
END

IF ~~ b.other1
SAY @207
IF ~~ + tales1
END

IF ~~ inn3
SAY @208
++ @209 + accompany
++ @210 + sorry2
END

IF ~~ accompany
SAY @211
IF ~~ DO ~SetGlobal("RE_BusyaTalked","GLOBAL",5)
ClearAllActions()
StartCutSceneMode()
StartCutScene("RE_Bus2")~ EXIT
END

// Tavern 2

IF WEIGHT #-1 ~Global("RE_BusyaTalked","GLOBAL",5)~ inn2
SAY @212
++ @100 + flirt
++ @101 + settle
++ @102 + city
++ @103 + country
++ @104 + shame
END

// Park

IF WEIGHT #-1 ~Global("RE_BusyaTalked","GLOBAL",4)~ park
SAY @213
= @214
++ @215 + flirt3
++ @216 + nice
++ @217 + inn3
END

IF ~~ flirt3
SAY @218
++ @219 + inn4
++ @220 + home
++ @221 + sorry2
END

IF ~~ inn4
SAY @222
IF ~~ DO ~SetGlobal("RE_BusyaTalked","GLOBAL",5)
ClearAllActions()
StartCutSceneMode()
StartCutScene("RE_Bus2")~ EXIT
END
 
IF ~~ nice
SAY @223
++ @224 + pride
++ @225 + home
++ @226 + sorry2
++ @227 + locations
END

IF ~~ pride
SAY @228
= @229
++ @230 + locations
++ @231 + home
++ @232 + sorry2
END

IF ~~ locations
SAY @233
= @234
++ @235 + gorion
++ @236 + gate
++ @237 + nashkel
++ @238 + beregost
++ @239 + gullykin
++ @240 + beard
++ @241 + athkatla
++ @242 + imnesvale
++ @243 + vagrant2
END

IF ~~ vagrant2
SAY @138
= @244
= @140
++ @245 + home
++ @142 + travelling2
++ @246 + sorry2
END

IF ~~ travelling2
SAY @144
++ @247 + home
++ @146 + sorry2
END

IF ~~ gorion
SAY @248
= @249
++ @250 + sad
++ @251 + future2
END

IF ~~ sad
SAY @252
++ @253 + home
++ @254 + inn4
++ @255 + sorry2
END

IF ~~ future2
SAY @256
++ @253 + home
++ @254 + inn4
++ @255 + sorry2
END

IF ~~ gate
SAY @257 
IF ~~ + future2
END

IF ~~ nashkel
SAY @258
IF ~~ + future2
END

IF ~~ beregost
SAY @259 
IF ~~ + future2
END

IF ~~ gullykin
SAY @260
IF ~~ + future2
END

IF ~~ beard 
SAY @261
IF ~~ + future2
END

IF ~~ athkatla
SAY @262
IF ~~ + future2
END
 
IF ~~ imnesvale
SAY @263
IF ~~ + future2
END

IF ~~ home
SAY @264
IF ~~ DO ~SetGlobal("RE_BusyaSex","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Bus3")~ EXIT

IF ~InParty("Aerie") OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_BusyaSexAerie","GLOBAL",1) SetGlobal("RE_BusyaSex","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Bus3")~ EXIT
IF ~InParty("Jaheira") OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_BusyaSexJaheira","GLOBAL",1) SetGlobal("RE_BusyaSex","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Bus3")~ EXIT
IF ~InParty("Viconia") OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_BusyaSexViconia","GLOBAL",1) SetGlobal("RE_BusyaSex","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Bus3")~ EXIT

IF ~InParty("Aerie") OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2) 
InParty("Jaheira") OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_BusyaSexAerie","GLOBAL",1) SetGlobal("RE_BusyaSexJaheira","GLOBAL",1) SetGlobal("RE_BusyaSex","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Bus3")~ EXIT
IF ~InParty("Aerie") OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2) 
InParty("Viconia") OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_BusyaSexAerie","GLOBAL",1) SetGlobal("RE_BusyaSexViconia","GLOBAL",1) SetGlobal("RE_BusyaSex","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Bus3")~ EXIT
IF ~InParty("Jaheira") OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2)
InParty("Viconia") OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_BusyaSexJaheira","GLOBAL",1) SetGlobal("RE_BusyaSexViconia","GLOBAL",1) SetGlobal("RE_BusyaSex","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Bus3")~ EXIT

IF ~InParty("Aerie") OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2) 
InParty("Jaheira") OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2)
InParty("Viconia") OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_BusyaSexAerie","GLOBAL",1) SetGlobal("RE_BusyaSexJaheira","GLOBAL",1) SetGlobal("RE_BusyaSexViconia","GLOBAL",1) SetGlobal("RE_BusyaSex","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Bus3")~ EXIT

END

END