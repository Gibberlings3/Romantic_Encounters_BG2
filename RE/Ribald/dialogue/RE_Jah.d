BEGIN ~RE_Jah~

APPEND JAHEIRAJ

IF ~!StateCheck(Player1,STATE_SLEEPING)
Global("RE_RibaldRomanceActive","GLOBAL",1)
Global("RE_JaheiraCurious","GLOBAL",2)~ THEN BEGIN Storeroom
SAY @0
IF ~~ THEN REPLY @1 DO ~SetGlobal("RE_JaheiraCurious","GLOBAL",3)~ GOTO LivingALie
IF ~~ THEN REPLY @2 DO ~SetGlobal("RE_JaheiraCurious","GLOBAL",3)~ GOTO Guardian
END

IF ~~ THEN BEGIN LivingALie
SAY @3
IF ~~ THEN REPLY @4 GOTO BlackLotus
IF ~~ THEN REPLY @5 GOTO SlaveTraders
IF ~~ THEN REPLY @6 GOTO HotLove
END

IF ~~ THEN BEGIN BlackLotus
SAY @7
= @8
IF ~~ THEN REPLY @9 GOTO WatchYourTongue1
IF ~~ THEN REPLY @10 GOTO ListenToMe1
END

IF ~~ THEN BEGIN WatchYourTongue1
SAY @11
= @12
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ListenToMe1
SAY @13
= @14
= @12
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SlaveTraders
SAY @7
= @15
IF ~~ THEN REPLY @9 GOTO WatchYourTongue2
IF ~~ THEN REPLY @10 GOTO ListenToMe2
END

IF ~~ THEN BEGIN WatchYourTongue2
SAY @11
= @12
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ListenToMe2
SAY @13
= @14
= @12
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN HotLove
SAY @16
IF ~~ THEN REPLY @17 GOTO Enough
IF ~~ THEN REPLY @18 GOTO AreYouSerious
END

IF ~~ THEN BEGIN AreYouSerious
SAY @19
IF ~~ THEN REPLY @20 GOTO Enough
IF ~~ THEN REPLY @21 GOTO RibaldIsASickSickMan
END

IF ~~ THEN BEGIN RibaldIsASickSickMan
SAY @22
= @23
= @24
= @25
IF ~~ THEN REPLY @26 DO ~SetGlobal("RE_JaheiraCurious","GLOBAL",4)~ GOTO Warning
IF ~~ THEN REPLY @27 DO ~SetGlobal("RE_JaheiraCurious","GLOBAL",4)~ GOTO ShutUpJaheira
END

IF ~~ THEN BEGIN Warning
SAY @28
= @29
= @30
= @31
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ShutUpJaheira
SAY @32
= @28
= @29
= @30
= @31
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Enough
SAY @33
= @12
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Guardian
SAY @34
= @35
IF ~~ THEN EXIT
END

END