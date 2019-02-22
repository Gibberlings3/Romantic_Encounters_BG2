BEGIN C#BJORNI

IF ~OR(2)
!IsGabber(Player1) 
Gender(Player1,MALE)~ THEN meeting_00
SAY @0
IF ~~ THEN EXIT
END 

IF ~IsGabber(Player1) Gender(Player1,FEMALE) Global("C#RE_MetBjornin","GLOBAL",0)~ THEN meeting
SAY @1
++ @2 DO ~SetGlobal("C#Bjorni_HaveMetBefore","LOCALS",1) SetGlobal("C#RE_MetBjornin","GLOBAL",1)~ + bjornin_03
++ @3 DO ~SetGlobal("C#Bjorni_HaveMetBefore","LOCALS",1) SetGlobal("C#RE_MetBjornin","GLOBAL",1)~ + bjornin_03
++ @4 DO ~SetGlobal("C#Bjorni_HaveMetBefore","LOCALS",1) SetGlobal("C#RE_MetBjornin","GLOBAL",1)~ + bjornin_03
++ @5 DO ~SetGlobal("C#RE_MetBjornin","GLOBAL",1)~ + bjornin_04
++ @6 DO ~SetGlobal("C#RE_MetBjornin","GLOBAL",1)~ + bjornin_01_1
END

IF ~~ THEN bjornin_01
SAY @7
++ @8 + bjornin_05
++ @9 + bjornin_02
END

IF ~~ THEN bjornin_01_1
SAY @10
IF ~~ THEN + bjornin_02
END

IF ~~ THEN bjornin_02
SAY @11
IF ~AreaCheck("AR0903")~ THEN DO ~EscapeArea()~ EXIT
IF ~AreaCheck("ARRE07")~ THEN DO ~SetGlobal("C#BjorninMoves","GLOBAL",3)  
ClearAllActions() StartCutSceneMode() StartCutScene("C#BJCUT2")~ EXIT
END

IF ~~ THEN bjornin_03
SAY @12
IF ~~ THEN + bjornin_01
END

IF ~~ THEN bjornin_04
SAY @13
++ @14 + bjornin_01
++ @15 + bjornin_02
END

IF ~~ THEN bjornin_05
SAY @16
= @17
++ @18 + bjornin_06
+ ~Global("C#Bjorni_AboutBjornin","LOCALS",0)~ + @19 DO ~SetGlobal("C#Bjorni_AboutBjornin","LOCALS",1)~ + bjornin_05_1
+ ~Global("C#Bjorni_AboutPC","LOCALS",0)~ + @20 DO ~SetGlobal("C#Bjorni_AboutPC","LOCALS",1)~ + bjornin_07
++ @21 + bjornin_09
++ @22 + bjornin_02
END

IF ~~ THEN bjornin_05_1
SAY @23
++ @24 + bjornin_05_2
+ ~Global("C#Bjorni_AboutPC","LOCALS",0)~ + @20 DO ~SetGlobal("C#Bjorni_AboutPC","LOCALS",1)~ + bjornin_07
+ ~Global("C#Bjorni_BjorninScars","LOCALS",0) Global("C#Bjorni_HaveMetBefore","LOCALS",1)~ + @25 + bjornin_10
+ ~Global("C#Bjorni_BjorninScars","LOCALS",0) Global("C#Bjorni_HaveMetBefore","LOCALS",0)~ + @26 + bjornin_10
+ ~Global("C#Bjorni_BjorninScars","LOCALS",1)~ + @27 + bjornin_13
++ @22 + bjornin_02
END

IF ~~ THEN bjornin_05_2
SAY @28
+ ~Global("C#Bjorni_BjorninScars","LOCALS",0)~ + @29 + bjornin_10
+ ~Global("C#Bjorni_AboutPC","LOCALS",0)~ + @20 DO ~SetGlobal("C#Bjorni_AboutPC","LOCALS",1)~ + bjornin_07
+ ~Global("C#Bjorni_BjorninScars","LOCALS",1)~ + @27 + bjornin_13
++ @22 + bjornin_02
END

IF ~~ THEN bjornin_06
SAY @30
+ ~Global("C#Bjorni_AboutPC","LOCALS",0)~ + @20 DO ~SetGlobal("C#Bjorni_AboutPC","LOCALS",1)~ + bjornin_07
+ ~Global("C#Bjorni_BjorninScars","LOCALS",0) Global("C#Bjorni_HaveMetBefore","LOCALS",1)~ + @25 + bjornin_10
+ ~Global("C#Bjorni_BjorninScars","LOCALS",0) Global("C#Bjorni_HaveMetBefore","LOCALS",0)~ + @31 + bjornin_10
+ ~Global("C#Bjorni_AboutBjornin","LOCALS",0)~ + @32 DO ~SetGlobal("C#Bjorni_AboutBjornin","LOCALS",1)~ + bjornin_05_1
+ ~Global("C#Bjorni_BjorninScars","LOCALS",1)~ + @27 + bjornin_13
++ @22 + bjornin_02
END

IF ~~ THEN bjornin_07
SAY @33
++ @34 + bjornin_08
++ @35 + bjornin_08
+ ~Global("C#Bjorni_AboutBjornin","LOCALS",0)~ + @19 DO ~SetGlobal("C#Bjorni_AboutBjornin","LOCALS",1)~ + bjornin_05_1
+ ~Global("C#Bjorni_BjorninScars","LOCALS",0) Global("C#Bjorni_HaveMetBefore","LOCALS",1)~ + @25 + bjornin_10
+ ~Global("C#Bjorni_BjorninScars","LOCALS",0) Global("C#Bjorni_HaveMetBefore","LOCALS",0)~ + @36 + bjornin_10
+ ~Global("C#Bjorni_BjorninScars","LOCALS",1)~ + @37 + bjornin_13
++ @22 + bjornin_02
END

IF ~~ THEN bjornin_08
SAY @38
+ ~Global("C#Bjorni_AboutBjornin","LOCALS",0)~ + @19 DO ~SetGlobal("C#Bjorni_AboutBjornin","LOCALS",1)~ + bjornin_05_1 
++ @39 + bjornin_09
+ ~Global("C#Bjorni_BjorninScars","LOCALS",0) Global("C#Bjorni_HaveMetBefore","LOCALS",1)~ + @25 + bjornin_10
+ ~Global("C#Bjorni_BjorninScars","LOCALS",0) Global("C#Bjorni_HaveMetBefore","LOCALS",0)~ + @36 + bjornin_10
+ ~Global("C#Bjorni_BjorninScars","LOCALS",1)~ + @37 + bjornin_13
++ @22 + bjornin_02
END

IF ~~ THEN bjornin_09
SAY @40
+ ~Global("C#Bjorni_BjorninScars","LOCALS",0)~ + @41 + bjornin_10
+ ~Global("C#Bjorni_AboutBjornin","LOCALS",0)~ + @19 DO ~SetGlobal("C#Bjorni_AboutBjornin","LOCALS",1)~ + bjornin_05_1 
+ ~Global("C#Bjorni_AboutPC","LOCALS",0)~ + @20 DO ~SetGlobal("C#Bjorni_AboutPC","LOCALS",1)~ + bjornin_07
+ ~Global("C#Bjorni_BjorninScars","LOCALS",1)~ + @37 + bjornin_13
++ @22 + bjornin_02
END

IF ~~ THEN bjornin_10
SAY @42
++ @43 DO ~SetGlobal("C#Bjorni_BjorninScars","LOCALS",1)~ + bjornin_11
++ @44 DO ~SetGlobal("C#Bjorni_BjorninScars","LOCALS",1)~ + bjornin_11
+ ~Global("C#Bjorni_HaveMetBefore","LOCALS",1)~ + @45 DO ~SetGlobal("C#Bjorni_BjorninScars","LOCALS",1)~ + bjornin_11
++ @22 + bjornin_02
END

IF ~~ THEN bjornin_11
SAY @46
= @47
++ @48 + bjornin_13
+ ~Global("C#Bjorni_AboutBjornin","LOCALS",0)~ + @19 DO ~SetGlobal("C#Bjorni_AboutBjornin","LOCALS",1)~ + bjornin_05_1 
+ ~Global("C#Bjorni_AboutPC","LOCALS",0)~ + @20 DO ~SetGlobal("C#Bjorni_AboutPC","LOCALS",1)~ + bjornin_07
++ @49 + bjornin_02
END

IF ~~ THEN bjornin_12
SAY @50
IF ~~ THEN + bjornin_02
END

IF ~~ THEN bjornin_12_S
SAY @51
= @52
IF ~~ THEN + bjornin_02
END

IF ~~ THEN bjornin_13
SAY @53
++ @54 + bjornin_14
++ @22 + bjornin_02
END

IF ~~ THEN bjornin_14
SAY @55
++ @56 + bjornin_15
++ @57 + bjornin_15
++ @58 + bjornin_12
END

IF ~~ THEN bjornin_15
SAY @59
IF ~~ THEN DO ~SetGlobal("RE_BjorninFlirt","GLOBAL",1) SetGlobal("C#BjorninMoves","GLOBAL",1)  
ClearAllActions() StartCutSceneMode() StartCutScene("C#BJCUT1")~ EXIT
IF ~InParty("Anomen") OR(2) Global("AnomenRomanceActive","GLOBAL",1) Global("AnomenRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_BjorninFlirtAnomen","GLOBAL",1) SetGlobal("RE_BjorninFlirt","GLOBAL",1) SetGlobal("C#BjorninMoves","GLOBAL",1)  
ClearAllActions() StartCutSceneMode() StartCutScene("C#BJCUT1")~ EXIT
END

IF ~Global("C#BjorninMoves","GLOBAL",1)~ THEN bjornin_16
SAY @60
++ @61 DO ~SetGlobal("C#BjorninMoves","GLOBAL",2)~ + bjornin_17
++ @62 DO ~SetGlobal("C#BjorninMoves","GLOBAL",2)~ + bjornin_12
END

IF ~~ THEN bjornin_17
SAY @63
= @64
++ @65 + bjornin_18
++ @66 + bjornin_36
END

IF ~~ THEN bjornin_18
SAY @67
++ @68 + bjornin_19
++ @66 + bjornin_36
END

IF ~~ THEN bjornin_19
SAY @69
++ @70 + bjornin_20
++ @71 + bjornin_36
END

IF ~~ THEN bjornin_20
SAY @72
++ @73 + bjornin_21
++ @74 + bjornin_36
END

IF ~~ THEN bjornin_21
SAY @75
++ @76 + bjornin_22
++ @74 + bjornin_36
END

IF ~~ THEN bjornin_22
SAY @77
++ @78 + bjornin_23
++ @79 + bjornin_30
++ @80 + bjornin_36
END

IF ~~ THEN bjornin_23
SAY @81
++ @82 + bjornin_24
++ @79 + bjornin_30
++ @83 + bjornin_36
END

IF ~~ THEN bjornin_24
SAY @84
++ @85 + bjornin_25
++ @86 + bjornin_37
++ @79 + bjornin_30
++ @87 + bjornin_27
++ @80 + bjornin_36
END

IF ~~ THEN bjornin_25
SAY @88
++ @89 + bjornin_26
++ @86 + bjornin_37
++ @90 + bjornin_29
++ @91 + bjornin_29
++ @87 + bjornin_27
++ @80 + bjornin_36
END

IF ~~ THEN bjornin_26
SAY @92
++ @90 + bjornin_29
++ @91 + bjornin_29
++ @87 + bjornin_27
++ @80 + bjornin_36
END

IF ~~ THEN bjornin_27
SAY @93
++ @94 + bjornin_28
++ @79 + bjornin_29
++ @95 + bjornin_36
END

IF ~~ THEN bjornin_28
SAY @96
++ @97 + bjornin_29
++ @98 + bjornin_29
++ @95 + bjornin_36
END

IF ~~ THEN bjornin_29
SAY @99
= @100
++ @101 + bjornin_32
++ @102 + bjornin_32
++ @103 + bjornin_12
END

IF ~~ THEN bjornin_30
SAY @104
++ @105 + bjornin_31
++ @85 + bjornin_25
++ @86 + bjornin_37
++ @87 + bjornin_27
++ @103 + bjornin_12
END

IF ~~ THEN bjornin_31
SAY @106
++ @107 + bjornin_29
++ @85 + bjornin_25
++ @86 + bjornin_37
++ @87 + bjornin_27
++ @103 + bjornin_12
END

IF ~~ THEN bjornin_32
SAY @108
++ @109 + bjornin_33
++ @110 + bjornin_35
++ @103 + bjornin_12
END

IF ~~ THEN bjornin_33
SAY @111
++ @112 + bjornin_34
++ @113 + bjornin_34
++ @114 + bjornin_34
++ @115 + bjornin_34
++ @103 + bjornin_12
END

IF ~~ THEN bjornin_34
SAY @116
= @117
IF ~~ THEN + bjornin_S_01
END

IF ~~ THEN bjornin_35
SAY @118
IF ~~ THEN + bjornin_12
END

IF ~~ THEN bjornin_36
SAY @119
= @120
IF ~~ THEN + bjornin_02
END

IF ~~ THEN bjornin_37
SAY @121 
++ @122 + bjornin_38
++ @89 + bjornin_26
++ @123 + bjornin_29
++ @87 + bjornin_27
++ @80 + bjornin_36
END

IF ~~ THEN bjornin_38
SAY @124
++ @125 + bjornin_29
++ @89 + bjornin_26
++ @90 + bjornin_29
++ @123 + bjornin_29
++ @87 + bjornin_27
++ @80 + bjornin_36
END

IF ~~ THEN bjornin_S_01
SAY @126
++ @127 DO ~SetGlobal("C#Bjorni_BjorninOnTop","LOCALS",1) SetGlobal("RE_BjorninSex","GLOBAL",1)~ + bjornin_S_02
++ @128 DO ~SetGlobal("C#Bjorni_SideBySide","LOCALS",1) SetGlobal("RE_BjorninSex","GLOBAL",1)~ + bjornin_S_02
++ @129 DO ~SetGlobal("C#Bjorni_BjorninRiding","LOCALS",1) SetGlobal("RE_BjorninSex","GLOBAL",1)~ + bjornin_S_03
++ @130 DO ~SetGlobal("C#Bjorni_FromBehind","LOCALS",1) SetGlobal("RE_BjorninSex","GLOBAL",1)~ + bjornin_S_02_01
++ @131 + bjornin_S_09
++ @103 + bjornin_12_S
END

IF ~~ THEN bjornin_S_02
SAY @132
++ @133 + bjornin_S_04_01
++ @134 + bjornin_S_04
++ @103 + bjornin_12_S
END

IF ~~ THEN bjornin_S_02_01
SAY @135
++ @136 + bjornin_S_09
++ @133 + bjornin_S_04_01
++ @134 + bjornin_S_04
++ @103 + bjornin_12_S
END

IF ~~ THEN bjornin_S_03
SAY @137
++ @138 + bjornin_S_08_01
++ @134 + bjornin_S_04
++ @103 + bjornin_12_S
END

IF ~~ THEN bjornin_S_03_01
SAY @139
++ @136 + bjornin_S_09
++ @138 + bjornin_S_08_01
++ @134 + bjornin_S_04
++ @103 + bjornin_12_S
END

IF ~~ THEN bjornin_S_04
SAY @140

+ ~Global("C#Bjorni_BjorninOnTop","LOCALS",0)~ + @127 DO ~SetGlobal("C#Bjorni_BjorninRiding","LOCALS",0) SetGlobal("C#Bjorni_BjorninOnTop","LOCALS",1) SetGlobal("C#Bjorni_SideBySide","LOCALS",0) SetGlobal("C#Bjorni_FromBehind","LOCALS",0)~ + bjornin_S_02_01

+ ~Global("C#Bjorni_SideBySide","LOCALS",0)~ + @128 DO ~SetGlobal("C#Bjorni_BjorninRiding","LOCALS",0) SetGlobal("C#Bjorni_BjorninOnTop","LOCALS",0) SetGlobal("C#Bjorni_SideBySide","LOCALS",1) SetGlobal("C#Bjorni_FromBehind","LOCALS",0)~ + bjornin_S_02_01

+ ~Global("C#Bjorni_BjorninRiding","LOCALS",0)~ + @141 DO ~SetGlobal("C#Bjorni_BjorninRiding","LOCALS",1) SetGlobal("C#Bjorni_BjorninOnTop","LOCALS",0) SetGlobal("C#Bjorni_SideBySide","LOCALS",0) SetGlobal("C#Bjorni_FromBehind","LOCALS",0)~ + bjornin_S_03_01

+ ~Global("C#Bjorni_FromBehind","LOCALS",0)~ + @130 DO ~SetGlobal("C#Bjorni_BjorninRiding","LOCALS",0) SetGlobal("C#Bjorni_BjorninOnTop","LOCALS",0) SetGlobal("C#Bjorni_SideBySide","LOCALS",0) SetGlobal("C#Bjorni_FromBehind","LOCALS",1)~ + bjornin_S_02_01

++ @103 + bjornin_12_S
END

IF ~~ THEN bjornin_S_04_01
SAY @142
++ @136 + bjornin_S_09
++ @143 + bjornin_S_05_01
++ @144 + bjornin_S_06
++ @134 + bjornin_S_04
++ @103 + bjornin_12_S
END

IF ~~ THEN bjornin_S_05_01
SAY @145
++ @136 + bjornin_S_09
++ @133 + bjornin_S_05_02
++ @144 + bjornin_S_06
++ @134 + bjornin_S_04
++ @103 + bjornin_12_S
END

IF ~~ THEN bjornin_S_05_02
SAY @146
++ @136 + bjornin_S_09
++ @133 + bjornin_S_05_03
++ @144 + bjornin_S_06
++ @134 + bjornin_S_04
++ @103 + bjornin_12_S
END

IF ~~ THEN bjornin_S_05_03
SAY @147
++ @136 + bjornin_S_09
++ @133 + bjornin_S_05_04
++ @144 + bjornin_S_06
++ @134 + bjornin_S_04
++ @103 + bjornin_12_S
END

IF ~~ THEN bjornin_S_05_04
SAY @148
++ @136 + bjornin_S_09
++ @133 + bjornin_S_05_01
++ @144 + bjornin_S_06
++ @134 + bjornin_S_04
++ @103 + bjornin_12_S
END

IF ~~ THEN bjornin_S_06
SAY @149
++ @136 + bjornin_S_09
++ @133 + bjornin_S_06_01
++ @150 + bjornin_S_07
++ @151 + bjornin_S_05_04
++ @134 + bjornin_S_04
++ @103 + bjornin_12_S
END

IF ~~ THEN bjornin_S_06_01
SAY @152
++ @136 + bjornin_S_09
++ @133 + bjornin_S_06_02
++ @150 + bjornin_S_07
++ @151 + bjornin_S_05_04
++ @134 + bjornin_S_04
++ @103 + bjornin_12_S
END

IF ~~ THEN bjornin_S_06_02
SAY @153
++ @136 + bjornin_S_09
++ @143 + bjornin_S_06_03
++ @150 + bjornin_S_07
++ @151 + bjornin_S_05_04
++ @134 + bjornin_S_04
++ @103 + bjornin_12_S
END

IF ~~ THEN bjornin_S_06_03
SAY @154
++ @136 + bjornin_S_09
++ @133 + bjornin_S_06_04
++ @150 + bjornin_S_07
++ @151 + bjornin_S_05_04
++ @134 + bjornin_S_04
++ @103 + bjornin_12_S
END

IF ~~ THEN bjornin_S_06_04
SAY @155
++ @136 + bjornin_S_09
++ @143 + bjornin_S_06_01
++ @150 + bjornin_S_07
++ @151 + bjornin_S_05_04
++ @134 + bjornin_S_04
++ @103 + bjornin_12_S
END

IF ~~ THEN bjornin_S_07
SAY @156
= @157
++ @136 + bjornin_S_09
++ @143 + bjornin_S_07_01
++ @158 + bjornin_S_06_04
++ @134 + bjornin_S_04
++ @103 + bjornin_12_S
END

IF ~~ THEN bjornin_S_07_01
SAY @159
++ @136 + bjornin_S_09
++ @143 + bjornin_S_07_02
++ @158 + bjornin_S_06_04
++ @134 + bjornin_S_04
++ @103 + bjornin_12_S
END

IF ~~ THEN bjornin_S_07_02
SAY @160
++ @136 + bjornin_S_09
++ @143 + bjornin_S_07_03
++ @158 + bjornin_S_06_04
++ @134 + bjornin_S_04
++ @103 + bjornin_12_S
END

IF ~~ THEN bjornin_S_07_03
SAY @161
++ @136 + bjornin_S_09
++ @162 + bjornin_S_07_04
++ @158 + bjornin_S_06_04
++ @134 + bjornin_S_04
++ @103 + bjornin_12_S
END

IF ~~ THEN bjornin_S_07_04
SAY @163
++ @136 + bjornin_S_09
++ @164 + bjornin_S_07_01
++ @158 + bjornin_S_06_04
++ @134 + bjornin_S_04
++ @103 + bjornin_12_S
END

IF ~~ THEN bjornin_S_08_01
SAY @165
++ @136 + bjornin_S_09
++ @166 + bjornin_S_08_02
++ @167 + bjornin_S_08_02
++ @168 + bjornin_S_08_02
++ @169 + bjornin_S_08_02
++ @134 + bjornin_S_04
++ @103 + bjornin_12_S
END


IF ~~ THEN bjornin_S_08_02
SAY @170
++ @136 + bjornin_S_09
++ @171 + bjornin_S_08_03
++ @167 + bjornin_S_08_03
++ @168 + bjornin_S_08_03
++ @169 + bjornin_S_08_03
++ @134 + bjornin_S_04
++ @103 + bjornin_12_S
END

IF ~~ THEN bjornin_S_08_03
SAY @172
++ @136 + bjornin_S_09
++ @171 + bjornin_S_08_04
++ @167 + bjornin_S_08_04
++ @168 + bjornin_S_08_04
++ @169 + bjornin_S_08_04
++ @134 + bjornin_S_04
++ @103 + bjornin_12_S
END

IF ~~ THEN bjornin_S_08_04
SAY @173 
++ @136 + bjornin_S_09
++ @171 + bjornin_S_08_05
++ @167 + bjornin_S_08_05
++ @168 + bjornin_S_08_05
++ @169 + bjornin_S_08_05
++ @134 + bjornin_S_04
++ @103 + bjornin_12_S
END

IF ~~ THEN bjornin_S_08_05
SAY @174 
++ @136 + bjornin_S_09
++ @171 + bjornin_S_08_01
++ @167 + bjornin_S_08_01
++ @168 + bjornin_S_08_01
++ @169 + bjornin_S_08_01
++ @134 + bjornin_S_04
++ @103 + bjornin_12_S
END

IF ~~ THEN bjornin_S_09
SAY @175
= @176
= @177
= @178 
++ @179 + bjornin_end_05
++ @180 + bjornin_end_01
++ @181 + bjornin_end_03
++ @182 + bjornin_end_02
END

IF ~~ THEN bjornin_end_01
SAY @183
++ @184 + bjornin_end_05
++ @181 + bjornin_end_03
++ @185 + bjornin_end_02
END

IF ~~ THEN bjornin_end_02
SAY @186
IF ~~ THEN + bjornin_end_04
END

IF ~~ THEN bjornin_end_03
SAY @187
IF ~~ THEN + bjornin_end_04
END

IF ~~ THEN bjornin_end_04
SAY @188
IF ~~ THEN + bjornin_02
END

IF ~~ THEN bjornin_end_05
SAY @189
IF ~~ THEN + bjornin_end_04
END