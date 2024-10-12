// creator  : WeiDU (version 176)
// argument : OVERRIDE\SHOP03A.DLG
// game     : .
// source   : OVERRIDE\SHOP03A.DLG
// dialog   : ./dialog.tlk
// dialogF  : (none)

BEGIN ~SHOP03A~ 15377 // non-zero flags may indicate non-pausing dialogue

IF ~True()
~ THEN BEGIN 0 // from:
  SAY #15377 /* ~You are welcome to peruse the goods I have on display, provided you have the gold to buy them.~ */
  IF ~~ THEN REPLY #15378 /* ~I've gold enough, but have you anything worth buying?~ */ DO ~StartStore("sto1112a",LastTalkedToBy())
~ EXIT
  IF ~~ THEN REPLY #15379 /* ~I'm not interested in your trinkets today.~ */ DO ~~ EXIT
END
