//Hendak's romantic encounter, written by jastey, translated by berelinde

/* Global("RE_HendakFlirt","GLOBAL",1) for flirting (i.e. Hendak proposed his interest in sharing the bed with the PC and she accepted the possibility)

Global("RE_HendakSex","GLOBAL",1) for sex (i.e. Hendak and PC actually shared the night) */

EXTEND_BOTTOM HENDAK 33
+ ~Global("C#HendakNoMakeLove","LOCALS",0)
    Gender(Player1,FEMALE) 
    ReputationGT(Player1,11)
  OR(4)
    Race(Player1,HUMAN)
    Race(Player1,HALF_ELF)
    Race(Player1,HALFLING)
    Race(Player1,ELF)
  IsGabber(Player1)~ + @0 EXTERN HENDAK Hendak_flirt
+ ~GlobalGT("C#HendakFlirt","LOCALS",5)
    Global("C#HendakLovetalk","LOCALS",0) IsGabber(Player1)~ + @1 + Hendak_lovetalk
+ ~Global("C#HendakMakeLove","LOCALS",1) RandomNum(4,1) IsGabber(Player1)~ + @2 + Hendak_makelove_01
+ ~Global("C#HendakMakeLove","LOCALS",1) RandomNum(4,2) IsGabber(Player1)~ + @2 + Hendak_makelove_02
+ ~Global("C#HendakMakeLove","LOCALS",1) RandomNum(4,3) IsGabber(Player1)~ + @2 + Hendak_makelove_03
+ ~Global("C#HendakMakeLove","LOCALS",1) RandomNum(4,4) IsGabber(Player1)~ + @2 + Hendak_makelove_04
+ ~Global("C#HendakLoveMaybe","LOCALS",1) IsGabber(Player1)~ + @3 + Hendak_makelove_maybe
+ ~Global("C#HendakMakeLove","LOCALS",1) Global("RE_HendakSex","GLOBAL",0) IsGabber(Player1)~ + @4 DO ~SetGlobal("C#HendakMakeLove","LOCALS",2)~ + Hendak_makelove_none
+ ~Global("C#HendakMakeLove","LOCALS",1) Global("RE_HendakSex","GLOBAL",1) IsGabber(Player1)~ + @5 DO ~SetGlobal("C#HendakMakeLove","LOCALS",2)~ + Hendak_makelove_nomore
END

APPEND HENDAK
IF ~~ THEN BEGIN Hendak_flirt
SAY @6
+ ~Global("C#Flirt0","LOCALS",0)~ + @7 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt0","LOCALS",1)~ + Hendak_flirt_0
+ ~Global("C#Flirt1","LOCALS",0)~ + @8 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt1","LOCALS",1)~ + Hendak_flirt_1
+ ~Global("C#Flirt2","LOCALS",0)~ + @9 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt2","LOCALS",1)~ + Hendak_flirt_2
+ ~Global("C#Flirt3","LOCALS",0) GlobalGT("C#HendakFlirt","LOCALS",1)~ + @10 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt3","LOCALS",1)~ + Hendak_flirt_3
+ ~Global("C#Flirt4","LOCALS",0) GlobalGT("C#HendakFlirt","LOCALS",1)~ + @11 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt4","LOCALS",1)~ + Hendak_flirt_4
+ ~Global("C#Flirt5","LOCALS",0) GlobalGT("C#HendakFlirt","LOCALS",2)~ + @12 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt5","LOCALS",1)~ + Hendak_flirt_5
+ ~Global("C#Flirt6","LOCALS",0) GlobalGT("C#HendakFlirt","LOCALS",2)~ + @13 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt6","LOCALS",1)~ + Hendak_flirt_6
+ ~Global("C#Flirt0","LOCALS",1)
Global("C#Flirt1","LOCALS",1)
Global("C#Flirt2","LOCALS",1)
Global("C#Flirt3","LOCALS",1)
Global("C#Flirt4","LOCALS",1)
Global("C#Flirt5","LOCALS",1)
Global("C#Flirt6","LOCALS",1)
Global("RE_HendakDoneTalking","GLOBAL",0)~ + @14 + Hendak_flirt_7
+ ~Global("RE_HendakDoneTalking","GLOBAL",1)~ + @14 + Hendak_flirt_7c
++ @15 + Hendak_flirt_7b
END

IF ~~ THEN BEGIN Hendak_flirt_0
SAY @16
+ ~Global("C#Flirt1","LOCALS",0)~ + @8 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt1","LOCALS",1)~ + Hendak_flirt_1
+ ~Global("C#Flirt2","LOCALS",0)~ + @9 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt2","LOCALS",1)~ + Hendak_flirt_2
+ ~Global("C#Flirt3","LOCALS",0) GlobalGT("C#HendakFlirt","LOCALS",1)~ + @10 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt3","LOCALS",1)~ + Hendak_flirt_3
+ ~Global("C#Flirt4","LOCALS",0) GlobalGT("C#HendakFlirt","LOCALS",1)~ + @11 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt4","LOCALS",1)~ + Hendak_flirt_4
+ ~Global("C#Flirt5","LOCALS",0) GlobalGT("C#HendakFlirt","LOCALS",2)~ + @12 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt5","LOCALS",1)~ + Hendak_flirt_5
+ ~Global("C#Flirt6","LOCALS",0) GlobalGT("C#HendakFlirt","LOCALS",2)~ + @13 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt6","LOCALS",1)~ + Hendak_flirt_6
+ ~Global("C#Flirt1","LOCALS",1)
Global("C#Flirt2","LOCALS",1)
Global("C#Flirt3","LOCALS",1)
Global("C#Flirt4","LOCALS",1)
Global("C#Flirt5","LOCALS",1)
Global("C#Flirt6","LOCALS",1)
Global("RE_HendakDoneTalking","GLOBAL",0)~ + @14 + Hendak_flirt_7
+ ~Global("RE_HendakDoneTalking","GLOBAL",1)~ + @14 + Hendak_flirt_7c
++ @15 + Hendak_flirt_7b
END

IF ~~ THEN BEGIN Hendak_flirt_1
SAY @17
+ ~Global("C#Flirt0","LOCALS",0)~ + @18 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt0","LOCALS",1)~ + Hendak_flirt_0
+ ~Global("C#Flirt2","LOCALS",0)~ + @9 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt2","LOCALS",1)~ + Hendak_flirt_2
+ ~Global("C#Flirt3","LOCALS",0) GlobalGT("C#HendakFlirt","LOCALS",1)~ + @10 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt3","LOCALS",1)~ + Hendak_flirt_3
+ ~Global("C#Flirt4","LOCALS",0) GlobalGT("C#HendakFlirt","LOCALS",1)~ + @11 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt4","LOCALS",1)~ + Hendak_flirt_4
+ ~Global("C#Flirt5","LOCALS",0) GlobalGT("C#HendakFlirt","LOCALS",2)~ + @12 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt5","LOCALS",1)~ + Hendak_flirt_5
+ ~Global("C#Flirt6","LOCALS",0) GlobalGT("C#HendakFlirt","LOCALS",2)~ + @13 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt6","LOCALS",1)~ + Hendak_flirt_6
+ ~Global("C#Flirt0","LOCALS",1)
Global("C#Flirt2","LOCALS",1)
Global("C#Flirt3","LOCALS",1)
Global("C#Flirt4","LOCALS",1)
Global("C#Flirt5","LOCALS",1)
Global("C#Flirt6","LOCALS",1)
Global("RE_HendakDoneTalking","GLOBAL",0)~ + @14 + Hendak_flirt_7
+ ~Global("RE_HendakDoneTalking","GLOBAL",1)~ + @14 + Hendak_flirt_7c
++ @15 + Hendak_flirt_7b
END

IF ~~ THEN BEGIN Hendak_flirt_2
SAY @19
+ ~Global("C#Flirt0","LOCALS",0)~ + @18 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt0","LOCALS",1)~ + Hendak_flirt_0
+ ~Global("C#Flirt1","LOCALS",0)~ + @8 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt1","LOCALS",1)~ + Hendak_flirt_1
+ ~Global("C#Flirt3","LOCALS",0) GlobalGT("C#HendakFlirt","LOCALS",1)~ + @10 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt3","LOCALS",1)~ + Hendak_flirt_3
+ ~Global("C#Flirt4","LOCALS",0) GlobalGT("C#HendakFlirt","LOCALS",1)~ + @11 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt4","LOCALS",1)~ + Hendak_flirt_4
+ ~Global("C#Flirt5","LOCALS",0) GlobalGT("C#HendakFlirt","LOCALS",2)~ + @12 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt5","LOCALS",1)~ + Hendak_flirt_5
+ ~Global("C#Flirt6","LOCALS",0) GlobalGT("C#HendakFlirt","LOCALS",2)~ + @13 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt6","LOCALS",1)~ + Hendak_flirt_6
+ ~Global("C#Flirt0","LOCALS",1)
Global("C#Flirt1","LOCALS",1)
Global("C#Flirt3","LOCALS",1)
Global("C#Flirt4","LOCALS",1)
Global("C#Flirt5","LOCALS",1)
Global("C#Flirt6","LOCALS",1)
Global("RE_HendakDoneTalking","GLOBAL",0)~ + @14 + Hendak_flirt_7
+ ~Global("RE_HendakDoneTalking","GLOBAL",1)~ + @14 + Hendak_flirt_7c
++ @15 + Hendak_flirt_7b
END

IF ~~ THEN BEGIN Hendak_flirt_3
SAY @20
+ ~Global("C#Flirt0","LOCALS",0)~ + @18 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt0","LOCALS",1)~ + Hendak_flirt_0
+ ~Global("C#Flirt1","LOCALS",0)~ + @8 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt1","LOCALS",1)~ + Hendak_flirt_1
+ ~Global("C#Flirt2","LOCALS",0)~ + @9 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt2","LOCALS",1)~ + Hendak_flirt_2
+ ~Global("C#Flirt4","LOCALS",0) GlobalGT("C#HendakFlirt","LOCALS",1)~ + @11 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt4","LOCALS",1)~ + Hendak_flirt_4
+ ~Global("C#Flirt5","LOCALS",0) GlobalGT("C#HendakFlirt","LOCALS",2)~ + @12 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt5","LOCALS",1)~ + Hendak_flirt_5
+ ~Global("C#Flirt6","LOCALS",0) GlobalGT("C#HendakFlirt","LOCALS",2)~ + @13 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt6","LOCALS",1)~ + Hendak_flirt_6
+ ~Global("C#Flirt0","LOCALS",1)
Global("C#Flirt1","LOCALS",1)
Global("C#Flirt2","LOCALS",1)
Global("C#Flirt4","LOCALS",1)
Global("C#Flirt5","LOCALS",1)
Global("C#Flirt6","LOCALS",1)
Global("RE_HendakDoneTalking","GLOBAL",0)~ + @14 + Hendak_flirt_7
+ ~Global("RE_HendakDoneTalking","GLOBAL",1)~ + @14 + Hendak_flirt_7c
++ @15 + Hendak_flirt_7b
END

IF ~~ THEN BEGIN Hendak_flirt_4
SAY @21
++ @22 + Hendak_family
+ ~Global("C#Flirt0","LOCALS",0)~ + @18 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt0","LOCALS",1)~ + Hendak_flirt_0
+ ~Global("C#Flirt1","LOCALS",0)~ + @8 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt1","LOCALS",1)~ + Hendak_flirt_1
+ ~Global("C#Flirt2","LOCALS",0)~ + @9 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt2","LOCALS",1)~ + Hendak_flirt_2
+ ~Global("C#Flirt3","LOCALS",0) GlobalGT("C#HendakFlirt","LOCALS",1)~ + @10 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt3","LOCALS",1)~ + Hendak_flirt_3
+ ~Global("C#Flirt5","LOCALS",0) GlobalGT("C#HendakFlirt","LOCALS",2)~ + @12 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt5","LOCALS",1)~ + Hendak_flirt_5
+ ~Global("C#Flirt6","LOCALS",0) GlobalGT("C#HendakFlirt","LOCALS",2)~ + @13 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt6","LOCALS",1)~ + Hendak_flirt_6
+ ~Global("C#Flirt0","LOCALS",1)
Global("C#Flirt1","LOCALS",1)
Global("C#Flirt2","LOCALS",1)
Global("C#Flirt3","LOCALS",1)
Global("C#Flirt5","LOCALS",1)
Global("C#Flirt6","LOCALS",1)
Global("RE_HendakDoneTalking","GLOBAL",0)~ + @14 + Hendak_flirt_7
+ ~Global("RE_HendakDoneTalking","GLOBAL",1)~ + @14 + Hendak_flirt_7c
++ @15 + Hendak_flirt_7b
END

IF ~~ THEN BEGIN Hendak_family
SAY @23
+ ~Global("C#Flirt0","LOCALS",0)~ + @7 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt0","LOCALS",1)~ + Hendak_flirt_0
+ ~Global("C#Flirt1","LOCALS",0)~ + @8 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt1","LOCALS",1)~ + Hendak_flirt_1
+ ~Global("C#Flirt2","LOCALS",0)~ + @9 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt2","LOCALS",1)~ + Hendak_flirt_2
+ ~Global("C#Flirt3","LOCALS",0) GlobalGT("C#HendakFlirt","LOCALS",1)~ + @10 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt3","LOCALS",1)~ + Hendak_flirt_3
+ ~Global("C#Flirt5","LOCALS",0) GlobalGT("C#HendakFlirt","LOCALS",2)~ + @12 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt5","LOCALS",1)~ + Hendak_flirt_5
+ ~Global("C#Flirt6","LOCALS",0) GlobalGT("C#HendakFlirt","LOCALS",2)~ + @13 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt6","LOCALS",1)~ + Hendak_flirt_6
+ ~Global("C#Flirt0","LOCALS",1)
Global("C#Flirt1","LOCALS",1)
Global("C#Flirt2","LOCALS",1)
Global("C#Flirt3","LOCALS",1)
Global("C#Flirt5","LOCALS",1)
Global("C#Flirt6","LOCALS",1)
Global("RE_HendakDoneTalking","GLOBAL",0)~ + @14 + Hendak_flirt_7
+ ~Global("RE_HendakDoneTalking","GLOBAL",1)~ + @14 + Hendak_flirt_7c
++ @15 + Hendak_flirt_7b
END

IF ~~ THEN BEGIN Hendak_flirt_5
SAY @24
= @25
+ ~Global("C#Flirt0","LOCALS",0)~ + @18 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt0","LOCALS",1)~ + Hendak_flirt_0
+ ~Global("C#Flirt1","LOCALS",0)~ + @8 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt1","LOCALS",1)~ + Hendak_flirt_1
+ ~Global("C#Flirt2","LOCALS",0)~ + @9 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt2","LOCALS",1)~ + Hendak_flirt_2
+ ~Global("C#Flirt3","LOCALS",0) GlobalGT("C#HendakFlirt","LOCALS",1)~ + @10 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt3","LOCALS",1)~ + Hendak_flirt_3
+ ~Global("C#Flirt4","LOCALS",0) GlobalGT("C#HendakFlirt","LOCALS",1)~ + @11 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt4","LOCALS",1)~ + Hendak_flirt_4
+ ~Global("C#Flirt6","LOCALS",0) GlobalGT("C#HendakFlirt","LOCALS",2)~ + @13 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt6","LOCALS",1)~ + Hendak_flirt_6
+ ~Global("C#Flirt0","LOCALS",1)
Global("C#Flirt1","LOCALS",1)
Global("C#Flirt2","LOCALS",1)
Global("C#Flirt3","LOCALS",1)
Global("C#Flirt4","LOCALS",1)
Global("C#Flirt6","LOCALS",1)
Global("RE_HendakDoneTalking","GLOBAL",0)~ + @14 + Hendak_flirt_7
+ ~Global("RE_HendakDoneTalking","GLOBAL",1)~ + @14 + Hendak_flirt_7c
++ @15 + Hendak_flirt_7b
END

IF ~~ THEN BEGIN Hendak_flirt_6
SAY @26
+ ~Global("C#Flirt0","LOCALS",0)~ + @18 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt0","LOCALS",1)~ + Hendak_flirt_0
+ ~Global("C#Flirt1","LOCALS",0)~ + @8 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt1","LOCALS",1)~ + Hendak_flirt_1
+ ~Global("C#Flirt2","LOCALS",0)~ + @9 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt2","LOCALS",1)~ + Hendak_flirt_2
+ ~Global("C#Flirt3","LOCALS",0) GlobalGT("C#HendakFlirt","LOCALS",1)~ + @10 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt3","LOCALS",1)~ + Hendak_flirt_3
+ ~Global("C#Flirt4","LOCALS",0) GlobalGT("C#HendakFlirt","LOCALS",1)~ + @11 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt4","LOCALS",1)~ + Hendak_flirt_4
+ ~Global("C#Flirt5","LOCALS",0) GlobalGT("C#HendakFlirt","LOCALS",2)~ + @12 DO ~IncrementGlobal("C#HendakFlirt","LOCALS",1) SetGlobal("C#Flirt5","LOCALS",1)~ + Hendak_flirt_5
+ ~Global("C#Flirt0","LOCALS",1)
Global("C#Flirt1","LOCALS",1)
Global("C#Flirt2","LOCALS",1)
Global("C#Flirt3","LOCALS",1)
Global("C#Flirt4","LOCALS",1)
Global("C#Flirt5","LOCALS",1)
Global("RE_HendakDoneTalking","GLOBAL",0)~ + @14 + Hendak_flirt_7
+ ~Global("RE_HendakDoneTalking","GLOBAL",1)~ + @14 + Hendak_flirt_7c
++ @15 + Hendak_flirt_7b
END

IF ~~ THEN BEGIN Hendak_flirt_7
SAY @27
IF ~~ THEN + Hendak_flirt_7a
END 

IF ~~ THEN BEGIN Hendak_flirt_7a
SAY @28
IF ~~ THEN DO ~SetGlobal("RE_HendakDoneTalking","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN Hendak_flirt_7b
SAY @29
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Hendak_flirt_7c
SAY @30
IF ~~ THEN + Hendak_flirt_7b
END 

IF ~~ THEN BEGIN Hendak_lovetalk
SAY @31
= @32
= @33
= @34
= @35
= @36
= @37
= @38
= @39 
++ @40 DO ~SetGlobal("C#HendakMakeLove","LOCALS",1) SetGlobal("C#HendakLovetalk","LOCALS",1)~ + Hendak_makelove_yes
++ @41 DO ~SetGlobal("C#HendakLovetalk","LOCALS",1) SetGlobal("C#HendakLoveMaybe","LOCALS",1)~ + Hendak_makelove_maybe2
++ @42 DO ~SetGlobal("C#HendakLovetalk","LOCALS",1) SetGlobal("C#HendakNoMakeLove","LOCALS",1)~ + Hendak_makelove_no
END

IF ~~ THEN BEGIN Hendak_makelove_yes
SAY @43
IF ~~ THEN DO ~SetGlobal("RE_HendakFlirt","GLOBAL",1) SetGlobal("RE_HendakRomanceActive","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN Hendak_makelove_no
SAY @44
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Hendak_makelove_maybe2
SAY @45
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Hendak_makelove_maybe
SAY @46
IF ~~ THEN DO ~SetGlobal("C#HendakMakeLove","LOCALS",1) SetGlobal("C#HendakLoveMaybe","LOCALS",2) SetGlobal("RE_HendakFlirt","GLOBAL",1) SetGlobal("RE_HendakRomanceActive","GLOBAL",1)~
EXIT
END

IF ~~ THEN BEGIN Hendak_makelove_nomore
SAY @47
IF ~~ THEN DO ~SetGlobal("RE_HendakRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN Hendak_makelove_none
SAY @48
IF ~~ THEN DO ~SetGlobal("RE_HendakRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN Hendak_makelove_01
SAY @49
+ ~RandomNum(4,1)~ + @50 + Hendak_makelove_05
+ ~RandomNum(4,2)~ + @51 + Hendak_makelove_06
+ ~RandomNum(4,3)~ + @52 + Hendak_makelove_07
+ ~RandomNum(4,4)~ + @53 + Hendak_makelove_08
++ @54 EXIT
END

IF ~~ THEN BEGIN Hendak_makelove_02
SAY @55
+ ~RandomNum(4,1)~ + @50 + Hendak_makelove_05
+ ~RandomNum(4,2)~ + @51 + Hendak_makelove_06
+ ~RandomNum(4,3)~ + @52 + Hendak_makelove_07
+ ~RandomNum(4,4)~ + @53 + Hendak_makelove_08
++ @54 EXIT
END

IF ~~ THEN BEGIN Hendak_makelove_03
SAY @56
+ ~RandomNum(4,1)~ + @57 + Hendak_makelove_05
+ ~RandomNum(4,2)~ + @58 + Hendak_makelove_06
+ ~RandomNum(4,3)~ + @52 + Hendak_makelove_07
+ ~RandomNum(4,4)~ + @59 + Hendak_makelove_08
++ @60 EXIT
END

IF ~~ THEN BEGIN Hendak_makelove_04
SAY @61
+ ~RandomNum(4,1)~ + @50 + Hendak_makelove_05
+ ~RandomNum(4,2)~ + @51 + Hendak_makelove_06
+ ~RandomNum(4,3)~ + @52 + Hendak_makelove_07
+ ~RandomNum(4,4)~ + @53 + Hendak_makelove_08
++ @54 EXIT
END

IF ~~ THEN BEGIN Hendak_makelove_05
SAY @62
IF ~~ THEN DO ~IncrementGlobal("C#HendakLove","GLOBAL",1) SetGlobal("RE_HendakSex","GLOBAL",1) RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END

IF ~~ THEN BEGIN Hendak_makelove_06
SAY @63
IF ~~ THEN DO ~IncrementGlobal("C#HendakLove","GLOBAL",1) SetGlobal("RE_HendakSex","GLOBAL",1) RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END

IF ~~ THEN BEGIN Hendak_makelove_07
SAY @64
IF ~~ THEN DO ~IncrementGlobal("C#HendakLove","GLOBAL",1) SetGlobal("RE_HendakSex","GLOBAL",1) RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END

IF ~~ THEN BEGIN Hendak_makelove_08
SAY @65
IF ~~ THEN DO ~IncrementGlobal("C#HendakLove","GLOBAL",1) SetGlobal("RE_HendakSex","GLOBAL",1) RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100) RestParty()~ EXIT
END

IF WEIGHT #-1 ~Global("C#HendakTalkAfter","GLOBAL",1)~ THEN Hendak_talk_after_01
SAY @66
IF ~~ THEN DO ~SetGlobal("C#HendakTalkAfter","GLOBAL",0)~ EXIT
END

IF WEIGHT #-1 ~Global("C#HendakTalkAfter","GLOBAL",2)~ THEN Hendak_talk_after_02
SAY @67
IF ~~ THEN DO ~SetGlobal("C#HendakTalkAfter","GLOBAL",0)~ EXIT
END

IF WEIGHT #-1 ~Global("C#HendakTalkAfter","GLOBAL",3)~ THEN Hendak_talk_after_03
SAY @68
IF ~~ THEN DO ~SetGlobal("C#HendakTalkAfter","GLOBAL",0)~ EXIT
END

IF WEIGHT #-1 ~Global("C#HendakTalkAfter","GLOBAL",4)~ THEN Hendak_talk_after_04
SAY @69
IF ~~ THEN DO ~SetGlobal("C#HendakTalkAfter","GLOBAL",0)~ EXIT
END
END