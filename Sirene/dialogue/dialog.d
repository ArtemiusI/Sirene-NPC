I_C_T BDSCHAEL 40 C0BDSCHAEL40
== BDSCHAEL ~I've also heard that there was a paladin of Ilmater helping the wounded at the local temple of Helm... although with the amount of people flooding into the city as of late, she's more than likely at the Iron Throne building by now. I've been told that she makes an effort to hide her face under a white hood, if that sounds familiar to you.~
DO ~SetGlobal("C0BDSCHAEL40","GLOBAL",0)~
END

CHAIN IF WEIGHT #-1
~AreaCheck("BD0111")
IsValidForPartyDialogue("C0Sirene")
Global("C02SireneSchaelIntro","GLOBAL",0)~ THEN BDSCHAEL C0SireneSchael
~I see that your search for allies bore fruit, <CHARNAME>. Perhaps you'd like to introduce your friend?~
END
++ ~Of course. Sirene, this is Captain Schael Corwin. Corwin - this is Sirene, paladin of Ilmater. Don't mind the horns.~ DO ~SetGlobal("C02SireneSchaelIntro","GLOBAL",1)~ EXTERN C02SIREJ C0SireneSchael1
++ ~We have plenty of time for introductions later. There's important business to deal with right now.~ DO ~SetGlobal("C02SireneSchaelIntro","GLOBAL",1)~ EXTERN BDSCHAEL C0SireneSchael2

CHAIN C02SIREJ C0SireneSchael1
~'Tis a pleasure to meet you, captain. I... I hope we will be able to work together without issue.~
== BDSCHAEL ~The pleasure is all mine. There's no need to feel nervous of my presence - so long as you're really what you claim to be.~
== C02SIREJ ~I understand, captain. Thank you.~
== BDSCHAEL ~Good, glad we cleared that up. Now, <CHARNAME>...~
EXTERN BDSCHAEL 222

CHAIN BDSCHAEL C0SireneSchael2
~I suppose you're right.~
EXTERN BDSCHAEL 222