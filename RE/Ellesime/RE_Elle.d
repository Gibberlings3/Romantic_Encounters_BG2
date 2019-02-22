INTERJECT SUELLE2 2 RE_Suelle2Interject2
== SUELLE2 IF ~Gender(Player1,MALE)~ THEN @0
END
++ @1 EXTERN SUELLE2 P#Elle1
++ @2 EXTERN SUELLE2 P#Elle2
++ @3 EXTERN SUELLE2 P#Elle3
++ @4 EXTERN SUELLE2 P#Elle4
++ @5 EXTERN SUELLE2 P#Elle5
++ @6 EXTERN SUELLE2 P#Elle0

CHAIN SUELLE2 P#Elle0
@7
END
COPY_TRANS SUELLE2 2

CHAIN SUELLE2 P#Elle30_sex
@9
= @10
= @11 
= @12
END
COPY_TRANS SUELLE2 2

CHAIN SUELLE2 P#Elle29
@13
= @12
END
COPY_TRANS SUELLE2 2

CHAIN SUELLE2 P#Elle28
@14
END
COPY_TRANS SUELLE2 2

CHAIN SUELLE2 P#Elle27
@15
= @16
END
COPY_TRANS SUELLE2 2

CHAIN SUELLE2 P#Elle26
@17
END
COPY_TRANS SUELLE2 2

CHAIN SUELLE2 P#Elle25
@18
END
COPY_TRANS SUELLE2 2

CHAIN SUELLE2 P#Elle22
@29
END
COPY_TRANS SUELLE2 2

CHAIN SUELLE2 P#Elle21
@30
END
COPY_TRANS SUELLE2 2

CHAIN SUELLE2 P#Elle11
@46
= @16
END
COPY_TRANS SUELLE2 2

CHAIN SUELLE2 P#Elle9
@53
= @54
= @55
= @16
END
COPY_TRANS SUELLE2 2

CHAIN SUELLE2 P#Elle20
@31
END
COPY_TRANS SUELLE2 2

APPEND SUELLE2

IF ~~ P#Elle30
SAY @8
IF ~~ DO ~SetGlobal("RE_ElleSex","GLOBAL",1)~ + P#Elle30_sex
END

IF ~~ P#Elle24
SAY @19
IF ~~ DO ~SetGlobal("RE_ElleFlirt","GLOBAL",1)~ + P#Elle24_kiss
END

IF ~~ P#Elle24_kiss
SAY @20
= @21
+ ~Race(Player1,ELF) CheckStatGT(Player1,14,CHR)~ + @22 + P#Elle30
+ ~!Race(Player1,ELF) CheckStatGT(Player1,17,CHR)~ + @22 + P#Elle30
+ ~Race(Player1,ELF) !CheckStatGT(Player1,14,CHR)~ + @22 + P#Elle29
+ ~!Race(Player1,ELF) !CheckStatGT(Player1,17,CHR)~ + @22 + P#Elle29
++ @23 + P#Elle25
++ @24 + P#Elle26
++ @25 + P#Elle27
++ @26 + P#Elle28
END

IF ~~ P#Elle23
SAY @27
= @28
= @21
+ ~Race(Player1,ELF) CheckStatGT(Player1,14,CHR)~ + @22 + P#Elle30
+ ~!Race(Player1,ELF) CheckStatGT(Player1,17,CHR)~ + @22 + P#Elle30
+ ~Race(Player1,ELF) !CheckStatGT(Player1,14,CHR)~ + @22 + P#Elle29
+ ~!Race(Player1,ELF) !CheckStatGT(Player1,17,CHR)~ + @22 + P#Elle29
++ @23 + P#Elle25
++ @24 + P#Elle26
++ @25 + P#Elle27
++ @26 + P#Elle28
END

IF ~~ P#Elle19
SAY @32
IF ~~ THEN GOTO P#Elle24
END

IF ~~ P#Elle18
SAY @33
IF ~~ THEN GOTO P#Elle15
END

IF ~~ P#Elle17
SAY @34
IF ~~ THEN GOTO P#Elle15
END

IF ~~ P#Elle16
SAY @35
IF ~~ THEN GOTO P#Elle15
END

IF ~~ P#Elle15
SAY @36
= @37
++ @38 + P#Elle19
++ @39 + P#Elle20
++ @40 + P#Elle21
++ @41 + P#Elle22
++ @42 + P#Elle23
END

IF ~~ P#Elle14
SAY @43
IF ~~ THEN GOTO P#Elle15
END

IF ~~ P#Elle13
SAY @44
IF ~~ THEN GOTO P#Elle15
END

IF ~~ P#Elle12
SAY @45
IF ~~ THEN GOTO P#Elle15
END

IF ~~ P#Elle10
SAY @47
++ @48 + P#Elle12
++ @49 + P#Elle13
++ @50 + P#Elle14
++ @51 + P#Elle0
++ @52 + P#Elle18
END

IF ~~ P#Elle8
SAY @56
IF ~~ THEN GOTO P#Elle15
END

IF ~~ P#Elle7
SAY @57
++ @58 + P#Elle15
++ @59 + P#Elle16
++ @60 + P#Elle17
++ @61 + P#Elle8
END

IF ~~ P#Elle6
SAY @62
++ @48 + P#Elle12
++ @49 + P#Elle13
++ @50 + P#Elle14
++ @52 + P#Elle18
++ @51 + P#Elle0
END

IF ~~ P#Elle5
SAY @63
IF ~~ THEN GOTO P#Elle1A
END

IF ~~ P#Elle4
SAY @64
IF ~~ THEN GOTO P#Elle1A
END

IF ~~ P#Elle3
SAY @65
IF ~~ THEN GOTO P#Elle1A
END

IF ~~ P#Elle2
SAY @66
= @67
IF ~~ THEN GOTO P#Elle1A
END

IF ~~ P#Elle1
SAY @68
IF ~~ THEN GOTO P#Elle1A
END

IF ~~ P#Elle1A
SAY @69
++ @70 + P#Elle6
++ @71 + P#Elle7
++ @72 + P#Elle8
++ @73 + P#Elle9
++ @74 + P#Elle10
++ @75 + P#Elle11
END

END