INTERJECT CHALCY01 19 RE_Cyric1
== CHALCY01 IF ~OR(4) Race(Player1,ELF) Race(Player1,HALF_ELF) Race(Player1,HUMAN) Race(Player1,HALFLING) Gender(Player1,FEMALE)~ THEN @0
== CHALCY01 IF ~OR(4) Race(Player1,ELF) Race(Player1,HALF_ELF) Race(Player1,HUMAN) Race(Player1,HALFLING) Gender(Player1,FEMALE)~ THEN @1
END
++ @2 EXTERN CHALCY01 RE_Cyric1.1
++ @3 EXTERN CHALCY01 RE_Cyric1.2
++ @4 EXTERN CHALCY01 RE_Cyric1.3
++ @5 EXTERN CHALCY01 RE_Cyric1.4
++ @6 EXTERN CHALCY01 RE_Cyric1.5

APPEND CHALCY01

IF ~~ RE_Cyric1.1
SAY @7
IF ~~ + RE_Cyric1.6
END

IF ~~ RE_Cyric1.2
SAY @8
IF ~~ + RE_Cyric1.6
END

IF ~~ RE_Cyric1.3
SAY @9
IF ~~ + RE_Cyric1.6
END

IF ~~ RE_Cyric1.4
SAY @10
IF ~~ + RE_Cyric1.6
END

IF ~~ RE_Cyric1.5
SAY @11
COPY_TRANS CHALCY01 19
END

IF ~~ RE_Cyric1.6
SAY @12
= @13
++ @14 + RE_Cyric1.10
++ @15 + RE_Cyric1.7
++ @16 + RE_Cyric1.8
++ @17 + RE_Cyric1.9
++ @18 + RE_Cyric1.5
END

IF ~~ RE_Cyric1.7
SAY @19
IF ~~ + RE_Cyric1.10
END

IF ~~ RE_Cyric1.8
SAY @20
IF ~~ + RE_Cyric1.10
END

IF ~~ RE_Cyric1.9
SAY @21
IF ~~ + RE_Cyric1.10
END

IF ~~ RE_Cyric1.10
SAY @22
IF ~~ DO ~SetGlobal("RE_CyricSex","GLOBAL",1) ActionOverride(Player1,DropInventory())~ + RE_Cyric1.11
END

IF ~~ RE_Cyric1.11
SAY @23
= @24
++ @25 + RE_Cyric1.12
++ @26 + RE_Cyric1.13
++ @27 + RE_Cyric1.14
++ @28 + RE_Cyric1.15
END

IF ~~ RE_Cyric1.12
SAY @29
IF ~~ + RE_Cyric1.15
END

IF ~~ RE_Cyric1.13
SAY @30
IF ~~ + RE_Cyric1.15
END

IF ~~ RE_Cyric1.14
SAY @31
IF ~~ + RE_Cyric1.15
END

IF ~~ RE_Cyric1.15
SAY @32
++ @33 + RE_Cyric1.16
++ @34 + RE_Cyric1.17
++ @35 + RE_Cyric1.18
++ @36 + RE_Cyric1.19
END

IF ~~ RE_Cyric1.16
SAY @37
IF ~~ + RE_Cyric1.20
END

IF ~~ RE_Cyric1.17
SAY @38
IF ~~ + RE_Cyric1.20
END

IF ~~ RE_Cyric1.18
SAY @39
IF ~~ + RE_Cyric1.20
END

IF ~~ RE_Cyric1.19
SAY @40
IF ~~ + RE_Cyric1.20
END

IF ~~ RE_Cyric1.20
SAY @41
= @42
= @43
= @44
= @45
= @46
= @47
COPY_TRANS CHALCY01 19
END

END