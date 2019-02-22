INTERJECT SHOP01 9 RE_MiraSophisticated
== SHOP01 @0
END
++ @1 EXTERN SHOP01 m1
++ @2 EXTERN SHOP01 m6

CHAIN SHOP01 m1
@3
END
++ @4 EXTERN SHOP01 m2
++ @2 EXTERN SHOP01 m3
+ ~PartyGoldGT(49)~ + @5 EXTERN SHOP01 m4

CHAIN SHOP01 m2
@6 
EXTERN SHOP01 m3

CHAIN SHOP01 m3
@7
END
+ ~PartyGoldGT(4)~ + @8 EXTERN SHOP01 m5
++ @9 EXTERN SHOP01 m6
++ @2 EXTERN SHOP01 m6

CHAIN SHOP01 m4
@10
DO ~SetGlobal("RE_MiraWares","GLOBAL",1) GiveItemCreate("B!REPotn",Player1,0,0,0) TakePartyGold(50) DestroyGold(50)~
EXTERN SHOP01 m3

CHAIN SHOP01 m5
@11
DO ~SetGlobal("RE_MiraWares","GLOBAL",1) GiveItemCreate("B!REBook",Player1,0,0,0) TakePartyGold(5) DestroyGold(5)~
END
COPY_TRANS SHOP01 9

CHAIN SHOP01 m6
@12
END
COPY_TRANS SHOP01 9

CHAIN IF WEIGHT #-1 ~Global("RE_MiraWares","GLOBAL",1) Gender(Player1,MALE) IsGabber(Player1)~ THEN SHOP01 RE_MiraComeAgain
@13
DO ~SetGlobal("RE_MiraWares","GLOBAL",2)~
END
++ @14 EXTERN SHOP01 m2.1
++ @15 EXTERN SHOP01 m2.1
++ @16 EXTERN SHOP01 m6

CHAIN SHOP01 m2.1
@17
= @18
END
++ @19 EXTERN SHOP01 m2.2
++ @20 EXTERN SHOP01 m2.3

CHAIN SHOP01 m2.2
@21
END
IF ~~ EXTERN SHOP01 m2.3

CHAIN SHOP01 m2.3
@22
= @23
END
++ @24 DO ~GiveItemCreate("B!REPotn",Player1,0,0,0)~ EXTERN SHOP01 m2.6
++ @25 DO ~GiveItemCreate("B!REPotn",Player1,0,0,0)~ EXTERN SHOP01 m2.6
++ @26 EXTERN SHOP01 m2.5

CHAIN SHOP01 m2.5
@27
END
IF ~~ EXTERN SHOP01 m2.6

CHAIN SHOP01 m2.6
@28
DO ~SetGlobal("RE_MiraFlirt","GLOBAL",1)~
END
COPY_TRANS SHOP01 9