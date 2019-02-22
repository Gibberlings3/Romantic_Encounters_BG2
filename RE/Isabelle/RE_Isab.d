BEGIN RE_ISAB

IF ~NumTimesTalkedTo(0)~ i1
SAY @0
++ @1 + i1.1
++ @2 + i1.2
++ @3 + i1.3
++ @4 + i1.4
END

IF ~~ i1.1
SAY @5
++ @6 + i2.1
++ @7 + i2.2
++ @8 + i2.3
++ @9 + i2.4
END

IF ~~ i1.2
SAY @10
= @11
++ @6 + i2.1
++ @7 + i2.2
++ @8 + i2.3
++ @9 + i2.4
END

IF ~~ i1.3
SAY @12
IF ~~ DO ~EscapeArea()~ EXIT
END

IF ~~ i1.4
SAY @13 
= @14
++ @6 + i2.1
++ @7 + i2.2
++ @8 + i2.3
++ @9 + i2.4
END

IF ~~ i2.1
SAY @15
++ @16 DO ~SetGlobal("RE_IsabelleMoved","GLOBAL",3)~ + i3.1
++ @17 DO ~SetGlobal("RE_IsabelleMoved","GLOBAL",3)~ + i3.2
++ @18 DO ~SetGlobal("RE_IsabelleMoved","GLOBAL",3)~ + i3.3
++ @19 DO ~SetGlobal("RE_IsabelleMoved","GLOBAL",3)~ + i3.4
END

IF ~~ i2.2
SAY @20
++ @16 DO ~SetGlobal("RE_IsabelleMoved","GLOBAL",3)~ + i3.1
++ @17 DO ~SetGlobal("RE_IsabelleMoved","GLOBAL",3)~ + i3.2
++ @18 DO ~SetGlobal("RE_IsabelleMoved","GLOBAL",3)~ + i3.3
++ @21 DO ~SetGlobal("RE_IsabelleMoved","GLOBAL",3)~ + i3.4
END

IF ~~ i2.3
SAY @22
IF ~~ DO ~EscapeArea()~ EXIT
END

IF ~~ i2.4
SAY @23
= @24 
IF ~~ DO ~EscapeArea()~ EXIT
END

IF ~~ i3.1
SAY @25 
IF ~~ + i3.hugscene
END

IF ~~ i3.2
SAY @26
IF ~~ + i3.lovescene
END

IF ~~ i3.3
SAY @27
IF ~~ + i3.lovescene
END

IF ~~ i3.4
SAY @28
= @29
IF ~~ DO ~EscapeArea()~ EXIT
END

IF ~~ i3.hugscene
SAY @30
= @31
++ @32 + i3.hug1
++ @33 + i3.hug2
++ @34 + i3.hug3
++ @35 + i3.hug4
END

IF ~~ i3.hug1
SAY @36
= @37
IF ~~ DO ~EscapeArea()~ EXIT
END

IF ~~ i3.hug2
SAY @38
= @37
IF ~~ DO ~EscapeArea()~ EXIT
END

IF ~~ i3.hug3
SAY @39
= @37
IF ~~ DO ~EscapeArea()~ EXIT
END
 
IF ~~ i3.hug4
SAY @40
= @41
IF ~~ DO ~EscapeArea()~ EXIT
END

IF ~~ i3.lovescene
SAY @42
++ @43 + i3.love1
++ @44 + i3.love2
++ @45 + i3.love3
++ @35 + i3.hug4
++ @46 + i3.love4
END

IF ~~ i3.love1
SAY @47
IF ~~ + i3.isabelle
END

IF ~~ i3.love2
SAY @48
IF ~~ + i3.isabelle
END

IF ~~ i3.love3
SAY @49
IF ~~ + i3.isabelle
END

IF ~~ i3.love4
SAY @50
= @51
IF ~~ DO ~EscapeArea()~ EXIT
END

//  ISABELLE'S SCENE

IF ~~ i3.isabelle
SAY @52
= @53
= @54
= @55
++ @56 + i3.isabelle1
++ @57 + i3.isabelle1
++ @58 DO ~ActionOverride("RE_Isab",EscapeArea())~ EXIT
++ @59 DO ~ActionOverride("RE_Isab",EscapeArea())~ EXIT
END

IF ~~ i3.isabelle1
SAY @60
IF ~~ DO ~SetGlobal("RE_IsabelleFlirt","GLOBAL",1) EscapeArea()~ EXIT

IF ~InParty("Aerie") OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_IsabelleFlirtAerie","GLOBAL",1) SetGlobal("RE_IsabelleFlirt","GLOBAL",1) EscapeArea()~ EXIT
IF ~InParty("Jaheira") OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_IsabelleFlirtJaheira","GLOBAL",1) SetGlobal("RE_IsabelleFlirt","GLOBAL",1) EscapeArea()~ EXIT
IF ~InParty("Viconia") OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_IsabelleFlirtViconia","GLOBAL",1) SetGlobal("RE_IsabelleFlirt","GLOBAL",1) EscapeArea()~ EXIT

IF ~InParty("Aerie") OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2) 
InParty("Jaheira") OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_IsabelleFlirtAerie","GLOBAL",1) SetGlobal("RE_IsabelleFlirtJaheira","GLOBAL",1) SetGlobal("RE_IsabelleFlirt","GLOBAL",1) EscapeArea()~ EXIT
IF ~InParty("Aerie") OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2) 
InParty("Viconia") OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_IsabelleFlirtAerie","GLOBAL",1) SetGlobal("RE_IsabelleFlirtViconia","GLOBAL",1) SetGlobal("RE_IsabelleFlirt","GLOBAL",1) EscapeArea()~ EXIT
IF ~InParty("Jaheira") OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2)
InParty("Viconia") OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_IsabelleFlirtJaheira","GLOBAL",1) SetGlobal("RE_IsabelleFlirtViconia","GLOBAL",1) SetGlobal("RE_IsabelleFlirt","GLOBAL",1) EscapeArea()~ EXIT

IF ~InParty("Aerie") OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2) 
InParty("Jaheira") OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2)
InParty("Viconia") OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_IsabelleFlirtAerie","GLOBAL",1) SetGlobal("RE_IsabelleFlirtJaheira","GLOBAL",1) SetGlobal("RE_IsabelleFlirtViconia","GLOBAL",1) SetGlobal("RE_IsabelleFlirt","GLOBAL",1) EscapeArea()~ EXIT

END