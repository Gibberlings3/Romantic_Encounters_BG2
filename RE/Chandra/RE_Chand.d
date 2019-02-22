BEGIN RE_CHAND

IF ~True()~ sh1_00
SAY @0
++ @1 + sh1_01
++ @2 + sh1_01
++ @3 + sh1_01
END

IF ~~ sh1_01
SAY @4
= @5
++ @6 + sh1_02
++ @7 + sh1_03
++ @8 + sh1_04
END

IF ~~ sh1_02
SAY @9
= @10
++ @8 + sh1_04
++ @11 + sh1_05
END

IF ~~ sh1_03
SAY @12 
IF ~~ DO ~EscapeArea()~ EXIT
END

IF ~~ sh1_04
SAY @13
IF ~~ DO ~EscapeArea()~ EXIT
END

IF ~~ sh1_05
SAY @14
= @15
++ @16 + sh1_06
++ @17 + sh1_07
++ @18 + sh1_08
END

IF ~~ sh1_06
SAY @19 
IF ~~ + sh1_09
END

IF ~~ sh1_07
SAY @20 
IF ~~ + sh1_09
END

IF ~~ sh1_08
SAY @21 
IF ~~ DO ~EscapeArea()~ EXIT
END

IF ~~ sh1_09
SAY @22
++ @23 + sh1_10
++ @24 + sh1_11
++ @25 + sh1_11
++ @26 + sh1_08
END

IF ~~ sh1_10
SAY @27
+ ~Class(Player1,BARD_ALL)~ + @28 + sh1_12
++ @29 + sh1_13
++ @30 + sh1_14
++ @31 + sh1_08
END

IF ~~ sh1_11
SAY @32
= @33
+ ~Class(Player1,BARD_ALL)~ + @28 + sh1_12
++ @29 + sh1_13
++ @30 + sh1_14
++ @31 + sh1_08
END

IF ~~ sh1_12
SAY @34
= @35 
IF ~~ + sh1_15
END

IF ~~ sh1_13
SAY @36 
IF ~~ + sh1_15
END

IF ~~ sh1_14
SAY @37 
IF ~~ + sh1_15
END

IF ~~ sh1_15
SAY @38
= @39
++ @40 + sh1_16
++ @41 + sh1_17
++ @42 + sh1_18
++ @43 + sh1_19
END

IF ~~ sh1_16
SAY @44 
IF ~~ + sh1_17
END

IF ~~ sh1_17
SAY @45
++ @46 + sh1_20
++ @47 + sh1_20
++ @48 + sh1_20
END

IF ~~ sh1_18
SAY @49 
IF ~~ + sh1_17
END

IF ~~ sh1_19
SAY @50
= @51 
IF ~~ DO ~EscapeArea()~ EXIT
END

IF ~~ sh1_20
SAY @52
++ @53 + sh1_21
++ @54 + sh1_21
END

IF ~~ sh1_21
SAY @55
++ @56 + sh1_22
++ @57 + sh1_22
END

IF ~~ sh1_22
SAY @58
++ @59 + sh1_23
++ @60 + sh1_23
++ @61 + sh1_23
END

IF ~~ sh1_23
SAY @62
= @63
++ @64 + sh1_24
++ @65 + sh1_25
++ @66 + sh1_26
END

IF ~~ sh1_24
SAY @67
IF ~~ DO ~SetGlobal("RE_ChandraFlirt","GLOBAL",1)~ + sh1_24kissing
END

IF ~~ sh1_24kissing
SAY @68
++ @69 + sh1_29
++ @70 + sh1_30
++ @71 + sh1_31
END

IF ~~ sh1_25
SAY @72
++ @73 + sh1_28
++ @74 + sh1_24
END

IF ~~ sh1_26
SAY @75
= @76
= @77
++ @78 + sh1_27
++ @79 + sh1_27
END

IF ~~ sh1_27
SAY @80
= @81
= @82 
IF ~~ DO ~EscapeArea()~ EXIT
END

IF ~~ sh1_28
SAY @83
= @84
++ @85 + sh1_26
++ @86 + sh1_26
++ @87 + sh1_26
END

IF ~~ sh1_29
SAY @88 
IF ~~ + sh1_32
END

IF ~~ sh1_30
SAY @89
++ @90 + sh1_31
++ @91 + sh1_26
++ @92 + sh1_32
END

IF ~~ sh1_31
SAY @93
= @94 
IF ~~ + sh1_32
END

IF ~~ sh1_32
SAY @95
= @81
+ ~Class(Player1,BARD_ALL)~ + @96 + sh1_33
++ @97 + sh1_34
++ @98 + sh1_35
++ @99 + sh1_36
END

IF ~~ sh1_33
SAY @100
IF ~~ + sh1_34
END

IF ~~ sh1_34
SAY @101 
IF ~~ DO ~EscapeArea()~ EXIT
END

IF ~~ sh1_35
SAY @102
= @103 
IF ~~ + sh1_34
END

IF ~~ sh1_36
SAY @104 
IF ~~ + sh1_34
END