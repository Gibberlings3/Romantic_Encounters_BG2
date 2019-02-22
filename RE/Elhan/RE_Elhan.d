INTERJECT C6ELHAN2 65 RE_ElhanTalk6
== C6ELHAN2 IF ~Race(Player1,ELF) IsGabber(Player1)
OR(4)
Global("RE_ElhanT1","GLOBAL",0)
Global("RE_ElhanT2","GLOBAL",0)
Global("RE_ElhanT3","GLOBAL",0)
Global("RE_ElhanT4","GLOBAL",0)~ THEN @0
END
+ ~Global("RE_ElhanT1","GLOBAL",0)~ + @1 DO ~SetGlobal("RE_ElhanTalk6","GLOBAL",0) SetGlobal("RE_ElhanT1","GLOBAL",1) SetGlobal("ToldElhanAboutBodhi","GLOBAL",1)~ EXTERN C6ELHAN2 RE_Elhan1
+ ~Global("RE_ElhanT2","GLOBAL",0)~ + @2 DO ~SetGlobal("RE_ElhanTalk6","GLOBAL",0) SetGlobal("RE_ElhanT2","GLOBAL",1)~ EXTERN C6ELHAN2 RE_Elhan2
+ ~Global("RE_ElhanT3","GLOBAL",0)~ + @3 DO ~SetGlobal("RE_ElhanTalk6","GLOBAL",0) SetGlobal("RE_ElhanT3","GLOBAL",1)~ EXTERN C6ELHAN2 RE_Elhan3
+ ~Global("RE_ElhanT4","GLOBAL",0)~ + @4 DO ~SetGlobal("RE_ElhanTalk6","GLOBAL",0) SetGlobal("RE_ElhanT4","GLOBAL",1)~ EXTERN C6ELHAN2 RE_Elhan4
++ @5 DO ~SetGlobal("RE_ElhanTalk6","GLOBAL",0)~ EXTERN C6ELHAN2 RE_ElhanBye1
++ @6 DO ~SetGlobal("RE_ElhanTalk6","GLOBAL",0)~ EXTERN C6ELHAN2 RE_ElhanBye2

EXTEND_BOTTOM SUELHAN 9
+ ~Race(Player1,ELF) IsGabber(Player1)~ + @7 EXTERN SUELHAN RE_ElhanBye3
END

EXTEND_BOTTOM SUELHAN 13
+ ~Race(Player1,ELF) IsGabber(Player1) Global("RE_ElhanT5","GLOBAL",0)~ + @8 DO ~SetGlobal("RE_ElhanT5","GLOBAL",1)~ EXTERN SUELHAN RE_Elhan5
+ ~Race(Player1,ELF) IsGabber(Player1) Global("RE_ElhanT6","GLOBAL",0)~ + @9 DO ~SetGlobal("RE_ElhanT6","GLOBAL",1)~ EXTERN SUELHAN RE_Elhan6
+ ~Race(Player1,ELF) IsGabber(Player1) Global("RE_ElhanT7","GLOBAL",0)~ + @10 DO ~SetGlobal("RE_ElhanT7","GLOBAL",1)~ EXTERN SUELHAN RE_Elhan7
+ ~Race(Player1,ELF) IsGabber(Player1) Global("RE_ElhanT8","GLOBAL",0)~ + @11 DO ~SetGlobal("RE_ElhanT8","GLOBAL",1)~ EXTERN SUELHAN RE_Elhan8
+ ~Race(Player1,ELF) IsGabber(Player1) Global("RE_ElhanT9","GLOBAL",0)~ + @12 DO ~SetGlobal("RE_ElhanT9","GLOBAL",1) SetGlobal("RE_ElhanFlirt","GLOBAL",1)~ EXTERN SUELHAN RE_Elhan9
++ @13 EXTERN SUELHAN RE_Elhan10
END

I_C_T SUELHAN 20 RE_ElhanPartAtLast
== SUELHAN @14
== SUELHAN @15
END

APPEND C6ELHAN2

IF ~~ RE_ElhanBye1
SAY @16
COPY_TRANS C6ELHAN2 65
END

IF ~~ RE_ElhanBye2
SAY @17
COPY_TRANS C6ELHAN2 65
END

// 1.

IF ~~ RE_Elhan1
SAY @18
= @19
++ @20 + RE_Elhan1.1
++ @21 + RE_Elhan1.2
++ @22 + RE_ElhanBye2
END

IF ~~ RE_Elhan1.1
SAY @23
IF ~~ + RE_Elhan1.3
END

IF ~~ RE_Elhan1.2
SAY @24
IF ~~ + RE_Elhan1.3
END

IF ~~ RE_Elhan1.3
SAY @25
= @26
= @27
++ @28 + RE_Elhan1.4
++ @29 + RE_Elhan1.5
++ @30 + RE_Elhan1.6
++ @31 + RE_Elhan1.7
END

IF ~~ RE_Elhan1.4
SAY @32
IF ~~ + RE_Elhan1.8
END

IF ~~ RE_Elhan1.5
SAY @33
COPY_TRANS C6ELHAN2 65
END

IF ~~ RE_Elhan1.6
SAY @34
IF ~~ + RE_Elhan1.8
END

IF ~~ RE_Elhan1.7
SAY @35
IF ~~ + RE_Elhan1.8
END

IF ~~ RE_Elhan1.8
SAY @36
COPY_TRANS C6ELHAN2 65
END

// 2.

IF ~~ RE_Elhan2
SAY @37
= @38
++ @39 + RE_Elhan2.1
++ @40 + RE_Elhan2.2
++ @41 + RE_Elhan2.3
END

IF ~~ RE_Elhan2.1
SAY @42
IF ~~ + RE_Elhan2.2
END

IF ~~ RE_Elhan2.2
SAY @43
++ @44 + RE_Elhan2.4
++ @45 + RE_Elhan2.5
++ @46 + RE_Elhan2.6
++ @47 + RE_ElhanBye2
END

IF ~~ RE_Elhan2.3
SAY @48
IF ~~ + RE_Elhan2.2
END

IF ~~ RE_Elhan2.4
SAY @49
COPY_TRANS C6ELHAN2 65
END

IF ~~ RE_Elhan2.5
SAY @50
IF ~~ + RE_Elhan2.4
END

IF ~~ RE_Elhan2.6
SAY @51
COPY_TRANS C6ELHAN2 65
END

// 3.

IF ~~ RE_Elhan3
SAY @52
= @53
++ @54 + RE_Elhan3.1
++ @55 + RE_Elhan3.2
++ @56 + RE_Elhan3.3
++ @57 + RE_Elhan3.4
++ @58 + RE_Elhan3.5
++ @59 + RE_Elhan3.6
END

IF ~~ RE_Elhan3.1
SAY @60
IF ~~ + RE_Elhan3.7
END

IF ~~ RE_Elhan3.2
SAY @61
IF ~~ + RE_Elhan3.7
END

IF ~~ RE_Elhan3.3
SAY @62
IF ~~ + RE_Elhan3.7
END

IF ~~ RE_Elhan3.4
SAY @63
IF ~~ + RE_Elhan3.7
END

IF ~~ RE_Elhan3.5
SAY @64
IF ~~ + RE_Elhan3.7
END

IF ~~ RE_Elhan3.6
SAY @65
IF ~~ + RE_Elhan3.7
END

IF ~~ RE_Elhan3.7
SAY @66
++ @67 + RE_Elhan3.8
++ @68 + RE_Elhan3.9
++ @69 + RE_Elhan3.10
++ @70 + RE_Elhan3.11
END

IF ~~ RE_Elhan3.8
SAY @71
= @72
++ @73 + RE_Elhan3.12
++ @74 + RE_Elhan3.12
++ @75 + RE_Elhan3.11
++ @76 + RE_Elhan3.10
++ @77 + RE_Elhan3.11
END

IF ~~ RE_Elhan3.9
SAY @78
IF ~~ + RE_Elhan3.8
END

IF ~~ RE_Elhan3.10
SAY @79
IF ~~ + RE_Elhan3.11
END

IF ~~ RE_Elhan3.11
SAY @80
COPY_TRANS C6ELHAN2 65
END

IF ~~ RE_Elhan3.12
SAY @81
IF ~~ + RE_Elhan3.11
END

// 4.

IF ~~ RE_Elhan4
SAY @82
++ @83 + RE_Elhan4.1
++ @84 + RE_Elhan4.1
++ @85 + RE_Elhan4.1
++ @86 + RE_ElhanBye2
END

IF ~~ RE_Elhan4.1
SAY @87
++ @88 + RE_Elhan4.2
++ @89 + RE_Elhan4.2
++ @90 + RE_Elhan4.2
++ @91 + RE_ElhanBye2
END

IF ~~ RE_Elhan4.2
SAY @92
IF ~~ + RE_ElhanBye2
END

END

APPEND SUELHAN

IF ~~ RE_ElhanBye3
SAY @93
IF ~~ EXIT
END

// 5.

IF ~~ RE_Elhan5
SAY @94
++ @95 + RE_Elhan5.1
++ @96 + RE_Elhan5.1
++ @97 + RE_Elhan5.1
END

IF ~~ RE_Elhan5.1
SAY @98
++ @99 + RE_Elhan5.2
++ @100 + RE_Elhan5.2
++ @101 + RE_Elhan5.2
++ @102 + RE_Elhan5.2
++ @103 + RE_Elhan5.2
END

IF ~~ RE_Elhan5.2
SAY @104
++ @105 + RE_Elhan5.3
++ @106 + RE_Elhan5.3
++ @107 + RE_Elhan5.3
++ @108 + RE_Elhan5.3
END

IF ~~ RE_Elhan5.3
SAY @109
= @110
IF ~~ EXIT
END

// 6.

IF ~~ RE_Elhan6
SAY @111
++ @112 + RE_Elhan6.1
++ @113 + RE_Elhan6.1
++ @114 + RE_Elhan6.1
++ @115 + RE_Elhan6.0
END

IF ~~ RE_Elhan6.0
SAY @116
IF ~~ + RE_Elhan6.1
END

IF ~~ RE_Elhan6.1
SAY @117
= @118
++ @119 + RE_Elhan6.2
++ @120 + RE_Elhan6.2
++ @121 + RE_Elhan6.3
++ @122 + RE_Elhan6.4
END

IF ~~ RE_Elhan6.2
SAY @123
= @124
IF ~~ + RE_Elhan6.4
END

IF ~~ RE_Elhan6.3
SAY @125
IF ~~ + RE_Elhan6.4
END

IF ~~ RE_Elhan6.4
SAY @126
= @127
= @128
= @129
= @130
++ @131 + RE_Elhan6.6
++ @132 + RE_Elhan6.5
++ @133 + RE_Elhan6.6
++ @134 + RE_Elhan6.6
END

IF ~~ RE_Elhan6.5
SAY @135
IF ~~ + RE_Elhan6.6
END

IF ~~ RE_Elhan6.6
SAY @136
IF ~~ EXIT
END

// 7.

IF ~~ RE_Elhan7
SAY @137
= @138
++ @139 + RE_Elhan7.1
++ @140 + RE_Elhan7.1
++ @141 + RE_Elhan7.1
++ @142 + RE_ElhanBye3
END

IF ~~ RE_Elhan7.1
SAY @143
++ @144 + RE_Elhan7.2
++ @145 + RE_Elhan7.2
++ @146 + RE_Elhan7.3
++ @147 + RE_Elhan7.3
END

IF ~~ RE_Elhan7.2
SAY @148
= @149
IF ~~ + RE_Elhan7.3
END

IF ~~ RE_Elhan7.3
SAY @150
IF ~~ EXIT
END

// 8.

IF ~~ RE_Elhan8
SAY @151
++ @152 + RE_Elhan8.4
++ @153 + RE_Elhan8.2
++ @154 + RE_Elhan8.3
++ @155 + RE_Elhan8.4
++ @156 + RE_ElhanBye3
END

IF ~~ RE_Elhan8.1
SAY @157
IF ~~ + RE_Elhan8.4
END

IF ~~ RE_Elhan8.2
SAY @158
= @159
IF ~~ + RE_Elhan8.1
END

IF ~~ RE_Elhan8.3
SAY @160
IF ~~ + RE_Elhan8.1
END

IF ~~ RE_Elhan8.4
SAY @161
IF ~~ EXIT
END

// 9.

IF ~~ RE_Elhan9
SAY @162
++ @163 + RE_Elhan9.1
++ @164 + RE_Elhan9.2
++ @165 + RE_Elhan9.3
++ @166 + RE_Elhan9.1
END

IF ~~ RE_Elhan9.1
SAY @167
= @168
IF ~~ EXIT
END

IF ~~ RE_Elhan9.2
SAY @169
IF ~~ + RE_Elhan9.1
END

IF ~~ RE_Elhan9.3
SAY @170
IF ~~ + RE_Elhan9.1
END

IF ~~ RE_Elhan10
SAY @171
IF ~~ EXIT
END

END