EXTEND_BOTTOM ~THIEF7~ 0
+ ~Global("RE_AnishaiFlirt","GLOBAL",0)~ + @0 DO ~SetGlobal("RE_AnishaiFlirt","GLOBAL",1)~ GOTO AnishaiInterested1
+ ~Global("RE_AnishaiFlirt","GLOBAL",0)~ + @1 DO ~SetGlobal("RE_AnishaiFlirt","GLOBAL",1)~ GOTO AnishaiInterested1
END

/* ~Well, the real question here is what is your name, darling?  I could tell you that my name is Anishai, but that would prevent me from hearing the delectable tones of your name, first.~ */

EXTEND_BOTTOM ~THIEF7~ 1
+ ~Global("RE_AnishaiFlirt","GLOBAL",0)~ + @2 DO ~SetGlobal("RE_AnishaiFlirt","GLOBAL",1)~ GOTO AnishaiInterested1
END

/* ~I am called Anishai, my dear.  Assassin extraordinaire and Shadow Thief of good standing.  You, however, are quite a stranger to me.  New, are you?  How delightful!  What shall I call you?~ */

EXTEND_BOTTOM ~THIEF7~ 2
+ ~Global("RE_AnishaiFlirt","GLOBAL",0)~ + @3 DO ~SetGlobal("RE_AnishaiFlirt","GLOBAL",1)~ GOTO AnishaiInterested1
+ ~Global("RE_AnishaiFlirt","GLOBAL",0)~ + @2 DO ~SetGlobal("RE_AnishaiFlirt","GLOBAL",1)~ GOTO AnishaiInterested1
END

/* ~Well, just go down those stairs over there and you'll find Mae'Var engaged in the business of information extraction.  Forcible extraction, that is.~ */

EXTEND_BOTTOM ~THIEF7~ 3
+ ~Global("RE_AnishaiFlirt","GLOBAL",0)~ + @4 DO ~SetGlobal("RE_AnishaiFlirt","GLOBAL",1)~ GOTO AnishaiInterested1 
+ ~Global("RE_AnishaiFlirt","GLOBAL",0)~ + @5 DO ~SetGlobal("RE_AnishaiFlirt","GLOBAL",1)~ GOTO AnishaiInterested1
END

/* ~<CHARNAME>... how utterly delicious.  I shall recite it over and over to myself in between each of our meetings.  Which, I do hope, will not be too far between, hm?~ */

EXTEND_BOTTOM ~THIEF7~ 5
+ ~Global("RE_AnishaiFlirt","GLOBAL",0)~ + @6 DO ~SetGlobal("RE_AnishaiFlirt","GLOBAL",1)~ GOTO AnishaiInterested1
+ ~Global("RE_AnishaiFlirt","GLOBAL",0)~ + @7 DO ~SetGlobal("RE_AnishaiFlirt","GLOBAL",1)~ GOTO AnishaiInterested1
END

/* ~Oooh, I love a man shrouded in mystery.  As you wish, my sweet, I shall simply imagine a number of things to call you, each more succulent than the last.~ */

EXTEND_BOTTOM ~THIEF7~ 6
+ ~Global("RE_AnishaiFlirt","GLOBAL",0)~ + @8 DO ~SetGlobal("RE_AnishaiFlirt","GLOBAL",1)~ GOTO AnishaiInterested1
+ ~Global("RE_AnishaiFlirt","GLOBAL",0)~ + @9 DO ~SetGlobal("RE_AnishaiFlirt","GLOBAL",1)~ GOTO AnishaiInterested1
END

/* ~Well, I am very pleased to meet you, <CHARNAME>.  There truly aren't enough fellow sisters in the Shadow Thieves... although we are amongst the very best, aren't we?~ */

EXTEND_BOTTOM ~THIEF7~ 7
+ ~Global("RE_AnishaiFlirt","GLOBAL",0)~ + @10 DO ~SetGlobal("RE_AnishaiFlirt","GLOBAL",1)~ GOTO AnishaiInterested1
+ ~Global("RE_AnishaiFlirt","GLOBAL",0)~ + @11 DO ~SetGlobal("RE_AnishaiFlirt","GLOBAL",1)~ GOTO AnishaiInterested1
END

/* OK, make out with me. Or, if you are a guy, slip a little something extra into the mix at the end. */

CHAIN ~THIEF7~ AnishaiInterested1
@12
= @13
= @14
= @15
END
++ @16 EXTERN THIEF7 NoSex1
++ @17 DO ~SetGlobal("RE_AnishaiSearched","GLOBAL",1)~ EXTERN ~THIEF7~ Oooh1
++ @18 DO ~SetGlobal("RE_AnishaiPCSearched","GLOBAL",1)~ EXTERN ~THIEF7~ Aaah1
++ @19 EXTERN ~THIEF7~ Poison1
++ @20 EXTERN ~THIEF7~ HeyShutUpAndAct

CHAIN ~THIEF7~ Oooh1
@21
= @22
= @23
END
++ @24 EXTERN ~THIEF7~ Oooh2
++ @25 EXTERN ~THIEF7~ Tight
+ ~Global("RE_AnishaiPCSearched","GLOBAL",0)~ + @26 DO ~SetGlobal("RE_AnishaiPCSearched","GLOBAL",1)~ EXTERN ~THIEF7~ Aaah1
++ @27 EXTERN THIEF7 NoSex1

CHAIN ~THIEF7~ Aaah1
@28
= @29
== ~THIEF7~ IF ~Gender(Player1,MALE)~ THEN @30
== ~THIEF7~ IF ~Gender(Player1,FEMALE)~ THEN @31
== ~THIEF7~ @32
END
++ @33 EXTERN ~THIEF7~ Precious
+ ~Global("RE_AnishaiSearched","GLOBAL",0)~ + @34 DO ~SetGlobal("RE_AnishaiSearched","GLOBAL",1)~ EXTERN ~THIEF7~ Oooh1
++ @35 EXTERN ~THIEF7~ Loose
++ @27 EXTERN THIEF7 NoSex1

CHAIN ~THIEF7~ Poison1
@36
= @37
END
+ ~Global("RE_AnishaiSearched","GLOBAL",0)~ + @38 DO ~SetGlobal("RE_AnishaiSearched","GLOBAL",1)~ EXTERN ~THIEF7~ Oooh1
+ ~Global("RE_AnishaiPCSearched","GLOBAL",0)~ + @39 DO ~SetGlobal("RE_AnishaiPCSearched","GLOBAL",1)~ EXTERN ~THIEF7~ Aaah1
++ @40 EXTERN ~THIEF7~ LittleDeath
++ @27 EXTERN THIEF7 NoSex1

CHAIN ~THIEF7~ LittleDeath
@41
= @42
END
++ @43 EXTERN ~THIEF7~ KissItBetter
++ @44 EXTERN ~THIEF7~ KissItBetter

CHAIN ~THIEF7~ HeyShutUpAndAct
@45
= @46
= @47
END
++ @25 EXTERN ~THIEF7~ Tight
+ ~Global("RE_AnishaiPCSearched","GLOBAL",0)~ + @26 DO ~SetGlobal("RE_AnishaiPCSearched","GLOBAL",1)~ EXTERN ~THIEF7~ Aaah1
++ @43 EXTERN ~THIEF7~ KissItBetter
++ @48 EXTERN THIEF7 NoSex1
++ @27 EXTERN THIEF7 NoSex1

CHAIN ~THIEF7~ Tight
@49
= @50
END
++ @43 EXTERN ~THIEF7~ KissItBetter
++ @51 EXTERN ~THIEF7~ Loose
+ ~Global("RE_AnishaiSearched","GLOBAL",0)~ + @52 DO ~SetGlobal("RE_AnishaiSearched","GLOBAL",1)~ EXTERN ~THIEF7~ Oooh1

CHAIN ~THIEF7~ Loose
@53
= @54
END
++ @55 EXTERN ~THIEF7~ KissItBetter
++ @56 EXTERN ~THIEF7~ Touch1

CHAIN ~THIEF7~ KissItBetter
@57
= @58
END
++ @59 EXTERN ~THIEF7~ Kiss1
++ @60 EXTERN ~THIEF7~ Kiss1
++ @61 EXTERN ~THIEF7~ Touch1

CHAIN ~THIEF7~ Precious
@62
= @63
= @64
END
++ @51 EXTERN ~THIEF7~ Loose
++ @55 EXTERN ~THIEF7~ KissItBetter
++ @65 EXTERN ~THIEF7~ Touch1

CHAIN ~THIEF7~ Kiss1
@66
= @67
= @68
END
++ @69 EXTERN ~THIEF7~ NotWorking
++ @70  EXTERN ~THIEF7~ NotWorking
+ ~Gender(Player1,MALE)~ + @71 EXTERN ~THIEF7~ Buildup

CHAIN ~THIEF7~ Oooh2
@72
= @73
= @74
END
++ @75 EXTERN ~THIEF7~ Loose
++ @76 EXTERN ~THIEF7~ Loose
++ @77 EXTERN ~THIEF7~ Loose

CHAIN ~THIEF7~ NotWorking
@78
= @79
= @80
END
++ @81 EXTERN ~THIEF7~ Buildup
++ @82  EXTERN ~THIEF7~ Buildup
++ @83  EXTERN ~THIEF7~ Buildup
++ @84 EXTERN ~THIEF7~ Buildup
++ @85 EXTERN THIEF7 NoSex1

CHAIN ~THIEF7~ Touch1
@86
= @87
= @88
= @89
= @90
END
++ @91 EXTERN ~THIEF7~ Buildup
+ ~Gender(Player1,MALE)~ + @92 EXTERN ~THIEF7~ Buildup
++ @93 EXTERN ~THIEF7~ Buildup
++ @85 EXTERN THIEF7 NoSex1

CHAIN ~THIEF7~ Buildup
@94
= @95
= @96
END
++ @97 EXTERN ~THIEF7~ SeeingStars
++ @98 EXTERN ~THIEF7~ SeeingStars
++ @99 EXTERN ~THIEF7~ SeeingStars

CHAIN ~THIEF7~ SeeingStars
@100
DO ~SetGlobal("RE_AnishaiSex","GLOBAL",1)~ 
= @101
= @102
= @103
= @104
= @105
= @106
= @103
= @107
= @108
= @109
= @110
END
++ @111 EXTERN ~THIEF7~ Adios
+ ~Gender(Player1,MALE)~ + @112 EXTERN ~THIEF7~ Adios
+ ~Gender(Player1,FEMALE)~ + @113 EXTERN ~THIEF7~ Adios
++ @114 EXTERN ~THIEF7~ Adios
++ @115 EXTERN ~THIEF7~ Adios

CHAIN ~THIEF7~ Adios
@116
= @117
= @118
END
IF ~~ THEN JOURNAL @119 EXIT

CHAIN ~THIEF7~ NoSex1
@120
EXIT