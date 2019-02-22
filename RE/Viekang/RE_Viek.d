EXTEND_BOTTOM SARVIE01 12
+ ~InPartySlot(LastTalkedToBy,0) 
Gender(Player1,FEMALE)
OR(4) 
Race(Player1,ELF)
Race(Player1,HALF_ELF)
Race(Player1,HUMAN)
Race(Player1,HALFLING)~ + @0 EXTERN SARVIE01 talk
END

APPEND SARVIE01

IF ~~ talk
SAY @1
++ @2 + serious
++ @3 + bye
END

IF ~~ bye
SAY @4
IF ~~ EXIT
END

IF ~~ serious
SAY @5
++ @6 + sorry
++ @7 + arrival
++ @8 + bio
++ @9 + smalltalk
++ @10 + decide
++ @11 + bye
END

IF ~~ decide
SAY @12
= @13
= @14
++ @7 + arrival
++ @8 + bio
++ @9 + smalltalk
++ @11 + bye
END

IF ~~ smalltalk
SAY @15
= @16
= @17
++ @18 + chitchat
++ @19 + giants
++ @20 + awkward
++ @21 + awkward
END

IF ~~ chitchat
SAY @22
IF ~~ + awkward
END

IF ~~ giants
SAY @23
IF ~~ + awkward
END

IF ~~ awkward
SAY @24
++ @25 + hard
++ @26 + quiet
++ @27 + bite
END

IF ~~ quiet
SAY @28
IF ~~ + them
END

IF ~~ bite
SAY @29
++ @30 + nice
++ @31 + helpful
END

IF ~~ nice
SAY @32
= @33
IF ~~ + questions
END

IF ~~ hard
SAY @34
= @35
++ @36 + really
++ @37 + luck
END

IF ~~ luck
SAY @38
= @39
IF ~~ + questions
END

IF ~~ really
SAY @40
= @41
= @42
++ @43 + ofcourse
++ @44 + gooddeed
END

IF ~~ gooddeed
SAY @45
= @46
= @47
IF ~~ EXIT
END

IF ~~ ofcourse
SAY @48
IF ~~ + questions
END


IF ~~ sorry
SAY @49
= @50
= @39
IF ~~ + questions
END

IF ~~ questions
SAY @51
++ @7 + arrival
++ @8 + bio
++ @9 + smalltalk
++ @10 + decide
++ @11 + bye
END

IF ~~ arrival
SAY @52
= @53
= @54
= @55
++ @56 + helpful
++ @57 + long
++ @58 + escape
++ @59 + activities
END

IF ~~ activities
SAY @60
= @61
++ @62 + umno
++ @63 + umno
++ @64 + courtesans
++ @65 + courtesans2
++ @66 + innocence
END

IF ~~ umno
SAY @67
IF ~~ + innocence
END

IF ~~ innocence
SAY @68
IF ~~ + courtesans
END

IF ~~ courtesans2
SAY @69
IF ~~ + courtesans
END

IF ~~ courtesans
SAY @70
++ @71 + frolic
++ @72 + okay
++ @73 + drunk
++ @74 + bye
END

IF ~~ frolic
SAY @75
= @76
++ @77 + recommend
++ @78 + exciting
++ @79 + bye
END

IF ~~ recommend
SAY @80
= @81
= @82
++ @83 + okay
++ @84 + wtf
++ @85 + exciting
END

IF ~~ exciting
SAY @86
++ @87 + okay
++ @88 + bye
++ @89 + wtf
END

IF ~~ wtf
SAY @16
= @90
++ @91 + think
++ @92 + suggestion
++ @93 + brother
++ @94 + bye
END

IF ~~ brother
SAY @95
IF ~~ + attractive
END

IF ~~ attractive
SAY @96
= @97
++ @98 + bye
++ @99 + idea
END

IF ~~ idea
SAY @100
IF ~~ + questions
END

IF ~~ think
SAY @101
IF ~~ + suggestion
END

IF ~~ suggestion
SAY @102
++ @103 DO ~SetGlobal("RE_ViekangFlirt","GLOBAL",1)~ + close
++ @104 DO ~SetGlobal("RE_ViekangFlirt","GLOBAL",1)~ + yes
++ @105 DO ~SetGlobal("RE_ViekangFlirt","GLOBAL",1)~ + flattered
END

IF ~~ yes
SAY @106
IF ~~ + attractive
END

IF ~~ close
SAY @107
IF ~~ + attractive
END

IF ~~ flattered
SAY @108
IF ~~ + attractive
END

IF ~~ okay
SAY @109
IF ~~ + questions
END

IF ~~ escape
SAY @110
= @111
= @112
++ @113 + drunk
++ @114 + long
++ @115 + sarcasm
++ @116 + bye
END

IF ~~ sarcasm
SAY @117
IF ~~ + questions
END

IF ~~ helpful
SAY @118
IF ~~ EXIT
END

IF ~~ long
SAY @119
++ @120 + help
++ @121 + helpful
++ @122 + drunk
++ @123 + bye
END

IF ~~ help
SAY @124
++ @125 + enough
++ @126 + join
++ @127 + lady
END

IF ~~ drunk
SAY @128
++ @129 + optimism
++ @130 + thief
++ @131 + helpful
END

IF ~~ optimism
SAY @132
= @133
= @134
IF ~~ + toast
END

IF ~~ enough
SAY @135
= @136
++ @129 + optimism
++ @130 + thief
++ @131 + helpful
END

IF ~~ join
SAY @137
= @138
= @139
++ @140 + toast
++ @141 + voice
++ @142 + impressive
END

IF ~~ impressive
SAY @143
= @144
IF ~~ + toast
END

IF ~~ voice
SAY @145
++ @146 + lotabout
++ @147 + helped
++ @148 + bye
END

IF ~~ lotabout
SAY @149
IF ~~ + bio
END

IF ~~ helped
SAY @150
= @151
IF ~~ + questions
END

IF ~~ toast
SAY @152
= @153
IF ~~ + questions
END

IF ~~ lady
SAY @154
= @155
= @138
= @139
++ @140 + toast
++ @141 + voice
++ @142 + impressive
END

IF ~~ thief
SAY @156
++ @157 + profession
++ @158 + optimism
++ @159 + helpful
END

IF ~~ profession
SAY @160
= @161
= @162
= @163
++ @164 + look
++ @165 + murder
++ @166 + selfish
END

IF ~~ selfish
SAY @167
= @168
= @169
= @170
IF ~~ + questions
END

IF ~~ look
SAY @171
= @172
= @173
IF ~~ + questions
END

IF ~~ murder
SAY @174
= @175
= @16
= @176
= @177
++ @178 + them
++ @179 + kill
++ @180 + siblings
END

IF ~~ siblings
SAY @181
= @182
IF ~~ + them
END

IF ~~ kill
SAY @183
= @184
IF ~~ + them
END

IF ~~ them
SAY @185
= @186
++ @187 + bio
++ @188 + bored
++ @189 + kin
END

IF ~~ bored 
SAY @190
= @191
++ @192 + bio
++ @193 + wrong
++ @194 + bye
END

IF ~~ kin
SAY @195
= @196
++ @197 + god
++ @198 + right
++ @199 + bio
++ @200 + bye
END

IF ~~ god
SAY @201
= @202
++ @203 + lotabout
++ @204 + deluded
END

IF ~~ deluded
SAY @205
= @206
IF ~~ EXIT
END

IF ~~ wrong
SAY @207
++ @208 + bio
++ @209 + helpful
END

IF ~~ right
SAY @210
= @211
IF ~~ + questions
END

IF ~~ bio
SAY @212
= @213
= @214
= @215
++ @216 + but
++ @217 + okay
++ @218 + bye
END

IF ~~ but
SAY @219
= @220
= @221
= @222
= @223
= @224
= @225
++ @226 + really
++ @227 + helpful
++ @228 + life
++ @229 + hunters
++ @230 + personal
++ @231 + bye
END

IF ~~ hunters
SAY @232
= @233
++ @234 + toomuchinfo
++ @235 + plans
++ @236 + helpful
END

IF ~~ toomuchinfo
SAY @16
=@16
=@237
=@16
=@16
=@238
++ @239 + laugh
++ @240 + laugh
++ @241 + me
END

IF ~~ me
SAY @242
= @243
= @244
++ @245 + laugh
++ @246 + laugh
END

IF ~~ laugh
SAY @247
++ @248 + questions
++ @249 + personal
++ @250 + bye
END

IF ~~ plans
SAY @251
= @252
++ @253 + really
++ @254 + questions
++ @255 + personal
++ @256 + bye
END

IF ~~ life
SAY @257
= @258
++ @259 + personal
++ @260 + really
++ @261 + helpful
++ @262 + questions
++ @263 + bye
END

IF ~~ personal
SAY @264
IF ~~ + goahead
END

IF ~~ goahead
SAY @265
++ @266 + coin
++ @267 + age
++ @268 + home
++ @269 + parents
++ @270 + adventuring
++ @271 + questions
END

IF ~~ coin
SAY @272
++ @273 + goahead
++ @271 + questions
++ @274 + bye
END

IF ~~ age
SAY @275
= @16
= @276
++ @273 + goahead
++ @271 + questions
++ @274 + bye
END

IF ~~ home
SAY @277
= @278
++ @273 + goahead
++ @271 + questions
++ @274 + bye
END

IF ~~ parents
SAY @279
= @280
= @281
++ @273 + goahead
++ @271 + questions
++ @274 + bye
END

IF ~~ adventuring
SAY @282
= @283
++ @284 + like
++ @273 + goahead
++ @271 + questions
++ @274 + bye
END

IF ~~ like
SAY @285
++ @286 + wtf
++ @287 + goahead
++ @288 + questions
++ @289 + bye
END

END