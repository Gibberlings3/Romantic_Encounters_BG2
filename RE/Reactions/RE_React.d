APPEND AERIEJ 

// Ada

IF WEIGHT #-1 ~Global("RE_AdaFlirtAerie","GLOBAL",1)~ RE_AerieAda1
SAY @0 
++ @1 + RE_AerieAda1.1
++ @2 + RE_AerieAda1.2
+ ~!Global("RE_AdaSex","GLOBAL",1)~ + @3 + RE_AerieAda1.3
+ ~Global("RE_AdaSex","GLOBAL",1)~ + @3 + RE_AerieAda1.4
END

IF ~~ RE_AerieAda1.1
SAY @4
++ @5 + RE_AerieAda1.3
++ @6 + RE_AerieAda1.2
END

IF ~~ RE_AerieAda1.2
SAY @7
IF ~~ DO ~SetGlobal("AerieRomanceActive","GLOBAL",3) SetGlobal("RE_AdaFlirtAerie","GLOBAL",2)~ EXIT
END

IF ~~ RE_AerieAda1.3
SAY @8
IF ~~ DO ~SetGlobal("RE_AdaFlirtAerie","GLOBAL",2)~ EXIT
END

IF ~~ RE_AerieAda1.4
SAY @9
IF ~~ DO ~SetGlobal("AerieRomanceActive","GLOBAL",3) SetGlobal("RE_AdaFlirtAerie","GLOBAL",2)~ EXIT
END

// Bodhi

IF WEIGHT #-1 ~Global("RE_BodhiFlirtAerie","GLOBAL",1)~ RE_AerieBodhi1
SAY @10 
++ @11 + RE_AerieBodhi1.1
++ @12 + RE_AerieBodhi1.2
+ ~!Global("RE_BodhiSex","GLOBAL",1)~ + @13 + RE_AerieBodhi1.3
+ ~Global("RE_BodhiSex","GLOBAL",1)~ + @14 + RE_AerieBodhi1.2
END

IF ~~ RE_AerieBodhi1.1
SAY @15
++ @16 + RE_AerieBodhi1.4
++ @17 + RE_AerieBodhi1.2
END

IF ~~ RE_AerieBodhi1.2
SAY @18
IF ~~ DO ~SetGlobal("AerieRomanceActive","GLOBAL",3) SetGlobal("RE_BodhiFlirtAerie","GLOBAL",2)~ EXIT
END

IF ~~ RE_AerieBodhi1.3
SAY @19
IF ~~ DO ~SetGlobal("RE_BodhiFlirtAerie","GLOBAL",2)~ EXIT
END

IF ~~ RE_AerieBodhi1.4
SAY @20
IF ~~ DO ~SetGlobal("RE_BodhiFlirtAerie","GLOBAL",2)~ EXIT
END

// Busya

IF WEIGHT #-1 ~Global("RE_BusyaSexAerie","GLOBAL",1)~ RE_AerieBusya1
SAY @21 
++ @22 + RE_AerieBusya1.2
++ @23 + RE_AerieBusya1.1
++ @24 + RE_AerieBusya1.1
++ @25 + RE_AerieBusya1.2
END

IF ~~ RE_AerieBusya1.1
SAY @26
IF ~~ DO ~SetGlobal("AerieRomanceActive","GLOBAL",3) SetGlobal("RE_BusyaSexAerie","GLOBAL",2)~ EXIT
END

IF ~~ RE_AerieBusya1.2
SAY @27
= @28
IF ~~ DO ~SetGlobal("RE_BusyaSexAerie","GLOBAL",2)~ EXIT
END

// Chanelle

IF WEIGHT #-1 ~Global("RE_ChanelleFlirtAerie","GLOBAL",1)~ RE_AerieChanelle1
SAY @29 
++ @30 + RE_AerieChanelle1.1
++ @31 + RE_AerieChanelle1.1
++ @32 + RE_AerieChanelle1.2
END

IF ~~ RE_AerieChanelle1.1
SAY @33
IF ~~ DO ~SetGlobal("RE_ChanelleFlirtAerie","GLOBAL",2)~ EXIT
END

IF ~~ RE_AerieChanelle1.2
SAY @34
IF ~~ DO ~SetGlobal("AerieRomanceActive","GLOBAL",3) SetGlobal("RE_ChanelleFlirtAerie","GLOBAL",2)~ EXIT
END

// Haer'Dalis

IF WEIGHT #-1 ~Global("RE_HaerAerie","GLOBAL",2)~ RE_Aerie1
SAY @35 
++ @36 DO ~SetGlobal("RE_HaerAerie","GLOBAL",3)~ + RE_Aerie1.1
++ @37 DO ~SetGlobal("RE_HaerAerie","GLOBAL",3)~ + RE_Aerie1.2
++ @38 DO ~SetGlobal("RE_HaerAerie","GLOBAL",3)~ + RE_Aerie1.3
++ @39 DO ~SetGlobal("RE_HaerAerie","GLOBAL",3)~ + RE_Aerie1.4
END

IF ~~ RE_Aerie1.1
SAY @40
IF ~~ + RE_Aerie1.5
END

IF ~~ RE_Aerie1.2
SAY @41
IF ~~ + RE_Aerie1.5
END

IF ~~ RE_Aerie1.3
SAY @42
IF ~~ + RE_Aerie1.5
END

IF ~~ RE_Aerie1.4
SAY @43
IF ~~ + RE_Aerie1.5
END

IF ~~ RE_Aerie1.5
SAY @44
IF ~~ EXIT
END

// Ilona

IF WEIGHT #-1 ~Global("RE_IlonaFlirtAerie","GLOBAL",1)~ ai1
SAY @45 
++ @46 + ai1.1
++ @47 + ai1.1
++ @48 + ai1.1
++ @49 + ai1.2
END

IF ~~ ai1.1
SAY @50
= @51
IF ~~ DO ~SetGlobal("RE_IlonaFlirtAerie","GLOBAL",2)~ EXIT
END

IF ~~ ai1.2
SAY @52
IF ~~ DO ~SetGlobal("AerieRomanceActive","GLOBAL",3) SetGlobal("RE_IlonaFlirtAerie","GLOBAL",2)~ EXIT
END

// Isabelle

IF WEIGHT #-1 ~Global("RE_IsabelleFlirtAerie","GLOBAL",1)~ isa1
SAY @307 
++ @308 + isa1.1
++ @309 + isa1.2
++ @310 + isa1.3
END

IF ~~ isa1.1
SAY @311
IF ~~ + isa1.4
END

IF ~~ isa1.2
SAY @312
IF ~~ DO ~SetGlobal("AerieRomanceActive","GLOBAL",3) SetGlobal("RE_IsabelleFlirtAerie","GLOBAL",2)~ EXIT
END

IF ~~ isa1.3
SAY @313
IF ~~ + isa1.4
END

IF ~~ isa1.4
SAY @314
= @315
IF ~~ DO ~SetGlobal("RE_IsabelleFlirtAerie","GLOBAL",2)~ EXIT
END

// Sheri

IF WEIGHT #-1 ~Global("RE_SheriFlirtAerie","GLOBAL",1)~ RE_AerieSheri1
SAY @53 
++ @54 + RE_AerieSheri1.1
++ @55 + RE_AerieSheri1.1
++ @56 + RE_AerieSheri1.1
++ @57 + RE_AerieSheri1.2
++ @58 + RE_AerieSheri1.2
END

IF ~~ RE_AerieSheri1.1
SAY @59
IF ~~ DO ~SetGlobal("RE_SheriFlirtAerie","GLOBAL",2)~ EXIT
END

IF ~~ RE_AerieSheri1.2
SAY @60
IF ~~ DO ~SetGlobal("AerieRomanceActive","GLOBAL",3) SetGlobal("RE_SheriFlirtAerie","GLOBAL",2)~ EXIT
END

// Solaufein

IF WEIGHT #-1 ~Global("RE_SolaufeinFlirtAerie","GLOBAL",1)~ RE_AerieSola1
SAY @61 
= @62
++ @63 + RE_AerieSola1.1
++ @64 + RE_AerieSola1.1
++ @65 + RE_AerieSola1.3
++ @66 + RE_AerieSola1.2
END

IF ~~ RE_AerieSola1.1
SAY @67
IF ~~ DO ~SetGlobal("AerieRomanceActive","GLOBAL",3) SetGlobal("RE_SolaufeinFlirtAerie","GLOBAL",2)~ EXIT
END

IF ~~ RE_AerieSola1.2
SAY @68
++ @69 + RE_AerieSola1.3
++ @70 + RE_AerieSola1.3
++ @71 + RE_AerieSola1.3
++ @72 + RE_AerieSola1.1
END

IF ~~ RE_AerieSola1.3
SAY @73
= @74
IF ~~ DO ~SetGlobal("RE_SolaufeinFlirtAerie","GLOBAL",2)~ EXIT
END

END

APPEND JAHEIRAJ 

// Ada

IF WEIGHT #-1 ~Global("RE_AdaFlirtJaheira","GLOBAL",1)~ RE_JaheiraAda1
SAY @75 
++ @76 + RE_JaheiraAda1.1
++ @77 + RE_JaheiraAda1.2
+ ~!Global("RE_AdaSex","GLOBAL",1)~ + @78 + RE_JaheiraAda1.3
+ ~Global("RE_AdaSex","GLOBAL",1)~ + @78 + RE_JaheiraAda1.5
END

IF ~~ RE_JaheiraAda1.1
SAY @46
++ @79 + RE_JaheiraAda1.4
++ @80 + RE_JaheiraAda1.2
END

IF ~~ RE_JaheiraAda1.2
SAY @81
IF ~~ DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3) SetGlobal("RE_AdaFlirtJaheira","GLOBAL",2)~ EXIT
END

IF ~~ RE_JaheiraAda1.3
SAY @82
IF ~~ DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3) SetGlobal("RE_AdaFlirtJaheira","GLOBAL",2)~ EXIT
END

IF ~~ RE_JaheiraAda1.4
SAY @83
IF ~~ DO ~SetGlobal("RE_AdaFlirtJaheira","GLOBAL",2)~ EXIT
END

IF ~~ RE_JaheiraAda1.5
SAY @84
IF ~~ DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3) SetGlobal("RE_AdaFlirtJaheira","GLOBAL",2)~ EXIT
END

// Bodhi

IF WEIGHT #-1 ~Global("RE_BodhiFlirtJaheira","GLOBAL",1)~ RE_JaheiraBodhi1
SAY @85 
++ @11 + RE_JaheiraBodhi1.1
++ @86 + RE_JaheiraBodhi1.2
+ ~!Global("RE_BodhiSex","GLOBAL",1)~ + @87 + RE_JaheiraBodhi1.3
+ ~Global("RE_BodhiSex","GLOBAL",1)~ + @88 + RE_JaheiraBodhi1.2
END

IF ~~ RE_JaheiraBodhi1.1
SAY @89
++ @16 + RE_JaheiraBodhi1.4
++ @90 + RE_JaheiraBodhi1.2
END

IF ~~ RE_JaheiraBodhi1.2
SAY @91
IF ~~ DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3) SetGlobal("RE_BodhiFlirtJaheira","GLOBAL",2)~ EXIT
END

IF ~~ RE_JaheiraBodhi1.3
SAY @92
IF ~~ DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3) SetGlobal("RE_BodhiFlirtJaheira","GLOBAL",2)~ EXIT
END

IF ~~ RE_JaheiraBodhi1.4
SAY @93
IF ~~ DO ~SetGlobal("RE_BodhiFlirtJaheira","GLOBAL",2)~ EXIT
END

// Busya

IF WEIGHT #-1 ~Global("RE_BusyaSexJaheira","GLOBAL",1)~ RE_JaheiraBusya1
SAY @94 
++ @95 + RE_JaheiraBusya1.1
++ @96 + RE_JaheiraBusya1.2
++ @97 + RE_JaheiraBusya1.3
++ @98 + RE_JaheiraBusya1.3
END

IF ~~ RE_JaheiraBusya1.1
SAY @99
IF ~~ DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3) SetGlobal("RE_BusyaSexJaheira","GLOBAL",2)~ EXIT
END

IF ~~ RE_JaheiraBusya1.2
SAY @100
IF ~~ DO ~SetGlobal("RE_BusyaSexJaheira","GLOBAL",2)~ EXIT
END

IF ~~ RE_JaheiraBusya1.3
SAY @101
IF ~~ DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3) SetGlobal("RE_BusyaSexJaheira","GLOBAL",2)~ EXIT
END

// Chanelle

IF WEIGHT #-1 ~Global("RE_ChanelleFlirtJaheira","GLOBAL",1)~ RE_JaheiraChanelle1
SAY @102 
++ @103 + RE_JaheiraChanelle1.1
++ @104 + RE_JaheiraChanelle1.1
++ @105 + RE_JaheiraChanelle1.2
END

IF ~~ RE_JaheiraChanelle1.1
SAY @106
IF ~~ DO ~SetGlobal("RE_ChanelleFlirtJaheira","GLOBAL",2)~ EXIT
END

IF ~~ RE_JaheiraChanelle1.2
SAY @107
IF ~~ DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3) SetGlobal("RE_ChanelleFlirtJaheira","GLOBAL",2)~ EXIT
END

// Ilona

IF WEIGHT #-1 ~Global("RE_IlonaFlirtJaheira","GLOBAL",1)~ ij1
SAY @108 
++ @109 + ij1.1
++ @110 + ij1.1
++ @111 + ij1.2
END

IF ~~ ij1.1
SAY @112
IF ~~ DO ~SetGlobal("RE_IlonaFlirtJaheira","GLOBAL",2)~ EXIT
END

IF ~~ ij1.2
SAY @113
IF ~~ DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3) SetGlobal("RE_IlonaFlirtJaheira","GLOBAL",2)~ EXIT
END

// Isabelle

IF WEIGHT #-1 ~Global("RE_IsabelleFlirtJaheira","GLOBAL",1)~ isa1
SAY @316 
++ @317 + isa1.1
++ @318 + isa1.2
++ @319 + isa1.2
END

IF ~~ isa1.1
SAY @320
IF ~~ + isa1.3
END

IF ~~ isa1.2
SAY @321
IF ~~ + isa1.3
END

IF ~~ isa1.3
SAY @322
= @323
IF ~~ DO ~SetGlobal("RE_IsabelleFlirtJaheira","GLOBAL",2)~ EXIT
END

// Sheri

IF WEIGHT #-1 ~Global("RE_SheriFlirtJaheira","GLOBAL",1)~ RE_JaheiraSheri1
SAY @114 
++ @115 + RE_JaheiraSheri1.0
++ @116 + RE_JaheiraSheri1.1
++ @117 + RE_JaheiraSheri1.1
++ @118 + RE_JaheiraSheri1.2
++ @119 + RE_JaheiraSheri1.2
END

IF ~~ RE_JaheiraSheri1.0
SAY @120
IF ~~ DO ~SetGlobal("RE_SheriFlirtJaheira","GLOBAL",2)~ EXIT
END

IF ~~ RE_JaheiraSheri1.1
SAY @121
IF ~~ DO ~SetGlobal("RE_SheriFlirtJaheira","GLOBAL",2)~ EXIT
END

IF ~~ RE_JaheiraSheri1.2
SAY @122
IF ~~ DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3) SetGlobal("RE_SheriFlirtJaheira","GLOBAL",2)~ EXIT
END

// Solaufein

IF WEIGHT #-1 ~Global("RE_SolaufeinFlirtJaheira","GLOBAL",1)~ RE_JaheiraSola1
SAY @123 
++ @124 + RE_JaheiraSola1.1
++ @125 + RE_JaheiraSola1.1
++ @126 + RE_JaheiraSola1.3
++ @66 + RE_JaheiraSola1.2
END

IF ~~ RE_JaheiraSola1.1
SAY @127
IF ~~ DO ~SetGlobal("JaheiraRomanceActive","GLOBAL",3) SetGlobal("RE_SolaufeinFlirtJaheira","GLOBAL",2)~ EXIT
END

IF ~~ RE_JaheiraSola1.2
SAY @128
++ @129 + RE_JaheiraSola1.3
++ @70 + RE_JaheiraSola1.3
++ @71 + RE_JaheiraSola1.3
++ @72 + RE_JaheiraSola1.1
END

IF ~~ RE_JaheiraSola1.3
SAY @130
IF ~~ DO ~SetGlobal("RE_SolaufeinFlirtJaheira","GLOBAL",2)~ EXIT
END

END

APPEND VICONIJ 

// Ada

IF WEIGHT #-1 ~Global("RE_AdaFlirtViconia","GLOBAL",1)~ RE_ViconiaAda1
SAY @131 
++ @132 + RE_ViconiaAda1.1
++ @133 + RE_ViconiaAda1.2
+ ~!Global("RE_AdaSex","GLOBAL",1)~ + @78 + RE_ViconiaAda1.3
+ ~Global("RE_AdaSex","GLOBAL",1)~ + @78 + RE_ViconiaAda1.5
END

IF ~~ RE_ViconiaAda1.1
SAY @134
++ @135 + RE_ViconiaAda1.4
++ @136 + RE_ViconiaAda1.2
END

IF ~~ RE_ViconiaAda1.2
SAY @137
IF ~~ DO ~SetGlobal("ViconiaRomanceActive","GLOBAL",3) SetGlobal("RE_AdaFlirtViconia","GLOBAL",2)~ EXIT
END

IF ~~ RE_ViconiaAda1.3
SAY @138
IF ~~ DO ~SetGlobal("RE_AdaFlirtViconia","GLOBAL",2)~ EXIT
END

IF ~~ RE_ViconiaAda1.4
SAY @139
IF ~~ DO ~SetGlobal("RE_AdaFlirtViconia","GLOBAL",2)~ EXIT
END

IF ~~ RE_ViconiaAda1.5
SAY @140
= @141
IF ~~ DO ~SetGlobal("ViconiaRomanceActive","GLOBAL",3) SetGlobal("RE_AdaFlirtViconia","GLOBAL",2)~ EXIT
END

// Bodhi

IF WEIGHT #-1 ~Global("RE_BodhiFlirtViconia","GLOBAL",1)~ RE_ViconiaBodhi1
SAY @142 
++ @11 + RE_ViconiaBodhi1.1
++ @143 + RE_ViconiaBodhi1.2
+ ~!Global("RE_BodhiSex","GLOBAL",1)~ + @144 + RE_ViconiaBodhi1.3
+ ~Global("RE_BodhiSex","GLOBAL",1)~ + @145 + RE_ViconiaBodhi1.2
END

IF ~~ RE_ViconiaBodhi1.1
SAY @146
++ @16 + RE_ViconiaBodhi1.4
++ @147 + RE_ViconiaBodhi1.2
END

IF ~~ RE_ViconiaBodhi1.2
SAY @148
IF ~~ DO ~SetGlobal("ViconiaRomanceActive","GLOBAL",3) SetGlobal("RE_BodhiFlirtViconia","GLOBAL",2)~ EXIT
END

IF ~~ RE_ViconiaBodhi1.3
SAY @149
IF ~~ DO ~SetGlobal("RE_BodhiFlirtViconia","GLOBAL",2)~ EXIT
END

IF ~~ RE_ViconiaBodhi1.4
SAY @150
IF ~~ DO ~SetGlobal("RE_BodhiFlirtViconia","GLOBAL",2)~ EXIT
END

// Busya

IF WEIGHT #-1 ~Global("RE_BusyaSexViconia","GLOBAL",1)~ RE_ViconiaBusya1
SAY @151 
++ @152 + RE_ViconiaBusya1.1
++ @153 + RE_ViconiaBusya1.3
++ @154 + RE_ViconiaBusya1.2
++ @155 + RE_ViconiaBusya1.2
END

IF ~~ RE_ViconiaBusya1.1
SAY @156
IF ~~ DO ~SetGlobal("RE_BusyaSexViconia","GLOBAL",2)~ EXIT
END

IF ~~ RE_ViconiaBusya1.2
SAY @157
IF ~~ DO ~SetGlobal("ViconiaRomanceActive","GLOBAL",3) SetGlobal("RE_BusyaSexViconia","GLOBAL",2)~ EXIT
END

IF ~~ RE_ViconiaBusya1.3
SAY @158
= @159
IF ~~ DO ~SetGlobal("RE_BusyaSexViconia","GLOBAL",2)~ EXIT
END

// Chanelle

IF WEIGHT #-1 ~Global("RE_ChanelleFlirtViconia","GLOBAL",1)~ RE_ViconiaChanelle1
SAY @160 
++ @161 + RE_ViconiaChanelle1.1
++ @162 + RE_ViconiaChanelle1.1
++ @163 + RE_ViconiaChanelle1.2
END

IF ~~ RE_ViconiaChanelle1.1
SAY @164
IF ~~ DO ~SetGlobal("RE_ChanelleFlirtViconia","GLOBAL",2)~ EXIT
END

IF ~~ RE_ViconiaChanelle1.2
SAY @165
IF ~~ DO ~SetGlobal("ViconiaRomanceActive","GLOBAL",3) SetGlobal("RE_ChanelleFlirtViconia","GLOBAL",2)~ EXIT
END

// Ilona

IF WEIGHT #-1 ~Global("RE_IlonaFlirtViconia","GLOBAL",1)~ RE_ViconiaIlona1
SAY @166 
= @167
IF ~~ DO ~SetGlobal("RE_IlonaFlirtViconia","GLOBAL",2)~ EXIT
END

// Isabelle

IF WEIGHT #-1 ~Global("RE_IsabelleFlirtViconia","GLOBAL",1)~ RE_ViconiaIsabelle1
SAY @324 
++ @325 + RE_ViconiaIsabelle1.1
++ @326 + RE_ViconiaIsabelle1.1
++ @327 + RE_ViconiaIsabelle1.2
END

IF ~~ RE_ViconiaIsabelle1.1
SAY @328
= @329
IF ~~ DO ~SetGlobal("RE_IsabelleFlirtViconia","GLOBAL",2)~ EXIT
END

IF ~~ RE_ViconiaIsabelle1.2
SAY @330
IF ~~ DO ~SetGlobal("RE_IsabelleFlirtViconia","GLOBAL",2)~ EXIT
END

// Sheri

IF WEIGHT #-1 ~Global("RE_SheriFlirtViconia","GLOBAL",1)~ RE_ViconiaSheri1
SAY @168 
= @169
IF ~~ DO ~SetGlobal("RE_SheriFlirtViconia","GLOBAL",2)~ EXIT
END

// Solaufein

IF WEIGHT #-1 ~Global("RE_SolaufeinFlirtViconia","GLOBAL",1)~ RE_ViconiaSola1
SAY @170 
++ @171 + RE_ViconiaSola1.1
++ @172 + RE_ViconiaSola1.1
++ @173 + RE_ViconiaSola1.3
++ @66 + RE_ViconiaSola1.2
END

IF ~~ RE_ViconiaSola1.1
SAY @174
IF ~~ DO ~SetGlobal("ViconiaRomanceActive","GLOBAL",3) SetGlobal("RE_SolaufeinFlirtViconia","GLOBAL",2)~ EXIT
END

IF ~~ RE_ViconiaSola1.2
SAY @175
++ @129 + RE_ViconiaSola1.3
++ @70 + RE_ViconiaSola1.3
++ @71 + RE_ViconiaSola1.3
++ @72 + RE_ViconiaSola1.1
END

IF ~~ RE_ViconiaSola1.3
SAY @176
IF ~~ DO ~SetGlobal("RE_SolaufeinFlirtViconia","GLOBAL",2)~ EXIT
END

END

APPEND ANOMENJ

// Coran

IF ~~ RE_AnomenEnd
SAY @177
IF ~~ DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)~ EXIT
END

IF WEIGHT #-1 ~Global("RE_CoranSexAnomen","GLOBAL",1)~ RE_AnomenCoran1
SAY @178 
++ @179 DO ~SetGlobal("RE_CoranSexAnomen","GLOBAL",2)~ + RE_AnomenEnd
++ @180 DO ~SetGlobal("RE_CoranSexAnomen","GLOBAL",2)~ + RE_AnomenCoran1.2
++ @181 DO ~SetGlobal("RE_CoranSexAnomen","GLOBAL",2)~ + RE_AnomenCoran1.2
++ @182 DO ~SetGlobal("RE_CoranSexAnomen","GLOBAL",2)~ + RE_AnomenCoran1.2
END

IF ~~ RE_AnomenCoran1.2
SAY @183
++ @184 + RE_AnomenEnd
++ @185 + RE_AnomenCoran1.3
++ @186 + RE_AnomenCoran1.3
END

IF ~~ RE_AnomenCoran1.3
SAY @187
= @188
IF ~~ EXIT
END

// Desharik

IF WEIGHT #-1 ~Global("RE_DesharikFlirtAnomen","GLOBAL",1)~ THEN BEGIN ad1
SAY @189
++ @190 DO ~SetGlobal("RE_DesharikFlirtAnomen","GLOBAL",2)~ + ad2
+ ~GlobalGT("AsylumPlot","GLOBAL",10)~ + @191 DO ~SetGlobal("RE_DesharikFlirtAnomen","GLOBAL",2)~ + ad3
++ @192  DO ~SetGlobal("RE_DesharikFlirtAnomen","GLOBAL",2)~ + ad4
++ @193  DO ~SetGlobal("RE_DesharikFlirtAnomen","GLOBAL",2)~ + ad5
++ @194 DO ~SetGlobal("RE_DesharikFlirtAnomen","GLOBAL",2)~ + ad6
++ @195 DO ~SetGlobal("RE_DesharikFlirtAnomen","GLOBAL",2)~ + ad7
END

IF ~~ ad2
SAY @196
IF ~~ THEN EXIT
END

IF ~~ ad3
SAY @197
IF ~~ THEN EXIT
END

IF ~~ ad4
SAY @198
++ @199 + ad2
+ ~GlobalGT("AsylumPlot","GLOBAL",10)~ + @200 + ad3
++ @201 + ad6
++ @202 + ad8
++ @203 + ad6
END

IF ~~ ad5
SAY @204
++ @205 + ad9
++ @206 + ad2
++ @207 + adEnd
++ @208 + ad9
++ @209 + adEnd
++ @210 + ad9
END

IF ~~ ad6
SAY @211
++ @212 + ad2
++ @213 + ad9
++ @214 + ad2
++ @215 + adEnd
++ @216 + ad10
END

IF ~~ ad7
SAY @217
++ @218 + ad9
++ @219 + ad6
++ @220 + adEnd
++ @221 + adEnd
END

IF ~~ ad8
SAY @222
++ @223 + ad3
++ @224 + ad6
++ @225 + ad3
++ @226 + ad9
++ @227 + ad2
END

IF ~~ ad9
SAY @228
IF ~~ THEN EXIT
END

IF ~~ ad10
SAY @229
IF ~~ THEN EXIT
END

IF ~~ adEnd
SAY @230 
IF ~~ THEN DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)~ EXIT
END

// Gaelan

IF WEIGHT #-1 ~Global("RE_GaelanSexAnomen","GLOBAL",1)~ RE_AnomenGaelan1
SAY @231 
++ @232 DO ~SetGlobal("RE_GaelanSexAnomen","GLOBAL",2)~ + RE_AnomenDevotion
++ @233 DO ~SetGlobal("RE_GaelanSexAnomen","GLOBAL",2)~ + RE_AnomenDevotion
++ @234 DO ~SetGlobal("RE_GaelanSexAnomen","GLOBAL",2)~ + RE_AnomenDevotion
++ @235 DO ~SetGlobal("RE_GaelanSexAnomen","GLOBAL",2)~ + RE_AnomenRevulsion
END

IF ~~ RE_AnomenDevotion
SAY @236
= @237
IF ~~ EXIT
END

IF ~~ RE_AnomenRevulsion
SAY @238
++ @239 + RE_AnomenDevotion
++ @240 + RE_AnomenEnd
++ @241 + RE_AnomenEnd
END

// Hendak

IF WEIGHT #-1 ~Global("RE_HendakSexAnomen","GLOBAL",1)~ RE_AnomenHendak1
SAY @242 
++ @243 DO ~SetGlobal("RE_HendakSexAnomen","GLOBAL",2)~ + RE_AnomenHendak1.1
++ @244 DO ~SetGlobal("RE_HendakSexAnomen","GLOBAL",2)~ + RE_AnomenHendak1.1
++ @245 DO ~SetGlobal("RE_HendakSexAnomen","GLOBAL",2)~ + RE_AnomenEnd
++ @246 DO ~SetGlobal("RE_HendakSexAnomen","GLOBAL",2)~ + RE_AnomenEnd
END

IF ~~ RE_AnomenHendak1.1
SAY @247
IF ~~ EXIT
END

// Ribald

// 1.

IF WEIGHT #-1 ~Global("RE_RibaldSexAnomen","GLOBAL",2)~ RE_AnomenRibald1
SAY @248 
++ @249 DO ~SetGlobal("RE_RibaldSexAnomen","GLOBAL",3) RealSetGlobalTimer("RE_AnomenRibaldTimer","GLOBAL",3000)~ + RE_AnomenEnd
++ @250 DO ~SetGlobal("RE_RibaldSexAnomen","GLOBAL",3) RealSetGlobalTimer("RE_AnomenRibaldTimer","GLOBAL",3000)~ + RE_AnomenRibald1.1
++ @251 DO ~SetGlobal("RE_RibaldSexAnomen","GLOBAL",3) RealSetGlobalTimer("RE_AnomenRibaldTimer","GLOBAL",3000)~ + RE_AnomenRibald1.1
++ @252 DO ~SetGlobal("RE_RibaldSexAnomen","GLOBAL",3) RealSetGlobalTimer("RE_AnomenRibaldTimer","GLOBAL",3000)~ + RE_AnomenRibald1.2
END

IF ~~ RE_AnomenRibald1.1
SAY @253
++ @254 + RE_AnomenRibald1.2
++ @255 + RE_AnomenRibald1.2
++ @256 + RE_AnomenEnd
++ @257 + RE_AnomenEnd
++ @258 + RE_AnomenRibald1.2
END

IF ~~ RE_AnomenRibald1.2
SAY @259
IF ~~ EXIT
END

// 2.

IF WEIGHT #-1 ~Global("RE_RibaldSexAnomen","GLOBAL",4)~ RE_AnomenRibald2
SAY @260 
++ @261 DO ~SetGlobal("RE_RibaldSexAnomen","GLOBAL",5)~ + RE_AnomenRibald2.2
++ @262 DO ~SetGlobal("RE_RibaldSexAnomen","GLOBAL",5)~ + RE_AnomenRibald2.1
++ @263 DO ~SetGlobal("RE_RibaldSexAnomen","GLOBAL",5)~ + RE_AnomenEnd
END

IF ~~ RE_AnomenRibald2.1
SAY @264
++ @265 + RE_AnomenRibald2.2
++ @266 + RE_AnomenRibald2.2
++ @267 + RE_AnomenEnd
++ @268 + RE_AnomenEnd
END

IF ~~ RE_AnomenRibald2.2
SAY @269
= @270
IF ~~ EXIT
END

// Saemon

IF WEIGHT #-1 ~Global("RE_SaemonFlirtAnomen","GLOBAL",1)~ RE_AnomenSaemon1
SAY @271 
++ @272 DO ~SetGlobal("RE_SaemonFlirtAnomen","GLOBAL",2)~ + RE_AnomenSaemon1.1
++ @273 DO ~SetGlobal("RE_SaemonFlirtAnomen","GLOBAL",2)~ + RE_AnomenSaemon1.1
++ @274 DO ~SetGlobal("RE_SaemonFlirtAnomen","GLOBAL",2)~ + RE_AnomenSaemon1.1
END

IF ~~ RE_AnomenSaemon1.1
SAY @275
= @276
IF ~~ EXIT
END

// Solaufein

IF WEIGHT #-1 ~Global("RE_SolaufeinFlirtAnomen","GLOBAL",1)~ RE_AnomenSola1
SAY @277 
++ @64 DO ~SetGlobal("RE_SolaufeinFlirtAnomen","GLOBAL",2)~ + RE_AnomenEnd
++ @65 DO ~SetGlobal("RE_SolaufeinFlirtAnomen","GLOBAL",2)~ + RE_AnomenSola1.3
++ @278 DO ~SetGlobal("RE_SolaufeinFlirtAnomen","GLOBAL",2)~ + RE_AnomenSola1.3
END

IF ~~ RE_AnomenSola1.3
SAY @279
IF ~~ EXIT
END

// Talak

IF WEIGHT #-1 ~Global("RE_TalakFlirtAnomen","GLOBAL",1)~ THEN BEGIN Ano1
SAY @280
++ @281 DO ~SetGlobal("RE_TalakFlirtAnomen","GLOBAL",2)~ + Ano2
+ ~Global("RE_TalakReluctant","GLOBAL",1)~ + @282 DO ~SetGlobal("RE_TalakFlirtAnomen","GLOBAL",2)~ + Ano3
++ @283 DO ~SetGlobal("RE_TalakFlirtAnomen","GLOBAL",2)~ + AnoEnd
++ @284 DO ~SetGlobal("RE_TalakFlirtAnomen","GLOBAL",2)~ + Ano4
++ @285 DO ~SetGlobal("RE_TalakFlirtAnomen","GLOBAL",2)~ + Ano5
END

IF ~~ Ano2
SAY @286
++ @287 + Ano6
+ ~Global("RE_TalakReluctant","GLOBAL",1)~ + @288 + Ano3
++ @289 + Ano4
++ @290 + AnoEnd
++ @291 + Ano5
END

IF ~~ Ano3
SAY @292
++ @293 + Ano5
++ @294 + Ano7
++ @295 + AnoEnd
++ @296 + AnoEnd
++ @297 + Ano6
END

IF ~~ Ano4
SAY @298
IF ~~ EXIT
END

IF ~~ Ano5
SAY @299
IF ~~ EXIT
END

IF ~~ Ano6
SAY @300
++ @301 + Ano7
++ @302 + Ano4
++ @303 + AnoEnd
END

IF ~~ Ano7
SAY @304
= @305
IF ~~ THEN EXIT
END

IF ~~ AnoEnd
SAY @306
IF ~~ DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)~ EXIT
END

// Cumulative bounters 1 and 2

IF WEIGHT #-1 ~Global("RE_AnomenCounterConflict","GLOBAL",2)~ THEN BEGIN a0
SAY @331 
++ @332 DO ~SetGlobal("RE_AnomenCounterConflict","GLOBAL",3) RealSetGlobalTimer("RE_AnomenCounterTime","GLOBAL",5400)~ + a1
++ @333 DO ~SetGlobal("RE_AnomenCounterConflict","GLOBAL",3) RealSetGlobalTimer("RE_AnomenCounterTime","GLOBAL",5400)~ + a2
+ ~Global("AnomenRomanceActive","GLOBAL",1)~ + @334 DO ~SetGlobal("RE_AnomenCounterConflict","GLOBAL",3) RealSetGlobalTimer("RE_AnomenCounterTime","GLOBAL",5400)~ + a3
+ ~Global("AnomenRomanceActive","GLOBAL",2)~ + @334 DO ~SetGlobal("RE_AnomenCounterConflict","GLOBAL",3) RealSetGlobalTimer("RE_AnomenCounterTime","GLOBAL",5400)~ + a4
++ @335 DO ~SetGlobal("RE_AnomenCounterConflict","GLOBAL",3) RealSetGlobalTimer("RE_AnomenCounterTime","GLOBAL",5400)~ + a5
END

IF ~~ a1
SAY @336
IF ~~ THEN DO ~SetGlobal("RE_AnomenInnocent","LOCALS",1)~ EXIT
END

IF ~~ a2
SAY @337
++ @338 + a1
+ ~Global("AnomenRomanceActive","GLOBAL",1)~ + @339 + a3
+ ~Global("AnomenRomanceActive","GLOBAL",2)~ + @339 + a4
+ ~Global("AnomenRomanceActive","GLOBAL",1)~ + @340 + a6
+ ~Global("AnomenRomanceActive","GLOBAL",2)~ + @340 + a4
++ @341 + a7
END

IF ~~ a3
SAY @342
= @343
IF ~~ THEN EXIT
END

IF ~~ a4
SAY @344
++ @345 + a1
++ @346 + a8
++ @347 + a1
++ @348 + a9
END

IF ~~ a5
SAY @349
++ @350 + a1
++ @351 + a10 
END

IF ~~ a6
SAY @352
IF ~~ THEN EXIT
END

IF ~~ a7
SAY @353
++ @354 + a1
++ @355 + a10
++ @356 + a10
END
END

CHAIN ANOMENJ a8
@357
END
IF ~Global("AnomenRomanceActive","GLOBAL",1)~ THEN EXTERN ANOMENJ a8a
IF ~Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ANOMENJ a8b

APPEND ANOMENJ

IF ~~ a8a
SAY @358
IF ~~ THEN EXIT
END

IF ~~ a8b
SAY @359
++ @360 + a8a
++ @361 + a8a
++ @362 DO ~SetGlobal("RE_AnomenNotAgain","LOCALS",1)~ + a8a
++ @363 + a10
END

IF ~~ a9
SAY @364
IF ~~ THEN + a5
END

IF ~~ a10
SAY @365
IF ~~ THEN DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)~ EXIT
END

IF WEIGHT #-1 ~Global("RE_AnomenCounterConflict","GLOBAL",5)~ THEN BEGIN a11
SAY @366 
+ ~Global("RE_AnomenNotAgain","LOCALS",1)~ + @367 DO ~SetGlobal("RE_AnomenCounterConflict","GLOBAL",6)~ + a12
+ ~!Global("RE_AnomenNotAgain","LOCALS",1)~ + @367 DO ~SetGlobal("RE_AnomenCounterConflict","GLOBAL",6)~ + a13
+ ~Global("RE_AnomenInnocent","LOCALS",1)~ + @368 DO ~SetGlobal("RE_AnomenCounterConflict","GLOBAL",6)~ + a14
+ ~!Global("RE_AnomenInnocent","LOCALS",1) !Global("RE_AnomenNotAgain","LOCALS",1)~ + @368 DO ~SetGlobal("RE_AnomenCounterConflict","GLOBAL",6)~ + a15
+ ~Global("RE_AnomenNotAgain","LOCALS",1)~ + @368 DO ~SetGlobal("RE_AnomenCounterConflict","GLOBAL",6)~ + a16
+ ~Global("RE_AnomenInnocent","LOCALS",1)~ + @369 DO ~SetGlobal("RE_AnomenCounterConflict","GLOBAL",6)~ + a17
+ ~!Global("RE_AnomenInnocent","LOCALS",1) !Global("RE_AnomenNotAgain","LOCALS",1)~ + @369 DO ~SetGlobal("RE_AnomenCounterConflict","GLOBAL",6)~ + a18
+ ~Global("RE_AnomenNotAgain","LOCALS",1)~ + @369 DO ~SetGlobal("RE_AnomenCounterConflict","GLOBAL",6)~ + a19
++ @370 DO ~SetGlobal("RE_AnomenCounterConflict","GLOBAL",6)~ + a20
++ @371 DO ~SetGlobal("RE_AnomenCounterConflict","GLOBAL",6)~ + a21
END

IF ~~ a12
SAY @372
++ @373 + a22
++ @374 + a23
++ @375 + a24
++ @376 + a10
END

IF ~~ a13
SAY @377
++ @378 + a14
++ @374 + a23
++ @375 + a24
++ @376 + a10
END

IF ~~ a14
SAY @379
IF ~~ THEN + a26
END

IF ~~ a15
SAY @380
IF ~~ THEN + a26 
END

IF ~~ a16
SAY @381
++ @373 + a22
++ @374 + a23
++ @375 + a24
++ @376 + a10
END

IF ~~ a17
SAY @382
IF ~~ THEN + a27
END

IF ~~ a18
SAY @383
IF ~~ THEN + a27
END

IF ~~ a19
SAY @384
++ @385 + a28
++ @374 + a23
++ @375 + a24
++ @386 + a10
END

IF ~~ a20
SAY @387
++ @378 + a15
++ @374 + a23
++ @375 + a24
++ @376 + a10
END

IF ~~ a21
SAY @388
IF ~~ THEN DO ~SetGlobal("AnomenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ a22
SAY @389
IF ~~ THEN + a26
END

IF ~~ a23
SAY @390
++ @391 + a29
++ @392 + a30
++ @393 + a31 
END

IF ~~ a24
SAY @394
++ @395 + a25
++ @396 + a21
++ @397 + a26
++ @398 + a21 
END

IF ~~ a25
SAY @399
= @400
IF ~~ THEN EXIT
END

IF ~~ a26
SAY @401
IF ~~ THEN EXIT
END

IF ~~ a27
SAY @402
IF ~~ THEN EXIT
END

IF ~~ a28
SAY @403
IF ~~ THEN + a27
END

IF ~~ a29
SAY @404
++ @405 + a17
++ @406 + a21
++ @407 + a32
END

IF ~~ a30
SAY @408
IF ~~ THEN + a34
END

IF ~~ a31
SAY @409
IF ~~ THEN + a34
END

IF ~~ a32
SAY @410
++ @411 + a27
++ @412 + a21
++ @413 + a21
++ @414 + a21
END

IF ~~ a33
SAY @415
IF ~~ THEN + a21
END

IF ~~ a34
SAY @416
++ @417 + a28
++ @418 + a33
++ @419 + a21
++ @420 + a21 
END

// Bjornin 

IF WEIGHT #-1 ~Global("RE_BjorninFlirtAnomen","GLOBAL",1)~ anomen_bjornin
SAY @421 
IF ~~ DO ~SetGlobal("RE_BjorninFlirtAnomen","GLOBAL",2)~ + anomen_bjornin1
END

IF ~~ anomen_bjornin1
SAY @422
IF ~~ EXIT
IF ~Global("AnomenRomanceActive","GLOBAL",2)~ + anomen_bjornin_RA2
END

IF ~~ anomen_bjornin_RA2
SAY @423
= @424
IF ~~ EXIT
END

END

CHAIN IF WEIGHT #-1 ~Global("RE_MazzyValygarConf","GLOBAL",2)~ THEN MAZZYJ RE_MAZZYValygar1
@425 
DO ~SetGlobal("RE_MazzyValygarConf","GLOBAL",3)~
== VALYGARJ @426
== MAZZYJ @427
== VALYGARJ @428
== MAZZYJ @429
== VALYGARJ @430
== MAZZYJ @431
== VALYGARJ @432
== MAZZYJ @433
EXIT

CHAIN IF WEIGHT #-1 ~Global("RE_AnomenValygarConf","GLOBAL",2)~ THEN ANOMENJ RE_AnomenValygar1
@434 
DO ~SetGlobal("RE_AnomenValygarConf","GLOBAL",3) RealSetGlobalTimer("RE_AnomenValygarTimer","GLOBAL",1000)~
== VALYGARJ @435
== ANOMENJ @436
== VALYGARJ @437
== ANOMENJ @438
== VALYGARJ @439
== ANOMENJ @440
== VALYGARJ @441
EXIT

CHAIN IF WEIGHT #-1 ~Global("RE_AnomenValygarConf","GLOBAL",4)~ THEN ANOMENJ RE_AnomenValygar2
@442 
DO ~SetGlobal("RE_AnomenValygarConf","GLOBAL",5)~
== VALYGARJ @443
== ANOMENJ @444
== VALYGARJ @445
== ANOMENJ @446
== VALYGARJ @447
== ANOMENJ @448
== VALYGARJ @449
EXIT