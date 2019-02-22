EXTEND_BOTTOM KAYL2 31
+ ~IsGabber(Player1) Gender(Player1,FEMALE) Global("PaladinOrder","GLOBAL",1) Global("RE_RyanTrawl1","GLOBAL",0)~ + @0 DO ~SetGlobal("RE_RyanTrawl1","GLOBAL",1)~ EXTERN KAYL2 R1
+ ~IsGabber(Player1) Gender(Player1,FEMALE) Global("PaladinOrder","GLOBAL",1) Global("RE_RyanTrawl2","GLOBAL",0)~ + @1 DO ~SetGlobal("RE_RyanTrawl2","GLOBAL",1)~ EXTERN KAYL2 R2
+ ~IsGabber(Player1) Gender(Player1,FEMALE) Global("PaladinOrder","GLOBAL",1) Global("RE_RyanTrawl3","GLOBAL",0)~ + @2 DO ~SetGlobal("RE_RyanTrawl3","GLOBAL",1)~ EXTERN KAYL2 R3
+ ~IsGabber(Player1) Gender(Player1,FEMALE) Global("PaladinOrder","GLOBAL",1) OR(3) Global("RE_RyanTrawl1","GLOBAL",1) Global("RE_RyanTrawl2","GLOBAL",1) Global("RE_RyanTrawl3","GLOBAL",1) Global("RE_RyanTrawl4","GLOBAL",0)~ + @3 DO ~SetGlobal("RE_RyanTrawl4","GLOBAL",1)~ EXTERN KAYL2 R4
+ ~IsGabber(Player1) Gender(Player1,FEMALE) Global("PaladinOrder","GLOBAL",1) !Dead("C6Bodhi") Global("Chapter","GLOBAL",%bg2_chapter_6%) Global("RE_RyanTrawl5","GLOBAL",0)~ + @4 DO ~SetGlobal("RE_RyanTrawl5","GLOBAL",1)~ EXTERN KAYL2 R5
+ ~IsGabber(Player1) Gender(Player1,FEMALE) Global("PaladinOrder","GLOBAL",1) Dead("C6Bodhi") GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%) Global("RE_RyanTrawl6","GLOBAL",0)~ + @5 DO ~SetGlobal("RE_RyanTrawl6","GLOBAL",1)~ EXTERN KAYL2 R6
+ ~IsGabber(Player1) Gender(Player1,FEMALE) Global("PaladinOrder","GLOBAL",1) Global("RE_RyanTrawl1","GLOBAL",1) Global("RE_RyanTrawl2","GLOBAL",1) Global("RE_RyanTrawl3","GLOBAL",1) Global("RE_RyanTrawl7","GLOBAL",0)~ + @6 DO ~SetGlobal("RE_RyanTrawl7","GLOBAL",1) SetGlobal("RE_RyanFlirt","GLOBAL",1)~ EXTERN KAYL2 R7
+ ~IsGabber(Player1) Gender(Player1,FEMALE) Global("PaladinOrder","GLOBAL",1) GlobalGT("Chapter","GLOBAL",%bg2_chapter_3%)~ + @7 EXTERN KAYL2 R0
END

INTERJECT KAYL2 33 RE_RyanTrawl
== KAYL2 IF ~IsGabber(Player1) Gender(Player1,FEMALE)~ THEN @8
END
+ ~Global("RE_RyanTrawl1","GLOBAL",0)~ + @0 DO ~SetGlobal("RE_RyanTrawl1","GLOBAL",1) SetGlobal("RE_RyanTrawl","GLOBAL",0)~ EXTERN KAYL2 R1
+ ~Global("RE_RyanTrawl2","GLOBAL",0)~ + @1 DO ~SetGlobal("RE_RyanTrawl2","GLOBAL",1) SetGlobal("RE_RyanTrawl","GLOBAL",0)~ EXTERN KAYL2 R2
+ ~Global("RE_RyanTrawl3","GLOBAL",0)~ + @2 DO ~SetGlobal("RE_RyanTrawl3","GLOBAL",1) SetGlobal("RE_RyanTrawl","GLOBAL",0)~ EXTERN KAYL2 R3
+ ~OR(3) Global("RE_RyanTrawl1","GLOBAL",1) Global("RE_RyanTrawl2","GLOBAL",1) Global("RE_RyanTrawl3","GLOBAL",1) Global("RE_RyanTrawl4","GLOBAL",0)~ + @3 DO ~SetGlobal("RE_RyanTrawl4","GLOBAL",1) SetGlobal("RE_RyanTrawl","GLOBAL",0)~ EXTERN KAYL2 R4
+ ~!Dead("C6Bodhi") Global("Chapter","GLOBAL",%bg2_chapter_6%) Global("RE_RyanTrawl5","GLOBAL",0)~ + @4 DO ~SetGlobal("RE_RyanTrawl5","GLOBAL",1) SetGlobal("RE_RyanTrawl","GLOBAL",0)~ EXTERN KAYL2 R5
+ ~Dead("C6Bodhi") GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%) Global("RE_RyanTrawl6","GLOBAL",0)~ + @5 DO ~SetGlobal("RE_RyanTrawl6","GLOBAL",1) SetGlobal("RE_RyanTrawl","GLOBAL",0)~ EXTERN KAYL2 R6
+ ~Global("RE_RyanTrawl1","GLOBAL",1) Global("RE_RyanTrawl2","GLOBAL",1) Global("RE_RyanTrawl3","GLOBAL",1) Global("RE_RyanTrawl7","GLOBAL",0)~ + @6 DO ~SetGlobal("RE_RyanTrawl7","GLOBAL",1) SetGlobal("RE_RyanFlirt","GLOBAL",1) SetGlobal("RE_RyanTrawl","GLOBAL",0)~ EXTERN KAYL2 R7
++ @9 DO ~SetGlobal("RE_RyanTrawl","GLOBAL",0)~ EXTERN KAYL2 R0

APPEND KAYL2

IF ~~ R0
SAY @10
COPY_TRANS KAYL2 33
END

// 1.

IF ~~ R1
SAY @11
= @12
= @13
= @14
++ @15 + R1.1
+ ~Alignment("Anomen",LAWFUL_GOOD) InParty("Anomen")~ + @16 + R1.1
++ @17 + R1.1
++ @18 + R1.1
END

IF ~~ R1.1
SAY @19
++ @20 + R1.2
++ @21 + R1.2
++ @22 + R1.2
++ @23 + R1.3
END

IF ~~ R1.2
SAY @24
= @25
++ @26 + R1.4
++ @27 + R1.4
++ @28 + R1.4
++ @29 + R1.4
END

IF ~~ R1.3
SAY @30
IF ~~ + R1.2
END

IF ~~ R1.4
SAY @31
COPY_TRANS KAYL2 33
END

// 2.

IF ~~ R2
SAY @32
++ @33 + R2.1
++ @34 + R2.1
++ @35 + R2.1
END

IF ~~ R2.1
SAY @36
++ @37 + R2.2
++ @38 + R2.2
++ @39 + R2.2
END

IF ~~ R2.2
SAY @40
= @41
= @42
++ @43 + R2.3
++ @44 + R2.3
++ @45 + R2.4
++ @46 + R2.5
END

IF ~~ R2.3
SAY @47
IF ~~ + R2.5
END

IF ~~ R2.4
SAY @48
IF ~~ + R2.5
END

IF ~~ R2.5
SAY @49
COPY_TRANS KAYL2 33
END

// 3.

IF ~~ R3
SAY @50
++ @51 + R3.1
++ @52 + R3.2
++ @53 + R3.1
++ @54 + R3.0
END

IF ~~ R3.0
SAY @55
IF ~~ + R3.1
END

IF ~~ R3.1
SAY @56
= @57
= @58
IF ~~ + R3.2
END

IF ~~ R3.2
SAY @59
++ @60 + R3.3
++ @61 + R3.4
++ @62 + R3.3
++ @63 + R3.3
END

IF ~~ R3.3
SAY @64
COPY_TRANS KAYL2 33
END

IF ~~ R3.4
SAY @65
COPY_TRANS KAYL2 33
END

// 4.

IF ~~ R4
SAY @66
= @67
++ @68 + R4.1
++ @69 + R4.1
++ @70 + R4.1
END

IF ~~ R4.1
SAY @71
COPY_TRANS KAYL2 33
END

// 5.

IF ~~ R5
SAY @72
++ @73 + R5.1
++ @74 + R5.0
++ @75 + R5.1
END

IF ~~ R5.0
SAY @76
IF ~~ + R5.1
END

IF ~~ R5.1
SAY @77
COPY_TRANS KAYL2 33
END

// 6.

IF ~~ R6
SAY @78
= @79
++ @80 + R6.1
++ @81 + R6.1
++ @82 + R6.2
++ @83 + R6.0
END

IF ~~ R6.0
SAY @84
IF ~~ + R6.1
END

IF ~~ R6.1
SAY @85
IF ~~ + R6.2
END

IF ~~ R6.2
SAY @86
COPY_TRANS KAYL2 33
END

// 7.

IF ~~ R7
SAY @87
++ @88 + R7.1
++ @89 + R7.1
++ @90 + R7.1
++ @91 + R7.1
END

IF ~~ R7.1
SAY @92
= @93
= @94
COPY_TRANS KAYL2 33
END

END