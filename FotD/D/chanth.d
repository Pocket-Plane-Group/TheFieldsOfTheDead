REPLACE_ACTION_TEXT %tutu_var%chanth
~SetGlobal("TalkedToUlbright","GLOBAL",1)
GiveItem("%tutu_var%BOOK08",LastTalkedToBy)~
~SetGlobal("TalkedToUlbright","GLOBAL",1)
TakePartyGold(500)
GiveItem("%tutu_var%BOOK08",LastTalkedToBy)~