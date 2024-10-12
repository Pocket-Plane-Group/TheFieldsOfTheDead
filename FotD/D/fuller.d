REPLACE_ACTION_TEXT %tutu_var%fuller

~AddexperienceParty(50)
TakePartyItem("_BOLT01")
GiveItem("_DAGG02",LastTalkedToBy)
SetGlobal("HelpFuller","GLOBAL",1)
EraseJournalEntry(86227)
SetGlobal("Chapter","GLOBAL",1)
AddJournalEntry(86230,QUEST_DONE)
SetGlobal("Chapter","GLOBAL",0)
~

~AddexperienceParty(50)
TakePartyItem("_BOLT01")
GiveItem("DAGG01H",LastTalkedToBy)
SetGlobal("HelpFuller","GLOBAL",1)
EraseJournalEntry(86227)
SetGlobal("Chapter","GLOBAL",1)
AddJournalEntry(86230,QUEST_DONE)
SetGlobal("Chapter","GLOBAL",0)
~

REPLACE_ACTION_TEXT %tutu_var%fuller

~AddexperienceParty(50)
TakePartyItem("BOLT01")
GiveItem("DAGG02",LastTalkedToBy)
SetGlobal("HelpFuller","GLOBAL",1)
EraseJournalEntry(27109)
AddJournalEntry(27110,QUEST_DONE)
~

~AddexperienceParty(50)
TakePartyItem("BOLT01")
GiveItem("DAGG01H",LastTalkedToBy)
SetGlobal("HelpFuller","GLOBAL",1)
EraseJournalEntry(27109)
AddJournalEntry(27110,QUEST_DONE)
~

REPLACE_ACTION_TEXT %tutu_var%fuller

~AddexperienceParty(50)
TakePartyItem("BOLT01")
GiveItem("DAGG02",LastTalkedToBy)
SetGlobal("HelpFuller","GLOBAL",1)
EraseJournalEntry(74435)
~

~AddexperienceParty(50)
TakePartyItem("BOLT01")
GiveItem("DAGG01H",LastTalkedToBy)
SetGlobal("HelpFuller","GLOBAL",1)
EraseJournalEntry(74435)
~