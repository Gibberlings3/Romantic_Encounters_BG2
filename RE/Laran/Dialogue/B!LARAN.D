/* CONTENTS */
/* Mithrest Inn - encounter */
/* Mithrest Inn - aftermath */
/* Mithrest Inn - Anomen */
/* Saradush - encounter */
/* Saradush - aftermath */
/* Saradush - Anomen (no Laran present) */
/* Saradush - Sir Anomen (Laran present) */

BEGIN ~B!LARAN~

APPEND ~B!LARAN~

/* Mithrest Inn - encounter */
IF ~!GlobalGT("B!MetLaran","GLOBAL",0)~ THEN BEGIN Laran1
SAY @0
+ ~Gender(Player1,MALE)~ + @1 DO ~SetGlobal("B!MetLaran","GLOBAL",1)~ + Laran1.1
+ ~Gender(Player1,FEMALE) OR(4) Race(Player1,HUMAN) Race(Player1,HALF_ELF) Race(Player1,ELF) Race(Player1,HALFLING)~ + @1 DO ~SetGlobal("B!MetLaran","GLOBAL",1)~ + Laran1.2
+ ~Gender(Player1,FEMALE) !Race(Player1,HUMAN) !Race(Player1,HALF_ELF) !Race(Player1,ELF) !Race(Player1,HALFLING)~ + @1 DO ~SetGlobal("B!MetLaran","GLOBAL",1)~ + Laran1.1
+ ~Gender(Player1,MALE)~ + @2 DO ~SetGlobal("B!MetLaran","GLOBAL",1)~ + Laran1.3
+ ~Gender(Player1,FEMALE) OR(4) Race(Player1,HUMAN) Race(Player1,HALF_ELF) Race(Player1,ELF) Race(Player1,HALFLING)~ + @2 DO ~SetGlobal("B!MetLaran","GLOBAL",1)~ + Laran1.4
+ ~Gender(Player1,FEMALE) !Race(Player1,HUMAN) !Race(Player1,HALF_ELF) !Race(Player1,ELF) !Race(Player1,HALFLING)~ + @2 DO ~SetGlobal("B!MetLaran","GLOBAL",1)~ + Laran1.3
+ ~Gender(Player1,MALE)~ + @3 DO ~SetGlobal("B!MetLaran","GLOBAL",1)~ + Laran1.5
+ ~Gender(Player1,FEMALE) OR(4) Race(Player1,HUMAN) Race(Player1,HALF_ELF) Race(Player1,ELF) Race(Player1,HALFLING)~ + @3 DO ~SetGlobal("B!MetLaran","GLOBAL",1)~ + Laran1.6
+ ~Gender(Player1,FEMALE) !Race(Player1,HUMAN) !Race(Player1,HALF_ELF) !Race(Player1,ELF) !Race(Player1,HALFLING)~ + @3 DO ~SetGlobal("B!MetLaran","GLOBAL",1)~ + Laran1.5
+ ~Gender(Player1,MALE)~ + @4 DO ~SetGlobal("B!MetLaran","GLOBAL",1)~ + Laran1.7
+ ~Gender(Player1,FEMALE) OR(4) Race(Player1,HUMAN) Race(Player1,HALF_ELF) Race(Player1,ELF) Race(Player1,HALFLING)~ + @4 DO ~SetGlobal("B!MetLaran","GLOBAL",1)~ + Laran1.8
+ ~Gender(Player1,FEMALE) !Race(Player1,HUMAN) !Race(Player1,HALF_ELF) !Race(Player1,ELF) !Race(Player1,HALFLING)~ + @4 DO ~SetGlobal("B!MetLaran","GLOBAL",1)~ + Laran1.7
END

IF ~~ THEN BEGIN Laran1.1
SAY @5
++ @6 + Laran1.9
++ @7 + Laran1.10
++ @8 + Laran1.11
++ @9 + Laran1.12
END

IF ~~ THEN BEGIN Laran1.2
SAY @5
++ @6 + Laran1.17
++ @10 + Laran1.18
++ @11  + Laran1.18
++ @8 + Laran1.18
++ @9 + Laran1.19
END

IF ~~ THEN BEGIN Laran1.3
SAY @12
++ @6 + Laran1.9
++ @7 + Laran1.10
++ @8 + Laran1.11
++ @9 + Laran1.12
END

IF ~~ THEN BEGIN Laran1.4
SAY @13
++ @6 + Laran1.17
++ @10 + Laran1.18
++ @11  + Laran1.18
++ @8 + Laran1.18
++ @9 + Laran1.19
END

IF ~~ THEN BEGIN Laran1.5
SAY @14
++ @6 + Laran1.9
++ @7 + Laran1.10
++ @8 + Laran1.11
++ @9 + Laran1.12
END

IF ~~ THEN BEGIN Laran1.6
SAY @15
++ @6 + Laran1.17
++ @10 + Laran1.18
++ @11  + Laran1.18
++ @8 + Laran1.18
++ @9 + Laran1.19
END

IF ~~ THEN BEGIN Laran1.7
SAY @16
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN Laran1.8
SAY @17
++ @18 + Laran1.23
++ @19 + Laran1.24
END
END

CHAIN
IF ~~ THEN ~B!LARAN~ Laran1.9
@20
== ~BANOMEN~ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @21
== ~B!LARAN~ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @22
== ~BANOMEN~ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @23
== ~B!LARAN~ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @24
== ~BKELDOR~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @25
== ~B!LARAN~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @26
== ~BKELDOR~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @27
== ~B!LARAN~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @28
== ~BKELDOR~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @29
== ~B!LARAN~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @26
== ~BKELDOR~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @30
== ~B!LARAN~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @31
== ~B!LARAN~ IF ~OR(3) !InParty("Keldorn") !InMyArea("Keldorn") StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @31
= @32
END
++ @33 EXTERN ~B!LARAN~ Laran1.13
++ @34 EXTERN ~B!LARAN~ Laran1.14
++ @35 EXTERN ~B!LARAN~ Laran1.15
++ @36 EXTERN ~B!LARAN~ Laran1.16

CHAIN
IF ~~ THEN ~B!LARAN~ Laran1.10
@37
== ~BANOMEN~ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @21
== ~B!LARAN~ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @22
== ~BANOMEN~ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @23
== ~B!LARAN~ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @24
== ~BKELDOR~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @25
== ~B!LARAN~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @26
== ~BKELDOR~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @27
== ~B!LARAN~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @28
== ~BKELDOR~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @29
== ~B!LARAN~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @26
== ~BKELDOR~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @30
== ~B!LARAN~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @31
== ~B!LARAN~ IF ~OR(3) !InParty("Keldorn") !InMyArea("Keldorn") StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @31
= @32
END
++ @33 EXTERN ~B!LARAN~ Laran1.13
++ @34 EXTERN ~B!LARAN~ Laran1.14
++ @35 EXTERN ~B!LARAN~ Laran1.15
++ @36 EXTERN ~B!LARAN~ Laran1.16

CHAIN
IF ~~ THEN ~B!LARAN~ Laran1.11
@38
== ~BANOMEN~ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @21
== ~B!LARAN~ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @22
== ~BANOMEN~ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @23
== ~B!LARAN~ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @24
== ~BKELDOR~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @25
== ~B!LARAN~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @26
== ~BKELDOR~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @27
== ~B!LARAN~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @28
== ~BKELDOR~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @29
== ~B!LARAN~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @26
== ~BKELDOR~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @30
== ~B!LARAN~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @31
== ~B!LARAN~ IF ~OR(3) !InParty("Keldorn") !InMyArea("Keldorn") StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @31
= @32
END
++ @33 EXTERN ~B!LARAN~ Laran1.13
++ @34 EXTERN ~B!LARAN~ Laran1.14
++ @35 EXTERN ~B!LARAN~ Laran1.15
++ @36 EXTERN ~B!LARAN~ Laran1.16

APPEND ~B!LARAN~

IF ~~ THEN BEGIN Laran1.12
SAY @39
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN Laran1.13
SAY @40
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN Laran1.14
SAY @41
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN Laran1.15
SAY @42
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN Laran1.16
SAY @43
IF ~~ THEN DO ~EscapeArea()~ EXIT
END
END

CHAIN
IF ~~ THEN ~B!LARAN~ Laran1.17
@20
== ~BANOMEN~ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @21
== ~B!LARAN~ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @22
== ~BANOMEN~ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @23
== ~B!LARAN~ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @24
== ~BKELDOR~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @25
== ~B!LARAN~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @26
== ~BKELDOR~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @27
== ~B!LARAN~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @28
== ~BKELDOR~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @29
== ~B!LARAN~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @26
== ~BKELDOR~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @30
== ~B!LARAN~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @31
== ~B!LARAN~ IF ~OR(3) !InParty("Keldorn") !InMyArea("Keldorn") StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @31
= @32
END
++ @44 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ EXTERN ~B!LARAN~ Laran1.20
++ @45 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ EXTERN ~B!LARAN~ Laran1.21
++ @46 EXTERN ~B!LARAN~ Laran1.22
++ @34 EXTERN ~B!LARAN~ Laran1.47
++ @35 EXTERN ~B!LARAN~ Laran1.48
++ @36 DO ~IncrementGlobal("B!LaranLike","GLOBAL",-1)~ EXTERN ~B!LARAN~ Laran1.49

CHAIN
IF ~~ THEN ~B!LARAN~ Laran1.18
@47
== ~BANOMEN~ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @21
== ~B!LARAN~ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @22
== ~BANOMEN~ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @23
== ~B!LARAN~ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @24
== ~BKELDOR~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @25
== ~B!LARAN~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @26
== ~BKELDOR~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @27
== ~B!LARAN~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @28
== ~BKELDOR~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @29
== ~B!LARAN~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @26
== ~BKELDOR~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @30
== ~B!LARAN~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @31
== ~B!LARAN~ IF ~OR(3) !InParty("Keldorn") !InMyArea("Keldorn") StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @31
= @32
END
++ @44 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ EXTERN ~B!LARAN~ Laran1.20
++ @45 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ EXTERN ~B!LARAN~ Laran1.21
++ @46 EXTERN ~B!LARAN~ Laran1.22
++ @34 EXTERN ~B!LARAN~ Laran1.47
++ @35 EXTERN ~B!LARAN~ Laran1.48
++ @36 DO ~IncrementGlobal("B!LaranLike","GLOBAL",-1)~ EXTERN ~B!LARAN~ Laran1.49

CHAIN
IF ~~ THEN ~B!LARAN~ Laran1.19
@48
= @37
== ~BANOMEN~ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @21
== ~B!LARAN~ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @22
== ~BANOMEN~ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @23
== ~B!LARAN~ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @24
== ~BKELDOR~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @25
== ~B!LARAN~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @26
== ~BKELDOR~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @27
== ~B!LARAN~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @28
== ~BKELDOR~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @29
== ~B!LARAN~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @26
== ~BKELDOR~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @30
== ~B!LARAN~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @31
== ~B!LARAN~ IF ~OR(3) !InParty("Keldorn") !InMyArea("Keldorn") StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @31
= @32
END
++ @44 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ EXTERN ~B!LARAN~ Laran1.20
++ @45 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ EXTERN ~B!LARAN~ Laran1.21
++ @46 EXTERN ~B!LARAN~ Laran1.22
++ @34 EXTERN ~B!LARAN~ Laran1.47
++ @35 EXTERN ~B!LARAN~ Laran1.48
++ @36 DO ~IncrementGlobal("B!LaranLike","GLOBAL",-1)~ EXTERN ~B!LARAN~ Laran1.49

APPEND ~B!LARAN~

IF ~~ THEN BEGIN Laran1.20
SAY @49
++ @50 + Laran1.25
++ @51 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran1.26
++ @52 + Laran1.27
++ @53 + Laran1.28
END

IF ~~ THEN BEGIN Laran1.21
SAY @54
++ @50 + Laran1.25
++ @51 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran1.26
++ @52 + Laran1.27
++ @53 + Laran1.28
END

IF ~~ THEN BEGIN Laran1.22
SAY @55
++ @56 + Laran1.29
++ @57 + Laran1.30
++ @58 + Laran1.31
++ @59 DO ~IncrementGlobal("B!LaranLike","GLOBAL",-1)~ + Laran1.51
END
END

CHAIN
IF ~~ THEN ~B!LARAN~ Laran1.23
@37
== ~BANOMEN~ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @21
== ~B!LARAN~ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @22
== ~BANOMEN~ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @23
== ~B!LARAN~ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @24
== ~BKELDOR~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @25
== ~B!LARAN~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @26
== ~BKELDOR~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @27
== ~B!LARAN~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @28
== ~BKELDOR~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @29
== ~B!LARAN~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @26
== ~BKELDOR~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @30
== ~B!LARAN~ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @31
== ~B!LARAN~ IF ~OR(3) !InParty("Keldorn") !InMyArea("Keldorn") StateCheck("Keldorn",CD_STATE_NOTVALID) OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @31
= @32
END
++ @44 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ EXTERN ~B!LARAN~ Laran1.20
++ @45 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ EXTERN ~B!LARAN~ Laran1.21
++ @46 EXTERN ~B!LARAN~ Laran1.22
++ @34 EXTERN ~B!LARAN~ Laran1.47
++ @35 EXTERN ~B!LARAN~ Laran1.48
++ @36 DO ~IncrementGlobal("B!LaranLike","GLOBAL",-1)~ EXTERN ~B!LARAN~ Laran1.49

APPEND ~B!LARAN~

IF ~~ THEN BEGIN Laran1.24
SAY @60
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN Laran1.25
SAY @61
++ @62 DO ~SetGlobal("RE_LaranFlirt","GLOBAL",1) SetGlobal("B!LaranFlirt","GLOBAL",1)~ + Laran1.33
++ @63 DO ~SetGlobal("RE_LaranFlirt","GLOBAL",1) SetGlobal("B!LaranFlirt","GLOBAL",1) IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran1.34
++ @64 + Laran1.32
++ @65 + Laran1.32
END

IF ~~ THEN BEGIN Laran1.26
SAY @66
++ @62 DO ~SetGlobal("RE_LaranFlirt","GLOBAL",1) SetGlobal("B!LaranFlirt","GLOBAL",1)~ + Laran1.33
++ @63 DO ~SetGlobal("RE_LaranFlirt","GLOBAL",1) SetGlobal("B!LaranFlirt","GLOBAL",1) IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran1.34
++ @64 + Laran1.32
++ @65 + Laran1.32
END

IF ~~ THEN BEGIN Laran1.27
SAY @67
++ @62 DO ~SetGlobal("RE_LaranFlirt","GLOBAL",1) SetGlobal("B!LaranFlirt","GLOBAL",1)~ + Laran1.33
++ @63 DO ~SetGlobal("RE_LaranFlirt","GLOBAL",1) SetGlobal("B!LaranFlirt","GLOBAL",1) IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran1.34
++ @64 + Laran1.32
++ @65 + Laran1.32
END

IF ~~ THEN BEGIN Laran1.28
SAY @68
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN Laran1.29
SAY @69
++ @62 DO ~SetGlobal("RE_LaranFlirt","GLOBAL",1) SetGlobal("B!LaranFlirt","GLOBAL",1)~ + Laran1.33
++ @63 DO ~SetGlobal("RE_LaranFlirt","GLOBAL",1) SetGlobal("B!LaranFlirt","GLOBAL",1) IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran1.34
++ @64 + Laran1.32
++ @65 + Laran1.32
END

IF ~~ THEN BEGIN Laran1.30
SAY @70
++ @62 DO ~SetGlobal("RE_LaranFlirt","GLOBAL",1) SetGlobal("B!LaranFlirt","GLOBAL",1)~ + Laran1.33
++ @63 DO ~SetGlobal("RE_LaranFlirt","GLOBAL",1) SetGlobal("B!LaranFlirt","GLOBAL",1) IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran1.34
++ @64 + Laran1.32
++ @65 + Laran1.32
END

IF ~~ THEN BEGIN Laran1.31
SAY @71
++ @62 DO ~SetGlobal("RE_LaranFlirt","GLOBAL",1) SetGlobal("B!LaranFlirt","GLOBAL",1)~ + Laran1.33
++ @63 DO ~SetGlobal("RE_LaranFlirt","GLOBAL",1) SetGlobal("B!LaranFlirt","GLOBAL",1) IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran1.34
++ @64 + Laran1.32
++ @65 + Laran1.32
END

IF ~~ THEN BEGIN Laran1.32
SAY @72
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN Laran1.33
SAY @73
++ @74 DO ~SetGlobal("RE_LaranFlirt","GLOBAL",1) SetGlobal("B!LaranFlirt","GLOBAL",1)~ + Laran1.34
++ @64 + Laran1.32
++ @65 + Laran1.32
END

IF ~~ THEN BEGIN Laran1.34
SAY @75
IF ~~ THEN DO ~SetGlobal("RE_LaranMoves","GLOBAL",1)
ClearAllActions() StartCutSceneMode() StartCutScene("RE_Lar1")~ EXIT
END

IF ~Global("RE_LaranMoves","GLOBAL",1)~ THEN Laran.1.34a
SAY @76 
++ @77 DO ~SetGlobal("RE_LaranMoves","GLOBAL",2)~ + Laran1.35
++ @78 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1) SetGlobal("RE_LaranMoves","GLOBAL",2)~ + Laran1.35
++ @79 DO ~SetGlobal("RE_LaranMoves","GLOBAL",2)~ + Laran1.36
++ @80 DO ~SetGlobal("RE_LaranMoves","GLOBAL",2)~ + Laran1.37
++ @81 DO ~SetGlobal("RE_LaranMoves","GLOBAL",2)~ + Laran1.38
END

IF ~~ THEN BEGIN Laran1.35
SAY @82
= @83
= @84
= @85
++ @86 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran1.39
++ @87 + Laran1.40
++ @88 + Laran1.41
++ @89 + Laran1.42
++ @90 + Laran1.43
++ @91 + Laran1.44
END

IF ~~ THEN BEGIN Laran1.36
SAY @92
++ @93 + Laran1.35
++ @94 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran1.35
++ @80 + Laran1.37
++ @81 + Laran1.38
++ @95 + Laran1.45
END

IF ~~ THEN BEGIN Laran1.37
SAY @96
++ @97 + Laran1.35
++ @98 + Laran1.46
END

IF ~~ THEN BEGIN Laran1.38
SAY @99
++ @97 + Laran1.35
++ @98 + Laran1.46
END

IF ~~ THEN BEGIN Laran1.39
SAY @100
= @101
= @102
++ @103 + Laran1.52
++ @104 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran1.53
++ @105 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran1.54
++ @106 + Laran1.55
END

IF ~~ THEN BEGIN Laran1.40
SAY @107
= @101
= @102
++ @103 + Laran1.52
++ @104 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran1.53
++ @105 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran1.54
++ @106 + Laran1.55
END

IF ~~ THEN BEGIN Laran1.41
SAY @108
= @101
= @102
++ @103 + Laran1.52
++ @104 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran1.53
++ @105 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran1.54
++ @106 + Laran1.55
END

IF ~~ THEN BEGIN Laran1.42
SAY @109
= @101
= @102
++ @103 + Laran1.52
++ @104 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran1.53
++ @105 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran1.54
++ @106 + Laran1.55
END

IF ~~ THEN BEGIN Laran1.43
SAY @110
= @101
= @102
++ @103 + Laran1.52
++ @104 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran1.53
++ @105 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran1.54
++ @106 + Laran1.55
END

IF ~~ THEN BEGIN Laran1.44
SAY @111
= @101
= @102
++ @103 + Laran1.52
++ @104 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran1.53
++ @105 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran1.54
++ @112 + Laran1.55
END

IF ~~ THEN BEGIN Laran1.45
SAY @113
++ @114 DO ~SetGlobal("RE_LaranFlirt","GLOBAL",1) SetGlobal("B!LaranFlirt","GLOBAL",1)~ + Laran1.35
++ @98 + Laran1.46
END

IF ~~ THEN BEGIN Laran1.46
SAY @115
++ @116 + Laran1.35
++ @117 DO ~IncrementGlobal("B!LaranLike","GLOBAL",-1)~ + Laran1.66a
END

IF ~~ THEN BEGIN Laran1.47
SAY @118
= @119
++ @120 + Laran1.21
++ @121 + Laran1.21
++ @122 + Laran1.50
++ @123 + Laran1.32
END

IF ~~ THEN BEGIN Laran1.48
SAY @124
= @118
= @119
++ @120 + Laran1.21
++ @121 + Laran1.21
++ @122 + Laran1.50
++ @123 + Laran1.32
END

IF ~~ THEN BEGIN Laran1.49
SAY @125
= @118
= @119
++ @120 + Laran1.21
++ @121 + Laran1.21
++ @122 + Laran1.50
++ @123 + Laran1.32
END

IF ~~ THEN BEGIN Laran1.50
SAY @126
IF ~~ THEN GOTO Laran1.21
END

IF ~~ THEN BEGIN Laran1.51
SAY @127
++ @62 DO ~SetGlobal("RE_LaranFlirt","GLOBAL",1) SetGlobal("B!LaranFlirt","GLOBAL",1)~ + Laran1.33
++ @128 DO ~SetGlobal("RE_LaranFlirt","GLOBAL",1) SetGlobal("B!LaranFlirt","GLOBAL",1) IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran1.34
++ @64 + Laran1.32
++ @65 + Laran1.32
END

IF ~~ THEN BEGIN Laran1.52
SAY @129
++ @130 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran1.56
++ @131 + Laran1.57
++ @132 + Laran1.58
++ @133 + Laran1.59
++ @134 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran1.60
++ @135 + Laran1.61
END

IF ~~ THEN BEGIN Laran1.53
SAY @136
= @137
++ @138 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran1.56
++ @131 + Laran1.57
++ @139 + Laran1.58
++ @133 + Laran1.59
++ @134 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran1.60
++ @135 + Laran1.61
END

IF ~~ THEN BEGIN Laran1.54
SAY @140
= @137
++ @138 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran1.56
++ @131 + Laran1.57
++ @139 + Laran1.58
++ @133 + Laran1.59
++ @141 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran1.60
++ @135 + Laran1.61
END

IF ~~ THEN BEGIN Laran1.55
SAY @142
++ @143 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran1.56
++ @131 + Laran1.57
++ @139 + Laran1.58
++ @133 + Laran1.59
++ @144 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran1.71
++ @105 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran1.60
++ @135 + Laran1.61
END

IF ~~ THEN BEGIN Laran1.56
SAY @145
++ @146 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran1.62
++ @147 + Laran1.62
+ ~NumInPartyGT(2)~ + @148 + Laran1.63
++ @149 + Laran1.64
++ @150 + Laran1.65
++ @151 + Laran1.66
++ @152 + Laran1.66
++ @153 + Laran1.66
++ @154 DO ~IncrementGlobal("B!LaranLike","GLOBAL",-1)~ + Laran1.67
END

IF ~~ THEN BEGIN Laran1.57
SAY @155
= @156
++ @157 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran1.62
++ @147 + Laran1.62
+ ~NumInPartyGT(2)~ + @148 + Laran1.63
++ @149 + Laran1.64
++ @150 + Laran1.65
++ @151 + Laran1.66
++ @152 + Laran1.66
++ @153 + Laran1.66
++ @154 DO ~IncrementGlobal("B!LaranLike","GLOBAL",-1)~ + Laran1.67
END

IF ~~ THEN BEGIN Laran1.58
SAY @158
= @159
= @155
= @156
++ @157 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran1.62
++ @147 + Laran1.62
++ @160 + Laran1.68
+ ~NumInPartyGT(2)~ + @148 + Laran1.63
++ @149 + Laran1.64
++ @150 + Laran1.65
++ @151 + Laran1.66
++ @152 + Laran1.66
++ @153 + Laran1.66
++ @154 DO ~IncrementGlobal("B!LaranLike","GLOBAL",-1)~ + Laran1.67
END

IF ~~ THEN BEGIN Laran1.59
SAY @161
= @162
= @156
++ @157 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran1.62
++ @147 + Laran1.62
++ @160 + Laran1.68
+ ~NumInPartyGT(2)~ + @148 + Laran1.63
++ @149 + Laran1.64
++ @150 + Laran1.65
++ @151 + Laran1.66
++ @152 + Laran1.66
++ @153 + Laran1.66
++ @154 DO ~IncrementGlobal("B!LaranLike","GLOBAL",-1)~ + Laran1.67
END

IF ~~ THEN BEGIN Laran1.60
SAY @163
= @164
= @165
++ @166 + Laran1.68
++ @167 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran1.70
++ @168 + Laran1.69
++ @169 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran1.70
END

IF ~~ THEN BEGIN Laran1.61
SAY @170
= @171
= @164
= @165
++ @166 + Laran1.68
++ @167 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran1.70
++ @168 + Laran1.69
++ @169 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran1.70
END

IF ~~ THEN BEGIN Laran1.62
SAY @172
= @171
= @164
= @165
++ @166 + Laran1.68
++ @167 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran1.70
++ @168 + Laran1.69
++ @169 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran1.70
END

IF ~~ THEN BEGIN Laran1.63
SAY @173
++ @174 + Laran1.64
++ @175 + Laran1.62
++ @176 + Laran1.73
++ @177 + Laran1.74
END

IF ~~ THEN BEGIN Laran1.64
SAY @178 
++ @179 + Laran1.75
++ @175 + Laran1.62
++ @177 + Laran1.74
END

IF ~~ THEN BEGIN Laran1.65
SAY @180 
++ @181 + Laran1.64
++ @182 + Laran1.75
++ @175 + Laran1.62
++ @177 + Laran1.74
END

IF ~~ THEN BEGIN Laran1.66
SAY @183
IF ~~ THEN DO ~SetGlobal("RE_LaranMoves","GLOBAL",3) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Lar2")~ EXIT
END

IF ~~ THEN BEGIN Laran1.66a
SAY @184
IF ~~ THEN DO ~SetGlobal("RE_LaranMoves","GLOBAL",3) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Lar2")~ EXIT
END

IF ~~ THEN BEGIN Laran1.67
SAY @185
IF ~~ THEN DO ~SetGlobal("RE_LaranMoves","GLOBAL",3) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Lar2")~ EXIT
END

IF ~~ THEN BEGIN Laran1.68
SAY @186
++ @187 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran1.76
++ @188 + Laran1.77
++ @189 + Laran1.78
END

IF ~~ THEN BEGIN Laran1.69
SAY @190
++ @191 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran1.70
++ @177 + Laran1.74
END

IF ~~ THEN BEGIN Laran1.70
SAY @192
= @193
++ @194 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran1.72
++ @177 + Laran1.74
END

IF ~~ THEN BEGIN Laran1.71
SAY @136
= @195
++ @196 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran1.60
++ @197 + Laran1.68
END

IF ~~ THEN BEGIN Laran1.72
SAY @198
= @199
++ @200 + Laran1.79
++ @201 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran1.79
++ @177 + Laran1.74
END

IF ~~ THEN BEGIN Laran1.73
SAY @202
++ @203 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran1.62
++ @204 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran1.62
++ @205 + Laran1.74
END

IF ~~ THEN BEGIN Laran1.74
SAY @206
IF ~~ THEN DO ~SetGlobal("RE_LaranMoves","GLOBAL",3) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Lar2")~ EXIT
END

IF ~~ THEN BEGIN Laran1.75
SAY @207
= @208
++ @203 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran1.62
++ @204 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran1.62
++ @209 + Laran1.74
END

IF ~~ THEN BEGIN Laran1.76
SAY @210
= @198
= @199
++ @200 + Laran1.79
++ @201 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran1.79
++ @177 + Laran1.74
END

IF ~~ THEN BEGIN Laran1.77
SAY @211
IF ~~ THEN DO ~SetGlobal("RE_LaranMoves","GLOBAL",3) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Lar2")~ EXIT
END

IF ~~ THEN BEGIN Laran1.78
SAY @212
= @213
IF ~~ THEN DO ~SetGlobal("RE_LaranMoves","GLOBAL",3) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Lar2")~ EXIT
END

IF ~~ THEN BEGIN Laran1.79
SAY @214
= @215
= @216
++ @217 + Laran1.81
++ @218 + Laran1.82
++ @219 DO ~SetGlobal("B!WaitInBed","LOCALS",1)~ + Laran1.81
++ @220 + Laran1.77
END

/* Laran1.80 deleted because nothing linked to it */

IF ~~ THEN BEGIN Laran1.81
SAY @221
= @222
+ ~Global("B!WaitInBed","LOCALS",0)~ + @223 + Laran1.83
+ ~Global("B!WaitInBed","LOCALS",1)~ + @223 + Laran1.84
++ @224 + Laran1.85
+ ~Global("B!WaitInBed","LOCALS",0)~ + @225 + Laran1.86
+ ~Global("B!WaitInBed","LOCALS",1)~ + @225 + Laran1.87
++ @226 + Laran1.88
END

IF ~~ THEN BEGIN Laran1.82
SAY @227
IF ~~ THEN GOTO Laran1.81
END

IF ~~ THEN BEGIN Laran1.83
SAY @228
= @229
++ @230 + Laran1.89
++ @231 + Laran1.90
++ @232 + Laran1.91
++ @233 + Laran1.92
END

IF ~~ THEN BEGIN Laran1.84
SAY @234
= @229
++ @230 + Laran1.89
++ @231 + Laran1.90
++ @232 + Laran1.91
++ @233 + Laran1.92
END

IF ~~ THEN BEGIN Laran1.85
SAY @235
++ @236 + Laran1.88
+ ~Global("B!WaitInBed","LOCALS",0)~ + @237 + Laran1.83
+ ~Global("B!WaitInBed","LOCALS",1)~ + @237 + Laran1.84
++ @238 + Laran1.91
END

IF ~~ THEN BEGIN Laran1.86
SAY @239
= @229
++ @240 + Laran1.89
++ @231 + Laran1.90
++ @232 + Laran1.91
++ @233 + Laran1.92
END

IF ~~ THEN BEGIN Laran1.87
SAY @241
= @229
++ @240 + Laran1.89
++ @231 + Laran1.90
++ @232 + Laran1.91
++ @233 + Laran1.92
END

IF ~~ THEN BEGIN Laran1.88
SAY @242
= @243
++ @244 + Laran1.97
++ @245 + Laran1.98
++ @246 + Laran1.99
++ @247 + Laran1.100
++ @248 + Laran1.101
END

IF ~~ THEN BEGIN Laran1.89
SAY @249
IF ~Global("B!WaitInBed","LOCALS",0)~ THEN GOTO Laran1.102
IF ~Global("B!WaitInBed","LOCALS",1)~ THEN GOTO Laran1.103
END

IF ~~ THEN BEGIN Laran1.90
SAY @250
IF ~Global("B!WaitInBed","LOCALS",0)~ THEN GOTO Laran1.102
IF ~Global("B!WaitInBed","LOCALS",1)~ THEN GOTO Laran1.103
END

IF ~~ THEN BEGIN Laran1.91
SAY @251
IF ~Global("B!WaitInBed","LOCALS",0)~ THEN GOTO Laran1.102
IF ~Global("B!WaitInBed","LOCALS",1)~ THEN GOTO Laran1.103
END

IF ~~ THEN BEGIN Laran1.92
SAY @252
= @242
= @243
++ @244 + Laran1.97
++ @245 + Laran1.98
++ @246 + Laran1.99
++ @247 + Laran1.100
++ @248 + Laran1.101
+ ~Global("B!WaitInBed","LOCALS",0)~ + @253 + Laran1.93
+ ~Global("B!WaitInBed","LOCALS",1)~ + @254 + Laran1.93
END

IF ~~ THEN BEGIN Laran1.93
SAY @195
IF ~Global("B!WaitInBed","LOCALS",0)~ THEN GOTO Laran1.102
IF ~Global("B!WaitInBed","LOCALS",1)~ THEN GOTO Laran1.103
END

IF ~~ THEN BEGIN Laran1.94
SAY @255
IF ~~ THEN GOTO Laran1.77
END

IF ~~ THEN BEGIN Laran1.95
SAY @256
++ @257 + Laran1.78
++ @258 + Laran1.96
END

IF ~~ THEN BEGIN Laran1.96
SAY @259
++ @260 + Laran1.93
++ @261 + Laran1.78
END

IF ~~ THEN BEGIN Laran1.97
SAY @262
++ @263 + Laran1.101
++ @264 + Laran1.94
++ @265 + Laran1.78
END

IF ~~ THEN BEGIN Laran1.98
SAY @266
= @267
++ @268 + Laran1.101
++ @269 + Laran1.94
++ @270 + Laran1.78
END

IF ~~ THEN BEGIN Laran1.99
SAY @271
= @272
= @273
++ @274 + Laran1.95
++ @275 + Laran1.96
++ @276 + Laran1.93
END

IF ~~ THEN BEGIN Laran1.100
SAY @277
IF ~~ THEN GOTO Laran1.77
END

IF ~~ THEN BEGIN Laran1.101
SAY @278
++ @276 + Laran1.93
++ @270 + Laran1.78
END

IF ~~ THEN BEGIN Laran1.102
SAY @279
IF ~~ THEN GOTO Laran1.104
END

IF ~~ THEN BEGIN Laran1.103
SAY @280
IF ~~ THEN GOTO Laran1.104
END

IF ~~ THEN BEGIN Laran1.104
SAY @281
++ @282 + Laran1.105
++ @283 + Laran1.106
++ @284 + Laran1.107
++ @285 + Laran1.108
END

IF ~~ THEN BEGIN Laran1.105
SAY @286
= @287
= @288
= @289
++ @290 + Laran1.106
++ @291 + Laran1.109
++ @292 + Laran1.108
END

IF ~~ THEN BEGIN Laran1.106
SAY @293
= @294
= @295
++ @189 + Laran1.109
++ @296 + Laran1.108
END

IF ~~ THEN BEGIN Laran1.107
SAY @297
= @298
= @295
++ @189 + Laran1.109
++ @296 + Laran1.108
END

IF ~~ THEN BEGIN Laran1.108
SAY @299
= @300
= @301
= @302
IF ~~ THEN DO ~SetGlobal("RE_LaranMoves","GLOBAL",3) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Lar2")~ EXIT
END

IF ~~ THEN BEGIN Laran1.109
SAY @303
= @304
IF ~~ THEN DO ~SetGlobal("RE_LaranSex","GLOBAL",1) IncrementGlobal("B!LaranLike","GLOBAL",1) SetGlobal("B!LaranLover","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Lar8")~ EXIT
IF ~InParty("Anomen") OR(2) Global("AnomenRomanceActive","GLOBAL",1) Global("AnomenRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("RE_LaranAnoReacts","GLOBAL",1) SetGlobal("RE_LaranSex","GLOBAL",1) IncrementGlobal("B!LaranLike","GLOBAL",1) SetGlobal("B!LaranLover","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Lar8")~ EXIT
END

/* Mithrest Inn - aftermath */
IF ~Global("B!LaranLover","GLOBAL",1)~ THEN BEGIN Laran2
SAY @305 
++ @306 DO ~SetGlobal("B!LaranLover","GLOBAL",2)~ + Laran2.1
++ @307 DO ~SetGlobal("B!LaranLover","GLOBAL",2)~ + Laran2.2
++ @308 DO ~SetGlobal("B!LaranLover","GLOBAL",2) IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran2.3
++ @309 DO ~SetGlobal("B!LaranLover","GLOBAL",2)  IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran2.4
END

IF ~~ THEN BEGIN Laran2.1
SAY @310
++ @311 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran2.5
++ @312 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran2.6
++ @313 + Laran2.7
++ @314 DO ~IncrementGlobal("B!LaranLike","GLOBAL",-1)~ + Laran2.8
END

IF ~~ THEN BEGIN Laran2.2
SAY @315
++ @311 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran2.5
++ @312 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran2.6
++ @313 + Laran2.7
++ @314 DO ~IncrementGlobal("B!LaranLike","GLOBAL",-1)~ + Laran2.8
END

IF ~~ THEN BEGIN Laran2.3
SAY @316
++ @311 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran2.5
++ @312 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran2.6
++ @313 + Laran2.7
++ @314 DO ~IncrementGlobal("B!LaranLike","GLOBAL",-1)~ + Laran2.8
END

IF ~~ THEN BEGIN Laran2.4
SAY @317
++ @311 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran2.5
++ @312 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran2.6
++ @313 + Laran2.7
++ @314 DO ~IncrementGlobal("B!LaranLike","GLOBAL",-1)~ + Laran2.8
END

IF ~~ THEN BEGIN Laran2.5
SAY @318
++ @319 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran2.9
++ @320 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran2.10
++ @321 + Laran2.11
++ @322 DO ~IncrementGlobal("B!LaranLike","GLOBAL",-1)~ + Laran2.12
++ @323 + Laran2.13
END

IF ~~ THEN BEGIN Laran2.6
SAY @324
++ @319 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran2.9
++ @320 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran2.10
++ @321 + Laran2.11
++ @322 DO ~IncrementGlobal("B!LaranLike","GLOBAL",-1)~ + Laran2.12
++ @323 + Laran2.13
END

IF ~~ THEN BEGIN Laran2.7
SAY @325
= @326
++ @319 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran2.9
++ @320 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran2.10
++ @321 + Laran2.11
++ @322 DO ~IncrementGlobal("B!LaranLike","GLOBAL",-1)~ + Laran2.12
++ @323 + Laran2.13
END

IF ~~ THEN BEGIN Laran2.8
SAY @327
++ @319 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran2.9
++ @320 DO ~IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran2.10
++ @321 + Laran2.11
++ @322 DO ~IncrementGlobal("B!LaranLike","GLOBAL",-1)~ + Laran2.12
++ @323 + Laran2.13
END

IF ~~ THEN BEGIN Laran2.9
SAY @328
= @329
= @330
++ @331 + Laran2.14
++ @332 DO ~SetGlobal("B!GaveHair","GLOBAL",1)  IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran2.15
++ @333 DO ~SetGlobal("B!GaveRibbon","GLOBAL",1) IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran2.15
++ @334 DO ~IncrementGlobal("B!LaranLike","GLOBAL",-1)~ + Laran2.16
END

IF ~~ THEN BEGIN Laran2.10
SAY @335
= @329
= @330
++ @331 + Laran2.14
++ @332 DO ~SetGlobal("B!GaveHair","GLOBAL",1)  IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran2.15
++ @333 DO ~SetGlobal("B!GaveRibbon","GLOBAL",1) IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran2.15
++ @334 DO ~IncrementGlobal("B!LaranLike","GLOBAL",-1)~ + Laran2.16
END

IF ~~ THEN BEGIN Laran2.11
SAY @336
= @329
= @330
++ @331 + Laran2.14
++ @332 DO ~SetGlobal("B!GaveHair","GLOBAL",1)  IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran2.15
++ @333 DO ~SetGlobal("B!GaveRibbon","GLOBAL",1) IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran2.15
++ @334 DO ~IncrementGlobal("B!LaranLike","GLOBAL",-1)~ + Laran2.16
END

IF ~~ THEN BEGIN Laran2.12
SAY @337
= @329
= @330
++ @331 + Laran2.14
++ @332 DO ~SetGlobal("B!GaveHair","GLOBAL",1)  IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran2.15
++ @333 DO ~SetGlobal("B!GaveRibbon","GLOBAL",1) IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran2.15
++ @334 DO ~IncrementGlobal("B!LaranLike","GLOBAL",-1)~ + Laran2.16
END

IF ~~ THEN BEGIN Laran2.13
SAY @338
= @329
= @330
++ @331 + Laran2.14
++ @332 DO ~SetGlobal("B!GaveHair","GLOBAL",1)  IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran2.15
++ @333 DO ~SetGlobal("B!GaveRibbon","GLOBAL",1) IncrementGlobal("B!LaranLike","GLOBAL",1)~ + Laran2.15
++ @334 DO ~IncrementGlobal("B!LaranLike","GLOBAL",-1)~ + Laran2.16
END

IF ~~ THEN BEGIN Laran2.14
SAY @339
IF ~~ THEN DO ~SetGlobal("RE_LaranMoves","GLOBAL",3) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Lar2")~ EXIT
END

IF ~~ THEN BEGIN Laran2.15
SAY @340
IF ~~ THEN DO ~SetGlobal("RE_LaranMoves","GLOBAL",3) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Lar2")~ EXIT
END

IF ~~ THEN BEGIN Laran2.16
SAY @341
IF ~~ THEN DO ~SetGlobal("RE_LaranMoves","GLOBAL",3) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Lar2")~ EXIT
END
END

/* Mithrest Inn - Anomen */
CHAIN
IF WEIGHT #-1 ~Global("B!RE_AnoComplain","GLOBAL",2)~ THEN ANOMENJ Complain1
@342
DO ~SetGlobal("B!RE_AnoComplain","GLOBAL",3)~
== ANOMENJ IF ~Global("AnomenRomanceActive","GLOBAL",2)~ THEN @343
== ANOMENJ @344
END
++ @345 EXTERN ANOMENJ Complain1.0
++ @346 EXTERN ANOMENJ Complain1.0
++ @347 EXTERN ANOMENJ Complain1.2
+ ~Global("AnomenRomanceActive","GLOBAL",1)~ + @348 EXTERN ANOMENJ Complain1.3a
+ ~Global("AnomenRomanceActive","GLOBAL",2)~ + @348 EXTERN ANOMENJ Complain1.3b

APPEND ~ANOMENJ~

IF ~~ THEN BEGIN Complain1.0
SAY @349
IF ~~ THEN GOTO Complain1.1
END

IF ~~ THEN BEGIN Complain1.1
SAY @350
++ @351 + Complain1.4
+ ~Global("AnomenRomanceActive","GLOBAL",1)~ + @352 + Complain1.5a
+ ~Global("AnomenRomanceActive","GLOBAL",2)~ + @352 + Complain1.5b
+ ~Global("AnomenRomanceActive","GLOBAL",1)~ + @353 + Complain1.6a
+ ~Global("AnomenRomanceActive","GLOBAL",2)~ + @353 + Complain1.6b
++ @354 + Complain1.7
+ ~Global("AnomenRomanceActive","GLOBAL",1)~ + @355 + Complain1.8a
+ ~Global("AnomenRomanceActive","GLOBAL",2)~ + @355 + Complain1.8b
END

IF ~~ THEN BEGIN Complain1.2
SAY @356
IF ~~ THEN GOTO Complain1.1
END

IF ~~ THEN BEGIN Complain1.3a
SAY @357
IF ~~ THEN GOTO Complain1.1
END

IF ~~ THEN BEGIN Complain1.3b
SAY @358
IF ~~ THEN GOTO Complain1.1
END

IF ~~ THEN BEGIN Complain1.4
SAY @359
++ @360 + Complain1.11
+ ~Global("AnomenRomanceActive","GLOBAL",1)~ + @361 + Complain1.8a
+ ~Global("AnomenRomanceActive","GLOBAL",2)~ + @361 + Complain1.8b
+ ~Global("AnomenRomanceActive","GLOBAL",1)~ + @362 + Complain1.9a
+ ~Global("AnomenRomanceActive","GLOBAL",2)~ + @362 + Complain1.9b
++ @363 + Complain1.10
END

IF ~~ THEN BEGIN Complain1.5a
SAY @364
++ @365 + Complain1.9a
++ @366 + Complain1.7
++ @367 + Complain1.12
++ @368 + Complain1.11
END

IF ~~ THEN BEGIN Complain1.5b
SAY @364
++ @365 + Complain1.9b
++ @366 + Complain1.7
++ @367 + Complain1.12
++ @368 + Complain1.11
END

IF ~~ THEN BEGIN Complain1.6a
SAY @369
= @370
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Complain1.6b
SAY @371
= @372
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Complain1.7
SAY @373
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Complain1.8a
SAY @374
++ @375 + Complain1.11
++ @376 DO ~SetGlobal("B!AnomenKnowsLaranSex","GLOBAL",1)~ + Complain1.13
END

IF ~~ THEN BEGIN Complain1.8b
SAY @377
++ @375 + Complain1.11
++ @378 DO ~SetGlobal("B!AnomenKnowsLaranSex","GLOBAL",1)~ + Complain1.14
END

IF ~~ THEN BEGIN Complain1.9a
SAY @379
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Complain1.9b
SAY @380
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Complain1.10
SAY @381
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Complain1.11
SAY @382
IF ~~ THEN DO ~SetGlobal("B!AnomenWatchesForLaran","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN Complain1.12
SAY @383
= @384
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Complain1.13
SAY @385
= @384
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Complain1.14
SAY @386
= @387
= @388
END
END