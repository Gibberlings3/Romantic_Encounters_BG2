// The Gambling Cambion

EXTEND_BOTTOM GORCAMB 30
+ ~IsGabber(Player1) Gender(Player1,FEMALE) Global("RE_CambionFlirt","GLOBAL",0)~ + @0 DO ~SetGlobal("RE_CambionFlirt","GLOBAL",1)~ EXTERN GORCAMB RE_Flirt1
END

EXTEND_BOTTOM GORCAMB 24
+ ~IsGabber(Player1) Gender(Player1,FEMALE) Global("RE_CambionFlirt","GLOBAL",1) Global("RE_CambionSex","GLOBAL",0)~ + @1 DO ~SetGlobal("RE_CambionSex","GLOBAL",1)~ EXTERN GORCAMB RE_Sex1
END

EXTEND_BOTTOM GORCAMB 60
+ ~IsGabber(Player1) Gender(Player1,FEMALE) Global("RE_CambionFlirt","GLOBAL",1) Global("RE_CambionSex","GLOBAL",0)~ + @1 DO ~SetGlobal("RE_CambionSex","GLOBAL",1)~ EXTERN GORCAMB RE_Sex1
END

APPEND GORCAMB

IF ~~ RE_Flirt1
SAY @2
= @3
= @4
IF ~~ EXIT
IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ EXTERN ANOMENJ RE_AnoCamb1
IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ EXTERN ANOME25J RE_AnoCamb2
END

IF ~~ RE_Sex1
SAY @5
= @6
= @7
= @8
= @9
= @10
= @11
= @12
= @13
= @14
= @15
= @16
= @17
IF ~~ EXIT
END

END

CHAIN ANOMENJ RE_AnoCamb1
@18
EXIT

CHAIN ANOME25J RE_AnoCamb2
@18
EXIT