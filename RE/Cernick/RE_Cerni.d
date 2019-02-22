/* Cernick's Confession */

APPEND KPCAPT02

/* Initial Meeting */
IF WEIGHT #-1 ~Gender(Player1,MALE)
!Race(Player1,HALFLING)
!Race(Player1,GNOME)
!Race(Player1,DWARF)
Global("RE_cjcap","GLOBAL",0)
GlobalLT("kprevolt","GLOBAL",6)
GlobalGT("KeepPlot","GLOBAL",12)
Dead("kproen01")~ THEN cjcapstarts
SAY @0 
++ @1 DO ~SetGlobal("RE_cjcap","GLOBAL",1)~ + cjcapreturning
++ @2 DO ~SetGlobal("RE_cjcap","GLOBAL",1)~ + cjcapreturning
END

IF ~~ cjcapreturning
SAY @3 
++ @4 + cjcap1b
++ @5 + cjcap1b
++ @6 + cjcap1b
++ @7 + cjcap1b 
END

// dead state: it may cycle and cause incompatibilities
/*
IF ~~ cjcap1a
SAY ~Then I feel I must thank you for all you have done for us, my Lord. I hope that you can overcome whatever obstacles you face, and return to us in good time.~ 
IF ~~ THEN DO ~SetGlobal("RE_cjcap","GLOBAL",0)~ EXIT
END
*/

IF ~~ cjcap1b 
SAY @8
= @9 
++ @10 + cjcap2a
++ @11 + cjcap2a
++ @12 + cjcap2b 
END

IF ~~ cjcap2a
SAY @13 
++ @14 + cjcap3
++ @15 + cjcap3
++ @16 + cjcap2b 
END

IF ~~ cjcap2b
SAY @17 
IF ~~ THEN DO ~SetGlobal("RE_cjcap","GLOBAL",10)~ EXIT
END 

IF ~~ cjcap3 
SAY @18 
++ @19 + cjcap4
++ @20 + cjcap4
++ @21 + cjcap2b
END

IF ~~ cjcap4 
SAY @22 
++ @23 + cjcap5
++ @24 + cjcap5
++ @25 + cjcap2b
++ @26 + cjcap6b 
END

IF ~~ cjcap5 
SAY @27 
= @28 
++ @29 + cjcap6a
++ @30 + cjcap6a
++ @31 + cjcap6a
++ @26 + cjcap6b
++ @32 + cjcap6b
++ @33 + cjcap2b 
END

IF ~~ cjcap6a
SAY @34 
IF ~~ THEN DO ~SetGlobal("RE_cjcap","GLOBAL",2) SetGlobal("RE_CernickFlirt","GLOBAL",1)~ EXIT
END 

IF ~~ cjcap6b
SAY @35 
IF ~~ THEN DO ~SetGlobal("RE_cjcap","GLOBAL",10)~ EXIT
END 

/* Part 2 – occurs if you rest in the Keep, second floor, after accepting Cernick's proposal */

IF WEIGHT #-1 ~Global("RE_cjcap","GLOBAL",3)~ THEN cjcapfinishes
SAY @36 
IF ~~ DO ~SetGlobal("RE_cjcap","GLOBAL",4)~ + extra
END

IF ~~ extra
SAY @37 
++ @38 + cjcap7a
++ @39 + cjcap7b
++ @40 + cjcap8
END

 
IF ~~ cjcap7a 
SAY @41 
++ @42 + cjcap9
++ @43 + cjcap10
++ @44 + cjcap10
++ @45 + cjcap10 
END

IF ~~ cjcap7b
SAY @46 
++ @42 + cjcap9
++ @43 + cjcap10
++ @44 + cjcap10
++ @45 + cjcap10 
END

IF ~~ cjcap8
SAY @47 
IF ~~ THEN DO ~SetGlobal("RE_cjcap","GLOBAL",10)
ClearAllActions()
StartCutSceneMode()
StartCutScene("RE_Cern4")~ EXIT
END

IF ~~ cjcap9
SAY @48 
++ @49 + cjcap10
++ @50 + cjcap10
++ @51 + cjcap8
++ @52 + cjcap8 
END 

IF ~~ cjcap10
SAY @53 
= @54 
= @55
++ @56 + cjcap11
++ @57 + cjcap8 
END

IF ~~ cjcap11
SAY @58
= @59 
IF ~~ THEN DO ~SetGlobal("RE_cjcap","GLOBAL",5)
SetGlobal("RE_CernickSex","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("RE_Cern2")~ EXIT
END


/* immediately after sleep */

IF WEIGHT #-1 ~Global("RE_cjcap","GLOBAL",5)~ THEN cjcap12
SAY @60 
= @61 
++ @62 DO ~SetGlobal("RE_cjcap","GLOBAL",6)~ + cjcap13 
++ @63 DO ~SetGlobal("RE_cjcap","GLOBAL",6)~ + cjcap17
++ @64 DO ~SetGlobal("RE_cjcap","GLOBAL",6)~ + cjcap19
END
 
IF ~~ cjcap13
SAY @65 
++ @66 + cjcap14 
++ @67 + cjcap17 
END
 
IF ~~ cjcap14
SAY @68 
++ @69 + cjcap15 
++ @70 + cjcap17 
++ @71 + cjcap16
END 
 
IF ~~ cjcap15
SAY @72 
++ @73 + cjcap18 
++ @74 + cjcap17 
++ @75 + cjcap16 
END
 
IF ~~ cjcap16
SAY @76 
++ @77 + cjcap18 
++ @78 + cjcap18 
++ @79 + cjcap19
END 
 
IF ~~ cjcap17 
SAY @80
IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("RE_Cern3")~ EXIT
END
 
IF ~~ cjcap18
SAY @81
IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("RE_Cern3")~ EXIT
END
 
IF ~~ cjcap19
SAY @82 
IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("RE_Cern3")~ EXIT
END

END
