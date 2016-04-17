// BGEE specific banters & stuff

// Dorn conflict
CHAIN IF WEIGHT #-1 ~Global("C0SireneDorn","GLOBAL",2)~ THEN C0SirenJ C0dorn1
~<CHARNAME>, this man...~
DO ~SetGlobal("C0SireneDorn","GLOBAL",3)~
== DORNJ ~What do you want, fiendling?~
== C0SirenJ ~You know exactly what I want to say. Do not try and hide it. You may be capable of concealing it from our leader, but not from me.~
= ~You have the touch of the Lower Planes upon you. I know it too well, blackguard. I refuse to walk with you at my side.~
== DORNJ ~You think to unnerve me by unveiling my power? I care not. If you have a problem with my presence, show it with your blade. I will enjoy spitting your cowardly self upon mine.~
END
	++ ~Can't you both get along?~ EXTERN C0SirenJ C0dorn2
	++ ~I'm sorry, Sirene, but I still need Dorn. Do as you must.~ EXTERN C0SirenJ C0dorn3
	++ ~I never liked you anyway, Dorn.~ EXTERN DORNJ C0dorn4

CHAIN C0SirenJ C0dorn2
~I will neither stand his presence nor allow him to walk away and cause suffering to innocents. One such as he deserves no mercy or compassion.~
== DORNJ ~The next one to suffer with be you, paladin whelp.~
== C0SirenJ ~Draw your blade, soulless bastard.~
END
	++ ~I'm sorry, Sirene, but I still need Dorn. Do as you must.~ EXTERN C0SirenJ C0dorn3
	++ ~I never liked you anyway, Dorn.~ EXTERN DORNJ C0dorn4
	++ ~Oh, very well. Get to it.~ EXTERN C0SirenJ C0dorn5

CHAIN C0SirenJ C0dorn3
~As you wish. Forgive me for what I must do. May Ilmater have mercy on your soul, <CHARNAME>.~
DO ~SetGlobal("C0SireneJoined","GLOBAL",0) LeaveParty() Enemy() Attack("Dorn")~ 
EXIT

CHAIN DORNJ C0dorn4
~Die then, sanctimonious fools!~
DO ~SetGlobal("DORNPARTY","GLOBAL",0) LeaveParty() Enemy() Attack("C0Sirene")~ 
EXIT

CHAIN C0SirenJ C0dorn5
~Your judgment is at hand!~ [C0SIR021]
DO ~SetGlobal("C0SireneDornConflict","GLOBAL",1)~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0SireneDornConflict","GLOBAL",1)~ THEN C0SirenP C0dorn6
~Those that have suffered at your hands are avenged.~
DO ~SetGlobal("C0SireneDornConflict","GLOBAL",2) JoinParty()~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0SireneDornConflict","GLOBAL",1)~ THEN DORNP C0dorn7
~Ha! Weak, as they all are. I did truly enjoy that. Let us leave her to rot, <CHARNAME>.~
DO ~SetGlobal("C0SireneDornConflict","GLOBAL",2) JoinParty()~
EXIT
	
// Neera

CHAIN IF ~InParty("Neera")
See("Neera")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneNeera1","GLOBAL",0)~ THEN BNEERA C0SireneNeera1
~You know what I like about you, Sirene?~
DO ~SetGlobal("C0SireneNeera1","GLOBAL",1)~
== BC0SIREN ~Tell me.~
== BNEERA ~You became a paladin because you wanted to. Even though it's kinda weird and I'm not sure if it suits you, but you chose to do it.~
== BC0SIREN ~That is not entirely true, Neera. I did grow up amongst priests of Ilmater, after all. There were not many options available to me.~
== BNEERA ~Yeah, but, it's not like your paladin powers were just forced on you. Nothing stopped you from choosing what you wanted to be, right?~
= ~That's what annoys me about my magic. I mean, it's fun, but it just comes to me, whether I like it or not.~
== BC0SIREN ~But you do not want to be rid of it, do you? 'Twould surely be possible, if you were inclined to.~
== BNEERA ~Well, that's true. I do like my magic, even if it tends to go rogue and scare me every time I finish an incantation.~
== BC0SIREN ~My role as a paladin is not easy, either... and the devil blood only makes things worse.~
== BNEERA ~If it helps, I know what it's like to have horns! But... that's only cause I turned myself into a goat one time. Yeesh, that wasn't fun.~
= ~Also, I summoned a pit fiend this one time when I was hungry and tried to summon a pie. That was scary. You aren't scary though, you're nice.~
EXIT

// Rasaad

CHAIN IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneRasaad1","GLOBAL",0)~ THEN BRASAAD C0SireneRasaad1
~I sense you have wandered long and far from home as well, my friend.~
DO ~SetGlobal("C0SireneRasaad1","GLOBAL",1)~ 
== BC0SIREN ~Not home, though I have travelled far from my church, 'tis true.~
== BRASAAD ~Do you miss anything that you have left behind?~
== BC0SIREN ~No, I- from whence comes this, Rasaad?~
== BRASAAD ~I watched an unusual-colored hare flee from our presence today. Its coat reminded me of the golden deserts of home, and soon I began seeing the Calim desert everywhere I looked.~
== BC0SIREN ~You must miss home greatly.~
== BRASAAD ~It is not Calimshan that I miss, but my brother. We would sit upon the peaks of the massive dunes of the desert, exhausted after long hours of sparring, counting stars and fill each others' sleeves with sand.~
== BC0SIREN ~And then he died?~
== BRASAAD ~...yes.~
== BC0SIREN ~I wish I had a brother. At least you have memories to be fond of.~
EXIT