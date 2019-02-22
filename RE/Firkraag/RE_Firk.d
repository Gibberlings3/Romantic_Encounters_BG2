// Firkraag's Unsheathed Sword

EXTEND_BOTTOM FIRKRA02 26
+ ~IsGabber(Player1) Gender(Player1,FEMALE) Global("RE_FirkraagFlirt","GLOBAL",0)~ + @0 DO ~SetGlobal("RE_FirkraagFlirt","GLOBAL",1)~ EXTERN FIRKRA02 f1
END

APPEND FIRKRA02

IF ~~ f1
SAY @1
= @2
++ @3 + f4
++ @4 + f4
++ @5 + 27
++ @6 + 25
END

IF ~~ f4
SAY @7
= @8
= @9
++ @10 + f6
++ @11 + f6
++ @12 + f6
++ @13 + f6
END

IF ~~ f6
SAY @14
++ @15 + f7
++ @16 + f7
++ @17 + f7
++ @18 + f7
++ @19 + f7
END

IF ~~ f7
SAY @20
= @21
= @22
IF ~~ EXIT
END

END