APPEND ~%tutu_var%taerom~

IF WEIGHT #1 ~Global("SeenAnkheg","GLOBAL",1)
GlobalGT("BuyAnkhegShell","GLOBAL",2)
PartyHasItem("%tutu_var%MISC12")
Global("MakeArmor","GLOBAL",0)
~ THEN BEGIN 60
  SAY @937 /* Hello again!  I see you are still hunting ankhegs.  If you want me to make another plate just let me know but I have got the shells I need for now. */
  IF ~PartyGoldGT(3999)
~ THEN REPLY #204 GOTO 7
  IF ~~ THEN REPLY #15267 /* ~Could you show us what you have for sale?~ */ DO ~StartStore("Taerum",LastTalkedToBy(Myself))
~ EXIT
END

IF WEIGHT #7 ~NumTimesTalkedToGT(0)
Global("MakeFullPlate","GLOBAL",0)
~ THEN BEGIN 61
  SAY #15266 /* ~Hello there.  Is there anything I can do for you on this fair day?~ */
  IF ~~ THEN REPLY #15267 /* ~Could you show us what you have for sale?~ */ DO ~StartStore("Taerum",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #15278 /* ~Nothing at the moment.~ */ EXIT
  IF ~~ THEN REPLY @938 /* ~I noticed that you only have one full plate mail. Could you make another one?~ */ GOTO 62
END

IF ~~ THEN BEGIN 62
  SAY @939 /* ~Well... I suppose I could but 'cause of the iron crisis it is going to cost you a lot of gold.  Thalantyr has helped me keep a small reserve of iron that has not gone bad and there should be just enough to make a full plate mail out of it.  But since this means using all I have got, I want 15000 gold for it.~ */
  IF ~~ THEN REPLY @940 /* ~15000!!  I refuse to pay that much for a suit of armor!~ */ GOTO 3
  IF ~PartyGoldLT(15000)
~ THEN REPLY @941 /* ~I am afraid I do not have that much gold right now.  I will return when I have aquired some more.~ */ GOTO 63
  IF ~PartyGoldGT(14999)
~ THEN REPLY @947 /* ~The price is steep but I need that armor.  15000 gold it is.~ */ GOTO 64
END

IF ~~ THEN BEGIN 63
  SAY @942 /* ~If it be gold you're short of, you may want to try for the bounty on the cleric Bassilus.  I hear it already nears five thousand gold.~ */
  IF ~~ THEN JOURNAL @943 /* ~Taerom is willing to make a full plate mail using his remaining iron reserve but it will cost 15000 gold to make. He mentioned that he heard there was a reward for 5000 gold on the head of a criminal named Bassilus.~ */ EXIT
END

IF ~~ THEN BEGIN 64
  SAY @944 /* ~Good on you.  Now it will take me quite some time to finish, but you will soon be wearing a full plate mail.  Come back in twelve days and I'll have it ready for you.  Now tell me who you need it made for.~ */
  IF ~~ THEN REPLY @931 /* ~A human.~ */ GOTO 65
  IF ~~ THEN REPLY @932 /* ~A dwarf.~ */ GOTO 66
  IF ~~ THEN REPLY @933 /* ~An elf.~ */ GOTO 67
  IF ~~ THEN REPLY @934 /* ~A gnome.~ */ GOTO 68
  IF ~~ THEN REPLY @935 /* ~A halfling.~ */ GOTO 69
END

IF ~~ THEN BEGIN 65
  SAY @945 /* ~Good. Twelve days from now and I will have your full plate mail ready.~ */
  IF ~~ THEN DO ~TakePartyGold(15000)
SetGlobal("MakeFullPlate","GLOBAL",1)
SetGlobal("FullPlateHuman","GLOBAL",1)
SetGlobalTimer("Taerom3","GLOBAL",TWELVE_DAYS)
~ JOURNAL @946 /* ~Taerom is making a suit of full plate mail for me.  It will be ready within twelve days.~ */ EXIT
END

IF ~~ THEN BEGIN 66
  SAY @945 /* ~Good. Twelve days from now and I will have your full plate mail ready.~ */
  IF ~~ THEN DO ~TakePartyGold(15000)
SetGlobal("MakeFullPlate","GLOBAL",1)
SetGlobal("FullPlateDwarf","GLOBAL",1)
SetGlobalTimer("Taerom3","GLOBAL",TWELVE_DAYS)
~ JOURNAL @946 /* ~Taerom is making a suit of full plate mail for me.  It will be ready within twelve days.~ */ EXIT
END

IF ~~ THEN BEGIN 67
  SAY @945 /* ~Good. Twelve days from now and I will have your full plate mail ready.~ */
  IF ~~ THEN DO ~TakePartyGold(15000)
SetGlobal("MakeFullPlate","GLOBAL",1)
SetGlobal("FullPlateElf","GLOBAL",1)
SetGlobalTimer("Taerom3","GLOBAL",TWELVE_DAYS)
~ JOURNAL @946 /* ~Taerom is making a suit of full plate mail for me.  It will be ready within twelve days.~ */ EXIT
END

IF ~~ THEN BEGIN 68
  SAY @945 /* ~Good. Twelve days from now and I will have your full plate mail ready.~ */
  IF ~~ THEN DO ~TakePartyGold(15000)
SetGlobal("MakeFullPlate","GLOBAL",1)
SetGlobal("FullPlateGnome","GLOBAL",1)
SetGlobalTimer("Taerom3","GLOBAL",TWELVE_DAYS)
~ JOURNAL @946 /* ~Taerom is making a suit of full plate mail for me.  It will be ready within twelve days.~ */ EXIT
END

IF ~~ THEN BEGIN 69
  SAY @945 /* ~Good. Twelve days from now and I will have your full plate mail ready.~ */
  IF ~~ THEN DO ~TakePartyGold(15000)
SetGlobal("MakeFullPlate","GLOBAL",1)
SetGlobal("FullPlateHalfling","GLOBAL",1)
SetGlobalTimer("Taerom3","GLOBAL",TWELVE_DAYS)
~ JOURNAL @946 /* ~Taerom is making a suit of full plate mail for me.  It will be ready within twelve days.~ */ EXIT
END

IF ~~ THEN BEGIN 70
  SAY @948 /* ~Good. A tenday from now and I will have your armor ready.~ */
  IF ~~ THEN DO ~TakePartyGold(4000)
TakePartyItem("%tutu_var%MISC12")
SetGlobal("SeenAnkheg","GLOBAL",1)
SetGlobal("MakeArmor","GLOBAL",1)
SetGlobal("AnkhegHuman","GLOBAL",1)
SetGlobalTimer("Taerom2","GLOBAL",TEN_DAYS)
~ JOURNAL #5837 /* ~Taerom is making a suit of plate mail out of my ankheg shell.  It will be ready within a tenday.~ */ EXIT
END

IF ~~ THEN BEGIN 71
  SAY @948 /* ~Good. A tenday from now and I will have your armor ready.~ */
  IF ~~ THEN DO ~TakePartyGold(4000)
TakePartyItem("%tutu_var%MISC12")
SetGlobal("SeenAnkheg","GLOBAL",1)
SetGlobal("MakeArmor","GLOBAL",1)
SetGlobal("AnkhegDwarf","GLOBAL",1)
SetGlobalTimer("Taerom2","GLOBAL",TEN_DAYS)
~ JOURNAL #5837 /* ~Taerom is making a suit of plate mail out of my ankheg shell.  It will be ready within a tenday.~ */ EXIT
END

IF ~~ THEN BEGIN 72
  SAY @948 /* ~Good. A tenday from now and I will have your armor ready.~ */
  IF ~~ THEN DO ~TakePartyGold(4000)
TakePartyItem("%tutu_var%MISC12")
SetGlobal("SeenAnkheg","GLOBAL",1)
SetGlobal("MakeArmor","GLOBAL",1)
SetGlobal("AnkhegElf","GLOBAL",1)
SetGlobalTimer("Taerom2","GLOBAL",TEN_DAYS)
~ JOURNAL #5837 /* ~Taerom is making a suit of plate mail out of my ankheg shell.  It will be ready within a tenday.~ */ EXIT
END

IF ~~ THEN BEGIN 73
  SAY @948 /* ~Good. A tenday from now and I will have your armor ready.~ */
  IF ~~ THEN DO ~TakePartyGold(4000)
TakePartyItem("%tutu_var%MISC12")
SetGlobal("SeenAnkheg","GLOBAL",1)
SetGlobal("MakeArmor","GLOBAL",1)
SetGlobal("AnkhegGnome","GLOBAL",1)
SetGlobalTimer("Taerom2","GLOBAL",TEN_DAYS)
~ JOURNAL #5837 /* ~Taerom is making a suit of plate mail out of my ankheg shell.  It will be ready within a tenday.~ */ EXIT
END

IF ~~ THEN BEGIN 74
  SAY @948 /* ~Good. A tenday from now and I will have your armor ready.~ */
  IF ~~ THEN DO ~TakePartyGold(4000)
TakePartyItem("%tutu_var%MISC12")
SetGlobal("SeenAnkheg","GLOBAL",1)
SetGlobal("MakeArmor","GLOBAL",1)
SetGlobal("AnkhegHalfling","GLOBAL",1)
SetGlobalTimer("Taerom2","GLOBAL",TEN_DAYS)
~ JOURNAL #5837 /* ~Taerom is making a suit of plate mail out of my ankheg shell.  It will be ready within a tenday.~ */ EXIT
END

IF WEIGHT #4 ~GlobalTimerExpired("Taerom2","GLOBAL")
Global("MakeArmor","GLOBAL",1)
Global("AnkhegHuman","GLOBAL",1)
~ THEN BEGIN 75
  SAY #188 /* ~Ahh, you have returned.  And here be what I promised you.  Beautiful isn't it?  A finer set of armors I have not made for some time.  Wear it well.~ */
  IF ~~ THEN DO ~GiveItemCreate("PLAT06A",LastTalkedToBy,1,0,0)
DestroyItem("%tutu_var%MISC12")
SetGlobal("MakeArmor","GLOBAL",0)
SetGlobal("AnkhegHuman","GLOBAL",0)
SetGlobal("AnkhegDwarf","GLOBAL",0)
SetGlobal("AnkhegElf","GLOBAL",0)
SetGlobal("AnkhegGnome","GLOBAL",0)
SetGlobal("AnkhegHalfling","GLOBAL",0)
~ EXIT
END

IF WEIGHT #4 ~GlobalTimerExpired("Taerom2","GLOBAL")
Global("MakeArmor","GLOBAL",1)
Global("AnkhegDwarf","GLOBAL",1)
~ THEN BEGIN 76
  SAY #188 /* ~Ahh, you have returned.  And here be what I promised you.  Beautiful isn't it?  A finer set of armors I have not made for some time.  Wear it well.~ */
  IF ~~ THEN DO ~GiveItemCreate("PLAT06B",LastTalkedToBy,1,0,0)
DestroyItem("%tutu_var%MISC12")
SetGlobal("MakeArmor","GLOBAL",0)
SetGlobal("AnkhegHuman","GLOBAL",0)
SetGlobal("AnkhegDwarf","GLOBAL",0)
SetGlobal("AnkhegElf","GLOBAL",0)
SetGlobal("AnkhegGnome","GLOBAL",0)
SetGlobal("AnkhegHalfling","GLOBAL",0)
~ EXIT
END

IF WEIGHT #4 ~GlobalTimerExpired("Taerom2","GLOBAL")
Global("MakeArmor","GLOBAL",1)
Global("AnkhegElf","GLOBAL",1)
~ THEN BEGIN 77
  SAY #188 /* ~Ahh, you have returned.  And here be what I promised you.  Beautiful isn't it?  A finer set of armors I have not made for some time.  Wear it well.~ */
  IF ~~ THEN DO ~GiveItemCreate("PLAT06C",LastTalkedToBy,1,0,0)
DestroyItem("%tutu_var%MISC12")
SetGlobal("MakeArmor","GLOBAL",0)
SetGlobal("AnkhegHuman","GLOBAL",0)
SetGlobal("AnkhegDwarf","GLOBAL",0)
SetGlobal("AnkhegElf","GLOBAL",0)
SetGlobal("AnkhegGnome","GLOBAL",0)
SetGlobal("AnkhegHalfling","GLOBAL",0)
~ EXIT
END

IF WEIGHT #4 ~GlobalTimerExpired("Taerom2","GLOBAL")
Global("MakeArmor","GLOBAL",1)
Global("AnkhegGnome","GLOBAL",1)
~ THEN BEGIN 78
  SAY #188 /* ~Ahh, you have returned.  And here be what I promised you.  Beautiful isn't it?  A finer set of armors I have not made for some time.  Wear it well.~ */
  IF ~~ THEN DO ~GiveItemCreate("PLAT06D",LastTalkedToBy,1,0,0)
DestroyItem("%tutu_var%MISC12")
SetGlobal("MakeArmor","GLOBAL",0)
SetGlobal("AnkhegHuman","GLOBAL",0)
SetGlobal("AnkhegDwarf","GLOBAL",0)
SetGlobal("AnkhegElf","GLOBAL",0)
SetGlobal("AnkhegGnome","GLOBAL",0)
SetGlobal("AnkhegHalfling","GLOBAL",0)
~ EXIT
END

IF WEIGHT #4 ~GlobalTimerExpired("Taerom2","GLOBAL")
Global("MakeArmor","GLOBAL",1)
Global("AnkhegHalfling","GLOBAL",1)
~ THEN BEGIN 79
  SAY #188 /* ~Ahh, you have returned.  And here be what I promised you.  Beautiful isn't it?  A finer set of armors I have not made for some time.  Wear it well.~ */
  IF ~~ THEN DO ~GiveItemCreate("PLAT06E",LastTalkedToBy,1,0,0)
DestroyItem("%tutu_var%MISC12")
SetGlobal("MakeArmor","GLOBAL",0)
SetGlobal("AnkhegHuman","GLOBAL",0)
SetGlobal("AnkhegDwarf","GLOBAL",0)
SetGlobal("AnkhegElf","GLOBAL",0)
SetGlobal("AnkhegGnome","GLOBAL",0)
SetGlobal("AnkhegHalfling","GLOBAL",0)
~ EXIT
END

IF WEIGHT #4 ~GlobalTimerExpired("Taerom3","GLOBAL")
Global("MakeFullPlate","GLOBAL",1)
Global("FullPlateHuman","GLOBAL",1)
~ THEN BEGIN 80
  SAY #188 /* ~Ahh, you have returned.  And here be what I promised you.  Beautiful isn't it?  A finer set of armors I have not made for some time.  Wear it well.~ */
  IF ~~ THEN DO ~GiveItemCreate("PLAT04A",LastTalkedToBy,1,0,0)
SetGlobal("MakeFullPlate","GLOBAL",2)
~ EXIT
END

IF WEIGHT #4 ~GlobalTimerExpired("Taerom3","GLOBAL")
Global("MakeFullPlate","GLOBAL",1)
Global("FullPlateDwarf","GLOBAL",1)
~ THEN BEGIN 81
  SAY #188 /* ~Ahh, you have returned.  And here be what I promised you.  Beautiful isn't it?  A finer set of armors I have not made for some time.  Wear it well.~ */
  IF ~~ THEN DO ~GiveItemCreate("PLAT04B",LastTalkedToBy,1,0,0)
SetGlobal("MakeFullPlate","GLOBAL",2)
~ EXIT
END

IF WEIGHT #4 ~GlobalTimerExpired("Taerom3","GLOBAL")
Global("MakeFullPlate","GLOBAL",1)
Global("FullPlateElf","GLOBAL",1)
~ THEN BEGIN 82
  SAY #188 /* ~Ahh, you have returned.  And here be what I promised you.  Beautiful isn't it?  A finer set of armors I have not made for some time.  Wear it well.~ */
  IF ~~ THEN DO ~GiveItemCreate("PLAT04C",LastTalkedToBy,1,0,0)
SetGlobal("MakeFullPlate","GLOBAL",2)
~ EXIT
END

IF WEIGHT #4 ~GlobalTimerExpired("Taerom3","GLOBAL")
Global("MakeFullPlate","GLOBAL",1)
Global("FullPlateGnome","GLOBAL",1)
~ THEN BEGIN 83
  SAY #188 /* ~Ahh, you have returned.  And here be what I promised you.  Beautiful isn't it?  A finer set of armors I have not made for some time.  Wear it well.~ */
  IF ~~ THEN DO ~GiveItemCreate("PLAT04D",LastTalkedToBy,1,0,0)
SetGlobal("MakeFullPlate","GLOBAL",2)
~ EXIT
END

IF WEIGHT #4 ~GlobalTimerExpired("Taerom3","GLOBAL")
Global("MakeFullPlate","GLOBAL",1)
Global("FullPlateHalfling","GLOBAL",1)
~ THEN BEGIN 84
  SAY #188 /* ~Ahh, you have returned.  And here be what I promised you.  Beautiful isn't it?  A finer set of armors I have not made for some time.  Wear it well.~ */
  IF ~~ THEN DO ~GiveItemCreate("PLAT04E",LastTalkedToBy,1,0,0)
SetGlobal("MakeFullPlate","GLOBAL",2)
~ EXIT
END

END

ADD_STATE_TRIGGER ~%tutu_var%taerom~ 0 ~Global("SeenAnkheg","GLOBAL",0)~

REPLACE_SAY ~taerom~ 0 @927
REPLACE_SAY ~taerom~ 3 @928
REPLACE_SAY ~taerom~ 7 @930
REPLACE_SAY ~taerom~ 11 @936

ADD_TRANS_TRIGGER ~%tutu_var%taerom~ 0 ~GlobalLT("BuyAnkhegShell","GLOBAL",3)~ DO 1

REPLACE_ACTION_TEXT ~%tutu_var%taerom~
~SetGlobalTimer("Taerom","GLOBAL",TEN_DAYS)~
~~

ALTER_TRANS ~%tutu_var%taerom~
  BEGIN 3 END
  BEGIN 0 END
  BEGIN "Journal" ~@929~ END
  
ALTER_TRANS ~%tutu_var%taerom~
  BEGIN 7 END
  BEGIN 0 END
  BEGIN "ACTION" ~~ END
  
ALTER_TRANS ~%tutu_var%taerom~
  BEGIN 7 END
  BEGIN 0 END
  BEGIN "JOURNAL" ~~ END
  
EXTEND_TOP ~%tutu_var%taerom~ 7 
  IF ~~ THEN REPLY @931 GOTO 70
  IF ~~ THEN REPLY @932 GOTO 71
  IF ~~ THEN REPLY @933 GOTO 72
  IF ~~ THEN REPLY @934 GOTO 73
  IF ~~ THEN REPLY @935 GOTO 74
END
  
REPLACE_STATE_TRIGGER ~%tutu_var%taerom~ 4 
~Global("SeenAnkheg","GLOBAL",1)
GlobalLT("BuyAnkhegShell","GLOBAL",3)
PartyHasItem("%tutu_var%MISC12")
Global("MakeArmor","GLOBAL",0)~