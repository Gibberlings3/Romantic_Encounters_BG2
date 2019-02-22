//Solaufein lovenight, written and coded by jastey, translated by berelinde

EXTEND_BOTTOM UDPHAE01 25
+ ~Global("RE_SolaufeinFlirt","GLOBAL",0)~ + @0 SOLVED_JOURNAL @1 DO ~SetGlobal("RE_SolaufeinFlirt","GLOBAL",1)~ EXTERN UDPHAE01 phaere_01
END

CHAIN UDPHAE01 phaere_01
@2
= @3
= @4
== UDSOLA01 @5
== UDPHAE01 @6
== UDSOLA01 @7
= @8
== UDPHAE01 @9
== UDPHAE01 @10
== UDSOLA01 @11
== UDPHAE01 @12
= @13
== UDSOLA01 @14
== UDPHAE01 @15
== UDSOLA01 @16 
END 
IF ~~ DO ~SetGlobal("RE_SolaufeinMoves","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Sola1")~ EXIT
IF ~Gender(Player1,FEMALE) InParty("Anomen") OR(2) Global("AnomenRomanceActive","GLOBAL",1) Global("AnomenRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_SolaufeinFlirtAnomen","GLOBAL",1) IncrementGlobal("RE_AnomenCounter","GLOBAL",1) SetGlobal("RE_SolaufeinMoves","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Sola1")~ EXIT

IF ~Gender(Player1,MALE) InParty("Aerie") OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_SolaufeinFlirtAerie","GLOBAL",1) SetGlobal("RE_SolaufeinMoves","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Sola1")~ EXIT
IF ~Gender(Player1,MALE) InParty("Jaheira") OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_SolaufeinFlirtJaheira","GLOBAL",1) SetGlobal("RE_SolaufeinMoves","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Sola1")~ EXIT
IF ~Gender(Player1,MALE) InParty("Viconia") OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_SolaufeinFlirtViconia","GLOBAL",1) SetGlobal("RE_SolaufeinMoves","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Sola1")~ EXIT

IF ~Gender(Player1,MALE) InParty("Aerie") OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2) InParty("Jaheira") OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_SolaufeinFlirtAerie","GLOBAL",1) SetGlobal("RE_SolaufeinFlirtJaheira","GLOBAL",1) SetGlobal("RE_SolaufeinMoves","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Sola1")~ EXIT
IF ~Gender(Player1,MALE) InParty("Aerie") OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2) InParty("Viconia") OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_SolaufeinFlirtAerie","GLOBAL",1) SetGlobal("RE_SolaufeinFlirtViconia","GLOBAL",1) SetGlobal("RE_SolaufeinMoves","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Sola1")~ EXIT
IF ~Gender(Player1,MALE) InParty("Jaheira") OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2) InParty("Viconia") OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_SolaufeinFlirtJaheira","GLOBAL",1) SetGlobal("RE_SolaufeinFlirtViconia","GLOBAL",1) SetGlobal("RE_SolaufeinMoves","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Sola1")~ EXIT

IF ~Gender(Player1,MALE) InParty("Aerie") OR(2) Global("AerieRomanceActive","GLOBAL",1) Global("AerieRomanceActive","GLOBAL",2) InParty("Jaheira") OR(2) Global("JaheiraRomanceActive","GLOBAL",1) Global("JaheiraRomanceActive","GLOBAL",2)
InParty("Viconia") OR(2) Global("ViconiaRomanceActive","GLOBAL",1) Global("ViconiaRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_SolaufeinFlirtAerie","GLOBAL",1) SetGlobal("RE_SolaufeinFlirtJaheira","GLOBAL",1) SetGlobal("RE_SolaufeinFlirtViconia","GLOBAL",1) SetGlobal("RE_SolaufeinMoves","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Sola1")~ EXIT 

CHAIN IF WEIGHT #-1 ~OR(2) Global("RE_SolaufeinMoves","GLOBAL",2) Global("RE_SolaufeinMoves","GLOBAL",4)~ THEN UDPHAE01 phaere_03
@17 
DO ~SetGlobal("RE_SolaufeinMoves","GLOBAL",5)~
== UDSOLA01 @18
== UDPHAE01 @19 
END
COPY_TRANS UDPHAE01 25

APPEND UDSOLA01 

IF WEIGHT #-1 ~Global("RE_SolaufeinMoves","GLOBAL",1)~ THEN solaufein_01
SAY @20
++ @21 DO ~SetGlobal("RE_SolaufeinMoves","GLOBAL",2)~ + solaufein_03
++ @22 DO ~SetGlobal("RE_SolaufeinMoves","GLOBAL",2)~ + solaufein_04
+ ~Gender(Player1,MALE)~ + @23 DO ~SetGlobal("RE_SolaufeinMoves","GLOBAL",2)~ + solaufein_02m
+ ~Gender(Player1,FEMALE)~ + @24 DO ~SetGlobal("RE_SolaufeinMoves","GLOBAL",2)~ + solaufein_02f
END

IF ~~ THEN solaufein_02m
SAY @25
IF ~~ THEN DO ~SetGlobal("RE_SolaufeinSex","GLOBAL",1) SetGlobal("RE_SolaufeinMoves","GLOBAL",3)
ClearAllActions() StartCutSceneMode() StartCutScene("RE_Sola2")~ EXIT
END

IF ~~ THEN solaufein_02f
SAY @26
IF ~~ THEN DO ~SetGlobal("RE_SolaufeinSex","GLOBAL",1) SetGlobal("RE_SolaufeinMoves","GLOBAL",3)
ClearAllActions() StartCutSceneMode() StartCutScene("RE_Sola2")~ EXIT
END

IF ~~ THEN solaufein_03
SAY @27
++ @28 + solaufein_05
++ @29 + solaufein_04
+ ~Gender(Player1,MALE)~ + @30 + solaufein_02m
+ ~Gender(Player1,FEMALE)~ + @31 + solaufein_02f
END

IF ~~ THEN solaufein_04
SAY @32
= @33
IF ~~ THEN DO ~SetGlobal("RE_SolaufeinSex","GLOBAL",1) SetGlobal("RE_SolaufeinMoves","GLOBAL",3)
ClearAllActions() StartCutSceneMode() StartCutScene("RE_Sola2")~ EXIT
END

IF ~~ THEN solaufein_05
SAY @34
IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("RE_Sola3")~ EXIT
END

IF WEIGHT #-1 ~Global("RE_SolaufeinMoves","GLOBAL",3)~ THEN solaufein_06
SAY @35
IF ~~ THEN DO ~SetGlobal("RE_SolaufeinMoves","GLOBAL",4) 
ClearAllActions() StartCutSceneMode() StartCutScene("RE_Sola3")~ EXIT
END

END