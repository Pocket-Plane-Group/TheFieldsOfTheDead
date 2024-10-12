// creator  : WeiDU (version 176)
// argument : OVERRIDE\MERCH7.DLG
// game     : .
// source   : OVERRIDE\MERCH7.DLG
// dialog   : ./dialog.tlk
// dialogF  : (none)

BEGIN ~MERCH7~ 15763 // non-zero flags may indicate non-pausing dialogue

IF ~True()
~ THEN BEGIN 0 // from:
  SAY #15763 /* ~A fine and lovely day to ye!  Would you be interested in any of my fine odds and ends?  I have endeavored to keep prices reasonable even in spite of the shortages of late.~ */
  IF ~~ THEN REPLY #15764 /* ~I have no need of your trinkets.  Good day.~ */ DO ~~ EXIT
  IF ~~ THEN REPLY #15765 /* ~Let's see what you have for offer.~ */ DO ~StartStore("sto0706",LastTalkedToBy())~ EXIT
END
