CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneDrake1","GLOBAL",0)~ THEN BC0Siren C0SireneDrake1
~What is it, Drake? You look upon me as though I am but an object of fascination. What is it about me that draws such a smirk to your face?~
DO ~SetGlobal("C0SireneDrake1","GLOBAL",1)~
== BC0Drake ~Nothing in particular, lady Mercy. Are you saying I am the first to find you fascinating?~
== BC0Siren ~I would prefer not to be to be scrutinized by the very company I keep.~
== BC0Drake ~That so? My apologies, then, if I have forgotten that you are a living being with thoughts and feelings. I shall be sure to remain discreet from now on.~
== BC0Siren ~Knowing that brings me no more comfort, Drake. (sigh) But I suppose I cannot stop you.~
EXIT

CHAIN IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneDrake1","GLOBAL",1)~ THEN BC0Drake C0SireneDrake2
~Come now, lady Mercy, is there any cause for such a gloomy face? We're not dying yet.~
DO ~SetGlobal("C0SireneDrake1","GLOBAL",2)~
== BC0Siren ~Why do you call me that?~
== BC0Drake ~Do you not find the appellation flattering?~
== BC0Siren ~Nay, but I hardly find it suitable considering... everything that I have done. There is no mercy in all this slaughter.~
== BC0Drake ~Ha! True enough, but you are hardly more guilty than any of us.~
== BC0Siren ~Aye, but 'twould seem that I feel the weight of my actions more greatly than others.~
== BC0Drake ~I believe most decent men would show remorse for ending the life of another, no matter how vile they may be, but I don't think I've seen anyone carry those feelings around for so long after the deed.~
== BC0Siren ~Do you find that laughable?~
== BC0Drake ~No, I actually find it rather admirable. I doubt I would have the strength if I were in your place.~
== BC0Siren ~...I see. I... thank you, Drake.~
EXIT

CHAIN IF ~InParty("C0Drake")
See("C0Drake")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneDrake1","GLOBAL",2)~ THEN BC0Siren C0SireneDrake3
~You have a respected place among the Order of the Radiant Heart, Drake, yet you seem anything but satisfied.~
DO ~SetGlobal("C0SireneDrake1","GLOBAL",3)~
== BC0Drake ~I'm not half as respected as you might think, lady Mercy. Well-liked among the juniors, certainly, but others find my personality... difficult to bear.~
== BC0Siren ~And why is that?~
== BC0Drake ~Eh, you get a few disagreements on what's the right thing to do against what we are told is right. I couldn't get used to it.~
== BC0Siren ~Are you trying to say that the Order is not as noble as it seems?~
== BC0Drake ~No, they mean well, sure enough, but... we take too much stock into personal honor, sometimes too far. In a land like Amn, honor is... not exactly something that is easy to maintain, while still trying to keep your morals clean.~
== BC0Siren ~I see...~
== BC0Drake ~If you knew what I've seen fit to do, truly, then perhaps you'd have a little less respect than you do right now. And I think I'll leave it at that.~
EXIT