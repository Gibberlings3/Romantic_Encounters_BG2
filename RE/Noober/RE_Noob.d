BEGIN RE_NOOB

IF ~NumTimesTalkedTo(0)~ RE_Noob1
SAY @0
IF ~~ EXIT
END

IF ~NumTimesTalkedTo(1)~ RE_Noob2
SAY @1
IF ~~ EXIT
END

IF ~NumTimesTalkedTo(1)~ RE_Noob3
SAY @0
IF ~~ EXIT
IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ EXTERN AERIEJ RE_NooberAerie1
END

IF ~NumTimesTalkedTo(2)~ RE_Noob3
SAY @2
IF ~~ EXIT
END

IF ~NumTimesTalkedTo(3)~ RE_Noob4
SAY @3
IF ~~ EXIT
END

IF ~NumTimesTalkedTo(4)~ RE_Noob5
SAY @4
IF ~~ EXIT
END

IF ~NumTimesTalkedTo(5)~ RE_Noob6
SAY @0
IF ~~ EXIT
END

IF ~NumTimesTalkedTo(6)~ RE_Noob7
SAY @5
IF ~~ EXIT
IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ EXTERN MINSCJ RE_NooberMinsc1
END

IF ~NumTimesTalkedTo(7)~ RE_Noob8
SAY @0
IF ~~ EXIT
END

IF ~NumTimesTalkedTo(8)~ RE_Noob9
SAY @6
IF ~~ EXIT
IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ EXTERN NALIAJ RE_NooberNalia1
END

IF ~NumTimesTalkedTo(9)~ RE_Noob10
SAY @0
IF ~~ EXIT
END

IF ~NumTimesTalkedTo(10)~ RE_Noob11
SAY @0
IF ~~ EXIT
END

IF ~NumTimesTalkedTo(11)~ RE_Noob12
SAY @7
IF ~~ EXIT
END

IF ~NumTimesTalkedTo(12)~ RE_Noob13
SAY @8
IF ~~ EXIT
END

IF ~NumTimesTalkedTo(13)~ RE_Noob14
SAY @9
IF ~~ EXIT
END

IF ~NumTimesTalkedTo(14)~ RE_Noob15
SAY @0
IF ~~ EXIT
IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ EXTERN MAZZYJ RE_NooberMazzy1
END

IF ~NumTimesTalkedTo(15)~ RE_Noob16
SAY @10
IF ~~ EXIT
END

IF ~NumTimesTalkedTo(16)~ RE_Noob17
SAY @11
IF ~~ EXIT
END

IF ~NumTimesTalkedTo(17)~ RE_Noob18
SAY @0
IF ~~ EXIT
END

IF ~NumTimesTalkedTo(18)~ RE_Noob19
SAY @12
IF ~~ EXIT
END

IF ~NumTimesTalkedTo(19)~ RE_Noob20
SAY @13
IF ~~ EXIT
END

IF ~NumTimesTalkedTo(20)~ RE_Noob21
SAY @13
IF ~~ EXIT
IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ EXTERN JAHEIRAJ RE_NooberJaheira1
END

IF ~NumTimesTalkedTo(21)~ RE_Noob22
SAY @14
IF ~~ EXIT
END

IF ~NumTimesTalkedTo(22)~ RE_Noob23
SAY @0
IF ~~ EXIT
END

IF ~NumTimesTalkedTo(23)~ RE_Noob24
SAY @15
IF ~~ EXIT
IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ EXTERN ANOMENJ RE_NooberAnomen1
END

IF ~NumTimesTalkedTo(24)~ RE_Noob25
SAY @16
IF ~~ EXIT
END

IF ~NumTimesTalkedTo(25)~ RE_Noob26
SAY @17
IF ~~ EXIT
END

IF ~NumTimesTalkedTo(26)~ RE_Noob27
SAY @13
IF ~~ EXIT
END

IF ~NumTimesTalkedTo(27)~ RE_Noob28
SAY @0
IF ~~ EXIT
END

IF ~NumTimesTalkedTo(28)~ RE_Noob29
SAY @18
IF ~~ EXIT
END

IF ~NumTimesTalkedTo(29)~ RE_Noob30
SAY @19
IF ~~ EXIT
END

IF ~NumTimesTalkedTo(30)~ RE_Noob31
SAY @0
IF ~~ EXIT
END

IF ~NumTimesTalkedTo(31)~ RE_Noob32
SAY @8
IF ~~ EXIT
END

IF ~NumTimesTalkedTo(32)~ RE_Noob33
SAY @20
IF ~~ EXIT
IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ EXTERN VICONIJ RE_NooberViconia1
END

IF ~NumTimesTalkedTo(33)~ RE_Noob34
SAY @21
IF ~~ EXIT
END

IF ~NumTimesTalkedTo(34)~ RE_Noob35
SAY @0
IF ~~ EXIT
END

IF ~NumTimesTalkedTo(35)~ RE_Noob36
SAY @22
IF ~~ EXIT
IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ EXTERN IMOEN2J RE_NooberImoen1
END

IF ~NumTimesTalkedTo(36)~ RE_Noob37
SAY @23
IF ~~ EXIT
IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ EXTERN ANOMENJ RE_NooberAnomen2
END

IF ~NumTimesTalkedTo(37)~ RE_Noob38
SAY @13
IF ~~ EXIT
END

IF ~NumTimesTalkedTo(38)~ RE_Noob39
SAY @13
IF ~~ EXIT
END

IF ~NumTimesTalkedTo(39)~ RE_Noob40
SAY @24
IF ~~ DO ~SetGlobal("RE_NooberFlirt","GLOBAL",1)
AddXPObject(Player1,1000)
AddXPObject(Player2,1000)
AddXPObject(Player3,1000)
AddXPObject(Player4,1000)
AddXPObject(Player5,1000)
AddXPObject(Player6,1000)
EscapeArea()~ EXIT
END

APPEND AERIEJ

IF ~~ RE_NooberAerie1
SAY @25
IF ~~ EXIT
END

END

APPEND ANOMENJ

IF ~~ RE_NooberAnomen1
SAY @26
IF ~~ EXIT
END

IF ~~ RE_NooberAnomen2
SAY @27
IF ~~ EXIT
END

END

APPEND IMOEN2J

IF ~~ RE_NooberImoen1
SAY @28
IF ~~ EXIT
END

END

APPEND JAHEIRAJ

IF ~~ RE_NooberJaheira1
SAY @29
IF ~~ EXIT
END

END

APPEND MAZZYJ

IF ~~ RE_NooberMazzy1
SAY @30
IF ~~ EXIT
END

END

APPEND MINSCJ

IF ~~ RE_NooberMinsc1
SAY @31
IF ~~ EXIT
END

END

APPEND NALIAJ

IF ~~ RE_NooberNalia1
SAY @32
IF ~~ EXIT
END

END

APPEND VICONIJ

IF ~~ RE_NooberViconia1
SAY @33
IF ~~ EXIT
END

END