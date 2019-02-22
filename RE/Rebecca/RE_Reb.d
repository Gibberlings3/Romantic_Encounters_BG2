BEGIN RE_REB

// 1.

IF ~OR(2) Gender(Player1,FEMALE) !IsGabber(Player1)~ RE_Rebecca0
SAY @0 
IF ~~ EXIT
END

IF ~Global("RE_RebeccaTalked","GLOBAL",0) IsGabber(Player1) Gender(Player1,MALE)~ RE_Rebecca1
SAY @1 
++ @2 DO ~SetGlobal("RE_RebeccaTalked","GLOBAL",1)~ + RE_Reb1.1
++ @3 DO ~SetGlobal("RE_RebeccaTalked","GLOBAL",1)~ + RE_Reb1.1
++ @4 DO ~SetGlobal("RE_RebeccaTalked","GLOBAL",1)~ + RE_Reb1.1
++ @5 DO ~SetGlobal("RE_RebeccaTalked","GLOBAL",1)~ + RE_Reb1.1
END

IF ~~ RE_Reb1.1
SAY @6 
++ @7 + RE_Reb1.2
++ @8 + RE_Reb1.1a
++ @9 + RE_Reb1.2
++ @10 + RE_Reb1.5
END

IF ~~ RE_Reb1.1a
SAY @11
IF ~~ + RE_Reb1.2
END

IF ~~ RE_Reb1.2
SAY @12
++ @13 + RE_Reb1.3
++ @14 + RE_Reb1.3
++ @15 + RE_Reb1.4
++ @16 + RE_Reb1.5
END

IF ~~ RE_Reb1.3
SAY @17
IF ~~ DO ~SetGlobal("RE_RebeccaTalked","GLOBAL",2)
SetGlobal("RE_RebeccaFlirt","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("RE_Reb1")~ EXIT
END

IF ~~ RE_Reb1.4
SAY @18
IF ~~ EXIT
END

IF ~~ RE_Reb1.5
SAY @19
IF ~~ EXIT
END

// Met again

IF ~Global("RE_RebeccaTalked","GLOBAL",1) IsGabber(Player1)~ RE_Rebecca2
SAY @20 
++ @21 + RE_Reb1.3
++ @22 + RE_Reb1.3
++ @23 + RE_Reb1.4
++ @24 + RE_Reb1.5
END

// 2.

IF ~Global("RE_RebeccaTalked","GLOBAL",2)~ RE_Rebecca2
SAY @25 
++ @26 + RE_Reb2.1
++ @27 + RE_Reb2.2
++ @28 + RE_Reb2.3
++ @29 + RE_Reb2.No
END

IF ~~ RE_Reb2.No
SAY @30
IF ~~ DO ~SetGlobal("RE_RebeccaTalked","GLOBAL",10)
ClearAllActions()
StartCutSceneMode()
StartCutScene("RE_Reb2")~ EXIT
END

IF ~~ RE_Reb2.1
SAY @31
IF ~~ + RE_Reb2.2
END

IF ~~ RE_Reb2.2
SAY @32
++ @33 + RE_Reb2.4
++ @34 + RE_Reb2.5
++ @35 + RE_Reb2.No
END

IF ~~ RE_Reb2.3
SAY @36
IF ~~ + RE_Reb2.2
END

IF ~~ RE_Reb2.4
SAY @37
IF ~~ + RE_Reb2.5
END

IF ~~ RE_Reb2.5
SAY @38
IF ~~ + RE_Reb2.Proposal
END

IF ~~ RE_Reb2.Proposal
SAY @39
++ @40 + RE_Reb2.6
++ @41 + RE_Reb2.7
++ @42 + RE_Reb2.8
++ @43 + RE_Reb2.9
++ @44 + RE_Reb2.10
++ @45 + RE_Reb2.11
++ @46 + RE_Reb2.No
END

IF ~~ RE_Reb2.6
SAY @47
IF ~~ + RE_Reb2.Proposal
END

IF ~~ RE_Reb2.7
SAY @48
IF ~~ + RE_Reb2.Proposal
END

IF ~~ RE_Reb2.8
SAY @49
IF ~~ + RE_Reb2.Proposal
END

IF ~~ RE_Reb2.9
SAY @50
IF ~~ + RE_Reb2.Proposal
END

IF ~~ RE_Reb2.10
SAY @51
IF ~~ + RE_Reb2.Proposal
END

IF ~~ RE_Reb2.11
SAY @52
= @53
= @54
= @55
= @56
= @57
= @58
= @59
= @60
IF ~~ DO ~SetGlobal("RE_RebeccaTalked","GLOBAL",3)
SetGlobal("RE_RebeccaSex","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("RE_Reb3")~ EXIT
END

// 3.

IF ~Global("RE_RebeccaTalked","GLOBAL",3)~ RE_Rebecca3
SAY @61 
= @62 
++ @63 + RE_Reb3.1
++ @64 + RE_Reb3.1
++ @65 + RE_Reb3.1
++ @66 + RE_Reb3.2
END

IF ~~ RE_Reb3.1
SAY @67
IF ~~ + RE_Reb3.2
END

IF ~~ RE_Reb3.2
SAY @68
= @69
= @70
= @71
IF ~~ DO ~SetGlobal("RE_RebeccaTalked","GLOBAL",10)
ClearAllActions()
StartCutSceneMode()
StartCutScene("RE_Reb2")~ EXIT
END