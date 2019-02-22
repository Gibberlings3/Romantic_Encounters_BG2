BEGIN RE_DRYAD

IF ~OR(2) Gender(Player1,FEMALE) !IsGabber(Player1)~ RE_Dryad0
SAY @0 
IF ~~ EXIT
END

IF ~Global("RE_DryadTalked","GLOBAL",0) Gender(Player1,MALE) IsGabber(Player1)~RE_Dryad1
SAY @0 
++ @1 + RE_Dryad1.1
++ @2 + RE_Dryad1.1
++ @3 + RE_Dryad1.1
++ @4 + RE_Dryad1.1
++ @5 + RE_Dryad1.0
END

IF ~~ RE_Dryad1.0
SAY @6
IF ~~ EXIT
END

IF ~~ RE_Dryad1.1
SAY @7
= @8
++ @9 + RE_Dryad1.4
++ @10 + RE_Dryad1.2
++ @11 + RE_Dryad1.2
END

IF ~~ RE_Dryad1.2
SAY @12
= @13
++ @14 + RE_Dryad1.4
++ @15 + RE_Dryad1.4
++ @16 + RE_Dryad1.3
++ @17 + RE_Dryad1.3
END

IF ~~ RE_Dryad1.3
SAY @18 
IF ~~ DO ~SetGlobal("RE_DryadTalked","GLOBAL",1) ApplySpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~~ RE_Dryad1.4
SAY @19
= @20
= @21
= @22
= @23
++ @24 + RE_Dryad1.6
++ @25 + RE_Dryad1.5
++ @26 + RE_Dryad1.6
END

IF ~~ RE_Dryad1.5
SAY @27
IF ~~ + RE_Dryad1.3
END

IF ~~ RE_Dryad1.6
SAY @28
= @29
= @30
= @31
= @32
= @33
IF ~NumInParty(1)~ + RE_Dryad1.8
IF ~NumInParty(2)~ + RE_Dryad1.7a
IF ~!NumInParty(1) !NumInParty(2)~ + RE_Dryad1.7
END

IF ~~ RE_Dryad1.7
SAY @34
IF ~~ + RE_Dryad1.8
END

IF ~~ RE_Dryad1.7a
SAY @35
IF ~~ + RE_Dryad1.8
END

IF ~~ RE_Dryad1.8
SAY @36
IF ~~ DO ~SetGlobal("RE_DryadTalked","GLOBAL",1) SetGlobal("RE_DryadSex","GLOBAL",1) ActionOverride("RE_Dryad",DestroySelf())~ EXIT
END