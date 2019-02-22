BEGIN RE_Bync
BEGIN RE_Ilona
BEGIN RE_Mit

CHAIN IF ~Global("RE_ByncMet","GLOBAL",1)~ THEN RE_BYNC b1
@0
== RE_MIT @1
== RE_BYNC @2
== RE_MIT @3
== RE_BYNC @4
END
++ @5 EXTERN RE_MIT m1
++ @6 EXTERN RE_MIT m1
++ @7 EXTERN RE_MIT m0
++ @8 EXTERN RE_MIT m0

CHAIN RE_MIT m0
@9
== RE_BYNC @10
== RE_MIT @11
== RE_BYNC @12
== RE_MIT @13
DO ~SetGlobal("RE_ByncMet","GLOBAL",10) 
ActionOverride("RE_Bync",EscapeArea())
ActionOverride("RE_Mit",EscapeArea())~
EXIT

CHAIN RE_MIT m1
@14
END
++ @15 EXTERN RE_MIT m3
++ @16 EXTERN RE_MIT m3
++ @17 EXTERN RE_MIT m2

CHAIN RE_MIT m2
@18
END
IF ~~ EXTERN RE_MIT m0

CHAIN RE_MIT m3
@19
== RE_BYNC @20
== RE_MIT @21
== RE_BYNC @22
DO ~SetGlobal("RE_ByncMet","GLOBAL",2) 
ActionOverride("RE_Mit",EscapeArea())~
EXIT

CHAIN IF ~Global("RE_ByncMet","GLOBAL",3)~ THEN RE_BYNC b2
@23
= @24
END
++ @25 EXTERN RE_BYNC b2.1
++ @26 EXTERN RE_BYNC b2.1
++ @27 EXTERN RE_BYNC b2.2

CHAIN RE_BYNC b2.1
@28
DO ~SetGlobal("RE_ByncMet","GLOBAL",4) 
ClearAllActions()
StartCutSceneMode()
StartCutScene("RE_Bync1")~
EXIT

CHAIN RE_BYNC b2.2
@29
DO ~SetGlobal("RE_ByncMet","GLOBAL",10) 
ActionOverride("RE_Bync",EscapeArea())~
EXIT

CHAIN IF ~Global("RE_ByncMet","GLOBAL",4)~ THEN RE_BYNC b3
@30
== RE_ILONA @31
== RE_BYNC @32
== RE_ILONA @33
== RE_BYNC @34
== RE_ILONA @35
DO ~SetGlobal("RE_ByncMet","GLOBAL",5) 
ClearAllActions()
StartCutSceneMode()
StartCutScene("RE_Bync2")~
EXIT

CHAIN IF ~Global("RE_ByncMet","GLOBAL",5)~ THEN RE_BYNC b4
@36
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @37
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @38
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @39
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @40
== RE_ILONA @41
== RE_ILONA @42
END
++ @43 EXTERN RE_BYNC b4.1
++ @44 EXTERN RE_BYNC b4.1
++ @45 EXTERN RE_BYNC b4.1
++ @46 EXTERN RE_BYNC b4.0

CHAIN RE_BYNC b4.0
@47 
== RE_ILONA @48
DO ~SetGlobal("RE_ByncMet","GLOBAL",10) 
ClearAllActions()
StartCutSceneMode()
StartCutScene("RE_Bync5")~
EXIT

CHAIN RE_BYNC b4.1
@49
== RE_ILONA @50
DO ~SetGlobal("RE_IlonaFlirt","GLOBAL",1)~
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @51
== RE_ILONA @52
END
IF ~~ EXTERN RE_ILONA re_f1

IF ~InParty("Aerie") OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_IlonaFlirtAerie","GLOBAL",1)~ EXTERN RE_ILONA re_f1
IF ~InParty("Jaheira") OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_IlonaFlirtJaheira","GLOBAL",1)~ EXTERN RE_ILONA re_f1
IF ~InParty("Viconia") OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_IlonaFlirtViconia","GLOBAL",1)~ EXTERN RE_ILONA re_f1

IF ~InParty("Aerie") OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2) 
InParty("Jaheira") OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_IlonaFlirtAerie","GLOBAL",1) SetGlobal("RE_IlonaFlirtJaheira","GLOBAL",1)~ EXTERN RE_ILONA re_f1
IF ~InParty("Aerie") OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2) 
InParty("Viconia") OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_IlonaFlirtAerie","GLOBAL",1) SetGlobal("RE_IlonaFlirtViconia","GLOBAL",1)~ EXTERN RE_ILONA re_f1
IF ~InParty("Jaheira") OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2)
InParty("Viconia") OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_IlonaFlirtJaheira","GLOBAL",1) SetGlobal("RE_IlonaFlirtViconia","GLOBAL",1)~ EXTERN RE_ILONA re_f1

IF ~InParty("Aerie") OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2) 
InParty("Jaheira") OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2)
InParty("Viconia") OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_IlonaFlirtAerie","GLOBAL",1) SetGlobal("RE_IlonaFlirtJaheira","GLOBAL",1) SetGlobal("RE_IlonaFlirtViconia","GLOBAL",1)~ EXTERN RE_ILONA re_f1


CHAIN RE_ILONA re_f1
@53
END
++ @54 EXTERN RE_ILONA b4.2
++ @55 EXTERN RE_ILONA b4.2
++ @56 EXTERN RE_ILONA b4.2
++ @57 EXTERN RE_BYNC b4.0

CHAIN RE_ILONA b4.2
@58
== RE_BYNC @59
== RE_ILONA @60
== RE_ILONA @61
== RE_ILONA @62
DO ~SetGlobal("RE_ByncMet","GLOBAL",6) 
ClearAllActions()
StartCutSceneMode()
StartCutScene("RE_Bync3")~
EXIT

CHAIN IF ~Global("RE_ByncMet","GLOBAL",6)~ THEN RE_ILONA i5
@63 
= @64
END
++ @65 EXTERN RE_ILONA i5.1
++ @66 EXTERN RE_ILONA i5.2
++ @67 EXTERN RE_ILONA i5.3
++ @68 EXTERN RE_ILONA i5.3

CHAIN RE_ILONA i5.0
@69
DO ~SetGlobal("RE_ByncMet","GLOBAL",10) 
ClearAllActions()
StartCutSceneMode()
StartCutScene("RE_Bync5")~
EXIT

CHAIN RE_ILONA i5.1
@70
END
++ @71 EXTERN RE_ILONA i5.4
++ @72 EXTERN RE_ILONA i5.0

CHAIN RE_ILONA i5.2
@73
END
++ @74 EXTERN RE_ILONA i5.4
++ @75 EXTERN RE_ILONA i5.1

CHAIN RE_ILONA i5.3
@76
= @77
= @78
END
++ @79 EXTERN RE_ILONA i5.5
++ @80 EXTERN RE_ILONA i5.6
++ @81 EXTERN RE_ILONA i5.0

CHAIN RE_ILONA i5.4
@82
END
IF ~~ EXTERN RE_ILONA i5.3

CHAIN RE_ILONA i5.5
@83
END
IF ~~ EXTERN RE_ILONA i5.6

CHAIN RE_ILONA i5.6
@84
= @85
END
++ @86 EXTERN RE_ILONA i5.7
++ @87 EXTERN RE_ILONA i5.7
++ @88 EXTERN RE_ILONA i5.0
++ @89 EXTERN RE_ILONA i5.0

CHAIN RE_ILONA i5.7
@90
END
IF ~~ DO ~SetGlobal("RE_IlonaSex","GLOBAL",1) SetGlobal("RE_ByncMet","GLOBAL",7) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Bync4")~ EXIT

CHAIN IF ~Global("RE_ByncMet","GLOBAL",7)~ THEN RE_ILONA i6
@91 
= @92
= @93
DO ~SetGlobal("RE_ByncMet","GLOBAL",10) 
ClearAllActions()
StartCutSceneMode()
StartCutScene("RE_Bync5")~
EXIT