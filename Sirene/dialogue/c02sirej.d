BEGIN C02SIREJ

// Talk after Korlasz

APPEND C02SIREJ

IF WEIGHT #-1 ~Global("C02SireneCryptTalk","GLOBAL",2)~ crypt
SAY ~It has been a long journey to where we are now, and 'tis another page in your history that has just been turned, <CHARNAME>. How do you feel now?~
++ ~This tale hasn't reached the end yet. I feel just as usual.~ DO ~SetGlobal("C02SireneCryptTalk","GLOBAL",3)~ + crypt1
++ ~Tired. I'll be glad to be away from all this fighting and crypt-crawling, at least for the moment.~ DO ~SetGlobal("C02SireneCryptTalk","GLOBAL",3)~ + crypt2
++ ~Restless. I need more enemies to fight, and to vanquish.~ DO ~SetGlobal("C02SireneCryptTalk","GLOBAL",3)~ + crypt3
++ ~I'll be feeling sad, knowing that you're leaving me soon.~ DO ~SetGlobal("C02SireneCryptTalk","GLOBAL",3)~ + crypt4
++ ~We can talk about this in a safer place. Come on, let's go.~ DO ~SetGlobal("C02SireneCryptTalk","GLOBAL",3)~ + crypt0
END

IF ~~ crypt0
SAY ~Aye... that is true. We will have time to talk sitting in comfort at the Elfsong later, perhaps. Lead on.~
IF ~~ EXIT
END

IF ~~ crypt1
SAY ~That is true. Only the gods know what awaits you in the future, <CHARNAME>.~
IF ~~ + crypt5
END

IF ~~ crypt2
SAY ~(laugh) You deserve it, my friend. We have been through much together, from the day we met at the Song of the Morning till our battle against Sarevok. Your time for rest has been long overdue.~
IF ~~ + crypt5
END

IF ~~ crypt3
SAY ~I cannot say that it comforts me, knowing battle is what thrills you, <CHARNAME>... but I trust you to control your urges.~
IF ~~ + crypt5
END

IF ~~ crypt4
SAY ~Aye, and I am grateful for that. There is some reluctance to leave on my part as well, I admit...~
IF ~~ + crypt5
END

IF ~~ crypt5
SAY ~Would that I could remain and share in the celebrations at your side, <CHARNAME>.~
++ ~There's nothing I can say that will convince you to stay?~ + crypt6
++ ~You deserve your rest, too. All of us do.~ + crypt7
++ ~Where will you go once we've parted ways?~ + crypt8
++ ~And I can't wait to get started on those celebrations. Let's go. We can talk about this later.~ + crypt0
END

IF ~~ crypt6
SAY ~'Tis not my desires that compel me to leave, <CHARNAME>.~
IF ~~ + crypt8
END

IF ~~ crypt7
SAY ~Aye, I wish I could say so, but... there is never an end to my duty.~
IF ~~ + crypt8
END

IF ~~ crypt8
SAY ~Now that we have ended the remnants of Sarevok's ambitions, I fear there is little reason to remain at Baldur's Gate. You deserve your rest, while I must continue my pilgrimage, and seek out those in need as my duty demands of me.~
= ~Perhaps I will journey south to seek other members of my church, if they will have me. 'Tis too early to tell.~
++ ~You're running yourself ragged, Sirene. You must stop at some point, if only for a while.~ + crypt9
++ ~Well, I'm glad to have known you regardless, and I'm grateful for your company.~ + crypt10
++ ~I guess there's no stopping you, then. I hope we'll meet again in the future.~ + crypt11
END

IF ~~ crypt9
SAY ~Perhaps, but my duty will not wait for me to recover.~
IF ~~ + crypt12
END

IF ~~ crypt10
SAY ~Aye, and I am grateful for yours as well, <CHARNAME>. No matter where my path takes me next, I will remember you fondly, my friend.~
IF ~~ + crypt12
END

IF ~~ crypt11
SAY ~I do not doubt our paths will cross again, sooner or later... and I shall eagerly await that day.~
IF ~~ + crypt12
END

IF ~~ crypt12
SAY ~'Tis too early for us to truly say our farewells at the moment, <CHARNAME>. Let us be away from this bleak place, so that we may spend the remaining moments of our company together in warmer places.~
IF ~~ EXIT
END
END
// Romance

// 1.
CHAIN IF ~Global("C02SireneLT","GLOBAL",2)~ THEN C02SIREJ lt1
~'Tis strange to be on the road again. I never thought I would come to say it, but I had almost grown accustomed to life at Baldur's Gate.~
DO ~IncrementGlobal("C02SireneLT","GLOBAL",1)~
END
	+ ~Global("C0SireneMetBG1","GLOBAL",1)~ + ~I know what you mean.~ + lt1.1
	+ ~!Global("C0SireneMetBG1","GLOBAL",1)~ + ~I know what you mean.~ + lt1.2
	++ ~You grew accustomed to it? As I recall, you were barely on your feet from exhaustion when we met.~ + lt1.3
	+ ~Global("C0SireneMetBG1","GLOBAL",1)~ + ~Not me. I'm glad to be back on the road again.~ + lt1.1
	+ ~!Global("C0SireneMetBG1","GLOBAL",1)~ + ~Not me. I'm glad to be back on the road again.~ + lt1.2
	++ ~There's no time for talk. We should move on.~ + lt1.0
	
APPEND C02SIREJ

IF ~~ lt1.0
SAY ~Aye, perhaps we can talk another time instead.~
IF ~~ EXIT
END

IF ~~ lt1.1
SAY ~How long has it been since we parted ways, <CHARNAME>? It feels as though 'twas only yesterday that we faced Sarevok and his servants together.~
IF ~~ + lt1.4
END

IF ~~ lt1.2
SAY ~(laugh) I suppose I do not truly know you yet, my <PRO_LORDLADY>. Though adventuring seems to suit you well regardless.~
IF ~~ + lt1.4
END

IF ~~ lt1.3
SAY ~(laugh) You do have a point there, <CHARNAME>, though I am not unfamiliar with that feeling.~
IF ~~ + lt1.4
END

IF ~~ lt1.4
SAY ~In any case, I am glad to be travelling with others for a change. Those of my blood are not often welcomed amongst decent folk.~
	+ ~Global("C0SireneMetBG1","GLOBAL",1)~ + ~Just like old times, huh?~ + lt1.5
	+ ~!Global("C0SireneMetBG1","GLOBAL",1)~ + ~Do you get shunned often?~ + lt1.6
	++ ~A fine-looking woman like you, and good with a sword? I can't imagine why.~ + lt1.6
	++ ~There's no time for talk. We should move on.~ + lt1.0
END

IF ~~ lt1.5
SAY ~Indeed. I am even gladder for the familiar company, <CHARNAME>.~
IF ~~ + lt1.6
END

IF ~~ lt1.6
SAY ~*sigh* I do not like admitting it, but I tire of being forced to travel with this cowl raised whereever I go, only to hide my heritage... 'twas the same, even in my journey back to Baldur's Gate. I am met with suspicion before words are even exchanged, no matter where I go.~
= ~Now that I am recognized as your companion, however... I can safely reveal my true self... well, not proudly, but 'tis a start, at least.~
++ ~Don't worry. No one will harass you so long as I'm here.~ + lt1.7
++ ~As long as you're able to pull your weight, you can stick around.~ + lt1.7
++ ~I'm not here for your protection. If you get into trouble around camp, you're on your own.~ + lt1.8
++ ~We've talked enough. Let's continue.~ + lt1.9
END

IF ~~ lt1.7
SAY ~Thank you, <CHARNAME>. I could not ask for more.~
IF ~~ EXIT
END

IF ~~ lt1.8
SAY ~Aye... I understand. I would not presume to ask you to become involved in my troubles.~
IF ~~ EXIT
END

IF ~~ lt1.9
SAY ~Aye. Lead the way.~
IF ~~ EXIT
END

END

// 2.
CHAIN IF ~Global("C02SireneLT","GLOBAL",4)~ THEN C02SIREJ lt2
~How do you fare, <CHARNAME>? Is there anything I can do to help?~
DO ~IncrementGlobal("C02SireneLT","GLOBAL",1)~
END
	+ ~!HPPercentLT(Player1,75)~ + ~No, there's nothing I need. Thank you.~ + lt2.1
	+ ~HPPercentLT(Player1,75)~ + ~No, there's nothing I need. Thank you.~ + lt2.2
	+ ~HPPercentLT(Player1,75)~ + ~I could use some healing, in fact.~ + lt2.3
	+ ~!HPPercentLT(Player1,75)~ + ~Perhaps we could stop and talk a while?~ + lt2.4
	+ ~HPPercentLT(Player1,75)~ + ~Perhaps we could stop and talk a while?~ + lt2.5
	++ ~Don't worry about me. Let's move.~ + lt2.0
	
APPEND C02SIREJ

IF ~~ lt2.0
SAY ~Very well, as you say.~
IF ~~ EXIT
END

IF ~~ lt2.1
SAY ~In that case, I'd stay here and talk a moment with you, if that is acceptable.~
IF ~~ + lt2.6
END

IF ~~ lt2.2
SAY ~I admire your tenacity, <CHARNAME>, but your wounds do need tending. Please, allow me to help.~
	++ ~Alright then. Thank you, Sirene.~ + lt2.3
	++ ~No, don't use your healing on me. Others might need it more.~ + lt2.1
	++ ~I meant no. There's no time for this.~ + lt2.0
END

IF ~~ lt2.3
SAY ~Of course. Remain still and I will tend to you.~
IF ~~ + lt2.6
END

IF ~~ lt2.4
SAY ~Of course. I was about to ask myself... I think we could all use a little rest.~
IF ~~ + lt2.6
END

IF ~~ lt2.5
SAY ~Aye, if you wish... and I can tend to your wounds in the meantime.~
IF ~~ + lt2.6
END

IF ~~ lt2.6
SAY ~You have surprised me, <CHARNAME>. I have watched you as we fought together, and you have displayed the strength and leadership that I greatly admire.~
	+ ~Global("C0SireneMetBG1","GLOBAL",1)~ + ~Are you that surprised? You've seen me in battle before.~ + lt2.7
	++ ~Thank you. You're not bad either.~ + lt2.8
	++ ~Of course. I'm the progeny of a god. Power comes naturally to me.~ + lt2.9
	++ ~We have no time for small talk.~ + lt2.10
END

IF ~~ lt2.7
SAY ~Aye, but in the short time since we parted, 'tis though you have become stronger still.~
IF ~~ + lt2.11
END

IF ~~ lt2.8
SAY ~(smile) I have... learned and experienced much over the years, as well as by your side, but I could not compare to you.~
IF ~~ + lt2.11
END

IF ~~ lt2.9
SAY ~Aye, I have not forgotten... though I hope there is more to you than what is in your blood.~
IF ~~ + lt2.11
END

IF ~~ lt2.10
SAY ~Of course you are right. We should move on.~
IF ~HPPercentLT(Player1,75)~ + lt2.16
IF ~!HPPercentLT(Player1,75)~ EXIT
END

IF ~~ lt2.11
SAY ~Like you, I was born with... power in my blood. Tales say my ancestors, devils of the Hells, are subjugators of their Plane. I did not want to follow their example. In that... I thought I saw a kindred spirit in you.~
= ~You may bear the taint of Bhaal, <CHARNAME>, but I do not believe you share his evil. You have power, but you do not abuse it against others... and I admire that. I have seen those born with power descend into madness and tyranny.~
++ ~We're alike in that. I want nothing to do with my father's legacy.~ + lt2.12
++ ~You are mistaken. I am glad to have a deity's essence within me. I desire all the power that comes with it.~ DO ~SetGlobal("C02SireneRomanceActive","GLOBAL",3)~ + lt2.13
++ ~Did you really think your speck of devil's blood can compare to what I am? What a joke.~ DO ~SetGlobal("C02SireneRomanceActive","GLOBAL",3)~ + lt2.13
++ ~I don't want to talk about this. It's irrelevant in light of our current task.~ + lt2.10
END

IF ~~ lt2.12
SAY ~I am glad that I did not misjudge you. 'Tis I hope that I can consider you my friend... if you will accept me.~
+ ~Global("C0SireneMetBG1","GLOBAL",1)~ + ~We already are friends, Sirene.~ + lt2.14
++ ~Of course I will.~ + lt2.15
++ ~I wouldn't go so far as to say friends just yet.~ + lt2.13
++ ~Friends? No. More like allies of convenience.~ + lt2.13
END

IF ~~ lt2.13
SAY ~I see. 'Twould seem that I misjudged you, <CHARNAME>. So be it. I will bother you no more.~
IF ~HPPercentLT(Player1,75)~ DO ~ForceSpell(PLAYER1,PALADIN_LAY_ON_HANDS)~ EXIT
IF ~!HPPercentLT(Player1,75)~ EXIT
END

IF ~~ lt2.14
SAY ~Aye, but with everything that has happened since our first meeting... well, 'tis assuring to know that you have not changed for the worse.~
IF ~~ + lt2.15
END

IF ~~ lt2.15
SAY ~Thank you for accepting me, <CHARNAME>. It means more to me than you know.~
IF ~HPPercentLT(Player1,75)~ + lt2.16
IF ~!HPPercentLT(Player1,75)~ EXIT
END

IF ~~ lt2.16
SAY ~And... there. I have done what I can for your wounds, <CHARNAME>. Hopefully 'twill be enough before we rest.~
IF ~~ DO ~ForceSpell(PLAYER1,PALADIN_LAY_ON_HANDS)~ EXIT
END
END

// 3.
CHAIN IF ~Global("C02SireneLT","GLOBAL",6)~ THEN C02SIREJ lt3
~I never expected to take part in fighting a war. In my life thus far, the only battles I have fought were my own. 'Tis... different.~
DO ~IncrementGlobal("C02SireneLT","GLOBAL",1)~
END
	++ ~Different how?~ + lt3.1
	++ ~I still resent being forced into fighting someone else's war.~ + lt3.2
	++ ~There's no time to focus on your personal thoughts. Let's concentrate on what we must do.~ + lt3.0

APPEND C02SIREJ

IF ~~ lt3.0
SAY ~Aye, if that is the case, I will bother you no more, then.~
IF ~~ DO ~SetGlobal("C02SireneRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ lt3.1
SAY ~While I was living my own life, I felt as though I had all the time in the world. Now, however... everything is faster. The challenges we face are no longer just a case of our own lives. The end of this war depends on us... on you, <CHARNAME>.~
IF ~~ + lt3.3
END

IF ~~ lt3.2
SAY ~Aye, and that is your right, <CHARNAME>. Even I have prayed in the past to never see war in my lifetime... but I suppose some things cannot be helped.~
IF ~~ + lt3.1
END

IF ~~ lt3.3
SAY ~(Sirene reaches into her pack and takes out a blood-red string. Without a word, she begins to bind it around her wrist and fingers.)~
+ ~Global("C0SireneMetBG1","GLOBAL",1)~ + ~I remember that thread... I still have my half, see?~ DO ~SetGlobal("C0SirenePCHadString","GLOBAL",1)~ + lt3.4
+ ~Global("C0SireneMetBG1","GLOBAL",1)~ + ~I remember that thread... unfortunately, I lost it at some point.~ DO ~SetGlobal("C0SirenePCHadString","GLOBAL",1)~ + lt3.4
++ ~What are you doing with that?~ + lt3.5
++ ~We have no time for distractions. Let's carry on, and focus on our task.~ + lt3.0
END

IF ~~ lt3.4
SAY ~Aye... 'tis the same thread which I shared with you in the Undercity. I am glad you remember.~
IF ~~ + lt3.6
END

IF ~~ lt3.5
SAY ~Ah, this? A silly charm... something I have taken to doing since childhood.~
IF ~~ + lt3.6
END

IF ~~ lt3.6
SAY ~Ever since I was young, I would bind this to my hand, reminiscent of the symbol of Ilmater, and pray when feeling anxiety, or facing difficulties. It relaxes me, somehow, though there is no magic to it.~
IF ~Global("C0SirenePCHadString","GLOBAL",1)~ + lt3.7
IF ~!Global("C0SirenePCHadString","GLOBAL",1)~ + lt3.8
END

IF ~~ lt3.7
SAY ~There is something I have not told you of, <CHARNAME>. Though this string holds meaning in my faith, there is another meaning to it.~
IF ~~ + lt3.9
END

IF ~~ lt3.8
SAY ~It may seem a childish thing, but 'tis one of the few things that brings me comfort.~
	++ ~It's that effective, huh? Can I try it?~ + lt3.10
	++ ~Be quick with it, then. We have important tasks at hand.~ + lt3.0
END

IF ~~ lt3.9
SAY ~There is a tale that those connected by a crimson thread are bound by destiny... and everything that effectively means. Perhaps 'tis nothing but mere superstition, but... I do not take such tales lightly.~
IF ~Global("C0SirenePCHadString","GLOBAL",1)~ + lt3.11
IF ~!Global("C0SirenePCHadString","GLOBAL",1)~ + lt3.12
END

IF ~~ lt3.10
SAY ~I... I would not be opposed to it, but there is something else you must know first.~
IF ~~ + lt3.9
END

IF ~~ lt3.11
SAY ~I...I knew of this when you bound your hand at the Undercity. I should have told you the true meaning - forgive me. I was not brave enough to confess the truth with you then, but now...~
IF ~~ + lt3.12
END

IF ~~ lt3.12
SAY ~I cannot deny I admire you, <CHARNAME>, and even... drawn to you. But if there is to be more between us than simple friendship, then I would have you decide.~
= ~If you do not share similar feelings, or have feelings towards another, I would prefer to know now, before either of us have any regrets.~
	++ ~I'll cut to the chase then - I'm attracted to you too, Sirene, and I'm interested to see where this goes.~ DO ~SetGlobal("bd_neera_romanceactive","global",3)
SetGlobal("bd_safana_romanceactive","global",3)
SetGlobal("bd_corwin_romanceactive","global",3)
SetGlobal("bd_rasaad_romanceactive","global",3)
SetGlobal("bd_glint_romanceactive","global",3)
SetGlobal("bd_viconia_romanceactive","global",3)
SetGlobal("bd_voghiln_romanceactive","global",3)
SetGlobal("bd_dorn_romanceactive","global",3)~ + lt3.15
	+ ~Global("bd_neera_romanceactive","global",1)~ + ~Thank you for telling me, but I'm already drawn to Neera.~ DO ~SetGlobal("C02SireneRomanceActive","GLOBAL",3)~ + lt3.13
	+ ~Global("bd_corwin_romanceactive","global",1)~ + ~I've developed feelings for Corwin.~ DO ~SetGlobal("C02SireneRomanceActive","GLOBAL",3)~ + lt3.13
	+ ~Global("bd_safana_romanceactive","global",1)~ + ~Safana's charms have gotten the best of me.~ DO ~SetGlobal("C02SireneRomanceActive","GLOBAL",3)~ + lt3.13
	+ ~Global("bd_viconia_romanceactive","global",1)~ + ~Viconia intrigues me. That's all I can say.~ DO ~SetGlobal("C02SireneRomanceActive","GLOBAL",3)~ + lt3.14
	+ ~Global("bd_rasaad_romanceactive","global",1)~ + ~Rasaad is a good man. I think I may already have fallen for him.~ DO ~SetGlobal("C02SireneRomanceActive","GLOBAL",3)~ + lt3.13
	+ ~Global("bd_glint_romanceactive","global",1)~ + ~I've a thing for short men - meaning Glint.~ DO ~SetGlobal("C02SireneRomanceActive","GLOBAL",3)~ + lt3.13
	+ ~Global("bd_voghiln_romanceactive","global",1)~ + ~I'll admit it then - I like Voghiln.~ DO ~SetGlobal("C02SireneRomanceActive","GLOBAL",3)~ + lt3.13
	+ ~Global("bd_dorn_romanceactive","global",1)~ + ~I know you won't like this, but I can't hide it any longer - I'm attracted to Dorn.~ DO ~SetGlobal("C02SireneRomanceActive","GLOBAL",3)~ + lt3.14
	++ ~I'm grateful that you're honest with me, so I'll tell you the truth - I'm not interested in women.~ DO ~SetGlobal("C02SireneRomanceActive","GLOBAL",3)~ + lt3.13
	++ ~What are you talking about, Sirene? I'm not interested in pursuing any sort of relationship, especially not right now.~ DO ~SetGlobal("C02SireneRomanceActive","GLOBAL",3)~ + lt3.13
END

IF ~~ lt3.13
SAY ~I understand, <CHARNAME>. The truth is all that I wanted, and I am glad you have said it. I can only wish for your happiness, my friend.~
IF ~~ EXIT
END

IF ~~ lt3.14
SAY ~Nngh... 'twas not the answer I had hoped for, but I should be grateful you told the truth. I only hope you will not allow yourself to be drawn to the darkness...~
= ~Forgive me, but... I feel I must stand aside for a while.~
IF ~~ EXIT
END

IF ~~ lt3.15
SAY ~That is... a very pleasant surprise. I admit I had not truly expected you to... no, forget it. I only hope we will talk more in the future. Thank you, <CHARNAME>.~
IF ~~ EXIT
END
END

// 4.
CHAIN IF ~Global("C02SireneLT","GLOBAL",8)~ THEN C02SIREJ lt4
~<CHARNAME>, wait!~
DO ~IncrementGlobal("C02SireneLT","GLOBAL",1)~
= ~I thought I saw you shiver. Wear my cloak over your shoulders for a while.~
END
	++ ~I'm not cold, Sirene. Just... unnerved.~ + lt4.1
	++ ~Thank you.~ + lt4.1
	++ ~Take it back. I don't need it.~ + lt4.2
	++ ~Keep it. We've got to move on.~ + lt4.0
	
APPEND C02SIREJ

IF ~~ lt4.0
SAY ~But- very well. I trust that you know best for yourself. But if there is anything you need, I am always here.~
IF ~~ EXIT
END

IF ~~ lt4.1
SAY ~What troubles you, <CHARNAME>? Would it help if you confided in me?~
	+ ~Global("C0SireneMetBG1","GLOBAL",1)~ + ~It's nothing. Just some bad dreams.~ + lt4.3
	+ ~!Global("C0SireneMetBG1","GLOBAL",1)~ + ~It's nothing. Just some bad dreams.~ + lt4.4
	++ ~I've been thinking about the war efforts.~ + lt4.5
	++ ~I'd rather not talk about it.~ + lt4.0
END

IF ~~ lt4.2
SAY ~As you wish... I simply did not wish to see you in discomfort.~
IF ~~ + lt4.1
END

IF ~~ lt4.3
SAY ~Dreams? I... I remember you mentioning strange dreams while we travelled the Sword Coast together. You said they were caused by the influence of your divine blood.~
IF ~~ + lt4.6
END

IF ~~ lt4.4
SAY ~Dreams? What sort of dreams, <CHARNAME>?~
	++ ~More like visions caused the divinity in my blood. I had many of them after I left Candlekeep.~ + lt4.6
	++ ~They're just dreams. Not worth talking about.~ + lt4.0
END

IF ~~ lt4.5
SAY ~The war is taking its toll on us all, <CHARNAME>. I know 'tis difficult, but is't truly all that is on your mind?~
	+ ~Global("C0SireneMetBG1","GLOBAL",1)~ + ~No. I've been getting dreams, as well.~ + lt4.3
	+ ~!Global("C0SireneMetBG1","GLOBAL",1)~ + ~No. I've been getting dreams, as well.~ + lt4.4
	++ ~Yes, that's all.~ + lt4.7
	++ ~We've got no time for this. Let's move on.~ + lt4.0
END

IF ~~ lt4.6
SAY ~That is... most disturbing. You are saying that your essence still influences your thoughts, <CHARNAME>? What do you see?~
	+ ~CheckStatGT(Player1,14,WIS)~ + ~I'm not sure these dreams are the same as the ones before. These ones were clearer. And there was a constant... that hooded man...~ + lt4.8
	+ ~CheckStatLT(Player1,15,WIS)~ + ~It's so hard to put it all together. Old enemies, a hooded man, a crazed beast, unbearable pain...~ + lt4.8
	++ ~I don't know. It's nothing but a blur.~ + lt4.8
	++ ~This is an unnecessary distraction. Let's keep moving.~ + lt4.0
END

IF ~~ lt4.7
SAY ~I can tell there is more on your mind, <CHARNAME>... but if you are unwilling to tell me, I will not force you. Just... do not overexert yourself.~
IF ~~ EXIT
END

IF ~~ lt4.8
SAY ~(Sirene stays silent for a long while, worry evident in her eyes.)~
= ~This frightens me, <CHARNAME>. I believe what you said about refusing the evil in your blood... but now I fear that the more you reject it, the more likely it will consume you.~
= ~And there is nothing I can do to affect anything. Forgive me.~
	++ ~You can do something. Keep me warm.~ + lt4.9
	++ ~I don't expect you to know what to do. This is my burden to bear.~ + lt4.10
	++ ~Let's not talk about such an ominous subject. We've got work to do.~ + lt4.11
END

IF ~~ lt4.9
SAY ~(At your words, Sirene takes her cloak and seems about to place it over your shoulders, but instead sets it aside and takes you in her arms.)~
IF ~~ + lt4.10
END

IF ~~ lt4.10
SAY ~I will not have you take this pain alone, <CHARNAME>... though I lack the power to remove your suffering, I will still offer you what comfort I can.~
IF ~~ + lt4.12
END

IF ~~ lt4.11
SAY ~Very well... as you wish.~
IF ~~ EXIT
END

IF ~~ lt4.12
SAY ~We... we should continue now. This war will not wait while we ponder, <CHARNAME>.~
IF ~~ EXIT
END
END

// 5.
CHAIN IF ~Global("C02SireneLT","GLOBAL",10)~ THEN C02SIREJ lt5
~What will you do once we have defeated the crusade, <CHARNAME>?~
DO ~IncrementGlobal("C02SireneLT","GLOBAL",1)~
END
	++ ~'Once we've defeated them'? You're being optimistic to<DAYNIGHT>.~ + lt5.1
	++ ~I haven't thought that far ahead.~ + lt5.2
	++ ~Oh, I've got some plans in mind.~ + lt5.2
	++ ~Now's not the time for small talk.~ + lt5.0

APPEND C02SIREJ

IF ~~ lt5.0
SAY ~Aye... as you wish. I'll not bother you for now.~
IF ~~ EXIT
END

IF ~~ lt5.1
SAY ~And why should I not be, my friend? You have led us this far. I have no doubts that you will succeed to the very end.~
IF ~~ + lt5.2
END

IF ~~ lt5.2
SAY ~It has just occurred to me that we have been so caught up in this war, and our current struggles... I have not been able to consider what happens at the end of it all.~
= ~I would like to hear your thoughts, <CHARNAME>. What do you want to do?~
	++ ~Keep travelling, I suppose. There's always more to see. I'd die of boredom sitting around in some old manor.~ + lt5.3
	++ ~You know me. There's more evil out there, waiting to be brought to justice.~ + lt5.4
	++ ~Maybe I'll settle down for a while. Hopefully the Grand Dukes will be grateful enough to give me a nice residence once all this is done.~ + lt5.5
	++ ~Like I said, I haven't thought that far ahead. Too busy dealing with current events.~ + lt5.6
	++ ~I don't know... I think I'd rather follow you, wherever you want to go.~ + lt5.7
	++ ~I'm not interested in talking about this right now. We'll have plenty of time to discuss this later.~ + lt5.0
END

IF ~~ lt5.3
SAY ~Aye... I know the feeling well. Once you have begun wandering the world, 'tis difficult to ever stop.~
IF ~~ + lt5.8
END

IF ~~ lt5.4
SAY ~Aye... I wish I could be with you once you find them, so that we may enact it together.~
IF ~~ + lt5.8
END

IF ~~ lt5.5
SAY ~(laugh) Truly, you would deserve it, my friend. You are their hero, and you have been through more than enough to last several lifetimes. I would not blame you if you chose to stay for good.~
IF ~~ + lt5.8
END

IF ~~ lt5.6
SAY ~I understand. 'Tis too early to think of such things, especially when victory is not secured yet.~
IF ~~ + lt5.8
END

IF ~~ lt5.7
SAY ~I... you should not jest about such things, <CHARNAME>. Not when we will be apart soon.~
	++ ~Apart? What are you talking about? I'm not going anywhere.~ + lt5.9
	++ ~You're going to leave me? Why?~ + lt5.10
	++ ~We can't talk about this now. Maybe later.~ + lt5.0
END

IF ~~ lt5.8
SAY ~No matter what you ultimately decide, my friend, I must confess that... the time we have spent together was worth more than anything else in my life.~
	++ ~What are you talking about? I'm not planning on leaving you.~ + lt5.9
	++ ~Are you saying goodbye? I thought you meant to stay with me.~ + lt5.10
	++ ~It was important to me as well, Sirene.~ + lt5.11
	++ ~I'm glad. But we don't have time to talk at the moment.~ + lt5.0
END

IF ~~ lt5.9
SAY ~You... you are not?~
	++ ~Why are you surprised? I told you, I care about you.~ + lt5.10
	++ ~No, I didn't. Why did you think I would?~ + lt5.10
	++ ~No, and now's not the time to talk about this. Save it for later.~ + lt5.0
END

IF ~~ lt5.10
SAY ~I know I said that I would remain with you, and support you no matter what, but... I have had time to consider things since.~
= ~Ever since we reached the coaliton camp, I have observed the people around me. They look upon you with fear and distrust, even after all you have done, and when they see me...~
= ~When they look upon me, I remember the truth of what I am, and what someone such as myself means standing next to you. My presence only serves to darken their thoughts on you, <CHARNAME>. You cannot have me by your side.~
	++ ~You think I give half a damn what they think of me? They don't matter to me, Sirene. You do.~ + lt5.12
	++ ~So they dislike us. What are they going to do? You've lived your life dealing with those looks - do a few more matter?~ + lt5.12
	++ ~I... I understand what you mean. Maybe you're right. It's best if we end this while we can.~ + lt5.13
END

IF ~~ lt5.11
SAY ~I am glad it was, but... please, allow me to finish.~
IF ~~ + lt5.10
END

IF ~~ lt5.12
SAY ~You do not understand, <CHARNAME>. I can live with the thoughts of others as much as I always have. But you... you deserve to be their hero. No hero could benefit from the presence of a fellborn companion.~
= ~This war is not over yet, and so I will remain at your side. But afterwards... afterwards, I will be of no use to you. I will only be a burden.~
	++ ~No. You're far too important for me to lose. Stay, I beg you.~ + lt5.14
	++ ~Damn them all, then. To the Hells with being a hero as well. I'll give it all up, if it means I keep you.~ + lt5.14
	++ ~I... I see. You're right. This is really the best for both of us.~ + lt5.13
	++ ~That's it? That's your sorry excuse for breaking this up? Fine, do what you want.~ + lt5.13
END

IF ~~ lt5.13
SAY ~I am sorry, <CHARNAME>. I am so sorry...~
IF ~~ DO ~SetGlobal("C02SireneRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ lt5.14
SAY ~...~
= ~I will reconsider... in truth, I want nothing more than to remain at your side for the rest of my life. But... this is not the end of the road yet. Perhaps...~
IF ~~ DO ~SetGlobal("C02SireneRomanceActive","GLOBAL",2)~ EXIT
END

END
// 6.
CHAIN IF ~Global("C02SireneLT","GLOBAL",12)~ THEN C02SIREJ lt6
~So, Hephernaan was the true evil within the crusade... and Caelar has pursued him into Avernus. I know what we must do now, <CHARNAME>, yet still I dread it.~
DO ~IncrementGlobal("C02SireneLT","GLOBAL",1)~
END
	++ ~I know. But we have no choice but to pursue them.~ + lt6.1
	++ ~Are you afraid, Sirene?~ + lt6.2
	++ ~Would you like to say behind?~ + lt6.3
	++ ~Better do it while you're able then. Let's hop in.~ + lt6.0

APPEND C02SIREJ

IF ~~ lt6.0
SAY ~Aye. Let us go.~
IF ~~ EXIT
END

IF ~~ lt6.1
SAY ~I know that, <CHARNAME>. 'Tis just that...~
IF ~~ + lt6.4
END

IF ~~ lt6.2
SAY ~No, 'tis not that, <CHARNAME>. I would not call it fear, rather...~
IF ~~ + lt6.4
END

IF ~~ lt6.3
SAY ~There is no turning back for any of us now, <CHARNAME>. The doors were sealed behind us, and anyone remaining here will only be overwhelmed by the legions of Hell. No, I must do this, but...~
IF ~~ + lt6.4
END

IF ~~ lt6.4
SAY ~How can I explain this, <CHARNAME>? 'Tis like the portal, or whatever is on the other side, calls to me... calls to my blood. A part of me wishes to leap in right now, and damn the consequences.~
= ~If this is the feeling just by standing so close, I fear for what will happen once we are on the other side. I... I do not know if...~
++ ~(Put your arm around her.)~ + lt6.5
++ ~I believe in you. We can do this together.~ + lt6.5
++ ~This is pathetic. Remain behind, if you're afraid. It'll spare me from being held back later.~ + lt6.6
END

IF ~~ lt6.5
SAY ~...thank you, <CHARNAME>.~
= ~You are right. I am not here alone, and neither are you. We will face the pits of Avernus together, and we will succeed.~
= ~No more doubts, <CHARNAME>. No more hesitation. Let us bring justice to the Hells.~
IF ~~ EXIT
END

IF ~~ lt6.6
SAY ~No. Cruel as your words are, you are right. I cannot afford to hold you back at this point. Lead us to Avernus, <CHARNAME>, and face whatever fiends await us.~
IF ~~ DO ~SetGlobal("C02SireneRomanceActive","GLOBAL",3)~ EXIT
END
END

// End LT.

CHAIN IF ~Global("C02SireneFinalLT","GLOBAL",1)~ THEN C02SIREJ lt7
~'Tis finally over... I thought that perhaps we might suffer in the pits of Avernus forever... but despite everything, we are standing here, alive and victorious.~
DO ~SetGlobal("C02SireneFinalLT","GLOBAL",2)~
END
	++ ~That's right. We've won at last.~ + lt7.1
	++ ~I still can't believe we made it out alive.~ + lt7.1
	++ ~It was something, I'll give you that.~ + lt7.1

APPEND C02SIREJ

IF ~~ lt7.1
SAY ~Come aside with me a moment, <CHARNAME>. I... have words for you, and you alone.~
= ~Before we leapt into the portal, I made a decision. If... if we returned to this plane with victory in hand, I would remain at your side, and follow you to the ends of the earth, no matter what.~
++ ~You won't leave me behind? I'm so glad.~ + lt7.2
++ ~I want nothing more. We'll travel the world together.~ + lt7.2
++ ~Really, you don't have to. I won't force you to stay in my service.~ + lt7.3
END

IF ~~ lt7.2
SAY ~'Tis more than duty that keeps me by your side now, <CHARNAME>. You are a friend... no, more than a friend, you are someone close to my heart.~
= ~Gods, I cannot even think of the words to truly describe how I feel right now. 'Tis so embarrassing, for my words to fumble so, so clumsily while you are right in front of me...~
++ ~Just stop talking for a moment and come here.~ + lt7.4
++ ~(Lean forwards and kiss her)~ + lt7.4
++ ~Don't worry. Take your time.~ + lt7.5
++ ~That's enough. I know we've been through a lot together but... truth be told, I don't want this anymore.~ + lt7.7
END

IF ~~ lt7.3
SAY ~You misunderstand me, <CHARNAME>. 'Tis no longer service that I speak of. I... I have come to care for you.~
IF ~~ + lt7.2
END

IF ~~ lt7.4
SAY ~Ah! Mmph...~
= ~Mmm... that was the meaning I was looking for.~
IF ~~ + lt7.6
END

IF ~~ lt7.5
SAY ~Yes... you are right, <CHARNAME>. I... we will have all the time in the world.~
IF ~~ + lt7.6
END

IF ~~ lt7.6
SAY ~We will have time for us soon, <CHARNAME>, but now is your chance to celebrate... and I fear my attention would only keep you from the others too long... come, <CHARNAME>. There is still a long road ahead of us.~
= ~There may be more ahead, further struggles to endure... but if 'twere you at my side, then 'twould be worth it, I think.~
IF ~~ EXIT
END

IF ~~ lt7.7
SAY ~I... I see. I shall cherish what time we have left, then... once we part, perhaps we may never meet again.~
IF ~~ DO ~SetGlobal("C02SireneRomanceActive","GLOBAL",3)~ EXIT
END


// Avernus talk

IF ~Global("C02SireneAvernus","GLOBAL",2)~ avernus
SAY ~By Ilmater... burning heat, sulfur, screams of wretched souls... 'tis truly Avernus, then. There is no doubt about it.~
= ~Ngh... 'tis agony to even be here, <CHARNAME>. My blood, born of this place, feels at home, yet my skin crawls from the presence of overwhelming evil... only the truly evil could call this place home!~
++ ~Are you going to be alright?~ DO ~SetGlobal("C02SireneAvernus","GLOBAL",3)~ + avernus1
++ ~Pull yourself together, quickly. I need you at top form.~ DO ~SetGlobal("C02SireneAvernus","GLOBAL",3)~ + avernus2
++ ~We have no time for this.~ DO ~SetGlobal("C02SireneAvernus","GLOBAL",3)~ + avernus0
END

IF ~~ avernus0
SAY ~Aye... my discomfort means nothing when the fate of others is concerned. Onward, <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ avernus1
SAY ~Aye, I believe I will be... I will not become a burden, at least.~
IF ~~ + avernus2
END

IF ~~ avernus2
SAY ~'Tis horrible to think that I am even loosely tied to a place such as this. I have lived my entire life fighting the notion, yet now that I am here, I cannot deny that something in me is pleased, even as everything else denies it... 'twould seem nothing can truly erase the ties of my blood.~
++ ~You don't belong here. You're Sirene, champion of Ilmater, nothing less.~ + avernus3
++ ~That's not true. Just as I reject being a Bhaalspawn, you can do the same.~ + avernus3
++ ~The sooner you accept it, the easier your life becomes.~ + avernus4
++ ~That's enough. We've got work to do.~ + avernus0
END

IF ~~ avernus3
SAY ~Aye... you are right, <CHARNAME>. I cannot give in to my doubts. I will not.~
IF ~~ + avernus5
END

IF ~~ avernus4
SAY ~I will not accept that. I will not allow the evil in my blood to become who I am, no matter how much I must struggle against it.~
IF ~~ + avernus5
END

IF ~~ avernus5
SAY ~Come, <CHARNAME>. Let us cleanse this pit of what evil we can, and send the fiends into their graves.~
IF ~~ EXIT
END
END
// interjections

// Akanna

I_C_T BDAKANNA 0 C0SireneBDAKANNA0
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Be on your guard, <CHARNAME>. 'Tis clearly more than the usual madness that infects Cyricists...~
END

// Alyth

INTERJECT BDALYTH 30 C0SireneBDALYTH30
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~My lady, there are men starving on the streets as we speak, and others who would extort them for what little they have. Surely you cannot be blind to their needs.~
EXTERN BDALYTH 33

// Ashatiel

I_C_T BDASHATI 5 C0SireneBDASHATI5
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~We can put an end to this battle swiftly and with the least bloodshed this way, <CHARNAME>. Accept her challenge.~
END

// Aun

I_C_T BDAUN 41 C0SireneBDAUN41
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~No, you cannot possibly do this, sir. After all you have suffered, all Caelar has done, you would render all the suffering for naught?~
END

// Barghest

I_C_T BDBARGHE 28 C0SireneBDBARGHE28
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Think this through carefully, <CHARNAME>. The decision is ultimately in your hands... but perhaps no blood need be shed here.~
END

// Bence

I_C_T BDBENCE 41 C0SireneBDBENCE41
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Gods, she cannot possibly have been so foolish...~
END

// Caelar

I_C_T BDCAELAR 6 C0SireneBDCAELAR6
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~I believe her, <CHARNAME>. Though she is no paladin, she is still a woman of honor. Perhaps 'twould be in our best interest to listen to what she has to say.~
END

I_C_T BDCAELAR 87 C0SireneBDCAELAR87
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~'Tis truly the only way, then... perhaps 'tis the only chance she may have for redemption. In the end I can only pity her. Let us honor her sacrifice, <CHARNAME>.~
END

// Coran

I_C_T2 BDCORAN 12 C0SireneBDCORAN12
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SireneMetBG1","GLOBAL",1)~ THEN ~*sigh* Truly, Coran, I am not sure why I expected any differently. (laugh) Go then, you scoundrel, you.~
== BDCORAN ~Thank you, my merciful lady Sirene. Might I say, your eyes are particularly striking in this light- er, never mind. Not the time. Farewell, friends.~
END

// Corinth

EXTEND_BOTTOM BDCORINT 5
+ ~IsValidForPartyDialogue("c0sirene")~ + ~You're a paladin, Sirene. Perhaps this stubborn fool will listen to you.~ EXTERN C02SIREJ bdcorint
END

CHAIN C02SIREJ bdcorint
~Perhaps... perhaps he might. Though I had best keep my cowl raised, just in case...~
== BDCORINT ~I did nothing wrong. You have to believe that. I did nothing wrong.~
== C02SIREJ ~Listen to me, Corinth. I know the secret you keep must be important to you, but lies will not help anyone, least of all yourself. We will help you through this if you trust us. I swear upon my honor.~
EXTERN BDCORINT 8

// Dauston

I_C_T BDFFXXII 1 C0SireneBDFFXXII
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~This one serves the Order of the Aster? 'Tis a sorry state for a servant of the Morninglord.~
END

// Deepvein

I_C_T2 BDDEEP 12 C0SireneBDDEEP12
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) !Global("BD_DOD_KILL_CLERICS","GLOBAL",1)~ THEN ~What are you doing, <CHARNAME>?! I cannot allow this!~
DO ~SetGlobal("bd_joined","LOCALS",0)
ChangeAIScript("",DEFAULT)
LeaveParty()
Enemy()~
END

I_C_T2 BDDEEP 68 C0SireneBDDEEP68
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~You would willingly carry out the lich's bidding? I will not be complicit in this evil!~
DO ~SetGlobal("bd_joined","LOCALS",0)
ChangeAIScript("",DEFAULT)
LeaveParty()
Enemy()~
END

I_C_T2 BDDEEP 12 C0SireneBDDEEP12a
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("BD_DOD_KILL_CLERICS","GLOBAL",1)~ THEN ~You would willingly carry out the lich's bidding? I will not be complicit in this evil!~
DO ~SetGlobal("bd_joined","LOCALS",0)
ChangeAIScript("",DEFAULT)
LeaveParty()
Enemy()~
END

// Dorn

I_C_T BDDORN 29 C0SireneBDDORN29
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~I am surprised you are acquainted with this... blackguard. Do you not see him for what he is?~
== BDDORN ~What I am, woman, is a worthwhile ally and a dangerous enemy. I suggest you mind your tongue.~
END

I_C_T2 BDDORN 35 C0SireneBDDORN35
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~I know not which is worse, having the fiend join us or leaving him amongst our allies. I fear his presence will only bring us trouble.~
END

I_C_T2 BDDORN 40 C0SireneBDDORN31
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~You would allow this fiend in our company? We will have words about this later, <CHARNAME>.~
END

// Fritz

I_C_T2 BDFRITZ 10 C0SireneBDFRITZ10
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~I hope you fully realize what you have done, <CHARNAME>. I understand why you did so, but two wrongs do not make a right.~
END

// Garachen

INTERJECT BDGARACH 5 C0SireneBDGARACH5
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~If 'twere truly the case, you would not have opened your door to them at all. What you are doing is unjust!~
EXTERN BDGARACH 8

I_C_T BDGARACH 9 C0SireneBDGARACH9
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~*sigh* I suppose there is no choice, <CHARNAME>. 'Twould be unreasonable to demand too much, after all. We should go to the Elfsong as the man says.~
END

// Halatathlaer

I_C_T BDHALATA 5 C0SireneBDHALATA5
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~There is something... strange about this spirit, <CHARNAME>. These are its words, but not its intent. I do not believe it desires to harm us... so long as we do not anger it.~
== BDHALATA ~Death is all that awaits you on this path. I cannot say more.~
END

// Helvdar

INTERJECT BDHELVDA 30 C02SireneHELVDA30
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~<CHARNAME>, stop! There is no evidence that this one is the traitor yet. You should at least hear him out.~
END
++ ~Fine. Tell me, dwarf. Who was at this card game?~ EXTERN BDHELVDA 25
++ ~I've got all the evidence I need. Time to die, traitor!~ EXTERN C02SIREJ helvdar

CHAIN C02SIREJ helvdar
~I will not recklessly slaughter our allies, <CHARNAME>. If you must sate your bloodlust, you may do so without my assistance.~
DO ~SetGlobal("bd_npc_camp","locals",1)
SetGlobal("bd_joined","LOCALS",0)
SetGlobal("C0SireneAngered","GLOBAL",1)
LeaveParty()
ChangeAIScript("bdparty",DEFAULT)~
== BDHELVDA ~Help!~
DO ~SetGlobal("SDD303_BOTTLE","GLOBAL",2)
SetGlobal("SDD303_heldvar_muerto","bd3000",1)
ReputationInc(-1)
ChangeSpecifics(Myself,THIEF)
Enemy()~ EXIT

// Hephernaan

I_C_T2 BDHEPHER 23 C0SireneBDHEPHER23
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~We stand against you, fiends, in the name of Ilmater. You will pay for your deception!~
END

// Hyreth

INTERJECT BDHYRETH 2 C02SireneHYRETH2
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~The Crying God... one of many names for lord Ilmater. This soldier is a follower of my god, <CHARNAME>.~
DO ~SetGlobal("BD_WOUNDED_ZEALOT_DOSIA","BD3000",1)~ EXTERN BDHYRETH 3

EXTEND_TOP BDHYRETH 4 #3
+ ~IsValidForPartyDialogue("c0sirene")~ + ~Sirene, this has to do with your faith. You should know what to do.~ EXTERN C02SIREJ bdhyreth4
END

CHAIN C02SIREJ bdhyreth4
~Aye, I believe I do... listen to me, brother. Our Lord teaches us that suffering should be bore for a greater cause. You are not wrong to keep ahold of your pain, but as a fellow member of the faith, I cannot stand by and allow you to suffer. Please, brother, give me your pain, so that we may have your strength to face our foes.~
== BDHYRETH ~I... I understand, holy one. It would be an honor to give my pain to a champion of the Lord. I bow before your will.~
DO ~SetGlobal("BD_WOUNDED_ZEALOT","BD3000",2)
SetGlobal("C02SireneHealsHyreth","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("bdsdd304",TRUE)~ EXIT

// Illaruel

I_C_T2 BDILLARU 2 C0SireneILLARUEL
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Your end has come, erinyes, mockery of celestials!~
== BDILLARU ~Blood of this plane returns to us?! Your skin shall make for a fine trophy!~
END

I_C_T2 BDILLARU 3 C0SireneILLARUEL
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Your end has come, erinyes, mockery of celestials!~
== BDILLARU ~Blood of this plane returns to us?! Your skin shall make for a fine trophy!~
END

I_C_T2 BDILLARU 4 C0SireneILLARUEL
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Your end has come, erinyes, mockery of celestials!~
== BDILLARU ~Blood of this plane returns to us?! Your skin shall make for a fine trophy!~
END

// Imoen

EXTEND_BOTTOM BDIMOEN 104
+ ~Global("C0Sirene_party_epilogue","global",1)~ + ~I know she must've had her reasons, but I had hoped to see Sirene again.~ EXTERN BDIMOEN bdimoen1
END

EXTEND_BOTTOM BDIMOEN 109
+ ~Global("C0Sirene_party_epilogue","global",1)~ + ~I know she must've had her reasons, but I had hoped to see Sirene again.~ EXTERN BDIMOEN bdimoen1
END

CHAIN BDIMOEN bdimoen1
~I saw her, actually. Even managed to trade a few words, even though she was trying her hardest to evade notice. Can't blame her, really. With your reputation dragged through the mud, her blood's not gonna win her any favor with the people. She's really torn about not being able to help you, <CHARNAME>. I could just... tell.~
EXTERN BDIMOEN 119

// Isabella

I_C_T BDISABEL 5 C0SireneBDISABEL5
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~A vampire? We should not stand by if 'tis in our power to destroy such a beast, <CHARNAME>.~
END

I_C_T2 BDISABEL 40 C0SireneBDISABEL40
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~I will not shed innocent blood for the sake of an unholy creature, <CHARNAME>. I fear I must stand against you in this!~
DO ~SetGlobal("bd_joined","LOCALS",0)
ChangeAIScript("",DEFAULT)
LeaveParty()
Enemy()~
END

// Korlasz

I_C_T2 BDKORLAS 27 C0SireneBDKORLAS27
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SireneMetBG1","GLOBAL",1)~ THEN ~You should have sought your atonement while you had the chance, Korlasz. Now you leave us no choice!~
END

// Lluis

EXTEND_BOTTOM BDLLUIS 5
+ ~IsValidForPartyDialogue("C0Sirene")~ + ~Hmm... I've got an idea. Perhaps you could give them a scare, Sirene?~ EXTERN C02SIREJ bdlluis
END

CHAIN C02SIREJ bdlluis
~You wish for me to intimidate them? Er... 'tis not something I have ever been asked to do.~
END
++ ~It's either that or we start a bloodbath right here.~ EXTERN C02SIREJ bdlluis1
++ ~You just need to show your horns and give a mean look. It'll sent them packing.~ EXTERN C02SIREJ bdlluis1
++ ~Oh, come on. It'll be fun.~ EXTERN C02SIREJ bdlluis1

CHAIN C02SIREJ bdlluis1
~*sigh* I suppose you have a point, <CHARNAME>. I will do my best, just this once.~
= ~Scoundrels. I suggest you run while you can. You stand no chance against us - and my kind are *not* known for showing mercy.~
EXTERN BDASERY 1

// Madele

INTERJECT BDMADELE 1 C0SireneBDMADELE1
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~I see... so this woman must be a surviving priestess of Bhaal, kept captive by the Cyricists. She must have been imprisoned many years ago.~
EXTERN BDMADELE 2

// Perren

I_C_T BDPERREN 1 C0SireneBDPERREN1
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~What is this? You are using the situation to extort these desperate folk?~
END

// Raeanndra

I_C_T BDRAEANN 4 C0SireneBDRAEANN4
== BDRAEANN IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~But I suppose you're more than familiar with our lot already, seeing as you've got one with you and whatnot. Which Plane are you from, then?~
== C02SIREJ ~I am afraid I must disappoint you, Raeanndra, but though I may have fiend blood, I was born and have lived as a Prime.~
== BDRAEANN ~Really, now? *sniff* Aye, you got the smell o one, no doubt. Got a nose for that sort of thing where our lot is concerned. Still, well met.~
END

// Sacrifice

I_C_T BDSAC01 0 C0SireneBDSAC010
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~By Ilmater, what insanity is this?!~
END

I_C_T BDSAC01 1 C0SireneBDSAC011
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) !IsValidForPartyDialogue("corwin")~ THEN ~How monstrous... I cannot say for sure what this is, but somehow... they are tearing away the humanity from those men, leaving nothing but a malignant aura! We must stop this!~
END

I_C_T BDCORWIJ 312 C0SireneBDCORWIJ312
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~How monstrous... I cannot say for sure what this is, but somehow... they are tearing away the humanity from those men, leaving nothing but a malignant aura.~
END

// Taield

EXTEND_TOP BDTAIELD 1 #3
+ ~IsValidForPartyDialogue("c0sirene")~ + ~Do you think you can offer some insight, Sirene?~ DO ~IncrementGlobal("BD_FIGHTERS_SKILL","BD3000",2) SetGlobal("bd_sdd301_taield_skill","global",2)~ EXTERN C02SIREJ bdtaield1
END

CHAIN C02SIREJ bdtaield1
~I... I would not presume to educate another in warfare, but I know the feeling of exclusion well.~
= ~My blood has made me different from those around me since I was born, and many fear me for what I am. No matter what I do for others, there are few who would accept me once I removed my cowl.~
= ~I accepted long ago that I may never be accepted by the world. But despite that, the decision to become a champion of good was my own. Not for the sake of others' approval, but because I believed in what I was fighting for. You can find it in you to do the same.~
EXTERN BDTAIELD 6

// Teleria

I_C_T2 BDTELERI 31 C0SireneBDTELERI31
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~You cannot be truly considering this, <CHARNAME>. You know what this woman is intending. Know that I will not stand for such a despicable act.~
END

// Waizahb

INTERJECT BDWAIZAH 6 waizahb1
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~The lives of many men depend entirely on that cure, <CHARNAME>. You would sell it so easily to extortionists?~
END
++ ~You're right. I don't know what I was thinking.~ DO ~SetGlobal("waizahb1","GLOBAL",0)~ EXTERN BDWAIZAH 7
++ ~They'll get it one way or another. This way, I benefit as well.~ EXTERN C02SIREJ waizahb2
++ ~Watch me.~ EXTERN C02SIREJ waizahb2

CHAIN C02SIREJ waizahb2
~Your disregard for the lives of others in the face of personal gain disgusts me. I will have no more of it.~
DO ~SetGlobal("bd_npc_camp","locals",1)
SetGlobal("bd_joined","LOCALS",0)
SetGlobal("C0SireneAngered","GLOBAL",1)
LeaveParty()
ChangeAIScript("bdparty",DEFAULT)~ EXTERN BDWAIZAH 8

APPEND C02SIREJ

IF ~Global("C02SireneTeleria","BD1000",1)~ SireneTeleria
SAY ~I warned you against this, <CHARNAME>. I had not thought you truly capable of such cruelty, but you have crossed the line. I shall return to the camp and do what I can to restore these people, but do not think that you can depend on my blade again.~
IF ~~ DO ~ReputationInc(-1)
SetGlobal("C02SireneTeleria","BD1000",2)
SetGlobal("bd_npc_camp","locals",1)
SetGlobal("bd_joined","LOCALS",0)
SetGlobal("C0SireneAngered","GLOBAL",1)
LeaveParty()
ChangeAIScript("bdparty",DEFAULT)~ EXIT
END
END

// Bridgefort Betrayal

APPEND C02SIREJ

IF ~Global("C02SireneBridgefort","GLOBAL",1)~ bridgefort
SAY ~Do you realize what you have done, <CHARNAME>? 'Tis almost certain that the crusade will force the people of Bridgefort to join their ranks, and you have rendered our allies' toil and sacrifice for naught! Why would you do such a thing?~
+ ~CheckStatGT(Player1,15,CHR)~ + ~It was a lapse in judgment. I hope you'll forgive me.~ + bridgefort1
+ ~CheckStatLT(Player1,16,CHR)~ + ~It was a lapse in judgment. I hope you'll forgive me.~ + bridgefort2
+ ~CheckStatGT(Player1,15,WIS)~ + ~I needed every advantage I could get to face the Shining Lady. That's the only way to end this crusade, and if sacrifices must be made, then so be it.~ + bridgefort1
+ ~CheckStatLT(Player1,16,WIS)~ + ~I needed every advantage I could get to face the Shining Lady. That's the only way to end this crusade, and if sacrifices must be made, then so be it.~ + bridgefort2
+ ~CheckStatGT(Player1,15,INT)~ + ~This is war. Losing Bridgefort was regrettable, but we'll reach our objective more easily this way.~ + bridgefort1
+ ~CheckStatLT(Player1,16,INT)~ + ~This is war. Losing Bridgefort was regrettable, but we'll reach our objective more easily this way.~ + bridgefort2
END

IF ~~ bridgefort1
SAY ~I will trust that you did not do it out of genuine malice, <CHARNAME>, though I cannot agree that this was the best possible end.~
IF ~~ DO ~SetGlobal("C02SireneBridgefort","GLOBAL",2)~ EXIT
END

IF ~~ bridgefort2
SAY ~No. I do not believe that. You have betrayed the trust of those that depended on you, and in doing so, you have betrayed my trust as well. I will follow you no longer.~
IF ~~ DO ~SetGlobal("C02SireneBridgefort","GLOBAL",2)
SetGlobal("bd_npc_camp","locals",1)
SetGlobal("bd_joined","LOCALS",0)
SetGlobal("C0SireneAngered","GLOBAL",1)
LeaveParty()
ChangeAIScript("bdparty",DEFAULT)~ EXIT
END
END

// Uncommon Cold

I_C_T BDDOSIA 3 C0SireneBDDOSIA3
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Aye, but 'tis a necessary one... I am glad to see others of the faith among us, Painbearer.~
== BDDOSIA ~Aye, sister. 'Tis comforting to meet another of the church. Would that it were in better circumstances.~
END

I_C_T BDDOSIA 18 C0SireneBDDOSIA18
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~I agree with her, <CHARNAME>... we have not considered other possible solutions yet. Please, do not resort to this.~
END

I_C_T2 BDDOSIA 19 C0SireneBDDOSIA19
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~I would never have expected you to support such a monstrous decision, <CHARNAME>. Now that I know, I can no longer follow you in good faith.~
DO ~SetGlobal("bd_npc_camp","locals",1)
SetGlobal("bd_joined","LOCALS",0)
SetGlobal("C0SireneAngered","GLOBAL",1)
LeaveParty()
ChangeAIScript("bdparty",DEFAULT)~ END

I_C_T2 BDDOSIA 21 C0SireneBDDOSIA21
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~I would never have expected you to support such a monstrous decision, <CHARNAME>. Now that I know, I can no longer follow you in good faith.~
DO ~SetGlobal("bd_npc_camp","locals",1)
SetGlobal("bd_joined","LOCALS",0)
SetGlobal("C0SireneAngered","GLOBAL",1)
LeaveParty()
ChangeAIScript("bdparty",DEFAULT)~ END

I_C_T BDDOSIA 47 C0SireneBDDOSIA47
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~The fallen haunt my dreams, as well... I had hoped 'twas not the same for others, but I see 'tis the burden we all share...~
== BDDOSIA ~Aye... and when you have seen cruelties more terrible than words can describe...~
END

INTERJECT BDDOSIA 49 C02SireneTest
== C02SIREJ IF ~Global("C02SireneTest","GLOBAL",0) IfValidForPartyDialog("c0sirene")~ THEN ~Wait, sister... I have not encountered another of our brethren with experience to match yours. I feel, sometimes, that the burdens we of the Ilmatari must bear weighs too heavily on us... if you allow it, I would like to spend some time learning from you.~
== BDDOSIA ~I am... not opposed to it. But I warn you that I am a strict teacher, and I will test your dedication to the faith greatly. Are you truly willing?~
== C02SIREJ ~Aye, I am.~
== BDDOSIA ~Then come with me, acolyte. Excuse us, <CHARNAME>. This should not take long.~
END
IF ~ReputationLT(Player1,10)~ DO ~SetGlobal("C02SireneTest","GLOBAL",1) FadeFromColor([10.0],0) AddXPObject("c0sirene",1000)~ EXTERN BDDOSIA C02SireneTestEnd
IF ~ReputationGT(Player1,9) ReputationLT(Player1,18)~ DO ~SetGlobal("C02SireneTest","GLOBAL",1) FadeFromColor([50.0],0) AddXPObject("c0sirene",5000)~ EXTERN BDDOSIA C02SireneTestEnd
IF ~ReputationGT(Player1,17)~ DO ~SetGlobal("C02SireneTest","GLOBAL",1) FadeFromColor([10.0],0) AddXPObject("c0sirene",10000)~ EXTERN BDDOSIA C02SireneTestEnd

CHAIN BDDOSIA C02SireneTestEnd
~...and thus, my lessons are complete. Remember them, and may they serve you well in the future. Good luck to you, sister.~
== C02SIREJ ~Thank you, sister Dosia.~
DO ~PlaySound("GAM_11") ReallyForceSpellRES("c02wis",Myself)~
== BDDOSIA ~You are most welcome, sister Sirene. Now I must return to my duties.~
END
IF ~~ DO ~SetGlobal("bd_dosia_story","global",1)
AddJournalEntry(61451,QUEST)
AddJournalEntry(66970,QUEST)~ EXIT
IF ~GlobalLT("bd_sdd326_heard_stories","bd3000",2)~ DO ~SetGlobal("bd_dosia_story","global",1)
IncrementGlobal("bd_sdd326_heard_stories","bd3000",1)
AddJournalEntry(61451,QUEST)~ EXIT

EXTEND_BOTTOM BDXERRA 1
+ ~IsValidForPartyDialogue("c0sirene")~ + ~Calm down, soldier. Perhaps Sirene can do something for you.~ EXTERN C02SIREJ bdxerra1
END

CHAIN C02SIREJ bdxerra1
~His skin is unnaturally hot... if we do not bring down his fever, I fear he will not live long. Perhaps... yes, I think I know of a salve that can stabilize him for the moment.~ DO ~SetGlobal("bd_patient_xerra","global",2) IncrementGlobal("bd_sdd302_death_count","global",-1)~ 
EXTERN BDXERRA 2

EXTEND_BOTTOM BDZIDRAN 1
+ ~IsValidForPartyDialogue("c0sirene")~ + ~Remain still. Sirene will take care of you.~ DO ~SetGlobal("bd_patient_zidrand","global",2) IncrementGlobal("bd_sdd302_death_count","global",-1)~ EXTERN C02SIREJ bdzidran1
END

CHAIN C02SIREJ bdzidran1
~She is in far worse shape than the rest... it must be because of her position. We cannot allow her to remain close to the other patients. Separate from the rest of the ill, so that her condition does not worsen.~
EXTERN BDZIDRAN 2

EXTEND_BOTTOM BDYESTIM 1
+ ~IsValidForPartyDialogue("c0sirene")~ + ~What do you think, Sirene?~ DO ~SetGlobal("bd_patient_yestimell","global",2) IncrementGlobal("bd_sdd302_death_count","global",-1)~ EXTERN C02SIREJ bdyestim1
END

CHAIN C02SIREJ bdyestim1
~He is worsening his condition by wasting energy. This is bad... we must find a way to calm him, quickly, before- by Ilmater, no, 'tis too late. We have no choice but to-!~
EXTERN BDYESTIM 5

EXTEND_TOP BDDOSIA 11 #3
+ ~IsValidForPartyDialogue("c0sirene")~ + ~Any ideas, Sirene?~ EXTERN C02SIREJ bddosia11
END

CHAIN C02SIREJ bddosia11
~I have treated similar diseases in the past, though as for remedies that we can acquire easily... blackthorn! Yes, there must be blackthorn trees in the nearby woods. If its bark does not help, nothing will.~
DO ~SetGlobal("bd_sdd302_uncommon_cold","global",2)
SetGlobal("bd_sdd302_blackthorn","global",1)
AddJournalEntry(61438,QUEST)~ EXTERN BDDOSIA 14

I_C_T BDVOGHIJ 198 C0SireneBDVOGHIJ198
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~*sigh* Voghiln, please... still your tongue a moment. I am eager to listen to this as well.~
END

// Thrix the Profane

EXTEND_BOTTOM BDTHRIX 21
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 22 #3
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 23 #5
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 24 #8
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 26
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_TOP BDTHRIX 27 #3
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 28 #5
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_TOP BDTHRIX 29 #8
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 30
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 31 #3
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 32 #5
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 33 #8
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 34
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 35 #3
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 36 #5
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 37 #8
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 38
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 39 #3
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 40 #5
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 41 #8
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 42
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 43 #3
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 44 #5
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 45 #8
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 46
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 47 #3
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 48 #5
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 49 #8
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 50
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 51 #3
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 52 #5
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 53 #8
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 54
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 55 #3
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 56 #5
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 57 #8
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 58
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 59 #3
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 60 #5
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 61 #8
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 62
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 63 #3
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 64 #5
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 65 #8
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 66
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 67 #3
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 68 #5
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 69 #8
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 70
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 71 #3
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 72 #5
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 73 #8
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 74
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 75 #3
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 76 #5
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 77 #8
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 78
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 79 #3
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 80 #5
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 81 #8
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 82
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 83 #3
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 84 #5
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 85 #8
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 90
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 91 #3
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 92 #5
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

EXTEND_BOTTOM BDTHRIX 93 #8
IF ~Global("C02_Saved_Sirene","bd4500",0)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager1
END

CHAIN BDTHRIX ThrixWager1
~Ahh, and what better choice than she whose blood belongs to this plane? The tiefling who fancies herself a paladin, whose very being is a delicious irony. Thrix shall claim her soul should you fail to answer my riddle.~
END
++ ~I suppose Sirene is a worthwhile wager for her blood alone. Go ahead, devil, say your riddle.~ DO ~SetGlobal("C02SireneSacrifice","bd4500",1) SetGlobal("bd_thrix_sacrifice_companion","global",1)~ EXTERN BDTHRIX 116
+ ~OR(2) Global("C02SireneRomanceActive","GLOBAL",1) Global("C02SireneRomanceActive","GLOBAL",2)~ + ~I would never give Sirene up to your whims. She is too important to me.~ DO ~SetGlobal("C02_Saved_Sirene","bd4500",1) IncrementGlobal("BD_NumInParty","bd4500",1)~ EXTERN C02SIREJ ThrixWager2
+ ~!Global("C02SireneRomanceActive","GLOBAL",1) !Global("C02SireneRomanceActive","GLOBAL",2)~ + ~I would never give Sirene up to your whims. She is too useful of an ally to lose.~ DO ~SetGlobal("C02_Saved_Sirene","bd4500",1) IncrementGlobal("BD_NumInParty","bd4500",1)~ EXTERN C02SIREJ ThrixWager2
++ ~Though she may share the blood of this plane, she is no kin of yours, fiend. If you want to play, it'll be my soul we wager.~ EXTERN BDTHRIX 113
++ ~I'll not play your twisted game, devil. Stand aside, or pay the price.~ EXTERN BDTHRIX 12

CHAIN C02SIREJ ThrixWager2
~I would gladly give my soul were it for the sake of my friends, but I would sooner destroy this loathsome fiend than play its cruel game. Do not listen to its poisonous words, my friend.~
EXTERN BDTHRIX ThrixWager3

CHAIN BDTHRIX ThrixWager3
~Such a pity. I had my sights on this one in particular. She would have been most entertaining to corrupt.~
END
IF ~RandomNum(4,1)~ EXTERN BDTHRIX 78
IF ~RandomNum(4,2)~ EXTERN BDTHRIX 79
IF ~RandomNum(4,3)~ EXTERN BDTHRIX 80
IF ~RandomNum(4,4)~ EXTERN BDTHRIX 81

EXTEND_BOTTOM BDTHRIX 118
IF ~Global("C02SireneSacrifice","bd4500",1)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 119
IF ~Global("C02SireneSacrifice","bd4500",1)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 120
IF ~Global("C02SireneSacrifice","bd4500",1)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 121
IF ~Global("C02SireneSacrifice","bd4500",1)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager4
END

EXTEND_BOTTOM BDTHRIX 122
IF ~Global("C02SireneSacrifice","bd4500",1)
IsValidForPartyDialogue("C0Sirene")~ EXTERN BDTHRIX ThrixWager4
END

CHAIN BDTHRIX ThrixWager4
~Yesss... though the infernal blood in this girl is faint, there is power in it regardless. She will become a most capable blackguard, and increase my standing in this Plane.~
END
++ ~I'm... sorry, Sirene. I've made a terrible mistake.~ DO ~SetGlobal("C02_thrix_mark_Sirene","global",1)~ EXTERN C02SIREJ ThrixWager5
++ ~Enough of this. If you want her soul, you shall have to take it by force!~ EXTERN BDTHRIX 10

CHAIN C02SIREJ ThrixWager5
~If you demand that I bow, fiend, I shall answer you with my blade!~
DO ~SetGlobal("bd_thrix_plot","global",11)~ EXTERN BDTHRIX 140

// Thrix reaction - non-romanced

APPEND C02SIREJ

IF ~Global("C02SireneSacrifice","bd4500",1)
!Global("C02SireneRomanceActive","GLOBAL",1)
!Global("C02SireneRomanceActive","GLOBAL",2)~ ThrixTalk0
SAY ~What madness possessed you, <CHARNAME>? Did you truly believe that dealing with a devil would not be without consequences?~
+ ~!Global("C02_thrix_mark_Sirene","global",1)~ + ~I didn't think far enough ahead. Forgive me.~ DO ~SetGlobal("C02SireneSacrifice","bd4500",2)~ + ThrixTalk2
+ ~Global("C02_thrix_mark_Sirene","global",1)~ + ~I didn't think far enough ahead. Forgive me.~ DO ~SetGlobal("C02SireneSacrifice","bd4500",2)~ + ThrixTalk1
+ ~!Global("C02_thrix_mark_Sirene","global",1)~ + ~Aren't you more concerned with the fact that I just wagered your soul?~ DO ~SetGlobal("C02SireneSacrifice","bd4500",2)~ + ThrixTalk3
+ ~Global("C02_thrix_mark_Sirene","global",1)~ + ~Aren't you more concerned with the fact that I just wagered your soul?~ DO ~SetGlobal("C02SireneSacrifice","bd4500",2)~ + ThrixTalk1
+ ~!Global("C02_thrix_mark_Sirene","global",1)~ + ~Oh, I knew there'd be consequences. That's why I risked you instead of myself.~ DO ~SetGlobal("C02SireneSacrifice","bd4500",2)~ + ThrixTalk4
+ ~Global("C02_thrix_mark_Sirene","global",1)~ + ~Oh, I knew there'd be consequences. That's why I risked you instead of myself.~ DO ~SetGlobal("C02SireneSacrifice","bd4500",2)~ + ThrixTalk1
END

IF ~~ ThrixTalk1
SAY ~I fear I will not rest easy from this day onwards, so long as the devil continues to hunt my soul. He may claim my life, but he shall never corrupt my faith.~
= ~When he comes, I will fight to the bitter end. But I will do it without your 'assistance'.~
IF ~~ EXIT
END

IF ~~ ThrixTalk2
SAY ~It will take more than words to gain my forgiveness, <CHARNAME>. I can only hope you never play such cruel games again, with me or anyone else.~
IF ~~ EXIT
END

IF ~~ ThrixTalk3
SAY ~I would be, if your betrayal of my friendship and trust did not concern me infinitely more. Perhaps losing my soul then and there would have been more merciful.~
IF ~~ EXIT
END

IF ~~ ThrixTalk4
SAY ~I must have been blind to have not seen your true colors. Once this is over, pray that our paths do not cross again, for the only mercy I have remaining is the edge of my blade.~
IF ~~ EXIT
END

// Thrix reaction - romanced

IF ~Global("C02SireneSacrifice","bd4500",1)
OR(2)
Global("C02SireneRomanceActive","GLOBAL",1)
Global("C02SireneRomanceActive","GLOBAL",2)~ ThrixTalkRom0
SAY ~I... I had thought I was worth more to you than as a gambling chip for a devil's games, <CHARNAME>. 'Twould seem I was wrong.~
+ ~CheckStatGT(Player1,15,CHR) !Global("C02_thrix_mark_Sirene","global",1)~ + ~You cannot think I truly meant to risk your soul there, Sirene.~ DO ~SetGlobal("C02SireneSacrifice","bd4500",2)~ + ThrixTalkRom2
+ ~CheckStatLT(Player1,16,CHR) !Global("C02_thrix_mark_Sirene","global",1)~ + ~You cannot think I truly meant to risk your soul there, Sirene.~ DO ~SetGlobal("C02SireneSacrifice","bd4500",2)~ + ThrixTalkRom1
+ ~Global("C02_thrix_mark_Sirene","global",1)~ + ~You cannot think I truly meant to risk your soul there, Sirene.~ DO ~SetGlobal("C02SireneSacrifice","bd4500",2)~ + ThrixTalkRom1
+ ~CheckStatGT(Player1,15,CHR) !Global("C02_thrix_mark_Sirene","global",1)~ + ~Maybe you are, but a sacrifice had to be made. Or is that no longer part of your faith?~ DO ~SetGlobal("C02SireneSacrifice","bd4500",2)~ + ThrixTalkRom2
+ ~CheckStatLT(Player1,16,CHR) !Global("C02_thrix_mark_Sirene","global",1)~ + ~Maybe you are, but a sacrifice had to be made. Or is that no longer part of your faith?~ DO ~SetGlobal("C02SireneSacrifice","bd4500",2)~ + ThrixTalkRom1
+ ~Global("C02_thrix_mark_Sirene","global",1)~ + ~Maybe you are, but a sacrifice had to be made. Or is that no longer part of your faith?~ DO ~SetGlobal("C02SireneSacrifice","bd4500",2)~ + ThrixTalkRom1
+ ~!Global("C02_thrix_mark_Sirene","global",1)~ + ~Yes, you were. If you have a problem with it, then too bad.~ DO ~SetGlobal("C02SireneSacrifice","bd4500",2)~ + ThrixTalkRom1
+ ~Global("C02_thrix_mark_Sirene","global",1)~ + ~Yes, you were. If you have a problem with it, then too bad.~ DO ~SetGlobal("C02SireneSacrifice","bd4500",2)~ + ThrixTalkRom1
END

IF ~~ ThrixTalkRom1
SAY ~By Ilmater's mercy, I wish that I were dead. Perhaps 'tis the fate I deserve for being such a fool.~
= ~Do not speak to me, <CHARNAME>. Do not even *dare* to look at me.~
IF ~~ DO ~SetGlobal("C02SireneRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ ThrixTalkRom2
SAY ~I should not forgive you, <CHARNAME>. Everything tells me that, by all rights, I should despise you for what you have done. But I am a selfish fool, too blinded to my own emotions to listen.~
= ~'Twould be a mercy if I could forget easily, <CHARNAME>. But I will not live to see the next time you betray me.~
IF ~~ EXIT
END

// Tender of the Dead

IF ~Global("C02SireneVelsharoon","GLOBAL",1)~ velsharoon
SAY ~Something is very wrong here, <CHARNAME>.~
++ ~That's obvious.~ + velsharoon1
++ ~It's not like we haven't dealt with undead before.~ + velsharoon1
++ ~What's so wrong about this?~ + velsharoon1
END

IF ~~ velsharoon1
SAY ~The rise of the undead is not new to me, but there is something else about these corpses... someone *commanded* them to rise at our touch, as though to lure us into a trap.~
= ~I recognize the signs, the markings on the bodies - this is the work of a follower of Velsharoon, a malicious deity of undeath.~
= ~Be wary, <CHARNAME>. I suspect that we have somehow been deceived, and all is not what it seems.~
IF ~~ DO ~SetGlobal("C02SireneVelsharoon","GLOBAL",2) SetGlobal("KNOW_VELSHAROON","GLOBAL",1)~ EXIT
END

END

INTERJECT BDJUNIA 16 C0SireneBDJUNIA16
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~The Morningstar? Forgive my ignorance, but... among those of the faith that I have met, I have never heard the Morninglord referred to as thus.~
EXTERN BDJUNIA 18

INTERJECT BDJUNIA 33 C0SireneBDJUNIA33
== C02SIREJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~Enough of your lies. I sense your evil nature slipping from its mask as we speak. You shall pay for mocking the faith of the Morninglord!~
END
IF ~IsValidForPartyDialogue("Dynaheir")~ EXTERN BDDYNAHJ 95
IF ~!IsValidForPartyDialogue("Dynaheir")~ EXTERN BDJUNIA 34

// Dorn conflict

CHAIN IF WEIGHT #-1 ~Global("C02SireneDornConflict","GLOBAL",2)~ THEN C02SIREJ Dorn1
~I must speak with you regarding the blackguard, <CHARNAME>.~
== BDDORNJ ~I am right here, fiendling. If you have something to say, say it to my face.~
== C02SIREJ ~As you wish. I will say it plainly, then. I object to your presence.~
== BDDORNJ ~And?~
== C02SIREJ ~I know your kind. The blood of countless innocents stains your hands, and you wield powers controlled by a thin thread, from a master who cares naught for your well-being or morality. I cannot trust you to stand by my side.~
== BDDORNJ ~I do not exist to cater to your desires, tool. If you object to my presence, then begone. We have no use for you.~
== C02SIREJ ~<CHARNAME>, I will have naught to do with this servant of evil. 'Twas your choice to accept him, so I shall not cause conflict, but I refuse to suffer his company.~
END
	+ ~CheckStatGT(Player1,12,CHR)~ + ~Remember our situation, Sirene. We're at war here, and we need the strongest allies we can get. Dorn is a valuable ally, and I can trust him - to a certain extent at least. I need the both of you.~ EXTERN C02SIREJ Dorn4
	++ ~You're free to leave if you have an issue with Dorn's presence.~ DO ~SetGlobal("bd_npc_camp","locals",1)~ EXTERN C02SIREJ Dorn2
	++ ~I'd rather not start a fight between our allies. Dorn, leave us.~ DO ~SetGlobal("bd_npc_camp","locals",1)~ EXTERN BDDORNJ Dorn3
	
CHAIN C02SIREJ Dorn2
~As you wish. I do not agree with your decision, but I shall respect it. For now, I shall wait at the camp. Be wary of that one.~
END
IF ~~ DO ~SetGlobal("bd_npc_camp","locals",1) SetGlobal("bd_joined","locals",0) ChangeAIScript("bdparty",DEFAULT) LeaveParty()~ EXIT

CHAIN BDDORNJ Dorn3
~You would discard me for this simpering harlot? A foolish decision. When you return to your senses, you know where to find me.~
END
IF ~~ DO ~SetGlobal("bd_npc_camp","locals",1) SetGlobal("bd_joined","locals",0) ChangeAIScript("bdparty",DEFAULT) LeaveParty()~ EXIT

CHAIN C02SIREJ Dorn4
~I understand, <CHARNAME>, but... he is dangerous. I can put my honor aside for the sake of our task, but I cannot put our group's safety at risk.~
END
	+ ~!Global("C02SireneDornTruce","GLOBAL",1) CheckStatGT(Player1,15,CHR)~ + ~I can control him. Trust me.~ DO ~SetGlobal("C02SireneDornTruce","GLOBAL",1)~ EXTERN C02SIREJ Dorn5
	++ ~Looks like there's no convincing you. In that case, I'll have to ask you to leave.~ DO ~SetGlobal("bd_npc_camp","locals",1)~ EXTERN C02SIREJ Dorn2
	++ ~I see your point. Get out, Dorn.~ DO ~SetGlobal("bd_npc_camp","locals",1)~ EXTERN BDDORNJ Dorn3
	
CHAIN C02SIREJ Dorn5
~*sigh* Very well. I trust your judgment, <CHARNAME>, though I will not trust this... beast. For the time being, however, I agree to a truce.~
END
	++ ~Are we clear, Dorn?~ EXTERN BDDORNJ Dorn6
	
CHAIN BDDORNJ Dorn6
~We do not need this wench, <CHARNAME>. However... out of respect for your leadership, I will abide by your decision. A... truce it is, then.~
== C02SIREJ ~I warn you, however. If you make any transgressions against <CHARNAME> or anyone else on our side, I will end you without hesitation.~
== BDDORNJ ~You can try. But I suggest you silence yourself and stay out of my way, so that your head may remain on your neck a while longer.~
END
IF ~~ DO ~SetGlobal("C02SireneDornConflict","GLOBAL",3)~ EXIT

// Aun Argent

APPEND C02SIREJ

IF ~Global("C02SireneAun","GLOBAL",2)~ aun
SAY ~The fallen paladin mentioned Aun Argent... truly, if he once served the man, then I pity his fall.~
+ ~OR(3)
Class(Player1,PALADIN_ALL)
Class(Player1,CLERIC_ALL)
CheckStatGT(Player1,14,INT)~ + ~I'm familiar with the name. He's one of the more reputable servants of Lathander. You know of him as well?~ + aun1
+ ~!Class(Player1,PALADIN_ALL)
!Class(Player1,CLERIC_ALL)
!CheckStatGT(Player1,14,INT)~ + ~You know of the person that drunkard was talking about?~ + aun1
++ ~This is unimportant. Let's move on.~ + aun0
END

IF ~~ aun0
SAY ~Aye... as you wish.~
IF ~~ DO ~SetGlobal("C02SireneAun","GLOBAL",3)~ EXIT
END

IF ~~ aun1
SAY ~Aye... I doubt anyone well-versed in Lathander's church has not heard his name. Aun Argent is enough of a legend that his deeds were well known thoughout the land beyond Waterdeep.~
= ~When I was at the age of twelve, eight years before I began my pilgrimage, knights of Lathander passed through my home village. I believe that was when I first heard the name of 'Aun of the Asters'.~
= ~But I had no idea that he was so closely related to our foe, Caelar Argent... I would never have dreamed that the kin of such a hero could descend to causing such chaos.~
++ ~We'll see the Shining Lady's character ourselves soon enough. Perhaps they're not so different as you suspect.~ + aun2
++ ~Family are not necessarily all the same.~ + aun3
++ ~Perhaps the man is less noble than the tales present him.~ + aun4
++ ~We've got things to do. Let's move on.~ + aun0
END

IF ~~ aun2
SAY ~Perhaps you are right. 'Tis too early for me to judge... but 'tis difficult to believe any noble soul could allow such suffering to befall the innocent.~
IF ~~ DO ~SetGlobal("C02SireneAun","GLOBAL",3)~ EXIT
END

IF ~~ aun3
SAY ~Aye, I suppose you are a living example of such, <CHARNAME>.~
IF ~~ DO ~SetGlobal("C02SireneAun","GLOBAL",3)~ EXIT
END

IF ~~ aun4
SAY ~A discomforting thought, <CHARNAME>... but I cannot deny there is a possibility of such. I suppose we shall never know the truth of it. Aun Argent disappeared from the Realms many years ago... and now we must face the kin of one I considered a legend. Strange things truly happen in life.~
IF ~~ DO ~SetGlobal("C02SireneAun","GLOBAL",3)~ EXIT
END

// Glen

IF ~Global("C02SireneGlen","GLOBAL",2)~ glen
SAY ~Well... 'twas a surprise, I suppose. I thought I would never encounter a figure from my own past, especially as far as my childhood... though I... am glad for the result.~
+ ~CheckStatGT(Player1,9,WIS)~ + ~Why didn't you tell him who you were?~ DO ~SetGlobal("C02SireneGlen","GLOBAL",3)~ + glen1
+ ~CheckStatLT(Player1,10,WIS)~ + ~Wait, did you know him?~ DO ~SetGlobal("C02SireneGlen","GLOBAL",3)~ + glen2
++ ~Whatever. Let's move on.~ DO ~SetGlobal("C02SireneGlen","GLOBAL",3)~ EXIT
END

IF ~~ glen1
SAY ~What would you have me tell him, <CHARNAME>? That I was once that violent, hateful child who gave him an injury beyond healing? No... I may no longer be that person, but her crimes remain with me.~
= ~Perhaps I should have faced my guilt, but he has found a good life despite the horrible crime I inflicted upon him. That my presence brought such a terrible memory back to him is already something I regret.~
= ~*sigh* It matters not. I am not worthy of his forgiveness, but he has given it regardless... I shall have to be satisfied with that.~
IF ~~ EXIT
END

IF ~~ glen2
SAY ~Yes... yes, I did. But I do not care to speak of it. We have more pressing matters to attend to.~
IF ~~ EXIT
END
END

// Killed Demon Knight

CHAIN IF ~Global("C02SireneMystery","GLOBAL",2)~ THEN C02SIREJ DKnight1
~We were victorious, but... there are so many questions left unanswered.~
== BDBAELOJ IF ~IsValidForPartyDialogue("BAELOTH")~ THEN ~My, what a splendiferous summoning of a most savory specimen! Now, I must learn that little trick for myself...~
== BDDORNJ IF ~IsValidForPartyDialogue("DORN")~ THEN ~Ha! Now *that* was a worthy battle! It's almost worth bearing the wench's company to face more of such creatures.~
== BDGLINTJ IF ~IsValidForPartyDialogue("GLINT")~ THEN ~Whoa! That was terrifying! Not nearly as much as my angry mother, but it's the closest I've seen for a long time.~
== BDRASAAJ IF ~IsValidForPartyDialogue("RASAAD")~ THEN ~Selune's light, what power that man must have wielded, to have such a powerful demon at his command!~
== BDCORWIJ IF ~IsValidForPartyDialogue("CORWIN")~ THEN ~You have a dangerous enemy out there. For all our sakes, I hope that's the last we see of him.~
== BDSAFANJ IF ~IsValidForPartyDialogue("SAFANA")~ THEN ~Who *was* that? Hmm... what else haven't you told us, dear?~
== BDNEERAJ IF ~IsValidForPartyDialogue("NEERA")~ THEN ~Oh, gods. That was waaaay worse than anything I've summoned, whether on purpose or by accident. Please tell me there isn't more.~
== BDMINSCJ IF ~IsValidForPartyDialogue("MINSC")~ THEN ~But a victory is a victory, my friend! Questions can be answered any time, but we have kicked a mighty demon butt this day!~
== BDDYNAHJ IF ~IsValidForPartyDialogue("DYNAHEIR")~ THEN ~'Tis most disturbing... I sensed that thy foe had power most frightening, yet he saw fit to let us live... I fear we have not heard the last of him.~
== BDVOGHIJ IF ~IsValidForPartyDialogue("VOGHILN")~ THEN ~Ho ho! We have felled a mighty foe this day. I shall have to craft a most mighty song to immortalize this victory!~
== BDJAHEIJ IF ~IsValidForPartyDialogue("JAHEIRA")~ THEN ~That was a most unpleasant surprise. We should remain wary, as I doubt that man is finished with you yet.~
== BDKHALIJ IF ~IsValidForPartyDialogue("KHALID")~ THEN ~W-we will stand with you if s-something like this happens again, of course.~
== BDEDWINJ IF ~IsValidForPartyDialogue("EDWIN")~ THEN ~Can we just leave the self-righteous fiendling to her fate, so that we are not drawn into her problems again?!~
== BDVICONJ IF ~IsValidForPartyDialogue("VICONIA")~ THEN ~Shar's cloak, we should consider ourselves fortunate to have survived that. Though perhaps the elg'caress should have died.~
== BDMKHIIJ IF ~IsValidForPartyDialogue("MKHIIN")~ THEN ~Demons are never a good sign. Should be careful.~
== C02SIREJ ~What did that man mean, 'murderer, kinslayer, born of misfortune'? Why was there such a burning hatred of me in his eyes, as well as crushing despair?~
== C02SIREJ ~I... I am sorry for endangering you, <CHARNAME>. Thank you for assisting me, but I hope I will never force you to risk your life for me again.~
DO ~SetGlobal("C02SireneMystery","GLOBAL",3)~ EXIT

// Low Reputation

CHAIN IF WEIGHT #-1 ~Global("C02SireneLowRep","GLOBAL",1)~ THEN C02SIREJ C0SireneRep01
~I need to speak with you, <CHARNAME>, regarding the decisions you have been making. I do not believe they are worthy of you.~
DO ~SetGlobal("C02SireneLowRep","GLOBAL",2)~
END
++ ~What about them?~ EXTERN C02SIREJ reputation1
++ ~I know I've been acting out of line lately. I'll do what I can to turn things around.~ EXTERN C02SIREJ reputation2
++ ~If you object, you're always free to leave.~ EXTERN C02SIREJ reputation3

APPEND C02SIREJ

IF ~~ reputation1
SAY ~I know you bear the blood of an evil deity within you, but I do not believe 'tis beyond your control to be a better person, <CHARNAME>. I remain at your side because I believe you are capable of becoming better, but if you do not... I cannot follow you in good faith.~
IF ~OR(3)
Class(Player1,PALADIN_ALL)
Class(Player1,RANGER_ALL)
Class(Player1,CLERIC_ALL)
!Kit(Player1,Blackguard)
!Kit(Player1,GODTALOS)~ + reputation4
IF ~~ EXIT
END

IF ~~ reputation2
SAY ~I hope that you do, <CHARNAME>, for if you do not act as you say, then I fear I can no longer give you my service while staying true to myself. I pray that you will heed my warning.~
IF ~OR(3)
Class(Player1,PALADIN_ALL)
Class(Player1,RANGER_ALL)
Class(Player1,CLERIC_ALL)
!Kit(Player1,Blackguard)
!Kit(Player1,GODTALOS)~ + reputation4
IF ~~ EXIT
END

IF ~~ reputation3
SAY ~If you do not change your ways, <CHARNAME>, that will be the only choice left to me. I hope that 'twill not come to that, but I will not follow a leader who willingly strays into evil.~
IF ~OR(3)
Class(Player1,PALADIN_ALL)
Class(Player1,RANGER_ALL)
Class(Player1,CLERIC_ALL)
!Kit(Player1,Blackguard)
!Kit(Player1,GODTALOS)~ + reputation4
IF ~~ EXIT
END

IF ~~ reputation4
SAY ~I hope 'tis unnecessary to remind you that I am not the only one watching, <CHARNAME>. You have a duty to your god to remain on the right path. If you will not listen to me, then perhaps that is something to think about.~
IF ~~ EXIT
END
END

CHAIN IF WEIGHT #-1 ~Global("C02SireneRepBreak","GLOBAL",1)~ THEN C02SIREJ C0SireneRep02
~So, you have no intention of changing your course. As I have warned you, <CHARNAME>, I will not follow a leader with no regard for morals. I shall return to the camp and serve as I must there, but you may count on my service no longer.~
DO ~SetGlobal("C02SireneRepBreak","GLOBAL",2) SetGlobal("bd_npc_camp","locals",1)
SetGlobal("bd_joined","LOCALS",0)
SetGlobal("C0SireneAngered","GLOBAL",1)
LeaveParty()
ChangeAIScript("bdparty",DEFAULT)~ 
EXIT

// ---------------------------------------------
// Romance Conflicts
// ---------------------------------------------

EXTEND_TOP BDCORWIJ 288 #2
+ ~Global("C02SireneRomanceActive","GLOBAL",1)~ + ~You can't force me to choose between you and Sirene. I can't do it.~ EXTERN BDCORWIJ 290
END

EXTEND_TOP BDDORNJ 105 #4
+ ~Global("C02SireneRomanceActive","GLOBAL",1)~ + ~I've become attracted to Sirene. She's strong, but gentle. And exotically attractive.~ EXTERN BDDORNJ 106
END

EXTEND_TOP BDSAFANJ 141 #2
+ ~Global("C02SireneRomanceActive","GLOBAL",1)~ + ~I've been thinking about Sirene.~ EXTERN BDSAFANJ 156
END

EXTEND_TOP BDRASAAJ 89
+ ~Global("C02SireneRomanceActive","GLOBAL",1)~ + ~Perhaps... I'm hoping that Sirene and I can become more than friends.~ EXTERN BDRASAAJ 90
END

EXTEND_TOP BDVOGHIJ 85
+ ~Global("C02SireneRomanceActive","GLOBAL",1)~ + ~Perhaps... I'm hoping that Sirene and I can become more than friends.~ EXTERN BDVOGHIJ 86
END

EXTEND_TOP BDVICONJ 96
+ ~Global("C02SireneRomanceActive","GLOBAL",1)~ + ~I've become attracted to Sirene's kindness and exotic charm.~ EXTERN BDVICONJ 97
END

// ---------------------------------------------
// Player Initiated Dialogue
// ---------------------------------------------

APPEND C02SIREJ

// Avernus

IF ~IsGabber(Player1)
OR(5)
AreaCheck("bd4400")
AreaCheck("bd4500")
AreaCheck("bd4600")
AreaCheck("bd4601")
AreaCheck("bd4700")~ THEN BEGIN pidavernus
SAY ~No, 'tis not the time, <CHARNAME>. Enemies await... and there are devils to be put to the grave.~
IF ~~ EXIT
END

IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY])~ THEN BEGIN pid
 SAY ~You have need of me?~ [C0SIR011]
	+ ~OR(2)
	   Global("C02SireneRomanceActive","GLOBAL",1)
	   Global("C02SireneRomanceActive","GLOBAL",2)~ + ~(Flirt)~ + flirtmenu
	+ ~HPPercentGT(Myself,74) RandomNum(4,1)~ + ~How are you?~ + a1
	+ ~HPPercentGT(Myself,74) RandomNum(4,2)~ + ~How are you?~ + a2
	+ ~HPPercentGT(Myself,74) RandomNum(4,3)~ + ~How are you?~ + a3
	+ ~HPPercentGT(Myself,74) RandomNum(4,4)~ + ~How are you?~ + a4
	+ ~HPPercentLT(Myself,75) HPPercentGT(Myself,49) RandomNum(4,1)~ + ~How are you?~ + b1
	+ ~HPPercentLT(Myself,75) HPPercentGT(Myself,49) RandomNum(4,2)~ + ~How are you?~ + b2
	+ ~HPPercentLT(Myself,75) HPPercentGT(Myself,49) RandomNum(4,3)~ + ~How are you?~ + b3
	+ ~HPPercentLT(Myself,75) HPPercentGT(Myself,49) RandomNum(4,4)~ + ~How are you?~ + b4
	+ ~HPPercentLT(Myself,50)~ + ~How are you?~ + c1
	+ ~OR(15)
	Global("C02SirenePID1","GLOBAL",0)
	Global("C02SirenePID2","GLOBAL",0)
	Global("C02SirenePID3","GLOBAL",0)
	Global("C02SirenePID4","GLOBAL",0)
	Global("C02SirenePID5","GLOBAL",0)
	Global("C02SirenePID6","GLOBAL",0)
	Global("C02SirenePID7","GLOBAL",0)
	Global("C02SirenePID8","GLOBAL",0)
	Global("C02SirenePID9","GLOBAL",0)
	Global("C02SirenePID10","GLOBAL",0)
	Global("C02SirenePID11","GLOBAL",0)
	Global("C02SirenePID12","GLOBAL",0)
	Global("C02SireneKnowsLady","GLOBAL",1)
	Global("C02SireneKnowsLady","GLOBAL",2)
	Global("C02SireneTest","GLOBAL",1)~ + ~May I ask you a question?~ + questions
	+ ~!Global("C02SirenePauseTalks","GLOBAL",1)~ + ~I'd like you to talk less while on the road.~ DO ~SetGlobal("C02SirenePauseTalks","GLOBAL",1)~ + dialog
	+ ~Global("C02SirenePauseTalks","GLOBAL",1)~ + ~I don't mind if you want to talk to me again.~ DO ~SetGlobal("C02SirenePauseTalks","GLOBAL",0)~  + dialog
	+ ~GlobalGT("C02SireneLT","GLOBAL",4)
	   OR(2)
	   Global("C02SireneRomanceActive","GLOBAL",1)
	   Global("C02SireneRomanceActive","GLOBAL",2)~ + ~Sirene, this thing between us... isn't for me. I'd rather we leave it behind us.~ + breakrom
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
SAY ~Thank you for your concern, but I am alright.~
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

IF ~~ dialog
SAY ~Of course.~
IF ~~ EXIT
END

IF ~~ breakrom
SAY ~I see... of course, <CHARNAME>. That is your decision to make. I will bother you no longer.~
IF ~~ DO ~SetGlobal("C02SireneRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ stringfix 
SAY ~Perhaps... (coughs)~ 
IF ~~ THEN DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("C0RESET")~ EXIT 
END

// QUESTIONS

IF ~~ questions
SAY ~Of course. Ask what you will.~
+ ~Global("C02SirenePID1","GLOBAL",0)~ + ~Since you're a tiefling, shouldn't you have some sort of inherent powers?~ DO ~SetGlobal("C02SirenePID1","GLOBAL",1)~ + powers
+ ~Global("C02SirenePID2","GLOBAL",0)~ + ~If you don't mind me asking, how old are you, exactly?~ DO ~SetGlobal("C02SirenePID2","GLOBAL",1)~ + age
+ ~Global("C02SirenePID3","GLOBAL",0)~ + ~You mentioned that you were an orphan. Where were you raised?~ DO ~SetGlobal("C02SirenePID3","GLOBAL",1)~ + orphan
+ ~Global("C02SireneKnowsLady","GLOBAL",1)~ + ~You said you've seen the Shining Lady before. Will you tell me about it?~ DO ~SetGlobal("C02SireneKnowsLady","GLOBAL",2)~ + shininglady
+ ~Global("C02SireneKnowsLady","GLOBAL",2)~ + ~You said you didn't trust Hephernaan. Do you think he could be manipulating Caelar?~ DO ~SetGlobal("C02SireneKnowsLady","GLOBAL",3)~ + hephernaan
+ ~OR(2)
Global("bd_plot","global",170)
GlobalGT("bd_plot","global",170)
Global("C02SirenePID4","GLOBAL",0)~ + ~So, Caelar Argent is an aasimar. What do you think of that?~ DO ~SetGlobal("C02SirenePID4","GLOBAL",1)~ + aasimar
+ ~Class("C0Sirene",PALADIN_ALL)
Global("C02SirenePID5","GLOBAL",0)~ + ~What made you decide to train in wielding a greatsword?~ DO ~SetGlobal("C02SirenePID5","GLOBAL",1)~ + greatsword
+ ~Class("C0Sirene",PALADIN_ALL)
Global("C02SirenePID6","GLOBAL",0)~ + ~Have you got any training with a ranged weapon?~ DO ~SetGlobal("C02SirenePID6","GLOBAL",1)~ + ranged
+ ~Class("C0Sirene",PALADIN_ALL)
Global("C02SirenePID7","GLOBAL",1)~ + ~You mentioned being allowed to choose your vows. Have you taken a vow of chastity?~ DO ~SetGlobal("C02SirenePID7","GLOBAL",2)~ + chastity
+ ~Global("C02SirenePID8","GLOBAL",0)~ + ~What will you do once we've defeated the crusade?~ DO ~SetGlobal("C02SirenePID8","GLOBAL",1)~ + postcrusade
+ ~Global("C02SirenePID9","GLOBAL",0) PartyHasItem("c0sw2h")~ + ~That sword you wield... it doesn't seem like something a paladin would use. Is there a story behind it?~ DO ~SetGlobal("C02SirenePID9","GLOBAL",1)~ + brimstone
+ ~Global("C02SirenePID10","GLOBAL",0)~ + ~Ilmater isn't what I'd call a militant god. What use does your order have for paladins?~ DO ~SetGlobal("C02SirenePID10","GLOBAL",1)~ + ilmater
+ ~GlobalGT("C02SireneLT","GLOBAL",4)
   OR(2)
   Global("C02SireneRomanceActive","GLOBAL",1)
   Global("C02SireneRomanceActive","GLOBAL",2)
   Global("C02SirenePID11","GLOBAL",0)~ + ~Have you been in love before?~ DO ~SetGlobal("C02SirenePID11","GLOBAL",1)~ + love
+ ~Global("C02SireneTest","GLOBAL",1)~ + ~You didn't spend long with Dosia. What did she teach you?~ DO ~SetGlobal("C02SireneTest","GLOBAL",2)~ + teaching
+ ~Global("C02SirenePID12","GLOBAL",0)~ + ~Have you met other tieflings in your travels?~ DO ~SetGlobal("C02SirenePID12","GLOBAL",1)~ + othertieflings
++ ~On second thought, there's nothing I wish to ask.~ EXIT
END

IF ~~ powers
SAY ~I- well, you are not wrong to ask, <CHARNAME>. Yes, I do have... certain abilities due to my blood, but I do not care to think of them.~
= ~Besides my natural tolerance to heat and cold, many of my powers are capable of little more than causing harm. As such, I am sworn by oath to never use them willingly.~
++ ~But could you tell me of them?~ + powers1
++ ~I see. I won't pry any further, then.~ EXIT
END

IF ~~ powers1
SAY ~I suppose that there is no harm in that. Very well... aside from my resistance to the elements of fire and ice, both natural and magical, I have the power of infravision, as elves do. There is one power I can control to some extent... though as I said, I have sworn to never use it.~
= ~Once, as a child, I caused a fellow ward at the temple to go blind after in a brief fit of anger. I deeply regretted it, and feared the effects were permanent... though she recovered after two days. It was that occasion that taught me to use my skills responsibly.~
= ~I have not used that power for over a decade, I believe... I suspect that if I were to attempt it again, 'twould be much weaker... though I cannot say for certain, and I do not care to test it.~
IF ~~ EXIT
END

IF ~~ age
SAY ~Ah. I do not mind, <CHARNAME>, though in truth 'tis a little embarrassing to admit... I do not remember so well myself.~
++ ~You can't remember your age?~ + age1
++ ~Can you at least make a guess?~ + age2
++ ~In that case, never mind.~ EXIT
END

IF ~~ age1
SAY ~As I said, 'tis embarrassing, and the reason why I have never mentioned it.~
IF ~~ + age2
END

IF ~~ age2
SAY ~'Tis difficult to keep track of the years while on a constant pilgrimage... though I know for certain that I have passed my twentieth year, at the very least.~
++ ~You don't look much older than twenty. Can't be much more than twenty-five at most.~ + age3
++ ~Maybe we can talk again when you've remembered.~ EXIT
END

IF ~~ age3
SAY ~Aye, 'twould be close enough... I believe that I am twenty-four this year, though I am not certain. I suppose that makes me a few years your senior, though I do not feel as such.~
= ~It makes no difference, regardless. You are a natural leader, <CHARNAME>, while I am not. Age has little to do with it.~
IF ~~ EXIT
END

IF ~~ orphan
SAY ~I hail from Northwind, a small village in the northwest region of Faerun, close to Waterdeep. I forget where exactly... 'tis neither large nor important enough to be on a map. A wandering pilgrim of Ilmater brought me to his temple while I was still a babe.~
++ ~That's strange. I'm no expert, but you don't look particularly Waterdhavian.~ + orphan1
++ ~Where did the priest find you?~ + orphan2
++ ~Interesting. Let's move on for now.~ EXIT
END

IF ~~ orphan1
SAY ~You are right... I know nothing of my parents, but I do know a little about my origins.~
IF ~~ + orphan2
END

IF ~~ orphan2
SAY ~The Ilmatari discovered me close to the High Moor of western Faerun, in the Marsh of Chelimber. From what I was told, I was alone, wrapped in rags, with no sign of other humans within sight. They could only assume I was abandoned.~
++ ~Your parents left you to die in a swamp? That's awful!~ + orphan3
++ ~Go on.~ + orphan3
++ ~I've heard enough. Let's move on.~ EXIT
END

IF ~~ orphan3
SAY ~The priests said I was sickly, and close to death by the time I was found... any later, and I would have died. I was frail in my youth even with healing, and 'twas only after I received Ilmater's blessing that I recovered. I have been a sworn servant of the Crying God since then.~
++ ~Have you ever considered finding your origins?~ + orphan4
++ ~Thank you for telling me. Let's move on.~ EXIT
END

IF ~~ orphan4
SAY ~Sometimes... but I am more concerned with doing my duty to Ilmater. If any clues of my past come to me, I may follow it... but I am not overly concerned with it.~
IF ~~ EXIT
END

IF ~~ shininglady
SAY ~I have, aye, but only from a distance. While I was travelling to Baldur's Gate alone, I encountered a large portion of the crusade's army, the Shining Lady among them. I was fortunate they mistook me for one of their own... else I fear I may have been executed, or even conscripted.~
= ~Perhaps 'twas against my better judgment, but my curiosity got the best of me. I entered the camp, posing as a crusader. I was fortunate that nobody exposed me, as their attention was not towards me, but the Shining Lady, Caelar Argent, as radiant as her title suggested, standing above them. The scene was shocking to me.~
++ ~You almost sound like you admire her.~ + shininglady1
++ ~What was so shocking about it?~ + shininglady2
++ ~I've heard enough. Let's carry on.~ EXIT
END

IF ~~ shininglady1
SAY ~Aye, perhaps I did at the moment, but 'twas not her appearance, but those standing beneath her that truly affected me.~
IF ~~ + shininglady2
END

IF ~~ shininglady2
SAY ~Before my eyes, I saw a legion - of men, elves, dwarves, kobolds and ogres, even giants, all at attention, listening in awe. Never before have I seen those of conflicting races standing together, and not only together, but willingly together.~
= ~I cannot deny that I was captured by the Shining Lady's words, and suddenly, joining her crusade appealed to me - a place where I could be accepted, despite my blood, serving for a noble end.~
++ ~What changed your mind?~ + shininglady3
++ ~If you're sympathetic to the crusade, I'm not sure if it's safe to keep you around.~ + shininglady4
++ ~I've heard enough. Let's carry on.~ EXIT
END

IF ~~ shininglady3
SAY ~When Caelar Argent ended her speech, all raised their weapons and chanted her name - but at that moment, I saw something else.~
= ~A man, robed in sanguine, eyes dark as the void, smiling at the sight before him.  Everything I admired of the Shining Lady, I saw the opposite in him - malice, coldness and deceit. And... 'twas as though he could see every crusader before him in equal detail - as well as me.~
= ~At that moment, I fled. I do not know if he saw me, but I knew I could not remain, so long as he was present - every initial feeling I held towards the crusade, shattered.~
+ ~GlobalGT("bd_plot","global",169)~ + ~Revered Brother Hephernaan. I saw him on the bridge.~ + shininglady5
+ ~GlobalLT("bd_plot","global",170) CheckStatGT(Player1,13,INT)~ + ~It must have been that Hephernaan person, who serves as Caelar's second in command, as I recall.~ + shininglady5
+ ~GlobalLT("bd_plot","global",170) CheckStatLT(Player1,14,INT)~ + ~Who was he?~ + shininglady6
++ ~That's enough talking for now.~ EXIT
END

IF ~~ shininglady4
SAY ~Do not doubt me, <CHARNAME> - my loyalty to you will not change, so long as you prove to be on the right path. And... I would not return to the crusade regardless.~
++ ~Why not?~ + shininglady3
++ ~I've heard enough. Let's carry on.~ EXIT
END

IF ~~ shininglady5
SAY ~I did not know his identity at the time, and sensed nothing from him - but I knew he could not be trusted. He acted as though the crusade was entirely under his control - not Caelar's.~
= ~I held no illusions of joining the crusade no longer. I feared that my service would be for a dark cause, despite everything the crusade appeared to be.~
= ~Even if I had doubts now, 'tis too late to change my course. You need not doubt my loyalty, <CHARNAME>. I stand with you.~
IF ~~ EXIT
END

IF ~~ shininglady6
SAY ~I learned who he was after the event - Revered Brother Hephernaan, a priest who serves as Caelar's second in command.~
IF ~~ + shininglady5
END

IF ~~ hephernaan
SAY ~'Tis possible, and I have considered it... but my thoughts are little more than speculation. I had no proof that Hephernaan is anything other than what he claims to be - my paladin powers sensed no evil from him. Yet his very claim of serving all the gods borders upon sacrilege... if nothing else, he is a heretic whose very words are poison.~
= ~I have no doubt that the man is more than he seems and is a cause of the crusade's ruthlessness, though it does not change the fact that our true enemy is Caelar Argent. I fear I have little more to say regarding this, <CHARNAME>... at least for the moment.~
IF ~~ EXIT
END

IF ~~ aasimar
SAY ~'Twas... an interesting revelation. My thoughts regarding the crusade have changed little, but of Caelar herself... 'tis complicated.~
= ~When I learned the rumors that Caelar was a Bhaalspawn, a part of me expected to encounter a second Sarevok, with the same ambition, if not cruelty.~
= ~Now that I know that 'tis not Bhaal's blood which influences her, I wonder if her actions truly are for a noble end... or if they are more of an affront to what is right.~
++ ~Do you believe what she said, about saving the victims of the Dragonspear wars?~ + aasimar1
++ ~You're overthinking it. We're here to end the crusade, not consider the what-ifs of it.~ + aasimar2
++ ~I don't know either. Regardless, we should move on.~ EXIT
END

IF ~~ aasimar1
SAY ~I cannot be certain, of course, but... I believe she is truthful. From what I know of her character, she would not lie about such a thing. Whether 'tis worth the cost... no, I cannot agree with her in that respect.~
++ ~Is it right, then, to allow innocent souls to suffer?~ + aasimar3
++ ~We've talked enough. Let's move on.~ EXIT
END

IF ~~ aasimar2
SAY ~Aye, you are right. Caelar's motivations may be noble, but she her actions have brought chaos and suffering to the Sword Coast - that, I cannot abide.~
IF ~~ + aasimar3
END

IF ~~ aasimar3
SAY ~What happened in the Dragonspear wars was terrible, and if Caelar's claims are true, I would do anything in my power to release the tormented souls, but... bringing war to the land solves nothing. And her goal to take the souls back by force... will only result in disaster.~
= ~If we can talk Caelar out of this madness, I would take the opportunity within an instant. But... perhaps only you can make her understand the suffering she has caused.~
++ ~I wish I could. But given her personality, I doubt it'll be easy.~ + aasimar4
++ ~I'd sooner put a blade through her heart and put her crusade to an end.~ + aasimar5
++ ~You are far too optimistic for your own good.~ + aasimar6
++ ~Maybe it's possible. Let's just carry on and see.~ EXIT
END

IF ~~ aasimar4
SAY ~Aye, she seems the resolute type... in a more peaceful situation, I would have admired her. Even with everything she has caused, I can still afford some respect for her.~
IF ~~ + aasimar7
END

IF ~~ aasimar5
SAY ~That may be the only choice available, aye. 'Tis a great shame... someone like Caelar could have become a hero, even a legend... yet we stand against her, and we are the ones in the right.~
IF ~~ + aasimar7
END

IF ~~ aasimar6
SAY ~Perhaps I am. I only hope that I may remain so once all this is over.~
IF ~~ EXIT
END

IF ~~ aasimar7
SAY ~'Tis a strange thing, what men and women can become in the name of justice...~
IF ~~ EXIT
END

IF ~~ greatsword
SAY ~(smile) I hope you will not laugh when I tell you, but 'twas the influence of the books I read long ago of ancient heroes wielding holy avengers against fiends of the Lower Planes.~
= ~A childish dream... to see one of those legendary blades in my hands. My training began out of a wish to make that dream a reality. Only when I was older, did I realize what it truly meant to use a blade.~
++ ~Maybe you'll really get to use one some day.~ + greatsword1
+ ~CheckStatGT(Player1,13,INT)~ + ~But not all holy avengers are greatswords. As I recall, Cera Sumat is a longsword, isn't it?~ + greatsword2
+ ~CheckStatLT(Player1,14,INT)~ + ~But why a greatsword, specifically? Holy avengers come in many sizes.~ + greatsword2
++ ~I see. That's all I wanted to know.~ EXIT
END

IF ~~ greatsword1
SAY ~I admit, sometimes I still wish that I could, if only to better serve those I've sworn to protect... I know how dangerous it is to desire power, but... I am often not content with what power I have.~
IF ~~ EXIT
END

IF ~~ greatsword2
SAY ~True. I have read the tale of legendary Cera Sumat. Perhaps, had I learned of it first, I would have adopted a longsword and shield instead.~
= ~'Twas of the holy blade Carsomyr did I first learn of holy avengers... my childish self had often dreamed of holding it in my own hands.~
IF ~~ + greatsword1
END

IF ~~ ranged
SAY ~Aye, while I was still a child, knowing to hunt was sometimes necessary during the winter. The church of Ilmater rarely received donations, so the priests could not purchase meat themselves.~
= ~I had a talent for shooting wild game in the night, given my infravision. 'Twas one of the many things I did for my temple that I could.~
++ ~So why have I never seen you using a bow?~ + ranged1
++ ~I see. That's all for now.~ EXIT
END

IF ~~ ranged1
SAY ~'Twas one of my vows. I am sworn to face my foes in honorable combat, and never from a distance.~
++ ~Did your guardians make you swear that vow?~ + ranged2
++ ~That's foolish.~ + ranged3
++ ~I see. That's all for now.~ EXIT
END

IF ~~ ranged2
SAY ~No, 'twas one of my own choice. I was given some freedom on the vows I took... and this one, I made for myself after I had seen battle for the first time.~
IF ~~ DO ~SetGlobal("C02SirenePID7","GLOBAL",1)~ + ranged4
END

IF ~~ ranged3
SAY ~It may not seem practical, <CHARNAME>, but perhaps you will understand once you know my reasons.~
IF ~~ DO ~SetGlobal("C02SirenePID7","GLOBAL",1)~ + ranged4
END

IF ~~ ranged4
SAY ~My first few kills were done by a bow, from a distance... because I was afraid to face them as they died. The first time I was forced to kill with my blade, I realized the difference between hunting and killing.~
= ~The fear of death in my opponents' eyes, together with the pain they felt before death took them... it horrified me. At first, I hoped to never do it again... but when I realized how that instant affected me, I knew I must face it again... no matter how much it terrified me. I had to *know* what it meant to kill, so that I would hate and avoid it.~
= ~Since then, I swore a vow to never take up a bow again. 'Twas a difficult decision... but even now, I do not regret it, no matter how often the horrors of battle revisit me in my dreams.~
IF ~~ EXIT
END

IF ~~ chastity
SAY ~W-why do you ask, <CHARNAME>?~
+ ~OR(2)
Global("C02SireneRomanceActive","GLOBAL",1)
Global("C02SireneRomanceActive","GLOBAL",2)~ + ~I was curious.~ + chastity1
+ ~!Global("C02SireneRomanceActive","GLOBAL",1)
!Global("C02SireneRomanceActive","GLOBAL",2)~ + ~I was curious.~ + chastity2
++ ~Never mind. I'm not interested.~ EXIT
END

IF ~~ chastity1
SAY ~I... some things are better not asked directly, <CHARNAME>.~
IF ~~ + chastity2
END

IF ~~ chastity2
SAY ~No, I... I have not. Some faiths demand it, and perhaps there are Ilmatari who demand it, but... I was not required to do so.~
= ~The church of Ilmater does not denounce... intimacy, only that we do not allow it to make us complacent, or fearful of suffering. I considered taking the vow, but I feared 'twould deny me the chance for love.~
= ~I was a foolish youth. Since then, I have learned that love can be shown in ways other than... *blush* Forgive me. My mind wandered.~
IF ~OR(2)
Global("C02SireneRomanceActive","GLOBAL",1)
Global("C02SireneRomanceActive","GLOBAL",2)~ + chastity3
IF ~~ EXIT
END

IF ~~ chastity3
SAY ~Sometimes... I am glad of the choice I made, so that I may live without certain... regrets.~
IF ~~ EXIT
END

IF ~~ postcrusade
SAY ~I... have not thought about that yet. Perhaps I will continue my travels... with you, if you'd allow it.~
+ ~OR(2)
Global("C02SireneRomanceActive","GLOBAL",1)
Global("C02SireneRomanceActive","GLOBAL",2)~ + ~I'd like nothing more.~ + postcrusade1
+ ~!Global("C02SireneRomanceActive","GLOBAL",1)
!Global("C02SireneRomanceActive","GLOBAL",2)~ + ~I'd like nothing more.~ + postcrusade2
++ ~Maybe. Let's not rule anything out.~ + postcrusade3
++ ~I think not. We'd best go our own ways.~ + postcrusade4
END

IF ~~ postcrusade1
SAY ~I am glad that you would allow me, <CHARNAME>. Perhaps then, when we do not have as many burdens, we can talk more of our... friendship.~
IF ~~ EXIT
END

IF ~~ postcrusade2
SAY ~You honor me, <CHARNAME>. I am truly grateful for your friendship.~
IF ~~ EXIT
END

IF ~~ postcrusade3
SAY ~As you say, <CHARNAME>. I will not blame you if you refuse... though I doubt I can find another as willing to accept me.~
IF ~~ EXIT
END

IF ~~ postcrusade4
SAY ~I see... 'tis your decision to make, though 'twould be a shame. I doubt I can find another as willing to accept me.~
IF ~~ EXIT
END

IF ~~ brimstone
SAY ~This blade? Aye, there is... but 'tis not one I am eager to remember. 'Twas taken from a foe long ago, out of blood and vengeance... and I still bear the scars of the battle. Perhaps another time, the tale will be easier to tell.~
= ~I have no sentimental attachment to the sword, and will exchange it for another if you desire - in fact, I would welcome it. 'Twas a valuable weapon during the iron crisis, but wielding it has always made me uncomfortable, as though 'twere taking my life force.~
= ~'Tis of little use to anyone else, however... unless they share fiendish blood as I do. Do not try to handle it yourself, <CHARNAME> - 'twill harm you if you attempt it.~
IF ~~ EXIT
END

IF ~~ ilmater
SAY ~'Tis true, <CHARNAME>. There are fewer of my order as those of Helm or Torm, but there is always a need for warriors in any faith... to protect our own, and those in need.~
= ~Though there are misconceptions of the Ilmatari, we do not suffer without cause. Many pacifists of my faith will inflict self-harm to seek greater strength. My willingness to throw myself into combat is the same, in a way. Though my reasons for fighting are mainly to protect others, the act itself has given me the strength to protect those that others cannot.~
= ~I cannot deny that I long for a life of peace, but... I am willing to accept that I will fall for the sake of service before it. If I survive long enough, perhaps I shall travel to Castle Dasaajk, in the Purple Hills of Tethyr to seek our others of my order, to do my duty alongside my brothers and sisters.~
= ~But that will not come for some time, and I have a duty to serve you, first and foremost. And perhaps... my dreams for the future shall change, in time.~
IF ~~ EXIT
END

IF ~~ love
SAY ~Love... I do not know, to tell the truth. In the past, I may have believe that I loved, but... now? I am not certain.~
++ ~So you've had lovers before?~ + love1
++ ~What changed your thoughts on love?~ + love2
++ ~Perhaps we can talk about this another time.~ EXIT
END

IF ~~ love1
SAY ~If you wish to call it that, then... yes. If that concerns you, it should not - 'twas a long time ago, and I was a different person then, and I could not return to my previous ties, even if I wished...~
IF ~~ + love3
END

IF ~~ love2
SAY ~'Tis a difficult question to answer, <CHARNAME>. Sometimes, feelings change. People change. And... I have met people worth caring for. Such as...~
IF ~~ + love3
END

IF ~~ love3
SAY ~...forgive me. This is not something I am comfortable with talking about at length. Perhaps another time.~
IF ~~ EXIT
END

IF ~~ teaching
SAY ~She... well, perhaps 'twill be difficult for someone not of the faith to understand, but I shall do my best to explain.~
= ~Painbearer Immartyred questioned me on everything I had learned while an acolyte of Ilmater's faith. I do not think 'twas my memory she was testing, but rather my belief.~
= ~She asked if I believed I was serving the Crying God to the letter while in your service. I answered that I did... I could not read her response.~
= ~She then bid me recite the chants of endurance and perseverance. As I did so, I felt a sudden... 'clarity of purpose', as though I had experienced more, simply from remembering.~
= ~I suppose this all must seem strange and irrelevant to you, <CHARNAME>, but I think I have become wiser after the experience... and more capable of serving you.~
IF ~~ EXIT
END

IF ~~ othertieflings
SAY ~I have, a long time ago. 'Twas but one, but what I learned from encountering him... affects me to this day.~
= ~He was an evil man, a cruel slaver and tyrant. I almost died by his hand... but he taught me a valuable lesson of what my blood could turn me into. I resolved to never become the person he was.~
= ~In some ways, he was not unlike Sarevok. Perhaps I learned many of the same lessons you did from the fateful meeting.~
IF ~~ EXIT
END

END