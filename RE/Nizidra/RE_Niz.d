EXTEND_BOTTOM DRAGBLAC 0
+ ~Global("RE_NiziFlirt","GLOBAL",0)~ + @0 DO ~SetGlobal("RE_NiziFlirt","GLOBAL",1)~ + niziexplain
END

APPEND DRAGBLAC

IF ~~ niziexplain
SAY @1
+ ~Class(Player1,SORCERER)~ + @2 DO ~SetGlobal("RE_NiziLike","GLOBAL",2)~ + niziagree
++ @3 DO ~SetGlobal("RE_NiziLike","GLOBAL",1)~ + niziagree
++ @4 + nizisneer
++ @5 + niziangry
END

IF ~~ niziagree
SAY @6
++ @7 + nizioffergroom
END

IF ~~ nizioffergroom
SAY @8
= @9
++ @10 DO ~IncrementGlobal("RE_Nizilike","GLOBAL",1)~ + nizitwigremoved 
++ @11 DO ~IncrementGlobal("RE_Nizilike","GLOBAL",1)~ + nizitwigremoved
++ @12 + nizisneer
++ @13 + niziangry
++ @14 + niziangry
END

IF ~~ nizitwigremoved
SAY @15 
IF ~~ + nizifoot1
END

IF ~~ nizifoot1
SAY @16
= @17
= @18
++ @19 + nizifoot2
++ @20 + nizifoot2
++ @21 + nizialaswefight
++ @22 + niziangry
//No disrespect is intended towards beauty technicians, here. Skilled service is skilled service. It's just not Charname's main occupation.
END

IF ~~ nizifoot2
SAY @23
++ @24 DO ~IncrementGlobal("RE_NiziLike","GLOBAL",1)~ + nizifoot3.1
++ @25 + niziangry
++ @26 + niziangry
++ @27 + niziangry
END

IF ~~ nizifoot3.1
SAY @28
++ @29 + nizifoot3.2
++ @30 + nizifoot3.2
END

IF ~~ nizifoot3.2
SAY @31
++ @32 DO ~IncrementGlobal("RE_NiziLike","GLOBAL",1)~ + nizifoot4
++ @33 + nizidecide
++ @34 + nizibuff1
END

IF ~~ nizifoot4
SAY @35 
IF ~~ + nizibuff1
END

IF ~~ nizibuff1
SAY @36
= @37
++ @38 + nizidecide
++ @39 + niziangry
++ @40 DO ~IncrementGlobal("RE_NiziLike","GLOBAL",1)~ + nizibuff2
++ @41 DO ~IncrementGlobal("RE_NiziLike","GLOBAL",1)~ + nizibuff2
END

IF ~~ nizibuff2
SAY @42
= @43 
++ @44 DO ~IncrementGlobal("RE_NiziLike","GLOBAL",1)~ + nizibuff3
++ @45 + nizidamaged
++ @46 + niziteeth1.1
END

IF ~~ nizibuff3
SAY @47 
IF ~~ + niziteeth1.1
END

IF ~~ niziteeth1.1
SAY @48
++ @49 + niziteeth1.2
END

IF ~~ niziteeth1.2
SAY @50
++ @51 + niziteeth1.3
++ @52 + niziteeth3
END

IF ~~ niziteeth1.3
SAY @53
++ @54 + niziteeth2
++ @55 + niziteeth3
++ @56 + niziangry
++ @57 + nizidecide
END

IF ~~ niziteeth2
SAY @58
++ @55 + niziteeth3
++ @56 + niziangry
++ @57 + nizidecide
END

IF ~~ niziteeth3
SAY @59
++ @60 DO ~IncrementGlobal("RE_NiziLike","GLOBAL",2)~ + niziteeth4
++ @61 DO ~IncrementGlobal("RE_NiziLike","GLOBAL",1)~ + niziteeth4 
++ @62 + nizidamaged
END

IF ~~ niziteeth4
SAY @63
= @64
IF ~~ DO ~GiveItemCreate("ring07",Player1,1,0,0)~ + nizidecide
END

IF ~~ nizidamaged
SAY @65
IF ~~ DO ~ApplyDamage("DRAGBLAC",20,COLD)~ + niziangry
END

IF ~~ nizidecide
SAY @66
IF ~GlobalLT("RE_NiziLike","GLOBAL",4)~ + nizialaswefight
IF ~GlobalGT("RE_NiziLike","GLOBAL",4) GlobalLT("RE_NiziLike","GLOBAL",8)~ + nizigoodend
IF ~GlobalGT("RE_NiziLike","GLOBAL",7)~ + nizikeepyou
END

IF ~~ nizikeepyou
SAY @67
= @68
++ @69 + niziangry
++ @70 + nizisneer
++ @71 + nizinosoul
END

IF ~~ nizinosoul
SAY @72 
IF ~~ + nizigoodend
END

IF ~~ nizialaswefight
SAY @73
= @74 
IF ~~ DO ~Enemy()~ EXIT
END

IF ~~ nizisneer
SAY @75 
IF ~~ DO ~Enemy()~ EXIT
END

IF ~~ niziangry
SAY @76 
IF ~~ DO ~Enemy()~ EXIT
END

IF ~~ nizigoodend
SAY @77
= @78
= @79
= @80
IF ~~ DO ~GiveItemCreate("MISCB2",Player1,1,0,0)
DestroySelf()~ EXIT
END

END
