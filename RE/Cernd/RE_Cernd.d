APPEND CERNDJ

IF ~Global("RE_Cernd","GLOBAL",1)~ cd2v
SAY @0 
++ @1 
DO ~SetGlobal("RE_Cernd","GLOBAL",2)~ + cd2v.ignore
++ @2 DO ~SetGlobal("RE_Cernd","GLOBAL",2) SetGlobal("RE_CerndFlirt","GLOBAL",1)~ + cd2v.1
END

IF ~~ cd2v.1
SAY @3
++ @4 + cd2v.ignore
++ @5 + cd2v.2
++ @6 + cd2v.9
END

IF ~~ cd2v.2
SAY @7
++ @8 + cd2v.3
++ @9 + cd2v.3
++ @10 + cd2v.9
END

IF ~~ cd2v.3
SAY @11
++ @12 + cd2v.4
++ @13 + cd2v.5
++ @14 + cd2v.6
END

IF ~~ cd2v.4
SAY @15
IF ~~ + cd2v.7
END

IF ~~ cd2v.5
SAY @16
IF ~~ + cd2v.7
END

IF ~~ cd2v.6
SAY @17
IF ~~ + cd2v.7
END

IF ~~ cd2v.7
SAY @18
++ @19 + cd2v.11
++ @20 + cd2v.8
++ @21 + cd2v.end
END

IF ~~ cd2v.8
SAY @22
IF ~~ + cd2v.11
END

IF ~~ cd2v.9
SAY @23
IF ~~ + cd2v.11
END

IF ~~ cd2v.11
SAY @24
++ @25 + cd2v.12
++ @26 + cd2v.12
++ @27 + cd2v.13
++ @28 + cd2v.end
END

IF ~~ cd2v.12
SAY @29
IF ~~ + cd2v.14
END

IF ~~ cd2v.13
SAY @30
IF ~~ + cd2v.14
END

IF ~~ cd2v.14
SAY @31
++ @32 + cd2v.15
++ @33 + cd2v.16
++ @34 + cd2v.17
++ @35 + cd2v.end
END

IF ~~ cd2v.15
SAY @36
IF ~~ + cd2v.19
END

IF ~~ cd2v.16
SAY @37
IF ~~ + cd2v.19
END

IF ~~ cd2v.17
SAY @38
++ @39 + cd2v.18
++ @40 + cd2v.15
++ @41 + cd2v.end2
END

IF ~~ cd2v.18
SAY @42
IF ~~ + cd2v.end
END

IF ~~ cd2v.19
SAY @43
++ @44 + cd2v.21
++ @45 + cd2v.21
++ @46 + cd2v.end2
END

IF ~~ cd2v.21
SAY @47
++ @48 + cd2v.23
++ @49 + cd2v.22
++ @50 + cd2v.end2
END

IF ~~ cd2v.22
SAY @51
IF ~~ + cd2v.23
END

IF ~~ cd2v.23
SAY @52
= @53
= @54
++ @55 + cd2v.24
++ @56 + cd2v.24
++ @57 + cd2v.26
++ @58 + cd2v.18
END

IF ~~ cd2v.24
SAY @59
++ @60 + cd2v.27
++ @61 + cd2v.25
++ @62 + cd2v.end2
END

IF ~~ cd2v.25
SAY @63
IF ~~ + cd2v.27
END

IF ~~ cd2v.26
SAY @64
++ @60 + cd2v.27
++ @61 + cd2v.25
++ @62 + cd2v.end2
END

IF ~~ cd2v.27
SAY @65
++ @66 + cd2v.28
++ @67 + cd2v.29
++ @68 + cd2v.31
++ @62 + cd2v.end2
END

IF ~~ cd2v.28
SAY @69
++ @70 + cd2v.32
++ @71 + cd2v.34
++ @62 + cd2v.end2
END

IF ~~ cd2v.29
SAY @72
IF ~~ + cd2v.34
END

IF ~~ cd2v.31
SAY @73
++ @74 + cd2v.34
++ @75 + cd2v.33
++ @76 + cd2v.33
END

IF ~~ cd2v.32
SAY @77
IF ~~ + cd2v.35
END

IF ~~ cd2v.33
SAY @78
IF ~~ + cd2v.34
END

IF ~~ cd2v.34
SAY @79
++ @80 + cd2v.32
++ @81 + cd2v.35
++ @62 + cd2v.end2
END

IF ~~ cd2v.35
SAY @82
= @83
++ @84 + cd2v.36
++ @85 + cd2v.36
++ @86 + cd2v.36
END

IF ~~ cd2v.36
SAY @87
= @88
= @89
= @90
++ @91 + cd2v.37
++ @92 +cd2v.37
++ @93 + cd2v.39
END

IF ~~ cd2v.37
SAY @94
++ @95 + cd2v.38
++ @96 + cd2v.38
++ @97 + cd2v.39
END

IF ~~ cd2v.38
SAY @98
IF ~~ + cd2v.39
END

IF ~~ cd2v.39
SAY @99
= @100
= @101
= @102
++ @103 + cd2v.41
++ @104 + cd2v.42
++ @105 + cd2v.43
END

IF ~~ cd2v.41
SAY @106
IF ~~ + cd2v.42
END

IF ~~ cd2v.42
SAY @107
++ @108 + cd2v.44
++ @109 + cd2v.45
++ @110 + cd2v.46
++ @105 + cd2v.43
END

IF ~~ cd2v.43
SAY @111
++ @112 + cd2v.over2
++ @113 + cd2v.47
++ @114 + cd2v.over1
END

IF ~~ cd2v.44
SAY @115
IF ~~ + cd2v.over2
END

IF ~~ cd2v.45
SAY @116
IF ~~ + cd2v.over2
END

IF ~~ cd2v.46
SAY @117
++ @118 + cd2v.49
++ @119 + cd2v.end2
END

IF ~~ cd2v.over
SAY @120
IF ~~ + cd2v.over2
END

IF ~~ cd2v.over1
SAY @121
IF ~~ + cd2v.over2
END

IF ~~ cd2v.over2
SAY @122
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ cd2v.over3
SAY @123
IF ~~ + cd2v.over2
END

IF ~~ cd2v.47
SAY @124
++ @125 + cd2v.over
++ @126 + cd2v.48
++ @127 + cd2v.over1
END

IF ~~ cd2v.48
SAY @128
IF ~~ + cd2v.52
END

IF ~~ cd2v.49
SAY @129
++ @130 + cd2v.over1
++ @131 + cd2v.51
++ @132 + cd2v.over1
END

IF ~~ cd2v.51
SAY @133
++ @134 + cd2v.45
++ @135 + cd2v.52
++ @132 + cd2v.over1
END

IF ~~ cd2v.52
SAY @136
++ @137 + cd2v.over
++ @96 + cd2v.over3
++ @138 + cd2v.53
++ @139 + cd2v.53
END

IF ~~ cd2v.53
SAY @140
++ @141 + cd2v.54
++ @96 + cd2v.over3
++ @137 + cd2v.over
END

IF ~~ cd2v.54
SAY @142
++ @143 + cd2v.55
++ @144 + cd2v.55
++ @145 + cd2v.over3
++ @146 + cd2v.over4
END

IF ~~ cd2v.over4
SAY @147
IF ~~ + cd2v.over2
END

IF ~~ cd2v.55
SAY @148
= @149
++ @150 + cd2v.56
++ @151 + cd2v.56
++ @152 + cd2v.over5
END

IF ~~ cd2v.over5
SAY @153 
IF ~~ + cd2v.over4
END

IF ~~ cd2v.56
SAY @154
++ @155 + cd2v.57
++ @156 + cd2v.58
++ @152 + cd2v.over5
END

IF ~~ cd2v.57
SAY @157
++ @158 + cd2v.58
++ @159 + cd2v.59
++ @152 + cd2v.over5
END

IF ~~ cd2v.58
SAY @160
IF ~~ + cd2v.61
END

IF ~~ cd2v.59
SAY @161
= @162
= @163
IF ~~ + cd2v.61
END

IF ~~ cd2v.61
SAY @164
IF ~~ DO ~SetGlobal("RE_CerndSex","GLOBAL",1)~ + cd2v.extra
END

IF ~~ cd2v.extra
SAY @165
= @166
= @167
++ @168 + cd2v.62
++ @169 + cd2v.63
++ @170 + cd2v.64
END

IF ~~ cd2v.62
SAY @171
++ @172 + cd2v.63
++ @173 + cd2v.63
++ @170 + cd2v.64
END

IF ~~ cd2v.63
SAY @174
++ @175 + cd2v.65
++ @176 + cd2v.66
++ @177 + cd2v.67
END 

IF ~~ cd2v.64
SAY @178
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ cd2v.65
SAY @179
IF ~~ + cd2v.last
END

IF ~~ cd2v.66
SAY @180
IF ~~ + cd2v.last
END

IF ~~ cd2v.67
SAY @181
IF ~~ + cd2v.last
END

IF ~~ cd2v.last
SAY @182
= @183
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ cd2v.ignore
SAY @184
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ cd2v.end
SAY @185
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ cd2v.end2
SAY @186
IF ~~ DO ~RestParty()~ EXIT
END

END