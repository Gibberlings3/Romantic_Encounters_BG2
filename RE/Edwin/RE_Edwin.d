APPEND EDWINJ

// 1.

IF WEIGHT #-1 ~Global("RE_EdwinDo","GLOBAL",2)~ RE_Ed1
SAY @0 
+ ~OR(4) Race(Player1,ELF) Race(Player1,HALF_ELF) Race(Player1,HUMAN) Race(Player1,HALFLING)~ + @1 DO ~SetGlobal("RE_EdwinDo","GLOBAL",3)~ + RE_Ed1.1
+ ~OR(4) Race(Player1,ELF) Race(Player1,HALF_ELF) Race(Player1,HUMAN) Race(Player1,HALFLING)~ + @2 DO ~SetGlobal("RE_EdwinDo","GLOBAL",3)~ + RE_Ed1.1
+ ~!Race(Player1,ELF) !Race(Player1,HALF_ELF) !Race(Player1,HUMAN) !Race(Player1,HALFLING)~ + @1 DO ~SetGlobal("RE_EdwinDo","GLOBAL",3)~ + RE_Ed1.2
+ ~!Race(Player1,ELF) !Race(Player1,HALF_ELF) !Race(Player1,HUMAN) !Race(Player1,HALFLING)~ + @2 DO ~SetGlobal("RE_EdwinDo","GLOBAL",3)~ + RE_Ed1.2
++ @3 DO ~SetGlobal("RE_EdwinDo","GLOBAL",3)~ + RE_Ed1.0
++ @4 DO ~SetGlobal("RE_EdwinDo","GLOBAL",3)~ + RE_Ed1.0
END

IF ~~ RE_Ed1.0
SAY @5
IF ~~ EXIT
END

IF ~~ RE_Ed1.1
SAY @6
= @7
++ @8 + RE_Ed1.6
++ @9 + RE_Ed1.6
++ @10 + RE_Ed1.7
++ @11 + RE_Ed1.7
++ @12 + RE_Ed1.0
END

IF ~~ RE_Ed1.2
SAY @13
++ @14 + RE_Ed1.3
++ @15 + RE_Ed1.3
++ @16 + RE_Ed1.4
++ @17 + RE_Ed1.4
++ @18 + RE_Ed1.0
END

IF ~~ RE_Ed1.3
SAY @19
IF ~~ + RE_Ed1.5
END

IF ~~ RE_Ed1.4
SAY @20
IF ~~ + RE_Ed1.5
END

IF ~~ RE_Ed1.5
SAY @21
IF ~~ EXIT
END

IF ~~ RE_Ed1.6
SAY @22
++ @23 + RE_Ed1.7
++ @24 + RE_Ed1.8
END

IF ~~ RE_Ed1.7
SAY @25
++ @26 + RE_Ed1.9
++ @27 + RE_Ed1.10
++ @28 + RE_Ed1.9
+ ~InParty("Viconia")~ + @29 + RE_Ed1.11
+ ~InParty("Mazzy")~ + @30 + RE_Ed1.11
END

IF ~~ RE_Ed1.8
SAY @31
IF ~~ EXIT
END

IF ~~ RE_Ed1.9
SAY @32
++ @33 + RE_Ed1.12
++ @34 + RE_Ed1.12
++ @35 + RE_Ed1.12
++ @36 + RE_Ed1.8
END

IF ~~ RE_Ed1.10
SAY @37
++ @38 + RE_Ed1.12
++ @39 + RE_Ed1.12
++ @40 + RE_Ed1.12
++ @36 + RE_Ed1.8
END

IF ~~ RE_Ed1.11
SAY @41
++ @42 + RE_Ed1.12
++ @43 + RE_Ed1.12
++ @44 + RE_Ed1.12
++ @36 + RE_Ed1.8
END

IF ~~ RE_Ed1.12
SAY @45
= @46
IF ~~ DO ~SetGlobal("RE_EdwinFlirt","GLOBAL",1)~ EXIT
END

// 2.

IF WEIGHT #-1 ~Global("RE_EdwinDo","GLOBAL",4)~ RE_Ed2
SAY @47 
++ @48 DO ~SetGlobal("RE_EdwinDo","GLOBAL",5)~ + RE_Ed2.1
++ @49 DO ~SetGlobal("RE_EdwinDo","GLOBAL",5)~ + RE_Ed2.1
++ @50 DO ~SetGlobal("RE_EdwinDo","GLOBAL",5)~ + RE_Ed2.1
++ @51 DO ~SetGlobal("RE_EdwinDo","GLOBAL",5)~ + RE_Ed2.2
++ @52 DO ~SetGlobal("RE_EdwinDo","GLOBAL",5)~ + RE_Ed2.2
++ @53 DO ~SetGlobal("RE_EdwinDo","GLOBAL",5)~ + RE_Ed2.3
END

IF ~~ RE_Ed2.0
SAY @54
= @55
IF ~~ + RE_Ed2.4
END

IF ~~ RE_Ed2.1
SAY @56
IF ~~ + RE_Ed2.0
END

IF ~~ RE_Ed2.2
SAY @57
IF ~~ + RE_Ed2.0
END

IF ~~ RE_Ed2.3
SAY @58
IF ~~ DO ~RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END

IF ~~ RE_Ed2.4
SAY @59
++ @60 + RE_Ed2.5
++ @61 + RE_Ed2.6
++ @62 + RE_Ed2.7
++ @63 + RE_Ed2.8
++ @64 + RE_Ed2.3
END

IF ~~ RE_Ed2.5
SAY @65
IF ~~ + RE_Ed2.6
END

IF ~~ RE_Ed2.6
SAY @66
IF ~~ + RE_Ed2.9
END

IF ~~ RE_Ed2.7
SAY @67
IF ~~ + RE_Ed2.6
END

IF ~~ RE_Ed2.8
SAY @68
IF ~~ + RE_Ed2.9
END

IF ~~ RE_Ed2.9
SAY @69
IF ~~ DO ~SetGlobal("RE_EdwinSex","GLOBAL",1) RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END

// 3.

IF WEIGHT #-1 ~Global("RE_EdwinDo","GLOBAL",6)~ RE_Ed3
SAY @70 
= @71 
++ @72 DO ~SetGlobal("RE_EdwinDo","GLOBAL",7) RealSetGlobalTimer("RE_EdwinTimer","GLOBAL",3000)~ + RE_Ed3.1
++ @73 DO ~SetGlobal("RE_EdwinDo","GLOBAL",7) RealSetGlobalTimer("RE_EdwinTimer","GLOBAL",3000)~ + RE_Ed3.1
++ @74 DO ~SetGlobal("RE_EdwinDo","GLOBAL",7) RealSetGlobalTimer("RE_EdwinTimer","GLOBAL",3000)~ + RE_Ed3.2
++ @75 DO ~SetGlobal("RE_EdwinDo","GLOBAL",7) RealSetGlobalTimer("RE_EdwinTimer","GLOBAL",3000)~ + RE_Ed3.2
++ @76 DO ~SetGlobal("RE_EdwinDo","GLOBAL",7) RealSetGlobalTimer("RE_EdwinTimer","GLOBAL",3000)~ + RE_Ed3.3
END

IF ~~ RE_Ed3.1
SAY @77
IF ~~ + RE_Ed3.4
END

IF ~~ RE_Ed3.2
SAY @78
IF ~~ + RE_Ed3.4
END

IF ~~ RE_Ed3.3
SAY @79 
= @80
IF ~~ + RE_Ed3.4
END

IF ~~ RE_Ed3.4
SAY @81
IF ~~ EXIT
END

// 4.

IF WEIGHT #-1 ~Global("RE_EdwinDo","GLOBAL",8)~ RE_Ed4
SAY @82 
++ @83 DO ~SetGlobal("RE_EdwinDo","GLOBAL",9)~ + RE_Ed4.1
++ @84 DO ~SetGlobal("RE_EdwinDo","GLOBAL",9)~ + RE_Ed4.2
++ @85 DO ~SetGlobal("RE_EdwinDo","GLOBAL",9)~ + RE_Ed4.3
++ @86 DO ~SetGlobal("RE_EdwinDo","GLOBAL",9)~ + RE_Ed4.0
END

IF ~~ RE_Ed4.0
SAY @87
IF ~~ + RE_Ed4.4
END

IF ~~ RE_Ed4.1
SAY @88
++ @89 + RE_Ed4.5
++ @90 + RE_Ed4.6
++ @91 + RE_Ed4.3
END

IF ~~ RE_Ed4.2
SAY @92
IF ~~ + RE_Ed4.4
END

IF ~~ RE_Ed4.3
SAY @93
IF ~~ + RE_Ed4.4
END

IF ~~ RE_Ed4.4
SAY @94
++ @95 + RE_Ed4.7
++ @96 + RE_Ed4.8
++ @97 + RE_Ed4.8
++ @98 + RE_Ed4.9
END

IF ~~ RE_Ed4.5
SAY @99
IF ~~ + RE_Ed4.4
END

IF ~~ RE_Ed4.6
SAY @100
IF ~~ + RE_Ed4.4
END

IF ~~ RE_Ed4.7
SAY @101
++ @102 + RE_Ed4.10
++ @103 + RE_Ed4.10
++ @104 + RE_Ed4.11
++ @105 + RE_Ed4.12
++ @106 + RE_Ed4.13
END

IF ~~ RE_Ed4.8
SAY @107
IF ~~ + RE_Ed4.7
END

IF ~~ RE_Ed4.9
SAY @108
IF ~~ + RE_Ed4.7
END

IF ~~ RE_Ed4.10
SAY @109
IF ~~ + RE_Ed4.14
END

IF ~~ RE_Ed4.11
SAY @110
IF ~~ + RE_Ed4.14
END

IF ~~ RE_Ed4.12
SAY @111
IF ~~ + RE_Ed4.14
END

IF ~~ RE_Ed4.13
SAY @112
IF ~~ + RE_Ed4.14
END

IF ~~ RE_Ed4.14
SAY @113
IF ~~ EXIT
END

END
