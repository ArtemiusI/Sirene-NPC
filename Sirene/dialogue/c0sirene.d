// First meeting

BEGIN C0SIRENE

IF ~Global("C0SireneMetBG1","GLOBAL",0)~ THEN BEGIN j0
 SAY ~Greetings, my <PRO_LADYLORD>. Ilmater's blessings to you.~
IF ~Alignment(Player1,MASK_EVIL)~ DO ~SetGlobal("C0SireneMetBG1","GLOBAL",1)~ + j1
IF ~!Alignment(Player1,MASK_EVIL)~ DO ~SetGlobal("C0SireneMetBG1","GLOBAL",1)~ + j2
END

IF ~~ j1
 SAY ~Step carefully, my <PRO_LADYLORD>... I know not what your intent is, but I mislike your presence. I am but a guest here, but I will defend this holy ground with my life, as is my duty.~
IF ~~ EXIT
END

IF ~~ j2
 SAY ~Forgive my unsightly appearance. I am but a guest at this temple. The priests are within, if that is your intent for visiting these grounds.~
	++ ~You look like you've been beaten pretty badly. What happened?~ + j3
	++ ~Who are you?~ + j4
	++ ~Pardon my words, but you look a little strange.~ + j5
	++ ~Sorry, I don't have time to talk right now.~ + j6
END

IF ~~ j3
 SAY ~Nothing special... the roads are simply dangerous. I suffered a few injuries facing the bandits that plague the Sword Coast on my way to Beregost. Thankfully, I reached the Song of the Morning while I was still capable of walking.~
IF ~~ + j4
END

IF ~~ j4
 SAY ~My name is Sirene. I'm a follower of Ilmater, the Crying God. I'm no priestess, however. I follow the order of the Holy Warriors of Suffering.~
	++ ~Forgive me, but I could not help but take notice of your appearance.~ + j5
	++ ~Sorry, I don't have time to talk right now.~ + j6
END

IF ~~ j5
 SAY ~...Aye. I see my appearance did not escape you. It never does, does it?~
 = ~(sigh) I'm a tiefling. The blood of devils flows in my veins. I wish it were not the case, but I am who I am. It has caused complications in the past, confrontations I do not care to remember.~
 = ~I do hope that I will not have to repeat another incident. We of the Ilmatari seek to relieve suffering, not cause it.~
	++ ~A tiefling paladin. How unusual.~ + j7
	++ ~Do you know anything about the troubles down south?~ + j8
	++ ~You know, I could use a capable fighter in my party. Would you care to join me?~ + j9
	++ ~Goodbye.~ + j6
END

IF ~~ j6
 SAY ~Farewell, my <PRO_LADYLORD>. Ilmater protect you from suffering.~
IF ~~ EXIT
END

IF ~~ j7
 SAY ~Aye, it is, my <PRO_LADYLORD>, but I ask you not to bring it up again. I have long gone past the point of being angered by your words, but I do not care to hear it repeated.~
IF ~~ + j13
END

IF ~~ j8
 SAY ~Only what anyone else could tell you. They say the iron coming from the Nashkel mines is poisoned to the point of being useless, and some say that it is the work of demons.~
 = ~I attempted to look into the issue personally, but my appearance caused... problems. I was turned away, and not peacefully.~
IF ~~ + j13
END

IF ~~ j9
 SAY ~An interesting proposal...~
IF ~ReputationGT(Player1,9)~ + j10a
IF ~!ReputationGT(Player1,9)~ + j10b
END

IF ~~ j10a
 SAY ~Hmm... there is little for me to accomplish alone. You do not have an aura of evil about you, so I believe you can be trusted. If you would have me, I would join your side.~
	++ ~Certainly, I'm sure you will make a valuable friend. My name's <CHARNAME>, by the way.~ + j11
	++ ~Perhaps another time.~ + j12
END

IF ~~ j10b
 SAY ~I... no, forgive me. I do not wish to be discourteous, but... I am uncertain if your path is one of virtue. Perhaps... in the future, if you see fit to make a change... I would be willing to travel by your side.~
IF ~~ EXIT
END

IF ~~ j11
 SAY ~<CHARNAME> it is, then. Shall we go?~
IF ~~ DO ~SetGlobal("C0SireneJoined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ j12
 SAY ~As you wish.~
IF ~~ EXIT
END

IF ~~ j13
 SAY ~Is there something else you wish to know?~
	++ ~You look like you've been beaten pretty badly. What happened?~ + j3
	++ ~Who are you again?~ + j4
	++ ~Pardon my words, but you look a little strange.~ + j5
	++ ~Sorry, I don't have time to talk right now.~ + j6
END

// Talked to again, not in party

IF ~Global("C0SireneMetBG1","GLOBAL",1)~ THEN BEGIN k0
 SAY ~Greetings again, my <PRO_LADYLORD>.~
IF ~Alignment(Player1,MASK_EVIL)~ DO ~SetGlobal("C0SireneMetBG1","GLOBAL",1)~ + j1
IF ~!Alignment(Player1,MASK_EVIL)~ DO ~SetGlobal("C0SireneMetBG1","GLOBAL",1)~ + k1
END

IF ~~ k1
 SAY ~Is there something you need?~
 	++ ~Would you care to join my party?~ + j9
	++ ~Goodbye.~ + j6
END
	