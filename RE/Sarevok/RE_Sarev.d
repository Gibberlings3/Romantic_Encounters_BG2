APPEND SAREV25J

IF WEIGHT #-1 ~Global("RE_Sarevok","GLOBAL",1)~ s9r
SAY @0 
IF ~~ DO ~SetGlobal("RE_Sarevok","GLOBAL",2)~ + s9r.extra
END

IF ~~ s9r.extra
SAY @1
++ @2 + s9r.done
++ @3 + s9r.1
++ @4 + s9r.1
END

IF ~~ s9r.1
SAY @5
++ @6 + s9r.done
++ @7 + s9r.2
++ @8 + s9r.3
END

IF ~~ s9r.2
SAY @9
++ @10 + s9r.done
++ @11 + s9r.4
++ @12 + s9r.4
END

IF ~~ s9r.3
SAY @13
++ @10 + s9r.done
++ @11 + s9r.4
++ @12 + s9r.4
END

IF ~~ s9r.4
SAY @14
++ @10 + s9r.done
++ @15 + s9r.5
++ @16 + s9r.5
END

IF ~~ s9r.5
SAY @17
= @18
= @19
++ @20 + s9r.6
++ @21 + s9r.7
++ @22 + s9r.7
END

IF ~~ s9r.6
SAY @23
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ s9r.7
SAY @24
= @25
++ @26 + s9r.6
++ @27 + s9r.8
++ @28 + s9r.8
END

IF ~~ s9r.8
SAY @29
++ @30 + s9r.done
++ @31 + s9r.9
++ @32 + s9r.9
END

IF ~~ s9r.9
SAY @33
++ @30 + s9r.done
++ @34 + s9r.11
++ @35 + s9r.12
END

IF ~~ s9r.11
SAY @36
++ @37 + s9r.done
++ @38 + s9r.13
++ @35 + s9r.12
END

IF ~~ s9r.12
SAY @39 
= @40 
IF ~~ + s9r.14
END

IF ~~ s9r.13
SAY @41
= @40 
IF ~~ + s9r.14
END

IF ~~ s9r.14
SAY @42
++ @43 + s9r.15
++ @44 + s9r.17
++ @45 + s9r.17
END

IF ~~ s9r.15
SAY @46
++ @47 + s9r.16
++ @48 + s9r.17
++ @49 + s9r.17
END

IF ~~ s9r.16
SAY @50 
IF ~~ + s9r.17
END

IF ~~ s9r.17
SAY @51 
IF ~~ DO ~SetGlobal("RE_SarevokSex","GLOBAL",1)~ + s9r.extra2
END

IF ~~ s9r.extra2
SAY @52
++ @53 + s9r.18
++ @54 + s9r.19
++ @55 + s9r.19
END

IF ~~ s9r.18
SAY @56 
IF ~~ + s9r.21
END

IF ~~ s9r.19
SAY @57 
IF ~~ + s9r.21
END

IF ~~ s9r.21
SAY @58 
IF ~~ + s9r.22
END

IF ~~ s9r.22
SAY @59 
IF ~~ + s9r.23
END

IF ~~ s9r.23
SAY @60
++ @61 + s9r.24
++ @62 + s9r.25
++ @63 + s9r.25
END

IF ~~ s9r.24
SAY @64 
++ @65 + s9r.26
++ @66 + s9r.27
END

IF ~~ s9r.25
SAY @67
++ @65 + s9r.26
++ @66 + s9r.27
END

IF ~~ s9r.26
SAY @68 
IF ~~ + s9r.49
END

IF ~~ s9r.27
SAY @69 
IF ~~ + s9r.49
END

IF ~~ s9r.49
SAY @70
++ @71 + s9r.28
++ @72 + s9r.28
END

IF ~~ s9r.28
SAY @73
= @74
++ @75 + s9r.29
++ @76 + s9r.31
++ @77 + s9r.32
END

IF ~~ s9r.29
SAY @78
IF ~~ + s9r.33
END

IF ~~ s9r.31
SAY @79
IF ~~ + s9r.33
END

IF ~~ s9r.32
SAY @80
IF ~~ + s9r.33
END

IF ~~ s9r.33
SAY @81
++ @82 + s9r.done
++ @83 + s9r.34
++ @84 + s9r.35
END

IF ~~ s9r.34
SAY @85 
= @86 
= @87
++ @82 + s9r.done
++ @84 + s9r.35
END

IF ~~ s9r.35
SAY @88
++ @89 + s9r.36
++ @90 + s9r.36
++ @91 + s9r.36
END

IF ~~ s9r.36
SAY @92 
= @93
++ @94 + s9r.37
++ @95 + s9r.38
++ @96 + s9r.39
END

IF ~~ s9r.37
SAY @97
IF ~~ + s9r.41
END

IF ~~ s9r.38
SAY @98
IF ~~ + s9r.41
END

IF ~~ s9r.39
SAY @99
IF ~~ + s9r.41
END

IF ~~ s9r.41
SAY @100 
= @101
= @102 
= @103 
IF ~~ + s9r.42
END

IF ~~ s9r.42
SAY @104
++ @105 + s9r.43
++ @106 + s9r.43
++ @107 + s9r.43
END

IF ~~ s9r.43
SAY @108
++ @109 + s9r.45
++ @110 + s9r.44
++ @111 + s9r.45
END

IF ~~ s9r.44
SAY @112 
IF ~~ + s9r.45
END

IF ~~ s9r.45
SAY @113
++ @114 + s9r.done
++ @115 + s9r.46
++ @116 + s9r.47
++ @117 + s9r.48
END

IF ~~ s9r.46
SAY @118 
IF ~~ + s9r.last
END

IF ~~ s9r.47
SAY @119 
IF ~~ + s9r.last
END

IF ~~ s9r.48
SAY @120
IF ~~ + s9r.last
END

IF ~~ s9r.last
SAY @121
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ s9r.done
SAY @122
IF ~~ DO ~RestParty()~ EXIT
END

END