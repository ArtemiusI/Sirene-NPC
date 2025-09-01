BEGIN C0SIRENJ

// ---------------------------------------------
// Friendship Track
// ---------------------------------------------

// 1.
CHAIN IF ~Global("C0SireneTalksBG1","GLOBAL",2)~ THEN C0SIRENJ t1
~I feel I must thank you on behalf of those who suffered in the mines, my <PRO_LADYLORD>. You have done an honorable deed.~
DO ~IncrementGlobal("C0SireneTalksBG1","GLOBAL",1)
RealSetGlobalTimer("C0SireneTalksBG1Timer","GLOBAL",2700)~
END
	++ ~It was nothing.~ + t1.1
	++ ~My thanks for the compliment.~ + t1.2
	++ ~It was a necessary means to an end.~ + t1.3
	++ ~I'd rather not talk about it.~ + t1.4

APPEND C0SIRENJ

IF ~~ t1.1
 SAY ~I think those that you have saved from a grim fate would think otherwise. (smile)~
IF ~~ + t1.4
END

IF ~~ t1.2
 SAY ~'Tis no trouble, my <PRO_LADYLORD>. You deserve this much, at least.~
IF ~~ + t1.4
END

IF ~~ t1.3
 SAY ~Aye, of course. Regardless, you have proven to be a respectable <PRO_MANWOMAN>.~
IF ~~ + t1.4
END

IF ~~ t1.4
 SAY ~To tell the truth, I am glad. I had initially wondered if I had made the right decision to travel at your side, but you have dispelled my concerns, and I feel I should apologize for having any misgivings.~
 = ~I am... not used to travelling with comrades. I know not what quest you have ahead of you, but so long as 'tis just, I will remain at your side. I hope we will work well together, my <PRO_LADYLORD>.~
	++ ~As do I, Sirene.~ + t1.6
	++ ~Don't call me that. My name's <CHARNAME>.~ + t1.7
	++ ~You'd better pull your weight while you're with us.~ + t1.8
END

IF ~~ t1.5
 SAY ~Fair enough. You've earned my respect regardless.~
IF ~~ EXIT
END

IF ~~ t1.6
 SAY ~I am glad to hear it.~
IF ~~ + t1.9
END

IF ~~ t1.7
 SAY ~(smile) If that is what you prefer.~
IF ~~ + t1.9
END

IF ~~ t1.8
 SAY ~You need not concern yourself with that, <CHARNAME>.~
IF ~~ + t1.9
END

IF ~~ t1.9
 SAY ~I think I've taken up enough of your time, my friend. Lead on.~
IF ~~ EXIT
END
END

// 2. triggers in any city or town area, and probably the major road areas too

CHAIN IF ~Global("C0SireneTalksBG1","GLOBAL",4)~ THEN C0SIRENJ t2
~I never mentioned how grateful I am to you for allowing me to join you in your travels, <CHARNAME>.~
= ~Many would look upon my horns and not given me the chance.~
DO ~IncrementGlobal("C0SireneTalksBG1","GLOBAL",1)
RealSetGlobalTimer("C0SireneTalksBG1Timer","GLOBAL",2700)~
END
	++ ~Does your heritage cause you problems often?~ + t2.1
	++ ~I was raised not to be prejudiced towards a person's race.~ + t2.2
	+ ~Global("C0SireneMatch","GLOBAL",1)~ + ~I think they're rather fetching, actually.~ + t2.3
	++ ~I brought you with me because I thought you would be useful. I don't care about anything else.~ + t2.4

APPEND C0SIRENJ

IF ~~ t2.1
 SAY ~...yes. More frequently than I care to remember.~
IF ~~ + t2.5 
END

IF ~~ t2.2
 SAY ~That is good to hear. You were raised by a wise mentor, then.~
IF ~~ + t2.5 
END

IF ~~ t2.3 
 SAY ~(laugh) You speak charming words, <CHARNAME>. Would that others believed the same.~
IF ~~ + t2.5 
END

IF ~~ t2.4
 SAY ~...Fair enough.~
IF ~~ DO ~SetGlobal("C0SireneMatch","GLOBAL",2)~ EXIT
END

IF ~~ t2.5 
 SAY ~I've been turned away from many towns along the Sword Coast in my travels. As I've said before, I was even denied entry to the Nashkel mines. Had you not solved the mystery, I would have been forced to resort to more desperate measures.~
	++ ~What sort of desperate measures?~ + t2.6
	++ ~Couldn't you have left it be?~ + t2.7
	++ ~With your skill, you could have solved it without me.~ + t2.8
	++ ~You seem confident in your skills.~ + t2.9
END

IF ~~ t2.6
 SAY ~Well, I had heard that Beregost was home to a powerful mage. I was going to request a magical disguise for the occasion. (smile)~
= ~Lord Kelddath insisted it would not work. Thalantyr is a solitary mage, and even as the mayor, he has little authority over the man. But I was willing to take the chance of him feeling generous.~ 
IF ~~ + t2.10
END

IF ~~ t2.7
 SAY ~No, I couldn't. 'Twould be a violation of my duty as a paladin, after all.~
IF ~~ + t2.10
END

IF ~~ t2.8
 SAY ~You are too kind, <CHARNAME>. I am not that talented, I assure you. You have infinitely more potential than I do.~
IF ~~ + t2.10
END

IF ~~ t2.9
 SAY ~Confidence is not the word for it. Driven is more fitting.~
IF ~~ + t2.10
END
 
IF ~~ t2.10
 SAY ~It may sound strange to you coming from one such as I, but I do my best to uphold the values of my role as a martyr of Ilmater.~
 = ~'Tis... quite a lonely task, given that I have met few of my faith in my travels, and those that I have met shunned me, calling me a fraud and a deceiver.~
	++ ~How did you become a paladin, anyway?~ + t2.11
	++ ~It sounds very difficult.~ + t2.12
	++ ~Do you have no family?~ + t2.13
END

IF ~~ t2.11
 SAY ~'Tis no grand tale, my friend... my past goes as you may expect. I was found by a travelling pilgrim of Ilmater in the north, who saved me from near-certain death from exposure and starvation.~
 = ~He brought me far to the south to a church of the Crying God in the outskirts of Tethyr, and raised among other orphans. I remember few of their names, truth be told. We were... never close, as I was considered to be cursed by those around me.~
 = ~As a child, I was quite the impatient and brash person. I lacked the temperament to make a proper priest of Ilmater, my mentors said, so my guardian suggested for me to take on a more martial role. (smile) I do not regret it, although...~
IF ~~ + t2.14
END
 
IF ~~ t2.12
 SAY ~I have heard the same words enough times for it not to hurt anymore, though in a way, yes, 'tis still difficult.~
 = ~'Tis still strange to me, that those of other faiths can band together and share each others' company, yet...~
IF ~~ + t2.14 
END
 
IF ~~ t2.13
 SAY ~No... I was raised by priests of Ilmater as an orphan, likely abandoned by my parents for my fiendish blood. Where they are, if they're still alive or if they even care about me... I cannot say.~
IF ~~ + t2.14 
END

IF ~~ t2.14 
 SAY ~I oft feel as though there is no place I can truly call home. I suppose that place is here, for now, for as long as you'd have me.~
	++ ~You can remain with us, as long as you'd like.~ + t2.15
	+ ~Class(Player1,PALADIN_ALL)~ + ~I would never turn away a fellow paladin.~ + t2.15
	++ ~You may travel with us, though I cannot say for how long.~ + t2.16
END
 
IF ~~ t2.15
 SAY ~Thank you, <CHARNAME>.~
IF ~~ EXIT
END
 
IF ~~ t2.16
 SAY ~That is enough for me.~
IF ~~ EXIT
END
END

// 3.
CHAIN IF ~Global("C0SireneTalksBG1","GLOBAL",6)~ THEN C0SIRENJ t3
~I apologize for talking your ear off once more, <CHARNAME>, but... may I ask of your tale?~
= ~You mentioned that you were of Candlekeep, were you not? I know little of the place, though I hear that those who call it home rarely leave. Would you tell me what happened?~
DO ~IncrementGlobal("C0SireneTalksBG1","GLOBAL",1)
RealSetGlobalTimer("C0SireneTalksBG1Timer","GLOBAL",2700)~
END
	++ ~My foster father Gorion was killed by an unknown man. I seek him for revenge.~ + t3.1
	++ ~What else causes a young <PRO_MANWOMAN> to leave? Adventure, romance, camaraderie, you name it.~ + t3.2
	++ ~I wanted to learn more about the outside world than what is recorded in the history books.~ + t3.3
	++ ~It wasn't my choice.~ + t3.4
	++ ~I don't know. It's one of those things that just happened.~ + t3.4

APPEND C0SIRENJ

IF ~~ t3.1
 SAY ~A crueler reason than what I expected. I am sorry for your loss.~
IF ~~ + t3.5
END

IF ~~ t3.2
 SAY ~I can certainly understand that. Despite my duties to Ilmater, sometimes I do simply yearn for the thrill of the road.~
IF ~~ + t3.5
END

IF ~~ t3.3
 SAY ~(smile) Knowledge is a strange thing, my friend. You may be washed away amidst it all.~
IF ~~ + t3.5
END

IF ~~ t3.4
 SAY ~A simple twist of fate is all it is, then?~
IF ~~ + t3.5
END

IF ~~ t3.5
 SAY ~I had barely reached adulthood before I left my hometown on my pilgrimage. It has been many years now, but I remember the day of my departure as clearly as if it were yesterday. I know the feeling of leaving your home, not knowing if you will ever return.~
 = ~Forgive me, my friend. I am talking about myself once more. How about your family? Are they scholars of Candlekeep? Or are you an orphan, as I am?~
	++ ~I know nothing of them. Gorion raised me for as long as I can remember.~ + t3.6
	++ ~Gorion is the only parent I've had.~ + t3.6
END

IF ~~ t3.6
 SAY ~Then we are two of a kind in that respect... though at least you had a figure that you could call father. I was not so fortunate.~
 = ~What about friends? There were many fellow wards at my temple. Were there other children within Candlekeep?~
    + ~InParty("IMOEN%BG1_EET_IMOEN%")~ + ~There's Imoen.~ + t3.7
	++ ~I had a few childhood friends in Candlekeep.~ + t3.7
	++ ~I was always more fond of the adults than the other kids.~ + t3.7
	++ ~There were, but we were not close. I was something of a loner.~ + t3.7
END

IF ~~ t3.7
 SAY ~I see.~
 = ~I am surprised, in a way. We have our differences, <CHARNAME>, but I feel we are alike in many ways. I hope that we can consider each other friends.~
 = ~Learning about a friend's childhood makes me... feel better about myself, I suppose. Thank you for humoring me.~
IF ~~ EXIT
END

END

// 4.
CHAIN IF ~Global("C0SireneTalksBG1","GLOBAL",8)~ THEN C0SIRENJ t4
~<CHARNAME>, may I ask... what was it like to have a father? Were you close?~
DO ~IncrementGlobal("C0SireneTalksBG1","GLOBAL",1)
RealSetGlobalTimer("C0SireneTalksBG1Timer","GLOBAL",2700)~
END
	++ ~Foster father, Sirene.~ + t4.1
	++ ~Gorion and I had different beliefs. We argued often, but I still love him.~ + t4.2
	++ ~He was stern, but kind. I couldn't have asked for more.~ + t4.2
	++ ~I hated him! Always with the rules and lectures, never a chance for me to make my own choices...~ + t4.3
	++ ~I never thought of him as my father.~ + t4.4

APPEND C0SIRENJ

IF ~~ t4.1
 SAY ~Yes... of course.~
 = ~Forgive me for asking. I had simply wanted to know how your relationship with Gorion compared to my guardians.~
IF ~~ + t4.5
END

IF ~~ t4.2
 SAY ~'Tis good to hear you say that. I wish I had known a father figure, if only to argue with him sometimes.~
IF ~~ + t4.5
END

IF ~~ t4.3
 SAY ~I... cannot say I understand how you feel, but I must still say that sometimes, the choices we make are not entirely for the best.~
IF ~~ + t4.5
END 
 
IF ~~ t4.4
 SAY ~Indeed? Then perhaps we are alike in that regard. I had never considered the priests whom raised me to be family.~ 
IF ~~ + t4.5
END

IF ~~ t4.5
 SAY ~My own upraising was... lonely, to say the least. Though priests raised me, I was always treated as a ward, not as family.~
 = ~Most of the other children considered me cursed due to my appearance and avoided me. Those that didn't... threw stones and called me names.~
	++ ~I was never popular among the few children of Candlekeep, myself.~ + t4.6
	++ ~Did you ever... fight back?~ + t4.7
	++ ~That's horrible! Didn't the priests do anything about it?~ + t4.8
	++ ~I'd rather not talk about this right now.~ + t4.9
END

IF ~~ t4.6
 SAY ~That cannot be true, my friend. (smile) You do not seem the type.~
IF ~~ + t4.10
END

IF ~~ t4.7
 SAY ~Aye, I did. I am not proud of it, but I was less fettered as a child.~
IF ~~ + t4.10
END

IF ~~ t4.8
 SAY ~They may have, if I had told them, but I was stubborn, and I suppose I already knew that their cruelty was born of fear, not malice. I do not blame them.~
IF ~~ + t4.10
END

IF ~~ t4.9
 SAY ~Aye, as you will.~
IF ~~ EXIT
END

IF ~~ t4.10
 SAY ~I fought three of the boys who bullied me one day, when they mocked me for being abandoned by my parents. I severely wounded one, giving him injuries that he never fully recovered from.~
 = ~I was punished for it, of course. The Ilmateri are merciful, but I had gone too far, and I deserved my punishment.~
	++ ~You didn't say a single word in your defense?~ + t4.11
	++ ~I would never have taken you for a violent person, Sirene.~ + t4.12
	++ ~That's terrible... did you regret it?~ + t4.13
	++ ~What a shame. Can we just get going now?~ + t4.14
END

IF ~~ t4.11
 SAY ~I believed I had no right to. I lashed out in anger, that is all there was. There was nothing for me to say, and I had accepted the consequences.~
IF ~~ + t4.12
END
 
IF ~~ t4.12
 SAY ~Perhaps my mentors thought paladinhood would rein in my temper. Or perhaps they felt that my demonstration of violence would be best put to use in martial training.~
 = ~Sometimes I still have trouble keeping my wilder emotions in tow, I admit. I try, but the evil blood within me runs deep.~
	++ ~Don't take it wrong, but I am amazed you succeeded in becoming a paladin.~ + t4.15
	++ ~Is it difficult fighting your natural impulses?~ + t4.16
	+ ~Global("C0SireneMatch","GLOBAL",1)~ + ~You can show your wilder side around me if you want, I wouldn't mind.~ + t4.17
END

IF ~~ t4.13
 SAY ~Of course. Moreso now, that I am wiser, but even then I knew 'twas wrong.~
IF ~~ + t4.12
END

IF ~~ t4.14
 SAY ~Yes... yes, we should. I'm sorry I brought this up.~
IF ~~ EXIT
END

IF ~~ t4.15
 SAY ~At the time, so was I, as were many of the more cynical elders of my church. 'Twas a hopeless endeavor, they said, and I would never be accepted by my brothers even should Ilmater accept me as his champion.~ 
IF ~~ + t4.18
END

IF ~~ t4.16
 SAY ~It could be worse, I admit. 'Tis said that I have devilish ancestry, so I am at least drawn to order, if not altruism.~
IF ~~ + t4.18
END

IF ~~ t4.17
 SAY ~(laugh) You should not make light of my situation, <CHARNAME>, but strangely... it helps.~
IF ~~ + t4.18
END

IF ~~ t4.18
 SAY ~I cannot help but think that my church was glad that I left. If I had not chosen to do so, the townsfolk would surely have driven me away eventually... I do not miss the place, but 'twas still difficult to leave, knowing that few places would accept me.~
	++ ~You're a good person. I'm sure there's somewhere for you out there.~ + t4.19
	++ ~Well, if there is nowhere for you, you can stay with us.~ + t4.19
	+ ~!Global("C0SireneMatch","GLOBAL",1)~ + ~I can be a friend to you.~ + t4.20
	+ ~Global("C0SireneMatch","GLOBAL",1)~ + ~I can be a friend to you.~ + t4.21
	++ ~What can I say? Perhaps there is no place meant for you in this world.~ + t4.22
END

IF ~~ t4.19
 SAY ~That is more than I can hope for, my friend.~
IF ~~ EXIT
END

IF ~~ t4.20
 SAY ~Your friendship is a true gift to me, <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ t4.21
 SAY ~Your friendship is a true gift to me, <CHARNAME>. I wish...~
 = ~Nay, never mind. A brief fantasy, perhaps. I dare not say what crossed my mind just now. Let us continue.~
IF ~~ EXIT
END

IF ~~ t4.22
 SAY ~Perhaps you are right.~
IF ~~ EXIT
END
END

// 5
CHAIN IF ~Global("C0SireneTalksBG1","GLOBAL",10)~ THEN C0SIRENJ t5
~Ach, I had thought these bruises would fade sooner, yet they remain.~
DO ~IncrementGlobal("C0SireneTalksBG1","GLOBAL",1)
RealSetGlobalTimer("C0SireneTalksBG1Timer","GLOBAL",2700)~
END
	+ ~NumInPartyGT(2)~ + ~You are too reckless when in combat, Sirene.~ + t5.1
	+ ~NumInPartyLT(3)~ + ~You are too reckless when in combat, Sirene.~ + t5.2
	++ ~Do they hurt?~ + t5.3
	+ ~Global("C0SireneMatch","GLOBAL",1)~ + ~They don't really detract from your attractiveness.~ + t5.4
	++ ~Just have them healed up.~ + t5.5

APPEND C0SIRENJ

IF ~~ t5.1
 SAY ~'Tis the duty of an Ilmateri to suffer for others' sake, <CHARNAME>. I do not regret these injuries, not when our comrades are spared them.~
IF ~~ + t5.5  
END 
 
IF ~~ t5.2
 SAY ~'Tis the duty of an Ilmateri to suffer for others' sake, <CHARNAME>. I do not regret these injuries, not when you are spared them.~
IF ~~ + t5.5  
END

IF ~~ t5.3
 SAY ~No. Well, perhaps they would, but I am used to such pains.~
IF ~~ + t5.5
END

IF ~~ t5.4
 SAY ~(smile) You are only trying to make me feel better, <CHARNAME>.~
IF ~~ + t5.5  
END

IF ~~ t5.5 
 SAY ~(sigh) Truth be told, <CHARNAME>, I brought this up because these wounds reminded me of our meeting. Do you remember?~
 	++ ~Yes. You said you had been injured by bandits.~ + t5.6
 	++ ~Not really. You get injured too often.~ + t5.7
 	++ ~There's no time for small talk.~ + t5.8
END

IF ~~ t5.6
 SAY ~Aye, though I fear I spoke a half-truth then.~
IF ~~ + t5.9
END

IF ~~ t5.7
 SAY ~That I do. By my memory, I said I was injured during battle against bandits. That was not the whole truth.~
IF ~~ + t5.9 
END

IF ~~ t5.8
 SAY ~Fair enough.~
IF ~~ EXIT
END

IF ~~ t5.9
 SAY ~I had suffered several arrows during my way to Beregost, 'tis true, but that was not the worst of it.~
 = ~In truth, I had suffered a beating from the Flaming Fist stationed in the city.~
	++ ~You fought against the Fist? Did you do something wrong?~ + t5.10
	++ ~I'm surprised they didn't kill you.~ + t5.11
	++ ~And here I thought you were supposed to be the embodiment of lawfulness.~ + t5.12
	++ ~I don't care to hear the rest of this.~ + t5.8
END

IF ~~ t5.10
 SAY ~Nay, I did not. 'Twas another misunderstanding caused by my appearance, I suppose.~
IF ~~ + t5.13
END

IF ~~ t5.11
 SAY ~Aye, though if I had not the fortune to reach the Temple of Lathander in time, perhaps I would have died.~
IF ~~ + t5.13
END

IF ~~ t5.12
 SAY ~...Very amusing, <CHARNAME>.~ 
IF ~~ + t5.13
END

IF ~~ t5.13
 SAY ~I had attempted to spend a night at the Burning Wizard. Little did I know that the tavern was frequented by members of the Fist, and 'twas my misfortune that I encountered three of them in the situation at hand.~
 = ~One of the soldiers had suffered a painful injury to the arm. Without thinking, I approached him, still in my armor, wanting to lend him aid.~
 = ~I should have considered against it, or at least attempted to conceal my appearance. My appearance was quickly noticed, and the other two soldiers attacked me under the impression that I was attempting to poison the man.~
	++ ~Only two assailants? Considering your skills, you could have easily defended yourself.~ + t5.14
	++ ~Didn't you fight back at all?~ + t5.15
	++ ~I've heard enough of this.~ + t5.8
END

IF ~~ t5.14
SAY ~I dared not to try, <CHARNAME>. I feared that fighting back would only repeat my mistake during my childhood, so I allowed them to injure me as I fled the inn.~
IF ~~ + t5.16
END

IF ~~ t5.15
 SAY ~No. I feared that fighting back would only repeat my mistake during my childhood, so I allowed them to injure me as I fled the inn.~
IF ~~ + t5.16
END

IF ~~ t5.16
 SAY ~Because of the fight, I lost many of my supplies and was left for dead once I had fled outside the boundaries of the city. I crawled to the Song of the Morning Temple, where one of the acolytes discovered me and brought me to their halls of healing.~
	++ ~Why would you lie about this when we met?~ + t5.17
	++ ~That's awful.~ + t5.18
	++ ~A sad story, but we should really be going.~ + t5.8
END

IF ~~ t5.17
 SAY ~I... do not know the reason myself. The lie just came easily to me... perhaps I feared your reaction had I told you that I had bad dealings with the Fist, or perhaps I did not want to humiliate myself.~
IF ~~ + t5.18
END

IF ~~ t5.18
 SAY ~(sigh) 'Tis a terrible truth that I must come to accept, though I would hate to die for the crime of my blood.~
	++ ~Your heritage is not a crime, Sirene.~ + t5.19
	+ ~Global("C0SireneMatch","GLOBAL",1)~ + ~I don't care about what's in your blood, Sirene, only about you.~ + t5.20
	++ ~Whatever. If you're done talking...~ + t5.21
END

IF ~~ t5.19
 SAY ~So you say, but will others feel the same?~
 = ~No, wondering this is meaningless. Forgive me for taking up so much of your time, my friend.~
IF ~~ EXIT
END

IF ~~ t5.20
 SAY ~I...~
 = ~(She seems positively taken completely aback by your words, turning away to hide her face.)~
IF ~~ EXIT
END

IF ~~ t5.21
 SAY ~...Yes. Yes, I am.~
IF ~~ EXIT
END
END

// 6 - on resting in an inn
CHAIN IF ~Global("C0SireneTalksBG1","GLOBAL",12)~ THEN C0SIRENJ t6
~'Tis a fine feeling to have a bed to sleep in at last, my friend. I had almost forgotten how it felt.~
= ~If you would, <CHARNAME>, come and sit with me a moment. I am not yet tired, and I would like to talk.~
DO ~IncrementGlobal("C0SireneTalksBG1","GLOBAL",1)
RealSetGlobalTimer("C0SireneTalksBG1Timer","GLOBAL",2700)~
END
	++ ~I'd be happy to.~ + t6.4
	++ ~Certainly, if it includes drinks.~ + t6.1
	+ ~Global("C0SireneMatch","GLOBAL",1)~ + ~How could I refuse when a beautiful lady offers?~ + t6.2
	++ ~No, thank you. I'm rather tired.~ + t6.3

APPEND C0SIRENJ

IF ~~ t6.1
 SAY ~Of course. But not too much, lest we regret it in the morning.~
IF ~~ + t6.4
END

IF ~~ t6.2
 SAY ~(smile) I did not quite mean it in that manner, <CHARNAME>, though I am flattered.~ 
IF ~~ + t6.4
END

IF ~~ t6.3
 SAY ~As you wish, my friend. Rest well.~
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ t6.4
 SAY ~We have been through much together, have we not? 'Tis the first time I have felt this way, but I consider you a close friend now. For the first time, I feel as though there is someone I can trust.~
	+ ~Global("C0SireneMatch","Global",1)~ + ~Only as a friend, my lady?~ + t6.5
	+ ~!Global("C0SireneMatch","Global",1)~ + ~Only as a friend, my lady?~ + t6.6
	++ ~I feel the same, Sirene. You are a valuable friend, and a good person.~ + t6.7
	++ ~Sirene, you're a trusted ally, but 'close friend' is taking it a bit too far.~ + t6.8
END

IF ~~ t6.5
 SAY ~No, well... yes, but... (sigh) When you ask me that way, I am not sure how to respond myself.~
IF ~~ + t6.9
END

IF ~~ t6.6
 SAY ~...~
 = ~Aye, if you can forgive me for saying so.~
IF ~~ + t6.9
END

IF ~~ t6.7
 SAY ~(laugh) You are making me blush, my friend. I am unused to such direct compliments.~
IF ~~ + t6.9
END

IF ~~ t6.8
 SAY ~Do you truly mean that?~
 = ~I have misjudged, then. Forgive me. I think I shall retire to my room now.~
IF ~~ DO ~SetGlobal("C0SireneMatch","Global",3) SetGlobal("C0SireneTalksStopped","GLOBAL",1)~ EXIT
END

IF ~~ t6.9
 SAY ~You must be tired, <CHARNAME>. Let us talk of whatever we please for a change.~
	++ ~I don't see why not.~ + t6.10
	++ ~When you say that, I'm not exactly sure what to talk about.~ + t6.11
	+ ~Global("C0SireneMatch","Global",1)~ + ~In that case, we could talk about you.~ + t6.12
END

IF ~~ t6.10
 SAY ~I'd begin, but I am not sure what to talk about. Perhaps 'twould be best for you to start.~
IF ~~ + t6.13
END

IF ~~ t6.11
 SAY ~(laugh) I know the feeling, <CHARNAME>.~
IF ~~ + t6.13
END

IF ~~ t6.12
 SAY ~(laugh) You know a few things of me already, my friend, though I suspect that is not what you meant.~
IF ~~ + t6.13
END

IF ~~ t6.13
 SAY ~Go ahead, <CHARNAME>. Everything's between friends here.~
 	++ ~I miss my old life. Candlekeep, Gorion, all of it.~ + t6.14
	+ ~!Class(Player1,PALADIN_ALL)~ + ~Do you ever have doubts?~ + t6.15
	+ ~Class(Player1,PALADIN_ALL)~ + ~Do you ever have doubts?~ + t6.15a
	++ ~I think I'm in love with one of our companions...~ + t6.16
	++ ~You seem to make friends too easily.~ + t6.17
	++ ~On second thought, I don't feel like talking after all.~ + t6.3
END

IF ~~ t6.14
 SAY ~I envy you, <CHARNAME, do you know that? Though you have suffered much, you have memories worth holding on to.~
 = ~It may not be my place to say such a thing, but I believe you are luckier than most. Keep them close to your heart, my friend. You have had much that any other <PRO_MANWOMAN> would die for.~
IF ~~ + t6.20
END

IF ~~ t6.15
 SAY ~I... sometimes. No, often. 'Tis difficult for me, a paladin with fiendish blood, to come to terms with who I am.~
 = ~Though I know I should not, I oft wonder if 'twas a mistake to go on take the path I have.~
IF ~~ + t6.20
END

IF ~~ t6.15a
 SAY ~I would ask you the same question, <CHARNAME>. I have never had the chance to ask another paladin.~
 = ~'Tis difficult for me, a paladin with fiendish blood, to come to terms with who I am. Though I know I should not, I oft wonder if 'twas a mistake to go on take the path I have. And yet I wonder if I am but using my heritage as an excuse...~
 = ~Do you find your it as difficult as I do?~
	++ ~Yes.~ + t6.15b
	++ ~I don't know... sometimes.~ + t6.15b
	++ ~No. I have never questioned my duty.~ + t6.15c
END

IF ~~ t6.15b
 SAY ~I see. 'Tis relieving, in a way... I am glad that I am not the only one who faces these fears.~
IF ~~ + t6.20
END

IF ~~ t6.15c
 SAY ~I see. (sigh) Then you have stronger conviction than I do. I respect you for that.~
IF ~~ + t6.20
END

IF ~~ t6.16
 SAY ~(laugh) Not exactly what I had expected to talk about, but would you tell me whom the lucky person is?~
 	++ ~Well, it's... (tell her who it is)~ + t6.18
	+ ~Global("C0SireneMatch","GLOBAL",1)~ + ~Um, well... I can't say it.~ + t6.19
	++ ~I'd rather not say.~ + t6.19
END

IF ~~ t6.17
 SAY ~Well... perhaps. Though is it so surprising, coming from a background as I do?~
 = ~Perhaps 'tis a personal weakness, to have such a desperate need for friendship.~
 = ~Is it wrong, <CHARNAME>?~
	++ ~Not at all, I am the same way.~ + t6.17a
	++ ~I'm not sure.~ + t6.17b
	++ ~Maybe. You do trust too easily, sometimes.~ + t6.17c
END

IF ~~ t6.17a
 SAY ~(smile) Then I am glad that I met you.~
IF ~~ + t6.20
END

IF ~~ t6.17b
 SAY ~(sigh) I had not expected an answer regardless. Thank you for listening, at least.~
IF ~~ + t6.20
END

IF ~~ t6.17c
 SAY ~Perhaps you are right. Thank you for your honesty.~
IF ~~ + t6.20
END

IF ~~ t6.18
 SAY ~I see. (smile) I appreciate that you trust me enough to tell me so, my friend. Don't worry, I will not betray your secret.~
IF ~~ DO ~SetGlobal("C0SireneMatch","GLOBAL",2)~ EXIT
END

IF ~~ t6.19
 SAY ~(She raises an eyebrow.)~
 = ~Fair enough, but you are a strange <PRO_MANWOMAN> sometimes, do you know that?~
IF ~~ + t6.20
END

IF ~~ t6.20
 SAY ~...~
 = ~Thank you for you company, <CHARNAME>. The hour is late, and 'twould be best for us to retire to our rooms now.~
	++ ~Care to share this last drink first?~ + t6.21
	++ ~You're right. It will be a long day tomorrow.~ + t6.22
	++ ~It wouldn't hurt to talk some more.~ + t6.23
	+ ~Gender(Player1,MALE) Global("C0SireneMatch","GLOBAL",1)~ + ~Would you care to stay with me tonight?~ + t6.24a
	+ ~Gender(Player1,FEMALE) Global("C0SireneMatch","GLOBAL",1)~ + ~Would you care to stay with me tonight?~ + t6.24b
	++ ~Agreed.~ + t6.25
END

IF ~~ t6.21
 SAY ~'Twould be discourteous of me to refuse...~
= ~To you, <CHARNAME>.~ 
IF ~~ + t6.25
END

IF ~~ t6.22
 SAY ~Aye, I know.~
IF ~~ + t6.25
END

IF ~~ t6.23
 SAY ~(laugh) For you, perhaps, but 'twould be a disaster if I were to fight tomorrow while fatigued. I shall have to decline.~
IF ~~ + t6.25
END

IF ~~ t6.24a
 SAY ~I... cannot, <CHARNAME>.~
 = ~(She looks away from you as though afraid of meeting your gaze.)~
 = ~(sigh) You should not test me so, <CHARNAME>. I do not blame you, but... I would rather you not bring this up again.~ 
IF ~~ + t6.25
END

IF ~~ t6.24b
 SAY ~I... cannot, <CHARNAME>.~
 = ~(She looks away from you as though afraid of meeting your gaze.)~
	++ ~Is it because I am a woman?~ + t6.26
END

IF ~~ t6.25
 SAY ~I will not keep you any longer, my friend. Rest well.~
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ t6.26
 SAY ~No, it has nothing to do with that, I am simply...~
 = ~(sigh) You should not test me so, <CHARNAME>. I do not blame you, but... I would rather you not bring this up again.~ 
IF ~~ + t6.25
END
END

// 7

CHAIN IF ~Global("C0SireneTalksBG1","GLOBAL",14)~ THEN C0SIRENJ t7
~<CHARNAME>, as a ward of Candlekeep, did you read often?~
DO ~IncrementGlobal("C0SireneTalksBG1","GLOBAL",1)
RealSetGlobalTimer("C0SireneTalksBG1Timer","GLOBAL",2700)~
END
	+ ~Class(Player1,BARD_ALL)~ + ~Naturally. A bard needs all sorts of knowledge to succeed.~ + t7.1
	+ ~Class(Player1,MAGE_ALL)~ + ~Naturally. Mostly arcane texts and ancient lore, though.~ + t7.1
	+ ~CheckStatGT(Player1,9,INT)~ + ~Of course. There wasn't much else to do.~ + t7.2
	+ ~CheckStatGT(Player1,9,INT)~ + ~I hate reading. Gorion always made me read, every day.~ + t7.3
	+ ~CheckStatGT(Player1,9,INT)~ + ~Not really. I'm more an active person.~ + t7.2
	+ ~CheckStatLT(Player1,10,INT)~ + ~Well, I, er... can't read, actually.~ + t7.4
	++ ~I don't feel like talking right now.~ + t7.0
	
APPEND C0SIRENJ

IF ~~ t7.0
 SAY ~As you wish. 'Twas but a flight of fancy.~
IF ~~ EXIT
END

IF ~~ t7.1
 SAY ~Aye, I should have guessed.~
IF ~~ + t7.2
END

IF ~~ t7.2
 SAY ~'Twas merely out of curiosity that I asked. There were many books within the library of my church, and I oft loaned them out of curiosity during my spare hours. ~
 = ~Many of my fellow wards cared little for reading, of course. They preferred to play and fight in the fields, but 'twas a pleasant form of peace for me.~
	++ ~Come to think of it, your way of talking is unusual. Did you learn that from books?~ + t7.5
	++ ~What sorts of books did you enjoy reading?~ + t7.6
	+ ~CheckStatGT(Player1,9,INT)~ + ~I think I know what you mean. Nothing calms me quite like a good book.~ + t7.7
	+ ~CheckStatLT(Player1,10,INT)~ + ~I know. To tell the truth, I rather regret never learning to read. It would have saved me a great deal of stress.~ + t7.8	
	++ ~Whatever. I'd rather not talk about reading.~ + t7.0
END

IF ~~ t7.3
 SAY ~(laugh) Is that so? I can see how it could become a chore.~
IF ~~ + t7.2
END

IF ~~ t7.4
 SAY ~Do you mean that, truly? Forgive me, then, 'twas callous to ask. Do not be ashamed, my friend. I am not the finest reader myself.~
IF ~~ + t7.2
END

IF ~~ t7.5
 SAY ~Aye, that I did. Though I was tutored in Common by the priests, I consider books my true teachers. They feel... for lack of a finer term, they feel less distant.~
IF ~~ + t7.6
END

IF ~~ t7.6
 SAY ~There were many choices within the church. Romances, histories, religion, however...~
 = ~(smile) 'Tis childish of me to say, I suppose, but my favorites were the epics and fairy tales. 'Twas the happy endings many of them had, I suppose, that charmed me.~
 = ~Perhaps I am jealous of that. Or perhaps I am still but a child. (sigh)~
	++ ~Not at all. I enjoy a happy ending myself.~ + t7.9
	++ ~It's still possible for you to make your own.~ + t7.10
	+ ~Global("C0SireneMatch","GLOBAL",1)~ + ~I personally love the tales of the knight and the maiden, myself.~ + t7.11
	++ ~Have you ever imagined yourself as one of those heroes?~ + t7.12
END

IF ~~ t7.7
 SAY ~Aye, then you understand my words exactly, <CHARNAME>.~
IF ~~ + t7.6
END

IF ~~ t7.8
 SAY ~'Tis never too late to learn, <CHARNAME>. You still have many years before you, after all.~
IF ~~ + t7.6
END

IF ~~ t7.9
 SAY ~Indeed. 'Tis a shame we do not have enough in our true lives.~
IF ~~ + t7.13
END

IF ~~ t7.10
 SAY ~Perhaps... my hopes are not high, but you may be right, <CHARNAME>.~
IF ~~ + t7.13
END

IF ~~ t7.11
 SAY ~(laugh) I imagine you find yourself living one right now, perhaps.~
 = ~(She hesitates, as though unsure of what she said, then continues laughing.)~
 = ~Now I have reduced myself to teasing. 'Tis your influence, <CHARNAME>, I am certain of it.~
IF ~~ + t7.13
END

IF ~~ t7.12
 SAY ~Oh, many times, do not doubt. A girl has many fantasies, after all...~
IF ~~ + t7.13
END

IF ~~ t7.13
 SAY ~Sometimes I chastise myself, <CHARNAME>. Our lives are not a fairy tale, after all...~
 = ~The suffering and pain we must endure in life are all too real, that I know as a servant of Ilmater. But still I hope that all the hardships we endure are worth it. What are your thoughts, <CHARNAME>?~
	++ ~I'm not sure.~ + t7.14
	+ ~!Global("C0SireneMatch","GLOBAL",1)~ + ~There's reason to go on. I'm sure of it.~ + t7.15
	+ ~Global("C0SireneMatch","GLOBAL",1)~ + ~There's reason to go on. I'm sure of it.~ + t7.15a
	++ ~You're far too idealistic.~ + t7.16
	++ ~There is only hope if you believe in it, Sirene.~ + t7.17
END

IF ~~ t7.14
 SAY ~Then our only choice is to persevere, is it not?~
IF ~~ + t7.18
END

IF ~~ t7.15
 SAY ~I wish...~
IF ~~ + t7.18
END

IF ~~ t7.15a
 SAY ~(smile) Your idealism is a beautiful thing, my friend. We can only hope 'tis the truth.~
IF ~~ + t7.18
END

IF ~~ t7.16
 SAY ~Perhaps I am...~
IF ~~ + t7.18
END

IF ~~ t7.17
 SAY ~That may also be true, I suppose...~
IF ~~ + t7.18
END

IF ~~ t7.18
 SAY ~That is enough of your time I have wasted, <CHARNAME>. Thank you. 'Tis always a pleasure to speak with you.~
IF ~~ EXIT
END
END

// 8. Chapter 4

CHAIN IF ~Global("C0SireneTalksBG1Chapter4","GLOBAL",2)~ THEN C0SIRENJ t8
~'Twould seem that our enemies have finally become aware of our interference, my friend. Things are likely about to change.~
DO ~SetGlobal("C0SireneTalksBG1Chapter4","GLOBAL",3)
RealSetGlobalTimer("C0SireneTalksBG1Timer","GLOBAL",2700)~
END
	++ ~You just realized? I figured that out since the assassins started coming for me.~ + t8.1
	++ ~Aye, and if so, then our mission may have become more difficult.~ + t8.2
	++ ~So what? Let them know, and fear, as I'm coming for them.~ + t8.3
	++ ~We are at a disadvantage, then, for we still have little knowledge of who or where our enemies truly are.~ + t8.4
	++ ~I don't feel like talking right now.~ + t8.0

APPEND C0SIRENJ

IF ~~ t8.0
 SAY ~As you wish.~
IF ~~ EXIT
END

IF ~~ t8.1
 SAY ~I had not considered that the two may have been related, in truth. If that is so, then perhaps they had expected you to act against them for some time now.~
IF ~~ + t8.5
END

IF ~~ t8.2
 SAY ~Perhaps, though it may still be a good thing overall, as 'twould means we pose a genuine threat towards them.~
IF ~~ + t8.5
END

IF ~~ t8.3
 SAY ~(smile) I fear you are approaching overconfidence, <CHARNAME>, though the idea of our foes quivering in their boots is comforting, I admit.~
IF ~~ + t8.5
END

IF ~~ t8.4
 SAY ~'Tis the sad truth, I'm afraid. (sigh)~
IF ~~ + t8.5
END

IF ~~ t8.5
 SAY ~Are you worried, <CHARNAME>?~
	++ ~Why would I be?~ + t8.6
	++ ~Maybe. A little.~ + t8.7
	++ ~No.~ + t8.8
END

IF ~~ t8.6
 SAY ~'Tis more than mere bandits or kobolds you are facing now. We know little of the nature of our enemies, but they have already shown what they are capable of. Assassins, bandits, Cyricists... all under their command.~
 = ~Perhaps 'tis not the best of times to say so, but I have spent my travels seeking those in need of help. To destroy evil... though I consider it my duty, I am still unaccustomed to the great task that is ahead of us.~
 = ~I would not call myself craven, of course, but neither am I a paragon of courage. 'Tis shameful of me to admit.~
	++ ~You're stronger than you think. We can do this.~ + t8.9
	++ ~If you're scared, I can't even explain how I feel.~ + t8.10
	++ ~Maybe you're not cut out for this after all?~ + t8.11
	+ ~Global("C0SireneMatch","GLOBAL",1)~ + ~(Take her hand encouragingly.)~ + t8.12
END

IF ~~ t8.7
 SAY ~'Tis no shame to admit as much, <CHARNAME>.~
IF ~~ + t8.6
END

IF ~~ t8.8
 SAY ~Is that so? Then you are a braver person than I.~
IF ~~ + t8.6
END

IF ~~ t8.9
 SAY ~I truly hope so.~
IF ~~ EXIT
END

IF ~~ t8.10
 SAY ~'Tis not fear that I feel, <CHARNAME>, but apprehension.~
IF ~~ EXIT
END

IF ~~ t8.11
 SAY ~Do not tell me that! I did not mean-~
 = ~(sigh) Forgive me, <CHARNAME>. 'Twas spoken in haste. Just do not say such a thing again.~
IF ~~ EXIT
END

IF ~~ t8.12
 SAY ~(She almost withdraws but eventually grasps your hand.)~
 = ~Thank you for your support, <CHARNAME>.~
IF ~~ EXIT
END
END

// 9  Chapter 5

CHAIN IF ~Global("C0SireneTalksBG1Chapter5","GLOBAL",2)~ THEN C0SIRENJ t9
~(sigh) I have never been more glad to see the end of things. Though I suspect our troubles have only begun.~
= ~I fear that we may be facing an evil greater than our imagination, <CHARNAME>. Are you concerned?~
DO ~SetGlobal("C0SireneTalksBG1Chapter5","GLOBAL",3)
RealSetGlobalTimer("C0SireneTalksBG1Timer","GLOBAL",2700)~
END
	++ ~Yes. It seems this whole crisis is immersed with politics, as well.~ + t9.1
	++ ~The idea that our enemies have been operating under our noses is frightening, I admit.~ + t9.2
	++ ~Not really. We find another man like Davaeorn, we kill them.~ + t9.3
	
APPEND C0SIRENJ

IF ~~ t9.1
 SAY ~If that is so, then things have become infinitely more complicated, <CHARNAME>. Politics can not be fought with weapons, and I know not what is the best move currently.~
IF ~~ + t9.4
END

IF ~~ t9.2
 SAY ~Indeed. I had thought that this whole situation was much simpler, but 'twould seem that someone has masterminded everything we have seen thus far.~
IF ~~ + t9.4
END

IF ~~ t9.3
 SAY ~(sigh) Were it so easy, my friend.~
IF ~~ + t9.4
END

IF ~~ t9.4
 SAY ~<CHARNAME>, I can only trust in your leadership as of now. I have never faced an evil as great as this, nor as clever. Were you not here, I would feel helpless to try and stop all this.~
	++ ~We need to head for Baldur's Gate. It seems like that's where our enemies hide.~ + t9.5
	++ ~If you feel overwhelmed, you could always leave.~ + t9.6
	++ ~(sigh) I wish evil was simpler sometimes.~ + t9.7
END

IF ~~ t9.5
 SAY ~Aye, this Iron Throne that these letters mention. I cannot imagine what organization of evil they must be, to have engineered such practices as slavery and banditry.~
IF ~~ + t9.8
END

IF ~~ t9.6
 SAY ~I cannot. 'Tis my duty to face such things, though I had never expected such... difficulty.~
IF ~~ + t9.8
END

IF ~~ t9.7
 SAY ~Aye, though I fear 'twould not be half as dangerous if it were simple, unfortunately.~
IF ~~ + t9.8
END

IF ~~ t9.8
 SAY ~I have not travelled between the Sword Coast and Amn for long, <CHARNAME>, but I have learned enough to know that tension between Baldur's Gate and Amn has existed long before this crisis began.~
 = ~Should things continue, there would be no doubt that war would break out, and in that I am confused... what man, good or evil, would willingly provoke a war?~
	++ ~Madmen, sociopaths. They must be stopped.~ + t9.9
	++ ~I'm not sure.~ + t9.10
	++ ~There will always be someone who benefits from such things.~ + t9.11
	++ ~I don't really care.~ + t9.12
END

IF ~~ t9.9
 SAY ~As you say, <CHARNAME>.~
IF ~~ + t9.10
END

IF ~~ t9.10
 SAY ~(sigh) I should not have expected things to end so easily. Nashkel, Cloakwood, Baldur's Gate... how far must we go, <CHARNAME>, before we finally find an end to it all?~
 = ~When I took my vows to Ilmater, I had not expected things to become so complicated. 'Tis naive of me to believe so, I suppose.~
 = ~I have struck down evil men in the past, but theirs was born of greed, fear, vengeance... but *this*, I see no cause behind it all.~
 = ~'Tis evil for its own sake, far as I can see. I had not believed such a thing existed.~
	++ ~It's a horrifying thought, I agree.~ + t9.13
	++ ~Do you feel regret for those you've slain in the past, then?~ + t9.14
	++ ~I'd rather not talk about the moral aspect of all this.~ + t9.12
END

IF ~~ t9.11
 SAY ~A horrible thought, but true, I suppose. Though only a truly evil man would ignore the cost.~
IF ~~ + t9.10
END

IF ~~ t9.12
 SAY ~(sigh) Then I shall keep these thoughts to myself. I do not mean to burden you with my concerns.~
IF ~~ EXIT
END

IF ~~ t9.13
 SAY ~There is yet much I do not know about the hearts of men, I suppose.~
 = ~I have said all that I wish to, my friend. Whatever comes next, I shall aid you, no matter what it takes.~
IF ~~ EXIT
END

IF ~~ t9.14
 SAY ~No! Ilmater forbid it, I dare not consider such a thing. Though, now that you mention it, I cannot deny that doubt plagues me. There is yet much I do not know about the hearts of men, I suppose.~
 = ~I have said all that I wish to, my friend. Whatever comes next, I shall aid you, no matter what it takes.~
IF ~~ EXIT 
END

END

// 10  Baldur's Gate

CHAIN IF ~Global("C0SireneTalksBG1BaldursGate","GLOBAL",2)~ THEN C0SIRENJ t10
~Baldur's Gate at last. (sigh) 'Tis a beautiful city, I admit, but I can see the dark shadow looming over it at a glance.~
DO ~SetGlobal("C0SireneTalksBG1BaldursGate","GLOBAL",3)
RealSetGlobalTimer("C0SireneTalksBG1Timer","GLOBAL",2700)~
END
	++ ~Indeed. Something is amiss.~ + t10.1
	++ ~What are you talking about?~ + t10.2
	++ ~I don't see anything.~ + t10.2
	++ ~Do you see that massive building to the south?~ + t10.3
	++ ~Not the time, Sirene.~ EXIT

APPEND C0SIRENJ

IF ~~ t10.1
 SAY ~People are afraid. They fear for war, yet are not aware of the true danger.~
IF ~~ + t10.4
END

IF ~~ t10.2
 SAY ~I speak of fear, <CHARNAME>. Do you not see it? People are afraid, and they do not care to hide it. They fear for war, yet are not aware of the true danger.~
IF ~~ + t10.4
END

IF ~~ t10.3
 SAY ~I do. The walls, dark as iron itself... it must be the Iron Throne. Our enemies are close.~
 = ~But look at the people. The fear of war is clear in their eyes.~
IF ~~ + t10.4
END

IF ~~ t10.4
 SAY ~I fear the damage may already have been done, <CHARNAME>.~
	++ ~Don't say that. There's still a chance.~ + t10.5
	++ ~That may be, but we still have to try.~ + t10.6
	++ ~We can still stop them from causing more.~ + t10.6
	++ ~What do you propose we do?~ + t10.7
	++ ~Then there is no time to waste.~ EXIT
END

IF ~~ t10.5
 SAY ~I hope you are right.~
IF ~~ + t10.7
END

IF ~~ t10.6
 SAY ~Aye... you are correct. Even if our efforts become for naught, we must still try.~
IF ~~ + t10.7
END

IF ~~ t10.7
 SAY ~We must make haste, <CHARNAME>, and find the instigators behind all this evil before all is lost. I shudder to imagine the results should war truly break out between Amn and Baldur's Gate.~
	++ ~The Throne has the law behind them, though. We can't just act without thinking.~ + t10.8
	++ ~That may be just what they're expecting us to do.~ + t10.8
	++ ~I intend to do so.~ EXIT
END

IF ~~ t10.8
 SAY ~No... no, that is true. Forgive me, I spoke without considering. I trust that you know best, my friend.~
IF ~~ EXIT
END
END

// 11. Entering Candlekeep.

CHAIN IF ~Global("C0SireneTalksBG1Candlekeep","GLOBAL",2)~ THEN C0SIRENJ t11
~So, this is the great library of Candlekeep. 'Tis majestic indeed.~
DO ~SetGlobal("C0SireneTalksBG1Candlekeep","GLOBAL",3)
RealSetGlobalTimer("C0SireneTalksBG1Timer","GLOBAL",2700)~
END
	++ ~I've missed this place.~ + t11.1
	++ ~Just wait until you see the rest of it.~ + t11.2
	++ ~And boring.~ + t11.3
	++ ~I wish it were under different circumstances.~ + t11.4
	++ ~Now's not the time for this.~ + t11.0

APPEND C0SIRENJ

IF ~~ t11.0
 SAY ~Aye. Our quarry lies within these halls, I have not forgotten. Lead on.~
IF ~~ EXIT
END

IF ~~ t11.1
 SAY ~It has been a long journey for you to return home, has it not?~
IF ~~ + t11.5
END

IF ~~ t11.2
 SAY ~(laugh) I await with bated breath, <CHARNAME>.~
IF ~~ + t11.5
END

IF ~~ t11.3
 SAY ~Aye, you know better than I, after all, though I would like to explore this place regardless.~
IF ~~ + t11.5
END

IF ~~ t11.4
 SAY ~So do I.~
IF ~~ + t11.5
END

IF ~~ t11.5
 SAY ~I had just thought of my church... 'twas nothing like this, and I would not call it my home.~
 = ~There is something beautiful and sacred in the peaceful order within these halls, built into the stones themselves. You may not feel it, but for once, I feel at peace, here.~
	++ ~Stay a while longer. The chants of the monks will drive you insane eventually.~ + t11.6
	++ ~I know. I've many fond memories of this place.~ + t11.7
	++ ~I have no idea what you're talking about.~ + t11.8
	++ ~We're not here to relax, Sirene.~ + t11.0
END

IF ~~ t11.6
 SAY ~(She laughs somewhat reluctantly.)~
 = ~Perhaps you are right. Given enough time, I may feel a sense of unrest, but...~
IF ~~ + t11.7
END

IF ~~ t11.7	
 SAY ~I hope we could perhaps remain longer... or return, once our struggle against the Iron Throne has ended.~
	++ ~Absolutely.~ + t11.9
	++ ~Maybe. There may be more important things in the future.~ + t11.10
	+ ~Global("C0SireneMatch","GLOBAL",1)~ + ~Anything to make you happy.~ + t11.11
	++ ~No way. I've wanted to be away from this place since forever.~ + t11.12
END

IF ~~ t11.8
 SAY ~No, neither do I, sometimes.~
IF ~~ + t11.7
END

IF ~~ t11.9
 SAY ~Thank you, my friend. But more important business awaits us, first.~
IF ~~ EXIT
END

IF ~~ t11.10
 SAY ~That is a truth as well. (sigh) Let us go through with what we came for, then.~
IF ~~ EXIT
END

IF ~~ t11.11
 SAY ~(She blushes slightly.) Thank you, <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ t11.12
 SAY ~(sigh) If 'tis your wish, I would not force you.~
IF ~~ EXIT
END
END

// 12. Gorion's Letter

CHAIN IF ~Global("C0SireneTalksBG1Bhaalspawn","GLOBAL",2)~ THEN C0SIRENJ t12
~<CHARNAME>, may we talk?~
DO ~SetGlobal("C0SireneTalksBG1Bhaalspawn","GLOBAL",3)
RealSetGlobalTimer("C0SireneTalksBG1Timer","GLOBAL",2700)~
END
	++ ~...~ + t12.1
	++ ~About what? The letter?~ + t12.2
	++ ~There's nothing to say.~ + t12.3

APPEND C0SIRENJ

IF ~~ t12.1
 SAY ~I will not judge. Do you think that I have the right? Hah, I would sound hypocritical to do so.~
 = ~Nay, I know too well how it is to be judged, and how much suffering that can cause to one without support or trust.~
IF ~~ + t12.4
END

IF ~~ t12.2
 SAY ~Yes. About... that.~
IF ~~ + t12.1
END

IF ~~ t12.3
 SAY ~Regardless, please lend me an ear a moment, if you will.~
IF ~~ + t12.1
END

IF ~~ t12.4
 SAY ~But... this is far beyond what I'm used to. You are among friends now, but if others were to know...~
	++ ~...then I would end up like you?~ + t12.5
	++ ~They won't. I'll make sure of that.~ + t12.6
	++ ~So what? I want them to know.~ + t12.7
	++ ~I don't want to talk about this. Not yet.~ + t12.8
END

IF ~~ t12.5
 SAY ~(sigh) Yes, exactly.~ 
IF ~~ + t12.9
END

IF ~~ t12.6
 SAY ~You cannot hide this forever, <CHARNAME>. You may not have horns or fiendish eyes as I do, but...~
IF ~~ + t12.9
END

IF ~~ t12.7
 SAY ~Do you truly? Bhaal was no small power in his life, <CHARNAME>. If others were to know, there would be many who seek your death. Is that the life you would prefer to live?~ 
IF ~~ + t12.9
END

IF ~~ t12.8
 SAY ~I understand. But please, do not suffer in silence. If the burden of this knowledge causes you distress, please talk.~
IF ~~ EXIT
END

IF ~~ t12.9
 SAY ~Forgive me, <CHARNAME>. I can think of nothing to say that would relieve you of what you must feel right now. As a servant of Ilmater, to be helpless to relieve you of your burden... I don't care for the feeling of uselessness, to say the least.~ 
 = ~If it means anything, I'm willing to remain at your side, regardless of this revelation. If nothing else, I can attempt to keep you on the right path, though I would not be so arrogant as to dictate you. Though the idea of one such as you having the seed of evil is horrifying... I will not neglect my duty.~
	++ ~Thank you, Sirene.~ + t12.10
	++ ~It is not necessary.~ + t12.11
	++ ~Do you think I care? Step back in line.~ + t12.12
END

IF ~~ t12.10
 SAY ~'Tis not a problem, <CHARNAME>.~
IF ~Alignment(Player1,MASK_GOOD)~ + t12.13
IF ~!Alignment(Player1,MASK_GOOD)~ EXIT
END

IF ~~ t12.11
 SAY ~But 'tis my wish, <CHARNAME>.~
IF ~Alignment(Player1,MASK_GOOD)~ + t12.13
IF ~!Alignment(Player1,MASK_GOOD)~ EXIT
END

IF ~~ t12.12
 SAY ~As you wish.~
IF ~~ EXIT
END

IF ~~ t12.13
 SAY ~I believe in you, my friend. You are a good person, and I'm confident that you will not do anything against your nature. Perhaps in the future, that may change, but... nay, I shudder to imagine it.~
IF ~~ EXIT
END
END

// 12. Post-Candlekeep, in Baldur's Gate
CHAIN IF ~Global("C0SireneTalksBG1","GLOBAL",16)~ THEN C0SIRENJ t12
~The webs of intrigue in this city thicken, <CHARNAME>. Is it not overwhelming?~
= ~If I were in your shoes, I would not know my path from here on. I suppose I can only believe in you, and hope that will suffice.~
DO ~IncrementGlobal("C0SireneTalksBG1","GLOBAL",1)
RealSetGlobalTimer("C0SireneTalksBG1Timer","GLOBAL",2700)~
END
	++ ~You give me too much credit.~ + t13.1
	++ ~I'll get us through all of this, I promise.~ + t13.2
	++ ~I feel the same. Part of me wants to just run away and leave it all behind.~ + t13.3
	
APPEND C0SIRENJ

IF ~~ t13.1
 SAY ~(smile) Perhaps you give yourself too little.~
IF ~~ + t13.4
END

IF ~~ t13.2
 SAY ~I believe you, my leader.~
IF ~~ + t13.4
END

IF ~~ t13.3
 SAY ~There is nothing stopping you, you know. Although I would obviously prefer it if you did not.~
IF ~~ + t13.4
END

IF ~~ t13.4
 SAY ~Though there have been difficulties, you have not led us astray. I admit, part of me thought things would be different since your unpleasant revelation, but... I have rarely been more glad to be wrong.~
 = ~I only hope that all our efforts will not be for naught. For all we know, it may all be too late.~
	++ ~If it is, we simply set it right again.~ + t13.5
	++ ~It won't be. I just know it.~ + t13.5
	++ ~So what if it is?~ + t13.6
	++ ~Aye, and 'tis frightening, that our opponent has played his hand so well, and caught us all upon his board...~ + t13.7
END

IF ~~ t13.5
 SAY ~Ha, you are too confident sometimes, my friend, 'tis almost discomforting. But your words do give me hope.~
IF ~~ + t13.8
END

IF ~~ t13.6
 SAY ~I fear for the suffering that may follow should our quarry succeed.~
IF ~~ + t13.8
END

IF ~~ t13.7
 SAY ~I second the thought. We must move fast to avoid a checkmate.~
IF ~~ + t13.8
END

IF ~~ t13.8
 SAY ~Ah, I never thought I would actually miss the days I travelled the Sword Coast as a lone pilgrim, doing the simple things in helping those in need, taking up the suffering of others. 'Tis true what they say... you miss the things you take for granted when they're gone.~
	++ ~I never thought I'd miss Candlekeep either, to be honest.~ + t13.9
	++ ~We have bigger things to worry about, now.~ + t13.10
	++ ~It's never too late to turn back.~ + t13.11
	++ ~We should carry on.~ + t13.12
END
	
IF ~~ t13.9
 SAY ~I am surprised you can still say that, considering the horror you experienced during your return. Memories run deep indeed...~
IF ~~ + t13.13
END

IF ~~ t13.10
 SAY ~Yes... you're right. We're finally coming to a close, and our most dangerous foes await us.~
IF ~~ + t13.13
END

IF ~~ t13.11
 SAY ~Oh, I have no doubt that I could, if I truly desired to. But would Ilmater forgive me for it?~
 = ~(laugh) I should not think such things. After all, I have long accepted that my wishes are ephemeral, especially now.~
IF ~~ + t13.13
END

IF ~~ t13.12
 SAY ~You're right.~
IF ~~ + t13.13
END

IF ~~ t13.13
 SAY ~Look at me, blathering when we have more important things to do. Thank you for your time, <CHARNAME>... it gives me some peace of mind. I do enjoy conversing with you.~
IF ~Global("C0SireneMatch","GLOBAL",1)~ + t13.14
IF ~!Global("C0SireneMatch","GLOBAL",1)~ EXIT
END

IF ~~ t13.14
 SAY ~Sometimes I wonder... no, hold that thought. I'll save it for another time. Continue, my brave and wise leader.~
IF ~~ EXIT
END

END

// 13.
CHAIN IF ~Global("C0SireneTalksBG1Undercity","GLOBAL",1)~ THEN C0SIRENJ t13
~The end awaits. Your... brother awaits you, <CHARNAME>. How do you feel?~
DO ~IncrementGlobal("C0SireneTalksBG1Undercity","GLOBAL",2)~
END
	++ ~Don't call him that.~ + t14.0
	++ ~Uncomfortable.~ + t14.1
	++ ~Glad. Gorion will be avenged.~ + t14.2
	++ ~Nothing. He needs to be brought down. That's the fact.~ + t14.3
	++ ~How do you think I should feel?~ + t14.4

APPEND C0SIRENJ

IF ~~ t14.0
 SAY ~Forgive me. I understand 'tis difficult to know that you share blood with that man, even if 'tis divine. I would ask you still, though.~
	++ ~Uncomfortable.~ + t14.1
	++ ~Glad. Gorion will be avenged.~ + t14.2
	++ ~Nothing. He needs to be brought down. That's the fact.~ + t14.3
	++ ~How do you think I should feel?~ + t14.4
END

IF ~~ t14.1
 SAY ~You have the right. After all, the bonds of family, whether or mortal and divine, tug at your conscience, even if you tell yourself otherwise, no?~
 = ~You are capable of it, my friend. I know this, for you have already proven that you are stronger of character than I am. Were I given the task to slay my brother, had I one...~ 
IF ~~ + t14.5
END

IF ~~ t14.2
 SAY ~You will be given that opportunity soon. I would pray that you find the satisfaction you seek, but if it were me...~
IF ~~ + t14.5
END

IF ~~ t14.3
 SAY ~Then you are a <PRO_MANWOMAN> of greater conviction than I. If I were to slay my own brother...~
IF ~~ + t14.5
END

IF ~~ t14.4
 SAY ~'Tis not my place to say, <CHARNAME>. Were I tasked to slay my own blood brother, even if I never met him, and he were as evil as this man...~
IF ~~ + t14.5
END

IF ~~ t14.5
 SAY ~I could not do it. Not easily, in any case. I would defeat him, perhaps, and gaze into his eyes, seeking for why, and feel sadness losing the family I never knew.~
 = ~But this is not about me, is it? My concerns, as of now, are of no importance. Your task is infinitely more important. In case things... do not end as well as I hope, I would thank you for your friendship for all this time.~
	++ ~I should thank you for staying with me all this time.~ + t14.6
	++ ~You'll be remembered as a hero too.~ + t14.7
	+ ~Global("C0SireneMatch","GLOBAL",1)~ + ~You are more than a friend to me, Sirene.~ + t14.8
	++ ~You'll have your chance at being important one day.~ + t14.9
END

IF ~~ t14.6
 SAY ~I would have it no other way, my friend.~
IF ~~ + t14.10
END

IF ~~ t14.7
 SAY ~A part of me still doubts it, but you make it actually sound possible, <CHARNAME>.~
IF ~~ + t14.10
END

IF ~~ t14.8
 SAY ~(smile) Thank you, <CHARNAME>.~
IF ~~ + t14.10
END

IF ~~ t14.9
 SAY ~Aye, perhaps.~
IF ~~ + t14.10
END

IF ~~ t14.10
 SAY ~When this is over... I think I would resume my travels on my own for a time, if you will accept it. Not that I haven't enjoyed your company, <CHARNAME>, few could not- I simply need some time to myself. I do not wish to become dependent on your company, though it has been a joy to be in your service.~
	++ ~I don't see why not.~ + t14.11
	++ ~Your help may still be needed.~ + t14.12
	+ ~Global("C0SireneMatch","GLOBAL",1)~ + ~But... I don't want you to leave.~ + t14.14
	++ ~After all this, you just want to leave?~ + t14.13
END

IF ~~ t14.11
 SAY ~I appreciate it.~
 = ~This is not goodbye, <CHARNAME>, no, absolutely not. We will meet again, I am sure of it.~
IF ~~ + t14.15
END

IF ~~ t14.12
 SAY ~(smile) You're hardly short of friends as is, <CHARNAME>, but you'll still have me when you need me.~
IF ~~ + t14.15
END

IF ~~ t14.13
 SAY ~I am not leaving, <CHARNAME>, not truly. You'll still have me when you need me.~
IF ~~ + t14.15
END

IF ~~ t14.14
 SAY ~I understand, <CHARNAME>. A part of me also wishes to stay, but I think 'twould be best to part for a while.~
 = ~This is not goodbye, my friend. 'Tis a strange feeling, but I have come to... care for you. I know we will meet again.~
 = ~(Hesitantly, she draws you forward and kisses your cheek, pressing something into your hand.)~
IF ~~ + t14.15
END

IF ~~ t14.15
 SAY ~Here- take this red cord and bind it around your sword arm's wrist, as a keepsake. Ilmater's symbol will give you his blessing. A crude representative, perhaps, but if your heart is true, you will succeed.~
 = ~May we live to see the next day... my friend.~
IF ~~ EXIT
END
END

// ---------------------------------------------
// INTERJECTIONS
// ---------------------------------------------

// Marl

INTERJECT MARL 2 C0SireneMARL
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~Wait, <CHARNAME>! Please, do not harm the man, he is clearly in grief.~
END
++ ~Fine. You talk him out of it.~ DO ~SetGlobal("C0SireneMarl","GLOBAL",1)~ EXTERN C0SIRENJ C0SireneMARL1
++ ~He started this!~ EXTERN MARL C0SireneMARL2

INTERJECT MARL 7 C0SireneMARL
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~Wait, <CHARNAME>! Please, do not harm the man, he is clearly in grief.~
END
++ ~Fine. You talk him out of it.~ DO ~SetGlobal("C0SireneMarl","GLOBAL",1)~ EXTERN C0SIRENJ C0SireneMARL1
++ ~He started this!~ EXTERN MARL C0SireneMARL2

INTERJECT MARL 8 C0SireneMARL8
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~Wait, <CHARNAME>! Please, do not harm the man, he is clearly in grief.~
END
++ ~Fine. You talk him out of it.~ DO ~SetGlobal("C0SireneMarl","GLOBAL",1)~ EXTERN C0SIRENJ C0SireneMARL1
++ ~He started this!~ EXTERN MARL C0SireneMARL2

INTERJECT MARL 14 C0SireneMARL14
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~Wait, <CHARNAME>! Please, do not harm the man, he is clearly in grief.~
END
++ ~Fine. You talk him out of it.~ DO ~SetGlobal("C0SireneMarl","GLOBAL",1)~ EXTERN C0SIRENJ C0SireneMARL1
++ ~He started this!~ EXTERN MARL C0SireneMARL2

CHAIN C0SirenJ C0SireneMARL1
~Please, good man. I sense great pain that you mask behind anger, but I beseech you, calm yourself.~
DO ~SetGlobal("C0SireneMarl","GLOBAL",2)~
== MARL ~You?! You're the bloody demon the Fist beat outta the town days ago! Why in the Nine Hells should I listen to you?~
== C0SIRENJ ~I am a follower of Ilmater, and 'tis my task to ease the suffering of others. Please believe me, I mean you no harm.~
== MARL ~...~
== C0SIRENJ ~You have lost someone dear to you, I can see it. But to display your grief through such rage will never bring you peace.~
== MARL ~I... but my son-~
== C0SIRENJ ~Would he wish to see you dishonor his memory by such means?~
== MARL ~...~
== DUNKIN ~Listen to the lady, Marl. The mayor told you the same thing, remember?~
== MARL ~...fine. Just stay outta my face.~
DO ~ChangeClass(Myself,INNOCENT)
AddexperienceParty(900)
AddJournalEntry(27254,INFO)~
== C0SIRENJ ~Go in peace. May Ilmater bless you, and your son in the afterlife as well.~
END
++ ~Well done.~ EXTERN C0SIRENJ C0SireneMARL3
++ ~I thought you weren't good with people, Sirene.~ EXTERN C0SIRENJ C0SireneMARL4
++ ~What a shame. I was itching for a fight.~ EXTERN C0SIRENJ C0SireneMARL5

APPEND MARL

IF ~~ C0SireneMARL2
 SAY ~I'll put you into the ground!~
IF ~~ DO ~Enemy()~ EXIT
END
END

APPEND C0SIRENJ

IF ~~ C0SireneMARL3
 SAY ~Nay, I should thank you, <CHARNAME>, for being merciful.~
IF ~~ EXIT
END

IF ~~ C0SireneMARL4
 SAY ~Perhaps, though when 'tis my duty I must put that aside for the time being. Let us not bother the man, <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ C0SireneMARL5
 SAY ~That may be, but I do not wish to see the blood of innocents spilled, especially not by you.~
IF ~~ EXIT
END

END

// Bjornin

I_C_T BJORNI 1 C0SireneBJORNI1
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~We will do so, of course, but I would assist you with your healing first, Helmite brother.~
== BJORNI ~Hm, you, a paladin of Ilmater? Strange... though I appreciate the offer, it is truly not necessary. Give those half-ogres a taste of justice, and I shall recover with zeal.~
END

// Silke

INTERJECT CUTSILK 2 C0SireneCUTSILK2
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~Enough! Your feeble lies cannot deceive a paladin, witch.~
EXTERN CUTSILK 4

// Stark & Thalantyr

I_C_T PERMID 1 C0SirenePERMID1
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~I know a little of Thalantyr the mage from the mayor of Beregost, <CHARNAME>. He is a powerful wizard, and a solitary but fair man. 'Twould be a sin to intrude upon his privacy.~
== PERMID ~Eh, whatever, do what ya want.~
END

I_C_T THALAN 0 C0SireneTHALAN0
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Good day, master Thalantyr. Lord Kelddath sends his regards.~
== THALAN ~Eh? Are you from the church, girl? I wasn't aware the Lathandrites were taking tieflings as acolytes now.~
== C0SIRENJ ~Nay, sir. I was but a guest at the temple, but the mayor tasked me with bringing you a message, should I come this way.~
== THALAN ~Hmph, the man does not take the time to deliver it personally, but through travellers instead. I shall consider this a personal insult.~
== C0SIRENJ ~Well... what of the letter, sir?~
== THALAN ~If he decided to chance it to anyone that may pass by, the message cannot be important. Leave it at the desk over there. I will look at it at my own leisure, I suppose.~
== C0SIRENJ ~Er... as you wish.~
== THALAN ~That's a good girl. Now, if there is nothing else of importance, I kindly request for you once more to leave.~
END

// Zeke & Branwen

I_C_T ZEKE 0 C0SireneZEKE0
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~This woman should be freed, <CHARNAME>, but 'tis clear that the swindler is trying to take advantage of the situation. We can afford curative scrolls at a fairer price in the temple, and the gold would be better spent.~
END

I_C_T BRANWE 2 C0SireneBRANWE2
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Only an evil man would willingly subject another to such a terrible fate.~
== BRANWE IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~My thoughts exactly, sister.~
END

// Zordral

I_C_T ZORDRAL 0 C0SireneZORDRAL0
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Wait, <CHARNAME>. This man may be bluffing, but the risk of a genuine threat is too great. Perhaps we can talk him out of this somehow.~
END

// Kelddath

I_C_T KELDDA 0 C0SireneKELDDA0
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Thank you for your sacred hospitality, Lord Kelddath. You have been most generous during my time here.~
== KELDDA ~It is no trouble, my child. The Ilmatari are forever welcome within the Morninglord's halls. Come and go as you please.~
== C0SIRENJ ~Thank you, my lord.~
== KELDDA ~Look towards the dawn, good paladin.~
END

// Prism & Greywolf

I_C_T PRISM 4 C0SirenePRISM4
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~By Ilmater, such breathtaking beauty, but the cost... your health is suffering greatly, sculptor. Slow down, or you shall surely die of exhaustion.~
== PRISM ~I am already a dead man, milady. My walking corpse continues my work, though I feel it failing even now.~
END

I_C_T PRISM 7 C0SirenePRISM7
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Rest in peace, master artist, and know that you have created a legacy of unmatched beauty.~
== PRISM ~Thank you...~
END

I_C_T PRISM 3 C0SirenePRISM3
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~No, <CHARNAME>, you cannot! I shall defend the man with my life!~
DO ~SetGlobal("C0SireneJoined","GLOBAL",0) LeaveParty() Enemy()~
END

INTERJECT GREYWO 2 C0SireneGREYWO2
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN
~You will not take this man's life, bounty hunter! What you intend is not justice!~
EXTERN GREYWO 6

// Mulahey

I_C_T MULAHE 0 C0SireneMULAHE0
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~By Ilmater, this Cyricist reeks not only of evil but material filth. I would strike him down right now, but 'tis up to you to decide what to do.~
END

// Tranzig

I_C_T TRANZI 7 C0SireneTRANZI7
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~He is but a lapdog to some greater evil, <CHARNAME>, ruled by fear. Spare him his life, though it may be more than he deserves.~
== TRANZI ~Yes, yes! I will turn over a new leaf if you spare me, I swear!~
END

// Joseph's wife

I_C_T FTOWN2%BG1_EET_% 8 C0SireneFTOWN2
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~I am sorry we could not do more. May Ilmater bless his soul in the afterlife, and yours as well.~
== FTOWN2%BG1_EET_% ~Aye, we will need his blessing indeed...~
END

// Brage

I_C_T BRAGE 2 C0SireneBRAGE2
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~The pain and suffering that haunts him is clear in his eyes, <CHARNAME>! Stay your hand, there may be help for him yet.~
END

I_C_T NALIN 3 C0SireneNALIN3
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Aye, such is the way it should me, brother Nalin. Take good care of his troubled soul.~
END

// Viconia

I_C_T FLAM2 1 C0SireneFLAM2
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~You would simply sentence her to death without even a trial?~
== FLAM2 ~There will be no trial. The law would see her dead for being a drow alone.~
== C0SIRENJ ~That will not do.~
END

// Gallor

INTERJECT GALLOR 1 C0SireneGALLOR1
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN
~You'd kill innocents simply for a magical item you do not even know the details of? We will not have anything to do with this.~
EXTERN GALLOR 2

// Brun

I_C_T FARMBR 1 C0SireneFARMBR1
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~I would never turn away from a helpless man pleading for aid, <CHARNAME>.~
END

I_C_T FARMBR 10 C0SireneFARMBR10
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~I salute your wisdom, <CHARNAME>.~
END

I_C_T FARMBR 15 C0SireneFARMBR15
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~I salute your wisdom, <CHARNAME>.~
END

// Sonner & Tenya

I_C_T TENYA 5 C0SireneTENYA5
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~Ilmater encourages mercy upon children, <CHARNAME>, even those of... questionable upbringing.~
== TENYA ~Please, I have no more options.~
END

I_C_T SONNER 11 C0SireneSONNER11
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~Absolute filth. You'd have us murder children for your petty schemes.~
== SONNER ~We are but humble fishermen seeking a living. Desperate times call for desperate measures.~
END

// Firewine Bridge

I_C_T KNIGHT%BG1_EET_% 1 C0SireneKNIGHT1
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN
~Rest easy, tormented spirits.~
== KNIGHT%BG1_EET_% ~Aye... at last...~
END

I_C_T OGRMA3 0 C0SireneOGRMA3
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~Your fun is at an end, murderous beast!~
== OGRMA3 ~Mhahahahaha, it has only begun!~
END

// Laurel

I_C_T LAUREL 1 C0SireneLAUREL1
== LAUREL IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Wait, do I see one of fiendish blood within your company? Speak for yourself, cursed one!~
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~I have no quarrel with you, Helmite. I am Sirene of the church of Ilmater, and a champion much like yourself.~
== LAUREL IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Truly? The world is full of miracles, then. Very well, I will not cause you trouble.~
== LAUREL IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Perhaps you would be willing to prove your intent by assisting me against the gibberling horde, then?~
END

I_C_T LAUREL 2 C0SireneLAUREL2
== LAUREL IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Wait, do I see one of fiendish blood within your company? Speak for yourself, cursed one!~
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~I have no quarrel with you, Helmite. I am Sirene of the church of Ilmater, and a champion much like yourself.~
== LAUREL IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Truly? The world is full of miracles, then. Very well, I will not cause you trouble.~
== LAUREL IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Perhaps you would be willing to prove your intent by assisting me against the gibberling horde, then?~
END

// Kirian

I_C_T KIRIAN 5 C0SireneKIRIAN5
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~I should disapprove of this fight, but, strangely... I do not.~
== KIRIAN ~C'mon boys!~
END

// Korax

I_C_T KORAX 3 C0SireneKORAX3
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~This... is not wise, <CHARNAME>. The undead cannot be trusted to remain loyal, least of all when their hunger rises.~
== KORAX ~Korax hungry, but me no eat friends! Me promise!~
END

// Mutamin

I_C_T MUTAMI 1 C0SireneMUTAMI1
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Soulless bastard! Face the justice of Ilmater!~
== MUTAMI ~Bye-bye, now you die!~
END

// Bassilus

I_C_T BASSIL 2 C0SireneBASSIL2
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~By the Crying God, so many tormented corpses... we must bring this madman down, <CHARNAME>.~
END

// Lena & Samuel

I_C_T LENA 3 C0SireneLENA3
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~This man does not deserve to die like this, no matter his crimes.~
== LENA ~(sob) Poor Samuel...~
END

// Albert

I_C_T ALBERT 10 C0SireneAlbert10
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~A devil and a hell hound? Not what I expected to see.~
== ALBERT ~Hey, your eyes look like mother's. Are you a cousin? Come and visit us sometime!~
END

// Cloakwood

I_C_T TIBER 2 C0SireneTIBER2
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~I don't savor the thought of what could happen to an unskilled young man alone in this spider-infested region, <CHARNAME>. Foolish as he is, we should help him.~
== TIBER ~I'm such a fool! Help us, please...~
END

I_C_T CENTEO 0 C0SireneCENTEO0
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~Oh, that's... forgive me, <CHARNAME>, but... that is revolting. I cannot bear to look at it.~
END

// Mines

I_C_T DRASUS 0 C0SireneDRASUS0
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~I suppose you consider yourself any better? I doubt you shall pose any more of a threat.~
== DRASUS ~Shut it, wench.~
END

I_C_T TIPIAN 1 C0SireneTIPIAN1
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Ilmater protect you, poor man.~
== TIPIAN ~Aye, may he indeed.~
END

I_C_T TIPIAN 2 C0SireneTIPIAN2
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Davaeorn? A name for the cruel man whom endorses such a horrible thing as slavery, then... rest assured, we shall give him the punishment he deserves.~
== TIPIAN ~It can't come quick enough.~
END

I_C_T OGRMA2 0 C0SireneOGREMA20
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Foul purveyor of pain! You shall never torture another innocent again!~
END

I_C_T2 DAVAEO 0 C0SireneDAVAEO0
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~You shall pay for your sins, mage!~
END

// Rill

INTERJECT SLAVLEAD 3 C0SireneSLAVLEAD3
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~<CHARNAME>, what is a hundred gold to us, especially in exchange for all these lives? If you won't give them the means to escape, I will. Here.~
EXTERN SLAVLEAD 4

I_C_T SLAVFREE 1 C0SireneSLAVFREE1
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~You are mad, <CHARNAME>, to have thrown away the lives of so many. Pray our paths do not cross again.~
DO ~SetGlobal("C0SIRENJoinedBG1","GLOBAL",0) LeaveParty() EscapeArea()~
== SLAVFREE ~Gods curse you!~
END

APPEND MINEC2

IF WEIGHT #-100 ~PartyHasItem("MISC83") InParty("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN BEGIN C0SireneMINEC20
  SAY ~Hey there again. I see that you have the key. It must have been a bloody battle with the master, and you must be tough ones to have lived through it. All right then, give the key and let's be done with this. Oh, one more thing, you did talk to Rill, didn't you? So that all of the slaves could get out of here alive.~
  ++ ~Who cares about the other slaves?! Just open the plug so that we can flood this place and get out of here.~ + 9
  + ~!Global("FREESLAV","GLOBAL",1) !Global("C0SireneCloakwoodDrowned","GLOBAL",1)~ + ~Yes, we talked to Rill. You don't have to worry about your friends. They'll all be safe. Here's the key, now let's do it.~ DO ~SetGlobal("C0SireneCloakwoodDrowned","GLOBAL",1)~ EXTERN C0SIRENJ slaveinterjection
  + ~Global("FREESLAV","GLOBAL",1)~ + ~Yes, we talked to Rill. You don't have to worry about your friends. They'll all be safe. Here's the key, now let's do it.~ + 10
  ++ ~We don't want to drown the mine just yet. Stay around here, and we might come back for you later.~ + 11
END
END

APPEND C0SIRENJ

IF ~~ slaveinterjection
 SAY ~Hold, <CHARNAME>! You have told this man a lie! If we flood the mines now, all the souls below will lose their lives.~
IF ~~ THEN EXTERN MINEC2 9
END

END

// Scar

I_C_T SCAR 2 C0SireneSCAR2
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN
~The Fist has resorted to seeking outsiders to solve its business? Things must be getting worse.~
== SCAR ~You don't know the half of it, m'lady.~
END

// Petrine

I_C_T2 PETRIN 1 C0SirenePETRIN1
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~'Tis heartbreaking just to see, <CHARNAME>. Though I have reservations against burglary, perhaps 'tis forgivable in this instance.~
END

I_C_T2 PETRIN 3 C0SirenePETRIN3
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~The poor child. I wonder if there is nothing more we can do for her.~
END

// Alatos

I_C_T ALATOS 9 C0SireneALATOS9
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~'Tis not quite the distasteful mission I had expected from these rogues. The Halruaans are entitled to their secrets, of course, though I cannot help but feel that these rogues are still not to be trusted.~
END

// Shaella

I_C_T SHAELL 1 C0SireneSHAELL1
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~There are still Leirans? I had believed their faith died out after the Time of Troubles.~
END

// Varci

I_C_T VARCI 5  C0SireneVARCI5
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN
~Lead the way, young man. I wish to know what would lead you to seek us out.~
== VARCI ~Come this way!~
END

// Tremain

I_C_T TREMAI 3  C0SireneTREMAI
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN
~An unfitting punishment for the mere brashness of youth. 'Tis a waste of an innocent life if we just walk away, <CHARNAME>. I advise you to help this poor man.~
== TREMAI ~I thank thee for your compassion, Ilmatari, but I will not force you to make a decision.~
END

I_C_T CASSON 0 C0SireneCASSON0
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN
~Praise the mercy of the gods, he lives.~
END

// Ragefast, Ramazith, and Abela

I_C_T RAMAZI 6 C0SireneRAMAZI6
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~Do not listen to this mage, <CHARNAME>. I can sense that he is of malicious intent, and not to be trusted.~
== RAMAZI ~You are mistaken, I assure you.~
END

I_C_T ABELA 4 C0SireneAbela4
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~Though I cannot condone the actions of this wizard, he is not an evil man, <CHARNAME>, merely one who has been lonely too long. You did a good deed by handling this peacefully.~
== ABELA ~Poor, poor Ragefast...~
END

I_C_T2 ABELA 8 C0SireneAbela8
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~I do not like this, <CHARNAME>. Ragefast was a foolish old man, but the other mage is of clearly evil intentions. I fear for the nymph's life.~
END

I_C_T RAMAZI 15 C0SireneRAMAZI15
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~By Ilmater! I had thought him of lecherous intent, but this... this is infinitely worse! We cannot allow this to happen!~ 
== RAMAZI ~Spare me your sanctimonious ramblings, paladin.~
END

I_C_T ABELA 12 C0SireneAbela12
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~By Ilmater's mercy! You cannot be serious! I'll not stand for this.~
DO ~SetGlobal("C0SIRENEJoined","GLOBAL",0) LeaveParty() Enemy()~
== ABELA ~Hmph!~
END

// Undercellar

CHAIN IF ~Global("C0SireneUndercellar","GLOBAL",1)~ THEN C0SIRENJ C0SIRENECELLAR1
~A foul den of depravity is this, <CHARNAME>. I hope we will not stay here o'erlong.~
DO ~SetGlobal("C0SireneUndercellar","GLOBAL",2)~
END
	++ ~I thought that given your heritage you'd be comfortable here.~ + C0SIRENECELLAR2
	++ ~To be honest, I feel exactly the same.~ + C0SIRENECELLAR3
	++ ~Whatever.~ EXIT
	++ ~I was actually hoping to spend the night here.~ + C0SIRENECELLAR4

CHAIN C0SIRENJ C0SIRENECELLAR2
~I am, actually, but that only makes things worse.~
= ~Lead the way, <CHARNAME>, but do it swiftly, lest I fall prey to the urge to begin smashing things.~
EXIT

CHAIN C0SIRENJ C0SIRENECELLAR3	
~In that case, I hope that we will be done with our business as soon as possible.~
EXIT

CHAIN C0SIRENJ C0SIRENECELLAR4
~I sincerely hope you jest.~
= ~Think of the ailments that could plague those that... *ahem* provide services... here, if nothing else.~
EXIT

// Ghorak

INTERJECT GHORAK 1 C0SireneGHORAK1
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~Oh, by Ilmater... I have never seen such a cruel affliction. Please, allow us to soothe your pain, poor man.~
EXTERN GHORAK 2

I_C_T2 GHORAK 3 C0SireneGHORAK3
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Aye, a true act of kindness, <CHARNAME>.~
END

// Bentan

I_C_T BENTAN 0 C0SireneBENTAN0
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~Aye, I am a champion of the Broken God, brother.~
== BENTAN ~You?! But you're a... er, ahem. How about the rest of you?~
END

INTERJECT BENTAN 8 C0SireneBENTAN8
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~(sigh) The more elderly followers of our faith can be... awkward at times, <CHARNAME>. Don't think too much of what he's saying.~
== BENTAN ~Hmm. Perhaps you are too young to follow our faith yet.~
DO ~EscapeArea()~
EXIT

// Priest of Ilmater

I_C_T2 PRIILMU 0 C0SirenePRIILMU0
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~Aye, brother. May our tortured flesh be cleansed.~
END

I_C_T2 PRIILMU 4 C0SirenePRIILMU4
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~What? You dare, as a servant of Ilmater?!~
END

// Phandalyn

CHAIN IF WEIGHT #-100
~InParty("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN PHANDA C0SirenePHANDA
~I sense evil in your party, friend. I cannot allow you or your evil companions to threaten the good people of Baldur's Gate.~
== C0SIRENJ ~Stay your hand, champion of Helm! You are mistaken, for what you sense is my fiendish heritage, though I have no quarrel with you. I am Sirene of the Holy Warriors of Suffering, paladin of Ilmater, and these are my comrades, under my trust and protection.~
== PHANDA ~Indeed? You do not lie, I can see, scarce as I am to believe it. Very well, you and your companions may pass, Ilmatari.~
DO ~EscapeArea()~
== C0SIRENJ IF ~InParty([0.0.0.0.0.0.MASK_EVIL])~ THEN ~Loathe as I am to defend those of evil intent in our party, I fear the knight may force our hand, and I do not wish him harm.~
EXIT

// Candlekeep

I_C_T2 WILLIA%BG1_EET_% 10 C0SireneWILLIA10
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~(giggle) I would have never expected such a thing from you, my friend. Now I shall have to remember to keep my cloak close at hand, just in case.~
== WILLIA%BG1_EET_% ~(chuckles and walks away)~
END

I_C_T2 RIELTA 0 C0SireneRIELTA0
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~<CHARNAME>, act carefully. A fight here will bring us nothing but trouble.~
END

INTERJECT POGHM9 4 C0SirenePOGHM94
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~Wait, <CHARNAME>. This priest's aura of deception and evil is too strong to mask. Who are you?!~
EXTERN POGHM9 3

INTERJECT POGHM9 5 C0SirenePOGHM95
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~Wait, <CHARNAME>. This priest's aura of deception and evil is too strong to mask. Who are you?!~
EXTERN POGHM9 3

INTERJECT POGHM9 6 C0SirenePOGHM96
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~Wait, <CHARNAME>. This priest's aura of deception and evil is too strong to mask. Who are you?!~
EXTERN POGHM9 3

I_C_T SHISTA 0 C0SireneSHISTA0
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~Something's not right. This monk has a pervading aura of evil around him, <CHARNAME>. I suggest you question him, he is not what he seems.~
END

I_C_T ELMINS4 0 C0SireneELMINS4
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Ignore their lies, <CHARNAME>, they have the same stench of evil as those we have already faced.~
== ELMINS4 ~'Tis all an illusion, my child, if thou wouldst allow me to explain.~
END

// Neb

I_C_T NEB%BG1_EET_% 2 C0SireneNeb
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~A child-killer... were it not a breach of protocol, I would bring this foul creature to judgment right now.~
END

// Rashad

INTERJECT RASHAD 0 C0SireneRASHAD0
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~Your priestly trappings cannot mask your true intentions, poisoner.~
EXTERN RASHAD 1

// Krystin & Slythe

APPEND C0SIRENJ

IF ~Global("C0SireneKrystinSlythe","GLOBAL",1)~ C0SireneAssassins
 SAY ~By the Broken God, I felt no satisfaction from these deaths, just a bitter aftertaste. Let us be away from here.~
IF ~~ DO ~SetGlobal("C0SireneKrystinSlythe","GLOBAL",2)~ EXIT
END
END

// Tamoko

I_C_T TAMOKO 20 C0SireneTAMOKO20
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~She suffers greatly, <CHARNAME>. Not on the flesh, but on her heart and soul. I cannot say whether life or death would be more merciful for her.~
END

// Low Reputation

CHAIN IF ~Global("C0SireneLowRep","GLOBAL",1)~ THEN C0SIRENJ C0SireneRep01
~<CHARNAME>, I feel as though you are taking us down the wrong path.~
DO ~SetGlobal("C0SireneLowRep","GLOBAL",2)~
= ~I shall withhold judgment for now, but I suggest you make a turn for the better.~
EXIT

CHAIN IF ~Global("C0SireneRepBreak","GLOBAL",1)~ THEN C0SIRENJ C0SireneRep02
~So, you have no intention of changing your course. In that case, I will take my leave. May Ilmater show mercy upon your soul, for if we meet again, I will have none.~
DO ~SetGlobal("C0SireneRepBreak","GLOBAL",2) SetGlobal("C0SIRENJoinedBG1","GLOBAL",0) LeaveParty() EscapeArea()~ 
EXIT

// Corsone

INTERJECT CORSON 2 C0SireneCORSON2
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~Wait, <CHARNAME>. Do not allow him to walk away yet. I sense falseness in his words, and malice in his heart.~
== CORSON ~You are mistaken, woman. There is only grief in my heart, nothing more.~
END
++ ~Well, my friend here is a paladin, after all. Why don't you explain yourself?~ EXTERN CORSON 3
++ ~Let him go, Sirene. Why would a druid want to harm one of his brothers? My condolences to you.~ EXTERN CORSON 5

// TotSC

I_C_T2 DEATH1 0 C0SireneDEATH10
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~By the gods, a demon knight...~
END

I_C_T2 DEATH2 0 C0SireneDEATH20
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~This... creature is a perversion of rightness, <CHARNAME>. We cannot allow it to live.~
END

I_C_T2 DURLAGT 0 C0SireneDURLAGT0
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~Is this... Durlag's spirit? Or is it just an echo of his former self, abandoned as the rest of this cursed place?~
END

I_C_T2 TRACEA 1 C0SireneTRACEA1
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~The fiend comes, <CHARNAME>, I sense it in my blood. We must banish it from this plane!~
END

I_C_T2 TRACEA 2 C0SireneTRACEA2
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~The fiend comes, <CHARNAME>, I sense it in my blood. We must banish it from this plane!~
END

I_C_T2 TRACEA 3 C0SireneTRACEA3
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~The fiend comes, <CHARNAME>, I sense it in my blood. We must banish it from this plane!~
END

I_C_T2 TRACEA 4 C0SireneTRACEA4
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~The fiend comes, <CHARNAME>, I sense it in my blood. We must banish it from this plane!~
END

I_C_T2 TRACEA 5 C0SireneTRACEA5
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~The fiend comes, <CHARNAME>, I sense it in my blood. We must banish it from this plane!~
END

I_C_T2 KAISH 27 C0SireneKAISH27
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN 
~No... by Ilmater, this is *wrong*. We cannot live as you do, Kaishas! You must remove this affliction!~
END

APPEND C0SIRENJ

IF ~Global("C0SireneShipwreck","GLOBAL",1)~ C0SireneShipwrecked
 SAY ~*cough* Well... 'twas not quite the trip I had expected. I had hoped my first adventure over the sea would be less... hazardous.~
 = ~I suppose we should consider ourselves lucky to have survived. Perhaps there is someone who may assist us on this isle.~
IF ~~ DO ~SetGlobal("C0SireneShipwreck","GLOBAL",2)~ EXIT
END

IF ~Global("C0SireneJealous","GLOBAL",1)~ C0SireneJealous
 SAY ~...~
IF ~Gender(Player1,MALE)~ DO ~SetGlobal("C0SireneJealous","GLOBAL",2)~ + C0SireneJealousMale
IF ~Gender(Player1,FEMALE)~ DO ~SetGlobal("C0SireneJealous","GLOBAL",2)~ + C0SireneJealousFemale
END

IF ~~ C0SireneJealousMale
 SAY ~'Twould seem the young woman is quite taken in with you, <CHARNAME>.~
 ++ ~Yes, I suppose she is.~ + C0SireneJealous2
 ++ ~Are you jealous?~ + C0SireneJealous3
END

IF ~~ C0SireneJealousFemale
 SAY ~'Twould seem the young man is quite taken in with you, <CHARNAME>.~
 ++ ~Yes, I suppose he is.~ + C0SireneJealous2
 ++ ~Are you jealous?~ + C0SireneJealous3
END

IF ~~ C0SireneJealous2
 SAY ~(sigh) 'Tis quite admirable, I suppose, to show such confidence. I could not do the same, if- no, I mean to say-~
 = ~(She shakes her head and looks away.)~
 ++ ~What were you going to say?~ + C0SireneJealous4
 ++ ~Let's go.~ EXIT
END

IF ~~ C0SireneJealous3
 SAY ~(flushes) N-no, why would you believe so? I just thought- I mean, not that-~
 = ~(sigh) Please, just ignore me.~
IF ~~ EXIT
END

IF ~~ C0SireneJealous4
 SAY ~N-nothing! Let us move on, please.~
IF ~~ EXIT
END

IF ~Global("C0SireneKilledDKnight","GLOBAL",1)~ C0SireneKilledDKnight
 SAY ~We have achieved a great victory by destroying that foul being, <CHARNAME>, but... I still feel apprehension.~
 = ~Perhaps it is my lord Ilmater's guidance, but I fear that we have not seen the end of this yet.~
IF ~~ DO ~SetGlobal("C0SireneKilledDKnight","GLOBAL",2)~ EXIT
END

IF ~Global("C0SireneKilledAec","GLOBAL",1)~ C0SireneKilledAec
 SAY ~(breathes heavily) We... we have done a great act this day, <CHARNAME>, by banishing that demon from this realm. (smile) Well fought, my friend. I shall not forget this moment.~
IF ~~ DO ~SetGlobal("C0SireneKilledAec","GLOBAL",2)~ EXIT
END
END

// ---------------------------------------------
// Player Initiated Dialogue
// ---------------------------------------------

APPEND C0SIRENJ

IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY])~ THEN BEGIN pid
 SAY ~You have need of me?~ [C0SIR011]
	+ ~Global("C0SireneMatch","GLOBAL",1)~ + ~(Flirt)~ + flirtmenu
	+ ~HPPercentGT(Myself,74) RandomNum(4,1)~ + ~How are you?~ + a1
	+ ~HPPercentGT(Myself,74) RandomNum(4,2)~ + ~How are you?~ + a2
	+ ~HPPercentGT(Myself,74) RandomNum(4,3)~ + ~How are you?~ + a3
	+ ~HPPercentGT(Myself,74) RandomNum(4,4)~ + ~How are you?~ + a4
	+ ~HPPercentLT(Myself,75) HPPercentGT(Myself,49) RandomNum(4,1)~ + ~How are you?~ + b1
	+ ~HPPercentLT(Myself,75) HPPercentGT(Myself,49) RandomNum(4,2)~ + ~How are you?~ + b2
	+ ~HPPercentLT(Myself,75) HPPercentGT(Myself,49) RandomNum(4,3)~ + ~How are you?~ + b3
	+ ~HPPercentLT(Myself,75) HPPercentGT(Myself,49) RandomNum(4,4)~ + ~How are you?~ + b4
	+ ~HPPercentLT(Myself,50)~ + ~How are you?~ + c1
	+ ~Global("C0SireneMatch","GLOBAL",1) GlobalLT("C0SireneTalksBG1","GLOBAL",11)~ + ~Do you think you could consider us becoming more than friends?~ + romance1
	+ ~Global("C0SireneMatch","GLOBAL",1) GlobalGT("C0SireneTalksBG1","GLOBAL",10) GlobalLT("C0SireneTalksBG1","GLOBAL",17)~ + ~Do you think you could consider us becoming more than friends?~ + romance2
	+ ~Global("C0SireneMatch","GLOBAL",1) GlobalGT("C0SireneTalksBG1","GLOBAL",16)~ + ~Do you think you could consider us becoming more than friends?~ + romance3
	+ ~Global("C0SireneMatch","GLOBAL",2)~ + ~Do you think you could consider us becoming more than friends?~ + romance4
	+ ~!Global("C0SireneTalksBG1Stopped","GLOBAL",1)~ + ~I'd like you to talk less while on the road.~ + pausedialog
	+ ~Global("C0SireneTalksBG1Stopped","GLOBAL",1)~ + ~I don't mind if you want to talk to me again.~ + startdialog
	++ ~Is there a problem with your voice?~ + stringfix	
	++ ~Not at the moment.~ EXIT
END

IF ~~ flirtmenu
SAY ~What do you need, <CHARNAME>?~
+ ~RandomNum(3,1)~ + ~(Smile at her)~ + f1.1
+ ~RandomNum(3,2)~ + ~(Smile at her)~ + f1.2
+ ~RandomNum(3,3)~ + ~(Smile at her)~ + f1.3
+ ~RandomNum(3,1)~ + ~(Take her hand)~ + f2.1
+ ~RandomNum(3,2)~ + ~(Take her hand)~ + f2.2
+ ~RandomNum(3,3)~ + ~(Take her hand)~ + f2.3
+ ~RandomNum(3,1)~ + ~(Watch her)~ + f3.1
+ ~RandomNum(3,2)~ + ~(Watch her)~ + f3.2
+ ~RandomNum(3,3)~ + ~(Watch her)~ + f3.3
+ ~RandomNum(3,1)~ + ~(Brush dust off her cloak)~ + f4.1
+ ~RandomNum(3,2)~ + ~(Brush dust off her cloak)~ + f4.2
+ ~RandomNum(3,3)~ + ~(Brush dust off her cloak)~ + f4.3
+ ~RandomNum(3,1)~ + ~(Massage her shoulders)~ + f5.1
+ ~RandomNum(3,2)~ + ~(Massage her shoulders)~ + f5.2
+ ~RandomNum(3,3)~ + ~(Massage her shoulders)~ + f5.3
+ ~RandomNum(3,1)
HPPercentLT("C0Sirene",100)
OR(2)
Class(Player1,DRUID_ALL)
Class(Player1,PALADIN_ALL)
Class(Player1,CLERIC_ALL)~ + ~(Treat her wounds)~ + f6.1
+ ~RandomNum(3,2)
HPPercentLT("C0Sirene",100)
OR(2)
Class(Player1,DRUID_ALL)
Class(Player1,PALADIN_ALL)
Class(Player1,CLERIC_ALL)~ + ~(Treat her wounds)~ + f6.2
+ ~RandomNum(3,3)
HPPercentLT("C0Sirene",100)
OR(2)
Class(Player1,DRUID_ALL)
Class(Player1,PALADIN_ALL)
Class(Player1,CLERIC_ALL)~ + ~(Treat her wounds)~ + f6.3
+ ~RandomNum(3,1)~ + ~(Offer to carry her backpack)~ + f7.1
+ ~RandomNum(3,2)~ + ~(Offer to carry her backpack)~ + f7.2
+ ~RandomNum(3,3)~ + ~(Offer to carry her backpack)~ + f7.3
+ ~RandomNum(3,1)
Class(Player1,BARD_ALL)~ + ~(Sing her a song)~ + f8.1
+ ~RandomNum(3,2)
Class(Player1,BARD_ALL)~ + ~(Sing her a song)~ + f8.2
+ ~RandomNum(3,3)
Class(Player1,BARD_ALL)~ + ~(Sing her a song)~ + f8.3
+ ~RandomNum(3,1)~ + ~(Brush against her shoulder while you walk)~ + f9.1
+ ~RandomNum(3,2)~ + ~(Brush against her shoulder while you walk)~ + f9.2
+ ~!Race(Player1,GNOME)
!Race(Player1,DWARF)
!Race(Player1,HALFLING) RandomNum(3,3)~ + ~(Brush against her shoulder while you walk)~ + f9.3
+ ~RandomNum(3,1)~ + ~Thank you for protecting me.~ + f10.1
+ ~RandomNum(3,2)~ + ~Thank you for protecting me.~ + f10.2
+ ~RandomNum(3,3)~ + ~Thank you for protecting me.~ + f10.3
+ ~RandomNum(3,1)~ + ~What do you think of me?~ + f11.1
+ ~ReputationGT(Player1,12) RandomNum(3,2)~ + ~What do you think of me?~ + f11.2
+ ~RandomNum(3,3)~ + ~What do you think of me?~ + f11.3
+ ~AreaType(FOREST) RandomNum(3,1)~ + ~(Offer her a flower)~ + f12.1
+ ~AreaType(FOREST) RandomNum(3,2)~ + ~(Offer her a flower)~ + f12.2
+ ~AreaType(FOREST) RandomNum(3,3)~ + ~(Offer her a flower)~ + f12.3
+ ~Gender(Player1,FEMALE) RandomNum(3,1)~ + ~(Brush her hair)~ + f13.1a
+ ~Gender(Player1,FEMALE) RandomNum(3,2)~ + ~(Brush her hair)~ + f13.2
+ ~Gender(Player1,FEMALE) RandomNum(3,3)~ + ~(Brush her hair)~ + f13.3
+ ~Gender(Player1,MALE) RandomNum(3,1)~ + ~(Brush her hair)~ + f13.1b
+ ~Gender(Player1,MALE) RandomNum(3,2)~ + ~(Brush her hair)~ + f13.2
+ ~Gender(Player1,MALE) RandomNum(3,3)~ + ~(Brush her hair)~ + f13.3
+ ~RandomNum(3,1)~ + ~(Kiss her hand)~ + f14.1
+ ~RandomNum(3,2)~ + ~(Kiss her hand)~ + f14.2
+ ~RandomNum(3,3)~ + ~(Kiss her hand)~ + f14.3
++ ~Nothing.~ EXIT
END

IF ~~ f1.1
SAY ~(Sirene smiles back at you, somewhat nervously.)~
IF ~~ EXIT
END

IF ~~ f1.2
SAY ~What makes you smile, my friend? Did something good happen?~
IF ~~ EXIT
END

IF ~~ f1.3
SAY ~(Sirene blushes and turns away.)~
IF ~~ EXIT
END

IF ~~ f2.1
SAY ~(Sirene pulls her hand away in shock at your touch, but relaxes when she realizes it is you.)~
= ~Ah! Forgive me, <CHARNAME>, I thought... no, forget it.~
IF ~~ EXIT
END

IF ~~ f2.2
SAY ~(Sirene seems uncertain of whether to relax or withdraw, but ultimately decides to allow you to hold her hand while you walk.)~
IF ~~ EXIT
END

IF ~~ f2.3
SAY ~<CHARNAME>, I... I am not a child. I can walk without aid.~
IF ~~ EXIT
END

IF ~~ f3.1
SAY ~(You watch Sirene walk by your side, looking down at the ground. She does not notice you watching her.)~
IF ~~ EXIT
END

IF ~~ f3.2
SAY ~(Sirene's most striking features, aside from the horns on her forehead, are her high cheekbones and slightly-glowing green eyes, as well as the thin scar on the left side of her face.)~
IF ~~ EXIT
END

IF ~~ f3.3
SAY ~(It takes you a while to realize that Sirene is watching you as well. She is about to say something but bites her lower lip and looks away awkwardly.)~
IF ~~ EXIT
END

IF ~~ f4.1
SAY ~(You straighten out Sirene's white cloak and brush off the specks of dirt that have gathered within the creases.)~
= ~Ah... thank you, <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ f4.2
SAY ~(While you are cleaning her cloak, Sirene reaches for your face and wipes some dirt off your cheek with her thumb.)~
IF ~~ EXIT
END

IF ~~ f4.3
SAY ~*sigh* If only the bloodstains could be cleared away as easily, <CHARNAME>...~
IF ~~ EXIT
END

IF ~~ f5.1
SAY ~(You get to work on removing Sirene's shoulder pauldrons, but she takes your hands.)~
= ~<CHARNAME>... you do not need to. But, thank you.~
IF ~~ EXIT
END

IF ~~ f5.2
SAY ~(While the party takes a brief break, Sirene removes enough of her armor so that you may begin massaging her.)~
= ~(You feel that her muscles are tense and knotted, and she sighs in relief as you loosen them.)~
= ~(When you are finished, Sirene takes your hands and kisses them.)~
IF ~~ EXIT
END

IF ~~ f5.3
SAY ~(laugh) I fear that my armor would make it difficult, <CHARNAME>. Perhaps when we make camp.~
IF ~~ EXIT
END

IF ~~ f6.1
SAY ~You are too kind, <CHARNAME>...~
IF ~~ DO ~ForceSpell("C0Sirene",CLERIC_CURE_LIGHT_WOUNDS)~ EXIT
END

IF ~~ f6.2
SAY ~No, please do not waste your spells on me. I can treat my own wounds... there are others who need them more.~
IF ~~ EXIT
END

IF ~~ f6.3
SAY ~(Sirene breathes in relief as her wounds begin to close.)~
IF ~~ DO ~ForceSpell("C0Sirene",CLERIC_CURE_LIGHT_WOUNDS)~ EXIT
END

IF ~~ f7.1
SAY ~No, no, I can carry this much, but thank you.~
IF ~~ EXIT
END

IF ~~ f7.2
SAY ~(Sirene hands you her pack albeit with some reluctance.)~
= ~I wish I could refuse, but the day has been far too long... forgive my weakness, <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ f7.3
SAY ~I appreciate it, <CHARNAME>, but I do not wish to give you any more burdens.~
IF ~~ EXIT
END

IF ~~ f8.1
SAY ~Oh... that song was familiar... but I cannot recall from where. May I hear it again?~
IF ~~ EXIT
END

IF ~~ f8.2
SAY ~Your voice is so beautiful, <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ f8.3
SAY ~(Sirene listens to your song intently and hums along when you reach the chorus.)~
IF ~~ EXIT
END

IF ~~ f9.1
SAY ~I would not mind if we remained this way for a while, <CHARNAME>... *blush* if... if you do not mind, that is.~
IF ~~ EXIT
END

IF ~~ f9.2
SAY ~(Sirene touches your arm and smiles at you while you walk.)~
IF ~~ EXIT
END

IF ~~ f9.3
SAY ~(Sirene inclines her head as though about to lean on your shoulder, but seems to change her mind at the last second.)~
IF ~~ EXIT
END

IF ~~ f10.1
SAY ~You do not need to thank me, <CHARNAME>, I am... I am but doing my duty.~
IF ~~ EXIT
END

IF ~~ f10.2
SAY ~You can count on me, my friend... I will protect you with my life, if need be.~
IF ~~ EXIT
END

IF ~~ f10.3
SAY ~Nothing will harm you so long as I live, <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ f11.1
SAY ~What do I think? I... I cannot put my thoughts into words at the moment.~
IF ~~ EXIT
END

IF ~~ f11.2
SAY ~Y-you are a wonderful person, <CHARNAME>... do I truly need to say more?~
= ~(She smiles shyly at you.)~
IF ~~ EXIT
END

IF ~~ f11.3
SAY ~I, um... whatever thoughts I have may not be worth mentioning. *blush*~
IF ~~ EXIT
END

IF ~~ f12.1
SAY ~'Tis beautiful, <CHARNAME>... do you intend to give it to someone?~
++ ~Of course. (Hand the flower to her.)~ + f12.1a
++ ~Not in particular.~ + f12.1b
END

IF ~~ f12.1a
SAY ~M-me? I... oh, gods, I am... I need to hide my face...~
IF ~~ EXIT
END

IF ~~ f12.1b
SAY ~Oh... a shame. But 'tis a beautiful flower regardless.~
IF ~~ EXIT
END

IF ~~ f12.2
SAY ~What a lovely gift, <CHARNAME>... I will treasure it.~
IF ~~ EXIT
END

IF ~~ f12.3
SAY ~(Sirene takes the flower silently and pins it on her armor. She laughs gently.)~
= ~'Tis childish, I know, but I do like it.~
IF ~~ EXIT
END

IF ~~ f13.1a
SAY ~Hm, 'tis a pleasant feeling to have another woman brush my hair, <CHARNAME>...~
IF ~~ EXIT
END

IF ~~ f13.1b
SAY ~'Tis strange to have my hair brushed by a man, <CHARNAME>... but I do not mind.~
IF ~~ EXIT
END

IF ~~ f13.2
SAY ~(Sirene's hair is unkempt and in different lengths, likely due to combat. However, its vibrant red color is still pleasing to the eye.)~
IF ~~ EXIT
END

IF ~~ f13.3
SAY ~I would not waste your time, <CHARNAME>... 'twould only become a mess again, once our next battle is done.~
IF ~~ EXIT
END

IF ~~ f14.1
SAY ~(You lay a gentle kiss on the back of Sirene's hand, and she blushes in embarrassment.)~
IF ~~ EXIT
END

IF ~~ f14.2
SAY ~(When you bring Sirene's hand close to your face, you notice that her nails are black and shiny, and slightly curved at the edge, though they appear to be completely natural.)~
IF ~~ EXIT
END

IF ~~ f14.3
SAY ~Oh, my... how courteous of you, <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ a1
SAY ~I am well.~
IF ~~ EXIT
END

IF ~~ a2
SAY ~Fine. Is something the matter?~
IF ~~ EXIT
END

IF ~~ a3
SAY ~I feel sore, but it will pass.~
IF ~~ EXIT
END

IF ~~ a4
SAY ~I'm alright.~
IF ~~ EXIT
END

IF ~~ b1
SAY ~Mmm, I am wounded, but... I think I will be fine.~
IF ~~ EXIT
END

IF ~~ b2
SAY ~This pain will pass...~
IF ~~ EXIT
END

IF ~~ b3
SAY ~My injuries are not light, but I am glad they were not inflicted upon you, my friend.~
IF ~~ EXIT
END

IF ~~ b4
SAY ~I would... like a moment to treat my wounds, if you would allow it.~
IF ~~ EXIT
END

IF ~~ c1
SAY ~Ugh, I know I should not complain, but... this bleeding will not stop. I require aid.~
IF ~~ EXIT
END

IF ~~ romance1
SAY ~I don't think we know each other well enough for that yet, <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ romance2
SAY ~You're a fine <PRO_MANWOMAN>, <CHARNAME>, but... I don't think I'm ready for anything like that yet.~
IF ~~ EXIT
END

IF ~~ romance3
SAY ~Perhaps... we will talk after all this is over, I promise.~
IF ~~ EXIT
END

IF ~~ romance4
SAY ~Forgive me, <CHARNAME>. I do not think so.~
IF ~~ DO ~SetGlobal("C0SireneMatch","GLOBAL",3)~ EXIT
END

IF ~~ pausedialog
SAY ~Of course.~
IF ~~ DO ~SetGlobal("C0SireneTalksBG1Stopped","GLOBAL",1)~ EXIT
END

IF ~~ startdialog
SAY ~Of course.~
IF ~~ DO ~SetGlobal("C0SireneTalksBG1Stopped","GLOBAL",0)~ EXIT
END

IF ~~ stringfix 
SAY ~Perhaps... (coughs)~ 
IF ~~ THEN DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("C0RESET")~ EXIT 
END
END