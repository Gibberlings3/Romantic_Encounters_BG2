APPEND MINSCJ

IF WEIGHT #-1 ~Global("RE_MinscBath","GLOBAL",1)~ minscbath.start
SAY @0 
= @1
= @2 
= @3
= @4
= @5
= @6
= @7
= @2 
= @8
++ @9 DO ~ClearAllActions() StartCutSceneMode() StartCutScene("REMinsc1")~ EXIT
++ @10 DO ~ClearAllActions() StartCutSceneMode() StartCutScene("REMinsc1")~ EXIT
++ @11 + minscbath.leaving2
++ @12 + minscbath.end2
END

IF WEIGHT #-1 ~Global("RE_MinscBath","GLOBAL",2)~ minscbath.bathtub
SAY @13
= @14
= @2 
= @15
= @16
= @17
= @18
IF ~~ + minscbath.back
END

IF ~~ minscbath.back
SAY @19
IF ~~ + minscbath.head
END

IF ~~ minscbath.head
SAY @20
IF ~~ + minscbath.soap
END

IF ~~ minscbath.soap
SAY @21
= @22
++ @23 + minscbath.howl
++ @12 + minscbath.end
++ @24 + minscbath.glory
END

IF ~~ minscbath.howl
SAY @25
IF ~~ + minscbath.glory
END

IF ~~ minscbath.glory
SAY @26
IF ~~ + minscbath.tears
END

IF ~~ minscbath.tears
SAY @27
++ @28 + minscbath.dyna
++ @29 + minscbath.dyna
++ @30 + minscbath.leaving
END

IF ~~ minscbath.dyna
SAY @31
= @32
= @33
= @34
= @2 
= @35
++ @36 + minscbath.hug
++ @37 + minscbath.dynatalk
++ @38 + minscbath.dynatalk
++ @39 + minscbath.leaving
END

IF ~~ minscbath.hug
SAY @40
= @2 
++ @41 + minscbath.refusehug
++ @42 + minscbath.accepthug
++ @43 + minscbath.dynatalk
END

IF ~~ minscbath.refusehug
SAY @44
++ @37 + minscbath.dynatalk
++ @38 + minscbath.dynatalk
++ @39 + minscbath.leaving
END

IF ~~ minscbath.accepthug
SAY @45
++ @46 + minscbath.continuehug
END

IF ~~ minscbath.continuehug
SAY @2 
++ @47 + minscbath.dynatalk
++ @38 + minscbath.dynatalk
END

IF ~~ minscbath.dynatalk
SAY @48
= @49
= @50
= @2 
= @51
++ @52 + minscbath.leaving
END

IF ~~ minscbath.leaving2
SAY @53
IF ~~ + minscbath.end2
END

IF ~~ minscbath.end2
SAY @54
= @2 
IF ~~ DO ~SetGlobal("RE_MinscBath","GLOBAL",3)
RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100)
RestParty()~ EXIT
END

IF ~~ minscbath.leaving
SAY @53
IF ~~ + minscbath.end
END

IF ~~ minscbath.end
SAY @54
= @2 
IF ~~ DO ~SetGlobal("RE_MinscBath","GLOBAL",3)
RealSetGlobalTimer("RE_DreamTimer","GLOBAL",100)
ClearAllActions()
StartCutSceneMode()
StartCutScene("REMinsc2")~ EXIT
END

END
