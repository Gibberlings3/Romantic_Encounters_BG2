// Goldander Blackenrock 

APPEND UDSVIR03

IF WEIGHT #-1 ~!Global("PlayerLooksLikeDrow","GLOBAL",1)
Global("EarQ1","GLOBAL",10)
Gender(Player1,FEMALE)
OR(3)
Race(Player1,HALFLING)
Race(Player1,GNOME)
Race(Player1,DWARF)
Global("RE_Goldander","GLOBAL",0)~ encounter_starts
SAY @0
++ @1 DO ~SetGlobal("RE_Goldander","GLOBAL",1)~ + secure
++ @2 DO ~SetGlobal("RE_Goldander","GLOBAL",1)~ + time
++ @3 DO ~SetGlobal("RE_Goldander","GLOBAL",1)~ + thank
END

IF ~~ secure
SAY @4
= @5
++ @3 + thank
++ @2 + time
END

IF ~~ thank
SAY @6
IF ~~ EXIT
END

IF ~~ time
SAY @7 
= @8
++ @9 + yes_come
++ @10 + yes_come
++ @11 + thank
END

IF ~~ yes_come
SAY @12
IF ~~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("RE_Gold1")~ EXIT
END

IF WEIGHT #-1 ~Global("RE_Goldander","GLOBAL",2)~ encounter_continues
SAY @13
++ @14 DO ~SetGlobal("RE_Goldander","GLOBAL",3)~ + rest
++ @15 DO ~SetGlobal("RE_Goldander","GLOBAL",3)~ + drunk
++ @16 DO ~SetGlobal("RE_Goldander","GLOBAL",3)~ + welcome
END

IF ~~ drunk
SAY @17 
= @18
++ @19  + sleepoff
++ @20 + sleepoff
++ @21 + table
END

IF ~~ sleepoff
SAY @22
= @23
IF ~~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("RE_Gold2")~ EXIT
END

IF ~~ rest 
SAY @24
= @25
++ @26 + sleep
++ @27 + table
++ @28 + nothanks
END

IF ~~ nothanks
SAY @29
= @30
++ @31 + sleep
++ @26 + sleep
++ @32 + hesitant
END

IF ~~ hesitant
SAY @33  
= @34
++ @35 + table
++ @36 + sleep
END

IF ~~ welcome 
SAY @37 
= @38
++ @39 + drow
++ @40 + naive
++ @41 + sleep
END

IF ~~ drow
SAY @42
= @43
++ @44  + survival
++ @45 + survival
++ @46 + nothanks
END

IF ~~ survival
SAY @47  
= @48
= @49
++ @50 + table
++ @51 + goodbye
++ @52 + sleep
END

IF ~~ goodbye
SAY @53
= @22
= @23
IF ~~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("RE_Gold2")~ EXIT
END

IF ~~ naive
SAY @54
= @55
= @56
= @57
++ @58  + table
++ @59  + sleep
END

IF ~~ table
SAY @60
= @61
= @62
+ ~Race(Player1,HALFLING)~ + @63 + halfling
+ ~Race(Player1,HALFLING) InParty("Mazzy")~ + @63 + halfling2
+ ~Race(Player1,DWARF)~ +  @63 + dwarf
+ ~Race(Player1,GNOME)~ + @63 + gnome
++ @64 + sleep
END

IF ~~ halfling
SAY @65
++ @66  + question1
++ @67 + exciting
++ @68 + sleep
END

IF ~~ halfling2
SAY @69
++ @66  + question1
++ @70 + exciting
++ @71 + sleep
END

IF ~~ dwarf
SAY @72
++ @73 + question1
++ @74  + beard
++ @68 + sleep
END

IF ~~ gnome
SAY @75
++ @76 + oldgnome
++ @77 + wife
++ @68 + sleep
END

IF ~~ wife
SAY @29
= @78
= @79
IF ~~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("RE_Gold2")~ EXIT
END

IF ~~ exciting
SAY @80  
IF ~~ + question1
END

IF ~~ beard
SAY @81
= @82
= @83 
IF ~~ + question1
END

IF ~~ oldgnome
SAY @84
= @85 
IF ~~ + question1
END

IF ~~ question1
SAY @86
++ @87 + surface
++ @88 + sea
++ @89 + climb
++ @90 + special
++ @91 + underdark
++ @92 + sleep
END

IF ~~ sea
SAY @93 
IF ~~ + surface
END

IF ~~ climb
SAY @94
= @95
IF ~~ + surface
END

IF ~~ special
SAY @96 
IF ~~ + surface
END

IF ~~ underdark
SAY @97 
IF ~~ + surface
END

IF ~~ surface
SAY @98
++ @99 + above
++ @100 + change
++ @101 + return
END

IF ~~ above
SAY @102
= @103 
IF ~~ + drowcity
END

IF ~~ change
SAY @104
= @105 
IF ~~ + drowcity
END

IF ~~ return
SAY @106
= @107
= @108 
IF ~~ + drowcity
END

IF ~~ drowcity
SAY @109
++ @110 + relief
++ @111 + risk
++ @112 + goodnight
END

IF ~~ goodnight
SAY @113
IF ~~ + sleep
END

IF ~~ risk
SAY @114
++ @115 + soul
++ @116 + revenge
++ @117 + revenge
++ @118 + goodnight
END

IF ~~ relief
SAY @119
= @120
= @121
++ @115 + soul
++ @116 + revenge
++ @117 + revenge
++ @118 + goodnight
END

IF ~~ soul
SAY @122
IF ~~ + farewell
END

IF ~~ revenge 
SAY @123
= @124 
IF ~~ + farewell
END

IF ~~ farewell
SAY @125
= @126
IF ~~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("RE_Gold2")~ EXIT
END

IF ~~ sleep
SAY @127
= @128
IF ~~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("RE_Gold2")~ EXIT
END

END