INTERJECT UDPHAE01 96 RE_TalakGift
== UDPHAE01 IF ~Gender(Player1,FEMALE) Global("RE_TalakFlirt","GLOBAL",0)~ THEN @0
END
++ @1 DO ~SetGlobal("RE_TalakFlirt","GLOBAL",1)~ EXTERN UDPHAE01 Gift1
++ @2 EXTERN UDPHAE01 Gift2
++ @3 EXTERN UDPHAE01 Gift3
++ @4 DO ~SetGlobal("RE_TalakFlirt","GLOBAL",1) SetGlobal("RE_TalakReluctant","GLOBAL",1)~ EXTERN UDPHAE01 Gift1

CHAIN UDPHAE01 Gift1
@5
END
IF ~~ DO ~SetGlobal("RE_TalakMoves","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Tala1")~ EXIT
IF ~InParty("Anomen") OR(2) Global("AnomenRomanceActive","GLOBAL",1) Global("AnomenRomanceActive","GLOBAL",2)~ DO ~SetGlobal("RE_TalakFlirtAnomen","GLOBAL",1) SetGlobal("RE_TalakMoves","GLOBAL",1) ClearAllActions() StartCutSceneMode() StartCutScene("RE_Tala1")~ EXIT

CHAIN UDPHAE01 Gift2
@6
END
+ ~CheckStatGT(Player1,15,CHR)~ + @7 EXTERN UDPHAE01 Gift2.1
+ ~!CheckStatGT(Player1,15,CHR)~ + @7 EXTERN UDPHAE01 Gift2.2
++ @8 EXTERN UDPHAE01 Gift2.3
++ @9 EXTERN UDPHAE01 Gift3
++ @10 EXTERN UDPHAE01 Gift2.1
++ @11 DO ~SetGlobal("RE_TalakFlirt","GLOBAL",1)~ EXTERN UDPHAE01 Gift1
++ @12 DO ~SetGlobal("RE_TalakFlirt","GLOBAL",1) SetGlobal("RE_TalakReluctant","GLOBAL",1)~ EXTERN UDPHAE01 Gift1

CHAIN UDPHAE01 Gift2.1
@13
END
COPY_TRANS UDPHAE01 96

CHAIN UDPHAE01 Gift2.2
@14
END
++ @15 EXTERN UDPHAE01 Gift3
++ @16 EXTERN UDPHAE01 Gift2.3
++ @17 EXTERN UDPHAE01 Gift2.1
++ @18 DO ~SetGlobal("RE_TalakFlirt","GLOBAL",1) SetGlobal("RE_TalakReluctant","GLOBAL",1)~ EXTERN UDPHAE01 Gift1

CHAIN UDPHAE01 Gift2.3
@19
END
++ @15 EXTERN UDPHAE01 Gift3
++ @20 DO ~SetGlobal("RE_TalakFlirt","GLOBAL",1) SetGlobal("RE_TalakReluctant","GLOBAL",1)~ EXTERN UDPHAE01 Gift1
++ @17 EXTERN UDPHAE01 Gift2.1
++ @21 DO ~SetGlobal("RE_TalakFlirt","GLOBAL",1)~ EXTERN UDPHAE01 Gift1

CHAIN UDPHAE01 Gift3
@22
END
++ @23 EXTERN UDPHAE01 Gift2.1
+ ~CheckStatGT(Player1,15,CHR)~ + @24 EXTERN UDPHAE01 Gift2.1
+ ~!CheckStatGT(Player1,15,CHR)~ + @24 EXTERN UDPHAE01 Gift2.2
++ @25 DO ~SetGlobal("RE_TalakFlirt","GLOBAL",1)~ EXTERN UDPHAE01 Gift1
++ @26 DO ~SetGlobal("RE_TalakFlirt","GLOBAL",1) SetGlobal("RE_TalakReluctant","GLOBAL",1)~ EXTERN UDPHAE01 Gift1

BEGIN RETalak

IF ~Global("RE_TalakMoves","GLOBAL",1)~ THEN BEGIN a1
SAY @27
++ @28 DO ~SetGlobal("RE_TalakMoves","GLOBAL",2)~ + a2
++ @29 DO ~SetGlobal("RE_TalakMoves","GLOBAL",2)~ + a3
++ @30 DO ~SetGlobal("RE_TalakMoves","GLOBAL",2)~ + a4
++ @31 DO ~SetGlobal("RE_TalakMoves","GLOBAL",2)~ + a5
END

IF ~~ a2
SAY @32
IF ~~ THEN DO ~SetGlobal("RE_TalakPCNaked","GLOBAL",1)~ + a6
END

IF ~~ a3
SAY @33
++ @34 + a7
++ @35 + a13
+ ~!Global("RE_QuestionTalak","GLOBAL",1)~ + @36 + a8
++ @37 + a9
++ @38 + a2
END

IF ~~ a4
SAY @39
IF ~~ THEN + a7
END

IF ~~ a5
SAY @40
= @32
IF ~~ THEN DO ~SetGlobal("RE_TalakPCNaked","GLOBAL",1)~ + a10
END

IF ~~ a6
SAY @41
= @42
++ @43 + a11
++ @44 + a12
+ ~!Global("RE_QuestionTalak","GLOBAL",1)~ + @45 + a8
END

IF ~~ a7
SAY @46
++ @47 + a12
++ @48 + a12
+ ~!Global("RE_QuestionTalak","GLOBAL",1)~ + @49 + a8
END

IF ~~ a8
SAY @50
++ @51 DO ~SetGlobal("RE_TalakBlowCover","GLOBAL",1) SetGlobal("RE_QuestionTalak","GLOBAL",1)~ + a14
+ ~Global("RE_TalakPCNaked","GLOBAL",1)~ + @52 DO ~SetGlobal("RE_QuestionTalak","GLOBAL",1)~ + a11
+ ~!Global("RE_TalakPCNaked","GLOBAL",1)~ + @53 DO ~SetGlobal("RE_QuestionTalak","GLOBAL",1)~ + a2
END

IF ~~ a9
SAY @54
IF ~~ THEN + a12
END

IF ~~ a10
SAY @55
= @56
++ @43 + a11
++ @44 + a12
+ ~!Global("RE_QuestionTalak","GLOBAL",1)~ + @45 + a8
END

IF ~~ a11
SAY @57
= @58
= @59
++ @60 + a16
++ @61 + a17
END

IF ~~ a12
SAY @62
= @63
+ ~Global("RE_TalakPCNaked","GLOBAL",1)~ + @64 + a18.1
+ ~!Global("RE_TalakPCNaked","GLOBAL",1)~ + @64 + a18.2
++ @65 + a19
++ @66 + a20
++ @67 DO ~SetGlobal("RE_RejectTalak","GLOBAL",1)~ + a15
++ @68 DO ~SetGlobal("RE_RejectTalak","GLOBAL",1)~  + a15
++ @69 DO ~SetGlobal("RE_RejectTalak","GLOBAL",1)~ + a15
END

IF ~~ a13
SAY @70
IF ~~ THEN + a7
END

IF ~~ a14
SAY @71
IF ~~ THEN DO ~SetGlobal("RE_TalakMoves","GLOBAL",3)  
ClearAllActions() StartCutSceneMode() StartCutScene("RE_Tala2")~
EXIT
END

IF ~~ a15
SAY @72
IF ~~ THEN DO ~SetGlobal("RE_TalakMoves","GLOBAL",3)  
ClearAllActions() StartCutSceneMode() StartCutScene("RE_Tala2")~
EXIT
END

IF ~~ a16
SAY @73
IF ~~ THEN + a12
END

IF ~~ a17
SAY @74
++ @75 + a12
++ @76 + a15
END

IF ~~ a18.1
SAY @77
++ @78 DO ~SetGlobal("RE_TalakPCNaked","GLOBAL",2)~ + a21
++ @79 + a15
END

IF ~~ a18.2
SAY @80
++ @81 + a22
++ @82 DO ~SetGlobal("RE_TalakPCNaked","GLOBAL",2)~ + a21
++ @83 + a15
END

IF ~~ a19
SAY @84
+ ~Global("RE_TalakPCNaked","GLOBAL",1)~ + @85 DO ~SetGlobal("RE_TalakPCNaked","GLOBAL",2)~ + a23
+ ~!Global("RE_TalakPCNaked","GLOBAL",1)~ + @86 DO ~SetGlobal("RE_TalakPCNaked","GLOBAL",2)~ + a23
++ @87 + a15
END

IF ~~ a20
SAY @88
++ @89 + a19
+ ~Global("RE_TalakPCNaked","GLOBAL",1)~ + @90 + a18.1
+ ~!Global("RE_TalakPCNaked","GLOBAL",1)~ + @90 + a18.2
++ @91 + a24
++ @92 + a15
END

IF ~~ a21
SAY @93
= @94
= @95
++ @96 + a23
++ @97 + a26
END

IF ~~ a22
SAY @98
++ @99 + a21
++ @100 + a15
END

IF ~~ a23
SAY @101
= @102
= @103
++ @104 + a25
++ @105 + a25
++ @106 + a27
++ @107 + a15
END

IF ~~ a24
SAY @108
++ @109 + a23
++ @110 + a15
END

IF ~~ a25
SAY @111
= @112
++ @113 + a31
++ @114 + a28
++ @115 + a27
END

IF ~~ a26
SAY @116
++ @117 + a15
++ @118 + a23
END

IF ~~ a27
SAY @119
= @120
++ @121 + a30
++ @122 + a15
END

IF ~~ a28
SAY @123
IF ~~ THEN + a29
END

IF ~~ a29
SAY @124
++ @125 + a32
++ @126 + a30
++ @127 + a30
++ @128 + a27
END

IF ~~ a30
SAY @129
= @130
++ @131 DO ~SetGlobal("RE_TalakSex","GLOBAL",1)~ + a33
++ @132 DO ~SetGlobal("RE_TalakSex","GLOBAL",1)~ + a34
++ @133 DO ~SetGlobal("RE_TalakSex","GLOBAL",1)~ + a35
++ @134 DO ~SetGlobal("RE_TalakSex","GLOBAL",1)~ + a36
END

IF ~~ a31
SAY @135
++ @136 DO ~SetGlobal("RE_TalakSex","GLOBAL",1)~ + a37
++ @137 DO ~SetGlobal("RE_TalakSex","GLOBAL",1)~ + a30
++ @138 + a15
++ @139 DO ~SetGlobal("RE_TalakSex","GLOBAL",1)~ + a37
END

IF ~~ a32
SAY @140
IF ~~ THEN  DO ~SetGlobal("RE_TalakSex","GLOBAL",1)~ + a38
END

IF ~~ a33
SAY @141
IF ~~ THEN + a38
END

IF ~~ a34
SAY @142
IF ~~ THEN + a38
END

IF ~~ a35
SAY @143
IF ~~ THEN + a33
END

IF ~~ a36
SAY @144
IF ~~ THEN + a38
END

IF ~~ a37
SAY @145
= @146
++ @147 + a39
++ @148 + a40
++ @149 + a41
++ @150 + a42
END

IF ~~ a38
SAY @151
= @152
= @153
++ @154 + a39
++ @148 + a40
++ @149 + a41
++ @155 + a42
END

IF ~~ a39
SAY @156
++ @157 + a40
++ @158 + a43
++ @159 + a41
++ @160 + a42
END

IF ~~ a40
SAY @161
IF ~~ THEN DO ~SetGlobal("RE_TalakMoves","GLOBAL",3)  
ClearAllActions() StartCutSceneMode() StartCutScene("RE_Tala2")~
EXIT
END

IF ~~ a41
SAY @162
++ @163 + a40
++ @164 + a40
++ @165 + a15
++ @166 + a14
END

IF ~~ a42
SAY @167
++ @168 DO ~SetGlobal("RE_TalakBlowCover","GLOBAL",1)~ + a44
++ @169 + a40
END

IF ~~ a43
SAY @170
= @171
++ @172 + a40
++ @173 + a45
++ @174 + a15
++ @175 + a46
END

IF ~~ a44
SAY @176
IF ~~ THEN + a41
END

IF ~~ a45
SAY @177
IF ~~ THEN + a40
END

IF ~~ a46
SAY @178
++ @179 DO ~SetGlobal("RE_TalakBlowCover","GLOBAL",1)~ + a44
++ @180 + a15
++ @181 + a48
++ @182 + a47
END

IF ~~ a47
SAY @183
IF ~~ THEN + a45
END

IF ~~ a48
SAY @184
++ @185 + a45
++ @186 + a40
++ @187 + a15
++ @188 DO ~SetGlobal("RE_TalakBlowCover","GLOBAL",1)~ + a15
END

APPEND UDPHAE01

IF WEIGHT #-1 ~Global("RE_TalakMoves","GLOBAL",3)~ THEN BEGIN p1
SAY @189
IF ~Global("RE_TalakBlowCover","GLOBAL",1)~ THEN DO ~SetGlobal("RE_TalakMoves","GLOBAL",4)~ GOTO p2
IF ~!Global("RE_TalakBlowCover","GLOBAL",1)~ THEN DO ~SetGlobal("RE_TalakMoves","GLOBAL",4)~ GOTO p3
END

IF ~~ p2
SAY @190
= @191
  IF ~~ THEN DO ~EraseJournalEntry(7096)
EraseJournalEntry(15787)
EraseJournalEntry(20170)
EraseJournalEntry(9978)
EraseJournalEntry(5832)
EraseJournalEntry(15725)
EraseJournalEntry(23500)
EraseJournalEntry(11690)
EraseJournalEntry(15746)
EraseJournalEntry(15745)
EraseJournalEntry(23519)
EraseJournalEntry(6933)
EraseJournalEntry(23486)
EraseJournalEntry(23485)
EraseJournalEntry(23445)
EraseJournalEntry(23444)
EraseJournalEntry(15793)
EraseJournalEntry(15792)
EraseJournalEntry(23424)
SetGlobal("DrowCityHostile","GLOBAL",1)
Enemy()~ SOLVED_JOURNAL #19438 /* ~Inside the Drow City

I have been discovered, and the alarm has been sounded throughout the drow city.  Getting anywhere will be problematic, at best.  Obviously I should have been more careful.~ */ EXIT
END

IF ~~ p3
SAY @192
++ @193 + p4
++ @194 + p5
++ @195 + p4
++ @196 + p6
END
END

CHAIN UDPHAE01 p4
@197
DO ~ActionOverride("RETalak",EscapeArea())~
== UDPHAE01 @198
END
COPY_TRANS UDPHAE01 96

CHAIN UDPHAE01 p5
@199
== RETalak @200
== UDPHAE01 @201
EXTERN UDPHAE01 p7

CHAIN UDPHAE01 p6
@202
EXTERN UDPHAE01 p7

CHAIN UDPHAE01 p7
@203
DO ~ActionOverride("RETalak",EscapeArea())~
== UDPHAE01 @198
END
COPY_TRANS UDPHAE01 96