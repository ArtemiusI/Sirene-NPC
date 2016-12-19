CHAIN IF ~InParty("L#1Verr")
See("L#1Verr")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("L#1Verr",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneVerr","GLOBAL",0)~ THEN BC0Siren C0SireneVerr1
~Your selfish actions have caused much suffering to others, rakshasa. I doubt 'tis worth asking, but do you feel no guilt for any of it?~
DO ~SetGlobal("C0SireneVerr","GLOBAL",1)~
== L#1VerrB ~The only ones who get hurt are those I've got a job to kill and those who get in my way.~
== BC0Siren ~Aye, 'twas the answer I had expected. I know not why I expected any different... but have you truly no shame?~
== L#1VerrB ~How many have suffered because of you, tiefling? Those bandits and marauders who crossed our paths had lives and loved ones of their own. Can you sleep at night knowing that it's your fault they will never return home?~
== BC0Siren ~I felt no pleasure at ending lives, but 'twas for the sake of the unjustly slain. I pray for their souls to find redemption, which is far more than you can say for yourself.~
== L#1VerrB ~Your prayers... do you really think they make a difference? They are nothing more than empty words and platitudes.~
== BC0Siren ~Words alone mean nothing, aye, but faith gives them worth. You do not understand that. I doubt you ever will.~
== L#1VerrB ~Pray then, if that's how you must spend your time. I won't tell you how to live your life - even if I think you're wasting it.~
EXIT

CHAIN IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("L#1Verr",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneVerr","GLOBAL",1)~ THEN L#1VerrB C0SireneVerr2
~You might waste too much time praising Ilmater and whispering your prayers, but I cannot deny you're a fine warrior. Quick and strong. That surprised me.~
DO ~SetGlobal("C0SireneVerr","GLOBAL",2)~
== BC0Siren ~My true strength is not in my body, but my heart. My faith and will have saved me where my blade could not. My lord's guidance gives me more strength than any sword, armor or shield- and I am truly proud to serve Ilmater.~
== L#1VerrB ~By all of Bane's sins, you actually believe that?~
== BC0Siren ~Yes, I do.~
== BC0Siren ~Mock me if that is your desire, rakshasa, but I will not change my path.~
== L#1VerrB ~Then don't. Prove to me that you're *almost* a free being.~
== BC0Siren ~Were you not a spirit of evil, Verr'Sza, I would pity you. You are as empty and lifeless as your blades and claws, without morality or empathy. You may take the face and mannerisms of a man, yet without faith- whether it be in god or ideal- you are ultimately nothing more than a beast.~
== BC0Siren ~As for me, I shall pray that you may one day find redemption, hopeless as it might be.~
== L#1VerrB ~Redemption? Hah! Who should redeem me, then? You? This is a waste of time, though you may mutter your words if you must.~
EXIT

CHAIN IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("L#1Verr",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneMatch","GLOBAL",1)
OR(2)
Global("L#1VerrRomanceActive","GLOBAL",1)
Global("L#1VerrRomanceActive","GLOBAL",2)
Global("C0SireneVerr","GLOBAL",2)~ THEN L#1VerrB C0SireneVerr3
~You know, for all your prayers and worship, there is something you're like me in... you've got an eye for attractive <PRO_MALEFEMALE>s, eh?~
DO ~SetGlobal("C0SireneVerr","GLOBAL",3)~
== BC0Siren ~I know not of what you speak. I am nothing alike to you and your... promiscuity.~
== L#1VerrB IF ~Gender(Player1,MALE)~ THEN ~Do you think I've missed the way you ogle our handsome leader, woman? Come now, I'm not blind.~
== L#1VerrB IF ~Gender(Player1,FEMALE)~ THEN ~Do you think I've missed the way you ogle our beautiful leader, woman? Come now, I'm not blind.~
== BC0Siren ~I was not... I... <CHARNAME> is a <PRO_MANWOMAN> worth admiring. If I look to <PRO_HIMHER>, then 'tis out of respect. I would not presume to mean more to <PRO_HIMHER> than <PRO_HESHE> wishes.~
== L#1VerrB ~Ravanna's balls, how you can live like this is beyond me. If you were a man, I'd go so far as to ask if you had a cock! Has the stick up your arse gone so far that it's deprived you of any enjoyment in life?~
== BC0Siren ~If I never fall into the pit of hedonism that has consumed you, rakshasa, it would be far too soon. Expel your foul vulgarities elsewhere.~
== L#1VerrB ~Ah, well. This bores me anyway.~
== L#1VerrB IF ~GlobalGT("L#1VerrRomanceTalk","GLOBAL",8)
OR(2)
Global("L#1VerrRomanceActive","GLOBAL",1)
Global("L#1VerrRomanceActive","GLOBAL",2)~ THEN ~It's not like you would have a chance with <CHARNAME> regardless, now that I know what <PRO_HESHE> really wants. But maybe you'll feel better if I tell you a thing or two about our activities, eh? How <PRO_HISHER> tongue tasted in my mouth, how <PRO_HESHE> shared sweat and heat with me, how deep I-~
== BC0Siren IF ~GlobalGT("L#1VerrRomanceTalk","GLOBAL",8)
OR(2)
Global("L#1VerrRomanceActive","GLOBAL",1)
Global("L#1VerrRomanceActive","GLOBAL",2)~ THEN ~B-begone, creature! One more word and I shall give you Ilmater's long overdue justice, I swear!~
EXIT