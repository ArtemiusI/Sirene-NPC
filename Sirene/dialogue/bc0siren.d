BEGIN BC0SIREN

// Ajantis
CHAIN IF ~InParty("Ajantis")
See("Ajantis")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Ajantis",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneAjantis1","GLOBAL",0)~ THEN BC0SIREN C0SireneAjantis1
~Ajantis, your glances towards me have not gone unnoticed, and I suspect I know what you wish to say. Just spit it out.~
DO ~SetGlobal("C0SireneAjantis1","GLOBAL",1)~
== BAJANT ~I cannot.~
== BC0SIREN ~'Twould be a relief to the both of us if you just spoke your concerns, Helmite.~
== BAJANT ~Truly, I cannot, for I know not myself what I wish to say.~
= ~Initially, I was put off guard by your appearance, that much was true. You wear the trappings of an Ilmatari, whom I respect greatly, yet in your eyes I see the blood of fiends, whom I am sworn to slay...~
= ~I am conflicted, and unsure of what to believe.~
== BC0SIREN ~Then perhaps I will prove my devotion to justice to you.~
== BAJANT ~...~
= ~Aye, perhaps that will resolve this conflict within my mind. Let us speak no more of this for now, then, and move on.~
EXIT

CHAIN IF ~InParty("Ajantis")
See("Ajantis")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Ajantis",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneAjantis2","GLOBAL",0)~ THEN BC0SIREN C0SireneAjantis3
~You are still a squire, are you not?~
DO ~SetGlobal("C0SireneAjantis2","GLOBAL",1)~
== BAJANT ~Aye, though my test is arriving soon. After my travels with <CHARNAME>, I will return to the High Hall of the Radiant Heart and become an official knight.~
== BC0SIREN ~Will you tell me of your order?~
== BAJANT ~I...~
== BC0SIREN ~Surely there is no harm in this much.~
== BAJANT ~Very well. The Order of the Radiant Heart venerates the gods of order and justice- Tyr, Helm and Torm, first and foremost, though followers of other faith are also welcome.~
= ~Our sect is separated between the Most Noble Order, our senior members, the Order itself, which is comprised of our knights of above forty years of age, and the auxiliary, the branch for those not old enough to hold a true position as a knight of the Order.~
= ~I am a member of one such auxiliary, and my commanding senior is the venerable Lord Keldorn Firecam, champion of Torm. He is a just man, worthy of respect. It is he who shall sponsor me for my promotion to knighthood.~
== BC0SIREN ~I do hope you will succeed, my friend.~
== BAJANT ~What of your own order, my lady, the Holy Warriors of Suffering?~
== BC0SIREN ~I was never truly part of an order, Ajantis. I was educated by priests of Ilmater in a nameless hamlet to the north, but my skills are mostly self-taught, delivered through prayers and faith alone. I have yet to meet another of my order, never mind a whole group such as yours.~
== BAJANT ~I see. Is it kinship you seek, lady Sirene?~
== BC0SIREN ~Perhaps. I am not sure myself, but one day I may seek out your Order of the Radiant Heart.~
== BAJANT ~An... admirable notion, my lady, but I fear you may not be welcomed with open arms. I know better now, but others who see you may judge by appearance alone.~
== BC0SIREN ~I know. (sigh) 'Tis one thing to be turned away by the common man, another to be given the same treatment by a brother-in-arms. 'Tis the suffering I am forced to endure.~
EXIT

CHAIN IF ~InParty("Ajantis")
See("Ajantis")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Ajantis",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
GlobalGT("Chapter","GLOBAL",5)
Global("C0SireneAjantis2","GLOBAL",1)~ THEN BC0SIREN C0SireneAjantis3
~We have traveled though much together, Ajantis. Do you yet hold suspicions towards me?~
DO ~SetGlobal("C0SireneAjantis2","GLOBAL",2)~
== BAJANT ~I do not, my lady. I believe that you are as dedicated to all that is good and just as any fellow knight I have met.~
== BC0SIREN ~Then, would you care to consider what I asked of you?~
== BAJANT ~Aye, I shall commend your name to my superiors at the Order, though I fear they will not accept.~
= ~Our prelate is wise and fair, and will give the matter consideration. But the others... they are more jaded, and doubtless will be reluctant, if not for your blood, then for your faith.~
== BC0SIREN ~That you would do me this favor is enough, my friend. I would not hope for more.~
EXIT

// Alora

CHAIN IF ~InParty("Alora")
See("Alora")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Alora",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneAlora1","GLOBAL",0)~ THEN BALORA C0SireneAlora1
~I like you, Sirene. You're nice, for a tall person, and you help others.~
DO ~SetGlobal("C0SireneAlora1","GLOBAL",1)~
== BC0SIREN ~I... well, thank you, Alora. Most are not so forward with their compliments. If they give me any at all.~
== BALORA ~Why not? Those people are mean! Who could think that you're a bad person?~
== BC0SIREN ~People take one look at these horns and already make up ideas of the kind of person I am.~ 
== BALORA ~That's not fair! Your horns aren't even scary, I think they're really cute! How can anyone think you're a bad person?~
== BC0SIREN ~Alora... not that I'm not flattered, but do you not know the prejudice people hold against tieflings?~ 
== BALORA ~Nope. I'm from a halfling family, after all. My family distrusts everyone equally, but I trust everyone equally! Until they decide to be mean, that is.~
== BC0SIREN ~I see.~
== BALORA ~I can be your friend, if you want!~
== BC0SIREN ~You are so sweet, dear.~
EXIT

CHAIN IF ~InParty("Alora")
See("Alora")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Alora",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneAlora2","GLOBAL",0)~ THEN BC0SIREN C0SireneAlora2
~Alora... I know you have my holy pendant. I won't be mad, just give it back, please?~
DO ~SetGlobal("C0SireneAlora2","GLOBAL",1)~
== BALORA ~(pout) Okaaay. I *was* gonna give it back later, you know.~
= ~Why do you wear a picture of two hands tied with red string, anyways?~
== BC0SIREN ~'Tis the symbol of Ilmater, Alora. Did you not know that?~
== BALORA ~Um... nope. I've been in some of the tall people's temples before, mostly to filch 'em, and they always have big symbols of their gods on the walls. But I've never seen this one before.~
== BC0SIREN ~Hmm. I suppose you wouldn't have. Ilmater's temples are usually smaller and less grandiose than those of other gods. Not the sort of place you would go to.~
== BALORA ~I'll bet. Why two hands, though?~
== BC0SIREN ~'Twas different, I believe, before the Time of Troubles. The former symbol of Ilmater was a bloodied rack, but, well... you can imagine how popular that was with the common folk.~
== BALORA ~Oh. Ew, ewww. I wouldn't worship a god that made me wear something like that all day.~
EXIT

// Branwen

CHAIN IF ~InParty("Branwen")
See("Branwen")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Branwen",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneBranwen1","GLOBAL",0)~ THEN BBRANW C0SireneBranwen1
~I do not know what to make of you, to tell the truth.~
DO ~SetGlobal("C0SireneBranwen1","GLOBAL",1)~
== BC0SIREN ~Because of my heritage, I assume?~
== BBRANW ~Nay, not that. You have skill at arms, that I respect, yet your faith is at odds with mine. I revel in war and battle, yet you shy away from it whenever possible.~
== BC0SIREN ~War brings suffering, that which we of Ilmater are dedicated to avoid.~
== BBRANW ~Without suffering there is no strength.~
== BC0SIREN ~Aye, and there is strength in enduring suffering, that is true. But we are not as the cruel Loviatans, to spread pain and agony to others at our whim.~
== BBRANW ~Ware your accusatory tone. 'Tis hardly my wish to see the weak suffer as well, but as warriors, we must accept that suffering comes to us all.~
== BC0SIREN ~That much I can agree on. I take on the suffering of others, and become stronger for it.~
== BBRANW ~But at what cost? To deny others their potential, to coddle them? Bah! 'Tis not worth it, in my opinion.~
EXIT

// Coran

CHAIN IF ~InParty("Coran")
See("Coran")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Coran",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneCoran1","GLOBAL",0)~ THEN BCORAN C0SireneCoran1
~You know, my dear, you should not feel so compelled to hide your face from everyone we meet.~ 
DO ~SetGlobal("C0SireneCoran1","GLOBAL",1)~
== BC0SIREN ~I think you know exactly why I do it.~
== BCORAN ~Why do you fear, sweet Sirene? What man cannot be enchanted by your exotic eyes and fine cheekbones?~
== BC0SIREN ~People are afraid of me literally enchanting them.~
== BCORAN ~Aye, though I fear you already have me under your spell.~
== BC0SIREN ~Oh, stop. Do you have no standards?~
== BCORAN ~Of course I do, Sirene. That is why I can say that I truly consider you beautiful, inside and out.~
== BC0SIREN ~I... do you really?~
== BCORAN ~(wink) These lips have never spoken a lie to a lady in their lifetime.~
== BC0SIREN ~You are making fun of me, Coran, but I appreciate your words regardless.~
== BCORAN ~A smile at last! You should smile more often, my lady. It rather suits you.~
== BC0SIREN ~(laughs) No, really, stop. You're a bad influence on me.~
EXIT

CHAIN IF ~InParty("Coran")
See("Coran")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Coran",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("HelpBrielbara","GLOBAL",1)
Global("C0SireneCoran1","GLOBAL",1)~ THEN BC0SIREN C0SireneCoran2
~I cannot believe how callous you are.~
DO ~SetGlobal("C0SireneCoran1","GLOBAL",2)~
== BCORAN ~(sigh) Is this about the incident with Briel? Hanali save me, I thought I had heard the end of it.~
== BC0SIREN ~You will hear the end of it when I see you giving the woman and, more importantly, *your child* what they deserve.~
= ~I swear, Coran. Were you an Ilmatari, the Crying God would smite you where you stand.~
== BCORAN ~Then 'tis a fortunate thing that we do not share faiths.~
== BC0SIREN ~Stop grinning, Coran. This is not amusing.~
== BCORAN ~Come now, my dear. Look at me, and truthfully answer: do you believe I would make a great father?~
== BC0SIREN ~Have you ever tried?~
== BCORAN ~Well... no. But that is just avoiding my question.~
== BC0SIREN ~If you actually put effort into it? Who knows. It cannot be worse than what the poor child must already suffer.~
== BCORAN ~Look, Sirene. Briel's a smart lass, she'll figure something out. Namara will be better without off me around. Were you not the one who called me a bad influence? So stop worrying your pretty little head over the matter.~
== BC0SIREN ~You seem to treat this whole thing as though 'tis some big joke.~
== BCORAN ~Life becomes dull when you take things too seriously. You should try it some time.~
== BC0SIREN ~(sigh) I give up.~
EXIT

// Dynaheir

CHAIN IF ~InParty("Dynaheir")
See("Dynaheir")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Dynaheir",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneDynaheir1","GLOBAL",0)~ THEN BDYNAH C0SireneDynaheir1
~Thou art a follower of the Broken God, correct?~
DO ~SetGlobal("C0SireneDynaheir1","GLOBAL",1)~
== BC0SIREN ~A-aye, milady.~
== BDYNAH ~Thou dost not need such formalities, Sirene. Dynaheir will do. We art equals, after all.~
== BC0SIREN ~Forgive me, lady Dynaheir. 'Tis only that I feel somewhat... subdued, in your presence.~
= ~I... do not know how else to put it. You are strong, beautiful, wise and a skilled mage. I admire you, and sometimes I feel... unworthy, perhaps.~
== BDYNAH ~Whyever? Thou hast shown thy wisdom and strength of character, and I daresay thine beauty is greater than mine. Thou hast no cause to feel unworthy of mine presence.~
== BC0SIREN ~You are too kind and modest, milady. I dare not think of myself as you do.~
EXIT

CHAIN IF ~InParty("Dynaheir")
See("Dynaheir")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Dynaheir",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneDynaheir2","GLOBAL",0)~ THEN BC0SIREN C0SireneDynaheir2
~Which gods do the people of Rashemen worship, lady Dynaheir?~
DO ~SetGlobal("C0SireneDynaheir2","GLOBAL",1)~
== BDYNAH ~We follow many gods as those of this land do, but all hathran revere the triumvirate of goddesses: Bhalla, Khelliara and The Hidden One.~
== BC0Siren ~The- forgive me, but I have never heard these names before.~
== BDYNAH ~Thou wouldst call them by different names in the west. I believe you would be more familiar with their common names - Chauntea, Mielikki and Mystra.~
== BC0Siren ~You mentioned other gods... does Ilmater rank amongst them?~
== BDYNAH ~There may very well be. I hath ne'er met a Rashemi revere the Crying God, but 'twould not be unbelievable.~
= ~The deities I hath seen worshipped are popular amongst our rangers: Lurue, the Queen of Talking Beasts, Eldath the Green Goddess, and others. There is a chapel devoted to Kelemvor built in the city of Mulsantir, though I hath never seen it myself.~
= ~Some, however, worship not the deities of other planes, but the spirits of the land.~
== BC0Siren ~Do you speak of the dead?~
== BDYNAH ~Nay, these spirits are as alive as thou and I, though perhaps there is a difference. Some become powerful enough to be revered, though they are not gods in the normal sense. Many live amongst us as our friends and advisors.~
== BC0Siren ~Rashemen is a strange place, though it sounds fascinating. I would like to see it some day.~
EXIT

// Edwin

CHAIN IF ~InParty("Edwin")
See("Edwin")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
AreaType([FOREST])
Global("C0SireneEdwin1_BG1","GLOBAL",0)~ THEN BEDWIN C0SireneEdwin1
~Tell me, fiendling, is it true that those of your kin have the innate capacity for magic?~
DO ~SetGlobal("C0SireneEdwin1_BG1","GLOBAL",1)~
== BC0SIREN ~Perhaps. I do not know. I have never met another of my kind, nor have I pursued magic myself.~
== BEDWIN ~A waste of potential talent. To discard what was gifted to you by blood to pursue the role of a pious, obsequious fanatic swinging an oversized hunk of steel. (This one is the most idiotic of them all, without a doubt.)~
== BC0SIREN ~I look upon you, Edwin, and I thank the gods that I never ended up as a mage.~
EXIT

// Eldoth

CHAIN IF ~InParty("Eldoth")
!InParty("Skie")
See("Eldoth")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Eldoth",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneEldoth1","GLOBAL",0)~ THEN BELDOT C0SireneEldoth1
~You know, my dear, you are concealing the most *wonderful* figure behind that hideous armor of yours. 'Tis such a shame, really. Had I not taken the liberty to watch you during our last camp by the stream, I would never have known.~
DO ~SetGlobal("C0SireneEldoth1","GLOBAL",1)~
== BC0SIREN ~You are mocking me, Eldoth. If you truly had watched, you would know that I have scars and bruises all over.~
== BELDOT ~Ahh, the foolish self-mutilation rituals of the barbarians known as Ilmatari. Yes, I have seen, but your loveliness makes it look good regardless.~
== BC0SIREN ~Shut up, Eldoth.~
== BELDOT ~You know, I know where I can find a dress that would match your eyes. It is backless, exposes the leg and made of a valuable transparent cloth. Designed for courtesans, so it would suit you perfectly.~
== BC0SIREN ~I shall wear it to your funeral, if that's what you'd like.~
== BELDOT ~Ah, death threats. I have never met a paladin known for their creativity.~
== BC0SIREN ~You lost the privilege for more when you insulted my faith, Eldoth, begone.~
= ~Oh, and watch me bathe again, and I shall cut your eyes out. Ilmater's teachings may not condone fruitless violence, but I think he would forgive me for relieving you of that which you use to do evil.~
= ~Then again, I suppose there could be other things I could remove to greater effect.~
EXIT

// Faldorn

CHAIN IF ~InParty("Faldorn")
See("Faldorn")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Faldorn",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneFaldorn","GLOBAL",0)~ THEN BFALDO C0SireneFaldorn
~I mislike you, unnatural one. You stink of imbalance.~
DO ~SetGlobal("C0SireneFaldorn","GLOBAL",1)~ 
== BC0SIREN ~I assure you, the feeling is mutual.~
== BFALDO ~You have the shape of a human, yet your blood is that of an outsider. You do not belong. You should remove yourself.~
== BC0SIREN ~My blood was not my choice, Shadow Druid, unlike some things.~
== BFALDO ~Grr! Unnatural beings should be removed from this earth!~
== BC0SIREN ~As should many innocents, according to your ideology. So you will excuse me if I take in none of it.~
== BFALDO ~You are filth. Helping those who hurt and take advantage of Mother Nature for their own gain, using their suffering as your excuse. They deserve it, the fools!~
== BC0SIREN ~I warn you, Faldorn. I will take insults to my person, but I defend my faith with my life.~
== BFALDO ~...~
= ~Bah, you are not worth my time. <CHARNAME>, keep this self-righteous fiend away from me!~
EXIT

// Garrick

CHAIN IF ~InParty("Garrick")
See("Garrick")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Garrick",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
HPPercentLT(Myself,75)
Global("C0SireneGarrick1","GLOBAL",0)~ THEN BC0SIREN C0SireneGarrick1
~A different song, dear bard. I think I will need something soothing to take my mind off these bruises.~
DO ~SetGlobal("C0SireneGarrick1","GLOBAL",1)~ 
== BGARRI ~Certainly, my lady. How about 'The Last Ride of Roelvelar'? You appeared well-disposed to that tune previously.~ 
== BC0SIREN ~That one will do, Garrick.~
== BGARRI ~I'll just take a moment to tune my instrument.~
== BC0SIREN ~Gods, my shoulders hurt. It has been an exhausting day, has it not?~
== BGARRI ~That is has been.~
= ~You appear to be quite sore, my lady. I would attempt a technique I observed from a masseur I met long ago, but... these hands are dexterous enough with my instrument, but when I apply them upon skin, they become clumsy as a mule's.~
== BC0SIREN ~Hah, I would never have guessed. You play well enough.~
== BGARRI ~You know, lady Sirene, watching you in battle has inspired me for my next piece. A song of your exploits. Will 'The Ballad of the Lady Martyr' do?~
== BC0SIREN ~The Ilmateri do not care for glorifying their deeds, but if you see me as an inspiration, I would not hold you back.~
= ~As long as you don't call me 'lady' in your song.~
EXIT

CHAIN IF ~InParty("Garrick")
See("Garrick")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Garrick",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneGarrick1","GLOBAL",1)
Global("C0SireneGarrick2","GLOBAL",0)~ THEN BGARRI C0SireneGarrick2
~My lady Sirene! I, uh, have composed the first two verses of that ballad I mentioned...~
= ~I was wondering if you could look at it. To, er, see if it is going in the correct direction.~
DO ~SetGlobal("C0SireneGarrick2","GLOBAL",1)~ 
== BC0SIREN ~I see no harm in having a look.~
== BGARRI ~...~
== BC0SIREN ~...~
== BGARRI ~So... what do you think?~
== BC0SIREN ~This... is a romance, Garrick, at least I believe so. You never told me you were going to write it like this.~
== BGARRI ~Well, you see, love songs are popular, especially among the upper class.~
== BC0SIREN ~I see. But I do not think I know any 'Sir Garwick' from anywhere. Care to explain?~
== BGARRI ~Er, well...~
= ~Uh, no, no. This will not do at all. I will rewrite it, my lady, and it will be perfect next time, just you see!~
EXIT

// Imoen

CHAIN IF ~InParty("Imoen")
See("Imoen")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Imoen",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneImoen1_BG1","GLOBAL",0)~ THEN BIMOEN C0SireneImoen1
~(poke) What does it feel like when I poke 'em like that?~
DO ~SetGlobal("C0SireneImoen1_BG1","GLOBAL",1)~
== BC0SIREN ~(pokes Imoen's forehead) Just like that.~
== BIMOEN ~Just like that? Huh, that's boring. I thought they'd be more sensitive and all, ya know. Did you always have them?~
== BC0SIREN ~(laugh) From what my guardians told me, the skin upon my forehead was already splitting as a young child. The boys brave enough to speak to me called me a goat.~
== BIMOEN ~Did... did it hurt?~
== BC0SIREN ~Aye, though the priests told me not to fear the pain, but to remember it as a part of me.~
== BIMOEN ~You're really weird like that. I always stay away from anythin' that hurts me, aside from traps I s'pose, though I just try and disarm 'em. But I still remember when I got my finger caught in a mouse trap.~
= ~D'ya know how much it hurts to get caught by one of 'em? Yowch. (shudder)~
EXIT

CHAIN IF ~InParty("Imoen")
See("Imoen")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Imoen",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneImoen2_BG1","GLOBAL",0)~ THEN BC0SIREN C0SireneImoen2
~Imoen, must you peek at my belongings every time we make camp? I trust you not to take anything valuable, but you know it has nothing other than the essentials, and you still bother.~
DO ~SetGlobal("C0SireneImoen2_BG1","GLOBAL",1)~
== BIMOEN ~Well, I get bored an' sleep late anyways, so I just take a peek at all our stuff. I can list everything in your pack by heart now!~
== BC0SIREN ~(laugh) I'm proud of you.~
== BIMOEN ~It's not like I'm greedy or anythin'. But I feel like if I don't sharpen my skills every night, I get rusty, ya know?~
== BC0SIREN ~I suppose you are right about that. In that case, keep it up.~
EXIT

CHAIN IF ~InParty("Imoen")
See("Imoen")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Imoen",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Class("imoen",MAGE_ALL)
Global("C0SireneImoen3_BG1","GLOBAL",0)~ THEN BC0SIREN C0SireneImoen3
~A mage-in-training, are you now? I must admit, 'tis an improvement, though I cannot say by how much.~
DO ~SetGlobal("C0SireneImoen3_BG1","GLOBAL",1)~
== BIMOEN ~Yup. I'll miss the thievin', but this is even more fun!~
== BC0SIREN ~Be careful, though. You are not getting formal training, are you?~
== BIMOEN IF ~Class(Player1,MAGE_ALL)~ THEN ~Well, <CHARNAME> taught me some things that Gorion taught <PRO_HIMHER> in Candlekeep. It's not that hard, ya know.~
== BIMOEN IF ~InParty("Dynaheir") !Class(Player1,MAGE_ALL)~ THEN ~Well, Dynaheir taught me a few things, but she's so strict, so I decided to carry on by myself.~
== BIMOEN IF ~InParty("Xan") !InParty("Dynaheir")~ THEN ~Well, I tried bugging Xan for some, but he just gave me one of his funny looks and walked away. Jerk.~
== BIMOEN IF ~InParty("Neera") !InParty("Dynaheir") !InParty("Xan")~ THEN ~I'd ask Neera, but I dunno if she knows any more about how magic works than I do. You know, with the wild magic and all.~
== BIMOEN IF ~InParty("Edwin") !InParty("Dynaheir") !InParty("Neera") !InParty("Xan")~ THEN ~Well, I tried bugging Edwin for some, but, well, he's Edwin.~
== BIMOEN IF ~InParty("Xzar") !InParty("Edwin") !InParty("Dynaheir") !InParty("Neera") !InParty("Xan")~ THEN ~I'd ask Xzar, but he's, well, you know...~
== BIMOEN IF ~!Class(Player1,MAGE_ALL) !InParty("Xzar") !InParty("Edwin") !InParty("Dynaheir") !InParty("Neera") !InParty("Xan")~ THEN ~Well, no, but what damage can a novice mage like myself cause, anyway?~
== BC0SIREN ~Hmm. Well, take care regardless, Imoen. I trust you will be at least somewhat more responsible with magic than you are with lockpicks, though I should know better.~
== BIMOEN ~Hey!~
EXIT

// Jaheira

CHAIN IF ~InParty("Jaheira")
See("Jaheira")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SIRENEJaheira1_BG1","GLOBAL",0)~ THEN BJAHEI C0SireneJaheira1
~You seem to be in discomfort, Sirene. Does something ail you?~
DO ~SetGlobal("C0SIRENEJaheira1_BG1","GLOBAL",1)~
== BC0SIREN ~Nothing much, Jaheira. There is just an ache on my shoulders. It will pass.~
== BJAHEI ~You strained yourself in our previous battle, no doubt. One of your stature should not be wielding such a heavy weapon. Let me treat it.~
== BC0SIREN ~Oh, no, 'tis fine. I can handle it.~
== BJAHEI ~Nonsense. You need to remain in perfect shape in case of sudden combat. I can make a balm for you to apply upon your shoulders the next time we make camp.~
== BC0SIREN ~I appreciate it, Jaheira, but I prefer to let the pain run its course. I have learned to endure many minor pains such as this during my days as an acolyte of Ilmater, and my tutors encouraged me to understand the different feelings.~
== BJAHEI ~Hmph. As you wish, but if you come to me later complaining that the ache has gotten worse, I shall remind you of this conversation.~
EXIT

CHAIN IF ~InParty("Jaheira")
See("Jaheira")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SIRENEJaheira2_BG1","GLOBAL",0)~ THEN BC0SIREN C0SireneJaheira2
~What do druids think of tieflings, Jaheira?~
DO ~SetGlobal("C0SIRENEJaheira2_BG1","GLOBAL",1)~
== BJAHEI ~I cannot speak for all druids, Sirene. If you must ask, I can only give you my thoughts.~
== BC0SIREN ~That is enough.~
== BJAHEI ~You are not wholly of the natural order, that is a fact. However... I do not believe that you are unable to belong.~
== BC0SIREN ~Me, belong? How...~
== BJAHEI ~Don't forget that human blood flows within you, as well. Embrace that side.~
== BC0SIREN ~But even so, I am not human.~
== BJAHEI ~True, but even that which is created by man may one day adapt to the cycle of nature, child. You may never truly belong, but what of your children, or your descendants?~
== BC0SIREN ~That is a good point... I shall remember that.~
EXIT

CHAIN IF ~InParty("Jaheira")
See("Jaheira")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SIRENEJaheira3_BG1","GLOBAL",0)~ THEN BJAHEI C0SireneJaheira3
~...and this one is spotted toadstool. A common enough fungus, but deadly nonetheless. Take care to watch for the pattern, if you are alone and starving in the woods.~
DO ~SetGlobal("C0SIRENEJaheira3_BG1","GLOBAL",1)~
== BC0SIREN ~Yes, yes... I see.~
== BJAHEI ~Are you dozing off already? As I recall, you were the one who came to me asking for herbal knowledge.~
== BC0SIREN ~I did, 'tis true, but I was... hoping to learn about the curative aspects of herbology, not poisons.~ 
== BJAHEI ~Recognizing the symptoms and nature of poisons is as importance as knowing the cures, child. Surely you understand the logic?~
== BC0SIREN ~You're right. Please continue.~
== BJAHEI ~Later, perhaps. Your concentration is waning. Why were you so eager for me to each you?~
== BC0SIREN ~There was a man I met on my way to Beregost, before I met <CHARNAME>. He was suffering, but not of any injury. I tried to tend to him, but I didn't even recognize what ailed him. He died eventually, in great agony.~
= ~His spirit came to me in my dreams recently. He said nothing, but I could see my own failure in his eyes.~
== BJAHEI ~You felt guilty for not being able to save him.~
== BC0SIREN ~Yes. The man was in my care, and if I knew more, I could have saved him.~
== BJAHEI ~That is understandable, but you should know not all ailments can be cured. Sometimes the Mother Earth demands her children return to her.~
== BC0SIREN ~I cannot just accept that. Watching people suffer while I'm helpless to save them is horrible, Jaheira.~
== BJAHEI ~You cannot save everyone either, Sirene. Would you blame yourself for every man you allow to die?~
== BC0SIREN ~No, I-I can't. Excuse me, Jaheira, I need some time to myself.~
EXIT

// Kagain

CHAIN IF ~InParty("Kagain")
See("Kagain")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Kagain",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneKagain1","GLOBAL",0)~ THEN BKAGAI C0SireneKagain1
~Ye paladins all be a total waste of air.~ 
DO ~SetGlobal("C0SireneKagain1","GLOBAL",1)~
== BC0SIREN ~Excuse me? What have I done to offend you, Kagain?~
== BKAGAI ~Ye've no ambition, nor love o' wealth. All ye does is coddle the poor an' give 'em pretty words. As if they could eat the words ye say for food, hah!~
== BC0SIREN ~Perhaps I cannot feed them myself, but hope gives them the strength to live on. To give up is to resign themselves to death.~
== BKAGAI ~There be no true hope in the world, woman, only money an' those who grab as much as they can. Sooner ye be understandin' that, the more likely ye'll survive to see yer kids grow.~
== BC0SIREN ~'Tis a dismal world you seem to think we live in. Do you not believe that everyone has a chance at succeeding?~
== BKAGAI ~The poor be given their chance, an' they lost it. Only those who look out fer themselves win in this pisspot of a world. If ye disagree with that, ye can lay down and join 'em, eh?~
EXIT

// Khalid

CHAIN IF ~InParty("Khalid")
See("Khalid")
InParty("Jaheira")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Khalid",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneKhalid1","GLOBAL",0)~ THEN BKHALI C0SireneKhalid1
~Y-your sword b-belt has loosened, Sirene.~
DO ~SetGlobal("C0SireneKhalid1","GLOBAL",1)~
== BC0SIREN ~What? Oh, so it has. Thank you, Khalid. My negligence could have cost me dearly in our next battle.~
== BKHALI ~D-does something trouble you, my friend?~
== BC0SIREN ~(sigh) I believe so, though 'tis hard to describe. I feel a sense of... inner turmoil.~
== BKHALI ~I-it never hurts to s-share your worries amongst friends.~
== BC0SIREN ~Perhaps. I am thinking about my heritage once more, Khalid, and how it clashes with the person I want to be. Do you think that I have made a mistake?~
== BKHALI ~I-I do not know. But I think I understand h-how you feel.~
= ~In the p-past, I have sometimes felt as though m-my existence was a mistake, b-but I have not felt that w-way in a long time.~
== BC0SIREN ~What changed things for you?~
== BKHALI ~F-finding someone that c-cares. Jaheira r-restored my faith in myself, t-though... (smile) sometimes she can be s-stern with restoring my c-confidence.~
== BC0SIREN ~Then... you are a lucky man, Khalid.~
EXIT

CHAIN IF ~InParty("Khalid")
See("Khalid")
InParty("Jaheira")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Khalid",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneKhalid2","GLOBAL",0)~ THEN BC0SIREN C0SireneKhalid2
~Khalid, why do you stutter when you speak? You are a fine warrior, and it does not become you.~ 
DO ~SetGlobal("C0SireneKhalid2","GLOBAL",1)~
== BKHALI ~I-it hasn't anything to do w-with bravery in battle, Sirene. I-I've had it since I was y-young.~
== BC0SIREN ~I-I see. I'm sorry I asked, then. Was your childhood difficult?~
== BKHALI ~M-my father didn't want a b-bastard child. He was... c-cruel.~
== BC0SIREN ~Ah... Khalid, you do not have to continue. I shouldn't have brought up such hard memories.~
== BKHALI ~T-these memories do not hurt anym-more, Sirene. Not when I h-have newer, better memories closer to my h-heart. (smile)~
== BC0SIREN ~I understand. I will not lie, Khalid, I had difficulty finding common ground between you and Jaheira, but... you two are meant for each other.~
= ~I hope you will both live long and fruitful lives.~
EXIT

// Kivan

CHAIN IF ~InParty("Kivan")
See("Kivan")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Kivan",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneKivan1","GLOBAL",0)~ THEN BKIVAN C0SireneKivan1
~You look my way often, Sirene. May I ask for the reason?~
DO ~SetGlobal("C0SireneKivan1","GLOBAL",1)~
== BC0SIREN ~Forgive me, Kivan. In truth, I had planned to speak to you sooner, but I did not know how best to go about it.~
== BKIVAN ~I care little for carefully planned words. Say what you will.~
== BC0SIREN ~You carry a great burden, Kivan, and it causes you great suffering. Would you share it?~
== BKIVAN ~How, Ilmatari? I know you consider it your prerogative to take the suffering of others, but can you truly understand how I feel?~
= ~No. You cannot. You have never lost one close to your heart, and pray that you never will.~
== BC0SIREN ~I want to help you, Kivan, but only if you allow me to.~
== BKIVAN ~It is not a matter of what I allow, but nothing can help soothe the ache in my heart save death.~
EXIT

CHAIN IF ~InParty("Kivan")
See("Kivan")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Kivan",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneKivan1","GLOBAL",1)~ THEN BC0SIREN C0SireneKivan2
~Perhaps I cannot share your burdens, Kivan, but I wish to aid you nonetheless. May we talk?~
DO ~SetGlobal("C0SireneKivan1","GLOBAL",2)~
== BKIVAN ~About what?~
== BC0SIREN ~Anything. Having a listening ear helps more than you might think. Tell me of your home, or your family, if it will make you feel better.~
== BKIVAN ~...~
= ~I will tell you of Deheriana, if you care to listen.~
== BC0SIREN ~(smile) 'Twould be my honor, my friend.~
== BKIVAN ~Very well... later, when we make camp.~
EXIT

CHAIN IF ~InParty("Kivan")
See("Kivan")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Kivan",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
HPPercentLT("Kivan",25)
Global("C0SireneKivan3","GLOBAL",0)~ THEN BKIVAN C0SireneKivan3
~(groan) Is my time about to come to an end? Deheriana, my love, I will see you soon...~
DO ~SetGlobal("C0SireneKivan3","GLOBAL",1)~
= IF ~Dead("Tazok")~ THEN ~No! I am not worthy of seeing you once more, Deheriana, until Tazok is dead at my feet!~
== BC0SIREN ~Remain still, my friend. You will not fall, not if I have anything to say.~
== BKIVAN ~(cough)~
== BC0SIREN ~There. Tell me if you can feel your limbs.~
DO ~ForceSpell("Kivan",PALADIN_LAY_ON_HANDS)~
== BKIVAN ~I have not felt anything for a long time.~
== BC0SIREN ~Kivan...~
== BKIVAN ~Thank you for helping me, Sirene, but perhaps you should have allowed me to fall.~
== BC0SIREN ~I would never do that.~
== BKIVAN ~You have healed my body, but the scars on my heart yet remain.~
== BC0SIREN ~Would that I had the power to heal those as well...~
= ~I would take your suffering away, Kivan, if I could. But I cannot. 'Tis beyond my ability, and likely anyone else's. I truly am sorry.~
== BKIVAN ~Nobody deserves the pain that I must endure.~
EXIT

// Minsc

CHAIN IF ~InParty("Minsc")
See("Minsc")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneMinsc1_BG1","GLOBAL",0)~ THEN BMINSC C0SireneMinsc1
~Eh, little lady Sirene, Boo has a question for you...~
DO ~SetGlobal("C0SireneMinsc1_BG1","GLOBAL",1)~
== BC0SIREN ~Your hamster wishes to ask me something? Minsc, if you've got something to say, say it.~
== BMINSC ~No, Minsc has nothing to ask of the strange lady with horns! Well, maybe he does, but Boo thought of the question first! Minsc is simply the messenger.~
== BC0SIREN ~You are a strange person, Minsc. Speak up.~
== BMINSC ~Boo asked Minsc this question, but Minsc had no answer. How does the little lady wield a sword big enough for Minsc? Minsc tells Boo that perhaps our friend is stronger than she looks, but surely she can not be stronger than Minsc!~
== BC0SIREN ~It's not in the weight of the sword, Minsc, but in the way you use it.~
== BMINSC ~Aha! Wise advice, my friend. Minsc and Boo will think hard on your words and focus on the way in which we swing our sword towards the heads of evil!~
EXIT

CHAIN IF ~InParty("Minsc")
See("Minsc")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneMinsc2_BG1","GLOBAL",0)~ THEN BMINSC C0SireneMinsc2
~Sirene, Boo tells Minsc that you are a pal... pala... pally-din. Is that right?~
DO ~SetGlobal("C0SireneMinsc2_BG1","GLOBAL",1)~
== BC0SIREN ~A paladin, Minsc. Yes, I am. Is that strange to you?~
== BMINSC ~No, not at all! Minsc thinks that it is a good thing for others to live their life putting their boots to the backside of evil, whether they be men of all shapes and sizes or ladies with horns and funny eyes.~
= ~Minsc has just had a thought in his head that he has been thinking over for many hours now, but believes only a paladin can answer.~
== BC0SIREN ~Well, what is it?~
== BMINSC ~Minsc's question is: "What is justice?"~
== BC0SIREN ~Justice? Minsc, you have brought up the word many times in the past. How can it be that you do not know what it means?~
== BMINSC ~This is Minsc's trouble, my friend! Long have Minsc and Boo upheld justice, yet not once have we stopped to consider what it means.~
== BC0SIREN ~I don't think I can give you the right answer for that, Minsc. It's something you have to find out for yourself.~
== BMINSC ~Dynaheir has told Minsc the same words. Dynaheir is wise, but she is no paladin. Sirene is wise too, and Minsc believed that she had advice for us.~
== BC0SIREN ~I'm not wise, Minsc. Justice is... something I'm not sure of myself. I'm no Tyrran, but I've lived my life giving others the treatment they deserve. Where there is wrongs committed, I attempt to turn things right with what power I have. Perhaps that is justice?~
== BMINSC ~Then it is what Minsc and Boo have worked together to do for many years already! Thank you, my friend. Minsc is satisfied.~
EXIT

// Montaron

CHAIN IF ~InParty("Montaron")
See("Montaron")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Montaron",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneMontaron1","GLOBAL",0)~ THEN BC0SIREN C0SireneMontaron1
~Montaron, the ease with which you take lives is disturbing to me.~
DO ~SetGlobal("C0SireneMontaron1","GLOBAL",1)~
== BMONTA ~Well, then it be a good thing I ain't got a care fer how ye goody-two-shoes think then, aye?~
== BC0SIREN ~Do you not fear what punishment may await you when you die one day?~
== BMONTA ~Nae, I ne'er think o' the future, exceptin' fer when I plan me next victim, heh heh.~
EXIT

CHAIN IF ~InParty("Montaron")
See("Montaron")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Montaron",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneMontaron2","GLOBAL",0)~ THEN BC0SIREN C0SireneMontaron1
~I saw what you were doing with that last man you... killed, though I am hardly sure you even ended his misery.~
DO ~SetGlobal("C0SireneMontaron2","GLOBAL",1)~
== BMONTA ~Ha! One o' me finer pieces o' work. It were almost a shame to see 'im die.~
== BC0SIREN ~It was disgusting. 'Twas unnecessary to have mutilated him so brutally.~
== BMONTA ~Unnecessary, perhaps, but it was pretty to me.~
== BC0SIREN ~Loath am I to say this, but if you must kill, do it cleanly. I will not allow you to desecrate corpses, even those of our enemies.~
== BMONTA ~There be an easy solution if ye've not the belly to see me handiwork, wench. Piss off.~
EXIT

// Quayle

CHAIN IF ~InParty("Quayle")
See("Quayle")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Quayle",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneQuayle","GLOBAL",0)~ THEN BQUAYL C0SireneQuayle
~Oi, tiefling. Out of curiosity, who would be dumb enough to take the pain of others onto yourself?~
DO ~SetGlobal("C0SireneQuayle","GLOBAL",1)~
== BC0SIREN ~Watch your words, gnome.~
== BQUAYL ~I am already attempting to limit my linguistics to not overwhelm you with my incredible vocabulary. Just answer the question.~
== BC0SIREN ~Because 'tis my duty, and because I can bear it.~
== BQUAYL ~Oh, I have no doubt you can take the pain, the evidence is in front of me. Empty as your head may be- I'm estimating that your horns took over what little space there was- you *are* able to take a beating.~
= ~But really, why would anyone who isn't an idiot allows herself to get hurt?~
== BC0SIREN ~So idiots like yourself do not need to.~
== BQUAYL ~Me? Ha, please. I am far too intelligent to put myself in such a position.~
EXIT

// Safana

CHAIN IF ~InParty("Safana")
See("Safana")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Safana",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneSafana1","GLOBAL",0)~ THEN BSAFAN C0SireneSafana1
~Oh, you're a clever one, darling, but don't think you've escaped my notice.~
DO ~SetGlobal("C0SireneSafana1","GLOBAL",1)~
== BC0SIREN ~I doubt you mean well, but what are you implying, Safana?~
== BSAFAN ~You play the part of a goody-two-shoes, and play it well, but I know that look you give men when you pass.~
== BC0SIREN ~What? I do not know what you are talking about, and I do not think I care to know.~
== BSAFAN ~You're actually quite desperate for a man to be brave enough to take you, aren't you?~
== BC0SIREN ~That's ridiculous. Even if I had any intention of seducing someone, one look at my horns and eyes would bring them to their senses.~
== BSAFAN ~Don't be so sure, dear. You have no *idea* what fetishes certain men are fond of. Or is it really another woman's touch you're after, hmm?~
= ~You know, I do so prefer the manly type, but I could show you a few things...~
== BC0SIREN ~I- oh, shut up, slattern, and leave me be!~
EXIT

// Shar-Teel

CHAIN IF ~InParty("Sharteel")
See("Sharteel")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Sharteel",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneSharteel","GLOBAL",0)~ THEN BSHART C0SireneSharteel
~Why do you seek to help the men you come across? Let the disgusting pigs suffer, I tell you!~
DO ~SetGlobal("C0SireneSharteel","GLOBAL",1)~
== BC0SIREN ~'Tis my duty to help all, and I am satisfied with it.~
== BSHART ~You are a disgrace to our lot, paladin. You feed into the men's pathetic image of us being nothing but their lessers, meant to serve at their beck and call.~
== BC0SIREN ~I can defend myself if need be, against any man. You are wrong.~
== BSHART ~Prove it, then. If you are a stronger woman than I, then I will take back my words.~
== BC0SIREN ~I'll not raise a blade against you, Shar-Teel. Against someone else, perhaps I would show anger. But for you, there is only pity.~
EXIT

// Skie

CHAIN IF ~InParty("Skie")
See("Skie")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Skie",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneSkie1","GLOBAL",0)~ THEN BSKIE C0SireneSkie1
~Th-thank you for helping me fend off the enemy in our last fight, Sirene.~
DO ~SetGlobal("C0SireneSkie1","GLOBAL",1)~
== BC0SIREN ~You are welcome, Skie, though I still wish I did not have to. You must improve your fencing skills if you intend to keep up with us.~
== BSKIE ~Oh, I try, but I just can't stand the sickly feeling of cutting someone and drawing blood and... ooh, I can't stand it! I'm pretty good with a bow, isn't that enough?~
== BC0SIREN ~And what when you run out of arrows? I may not always be capable of dropping everything to defend you, not when we have other companions.~
== BSKIE ~I know, but I'm still scared... what if I break a leg fighting, or muss up my hair, or...~
== BC0SIREN ~If that's more important to you than all of our lives, then perhaps this life is not for you.~
== BSKIE ~No! I know I can do it! Next time, I'll face my enemy with my sword, and I'll win. Then you'll know that you were wrong, Sirene.~
== BC0SIREN ~I will know it when I see it, Skie. Do not try and overcompensate, either.~
EXIT

CHAIN IF ~InParty("Skie")
InParty("Eldoth")
See("Skie")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Eldoth",CD_STATE_NOTVALID)
!StateCheck("Skie",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneSkie2","GLOBAL",0)~ THEN BC0SIREN C0SireneSkie1
~Skie, we should talk.~
DO ~SetGlobal("C0SireneSkie2","GLOBAL",1)~
== BSKIE ~What is it, Sirene? If it's about my fencing again, I'll have you know I've been practicing, and I can actually take on a hobgoblin or even a bandit by myself now, and I-~
== BC0SIREN ~No, it's not about that. But I did tell you not to overcompensate, did I not?~
== BSKIE ~Oh, right, I forgot. What did you want to talk about?~
== BC0SIREN ~Your... man, though I loath to even call him such.~
== BSKIE ~Eldoth? Oh, isn't he dreamy?~
== BC0SIREN ~Do not be ridiculous. Do you not see the person I see?~
== BSKIE ~Who do you see when you look at him, Sirene?~
== BC0SIREN ~I see nothing good in him, and he is not a worthy lover, besides. The last time we stopped at a tavern, he made a lewd remark regarding a tavern wench's breasts for all to hear. Do not tell me you missed that.~
== BSKIE ~Oh... I didn't know, I was probably already in my room. But he likes to tease sometimes. He promises that he cares for me.~
== BC0SIREN ~Skie, I am a paladin. I should not generalize, but I can tell a good man from an evil one. As a follower of Ilmater, I am even more sensitive to things like this. You still have a chance to back away and find someone better before you lose more than you can imagine.~
= ~He will cause you suffering, Skie.~
== BSKIE ~No! Don't be so harsh on him! He's got a good heart in him, I know it! Please, Sirene, don't talk about him to me again. I-I can't stand it.~
EXIT

// Tiax

CHAIN IF ~InParty("Tiax")
See("Tiax")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Tiax",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneTiax","GLOBAL",0)~ THEN BTIAX C0SireneTiax
~You, harlot! The great Tiax has declared your faith and your god to be false!~
DO ~SetGlobal("C0SireneTiax","GLOBAL",1)~
== BC0SIREN ~What madness are you rambling about now, Cyricist?~
== BTIAX ~The great Tiax is never mad, and every word he speaks is the truth! Ilmater is no god but a pretender, and his faithful along with their descendants are destined to serve as Tiax's slaves after he conquers Faerun!~
== BC0SIREN ~I would destroy you for such blasphemy, but I doubt what you're saying is even passing through your mind.~
== BTIAX ~Yes, yes, the great Tiax has the presence of mind to speak without the burden of thought! Tremble in your inferiority, while he allows you to.~
== BC0SIREN ~I've had enough of this.~
== BTIAX ~You may walk away now, but you will regret this. Tiax will find your god and prove his falseness before you one day!~
== BC0SIREN ~Silence, madman!~
EXIT

// Viconia

CHAIN IF ~InParty("Viconia")
See("Viconia")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneViconia1BG1","GLOBAL",0)~ THEN BVICON C0SireneViconia1
~You disgust me, elg'caress.~
DO ~SetGlobal("C0SireneViconia1BG1","GLOBAL",1)~
== BC0SIREN ~I am not opposed to you yet, Viconia, though you sorely test me.~
== BVICON ~I was simply thinking. By blood, you are superior to the mongrel rivvil which you so tenderly care for. You are no drow, 'tis true, but to descend to the level of filth?~
== BC0SIREN ~Watch your dark tongue, Sharran.~
== BVICON ~Or what? Shall you silence me with your blade? You do not have the spine.~
== BC0SIREN ~Do not think me incapable. I have mercy and patience both, but you are running them thin.~
EXIT

CHAIN IF ~InParty("Viconia")
See("Viconia")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneViconia2_BG1","GLOBAL",1)~ THEN BVICON C0SireneViconia2
~Is it difficult, elg'caress, to fight against your nature so righteously?~
DO ~SetGlobal("C0SireneViconia2_BG1","GLOBAL",2)~
== BC0SIREN ~Why would you care?~
== BVICON ~I do not, to be truthful, though I am curious and, I must say, slightly amused.~
== BC0SIREN ~...~
== BVICON ~Do you feel no urges? No superiority to the rivvil around you? The temptation to deceive, corrupt, destroy? Nothing?~
== BC0SIREN ~I see a dark one in my way that I may destroy, though I would call it 'cleansing'.~
== BVICON ~I am disappointed. I had thought the blood of fiends ran deeper in you. Now I see that you are nothing more than another overly pious rivvil, with nothing but air within your pitiful mind.~
== BC0SIREN ~(growl) One more word and you'll not live to regret it.~
EXIT

// Xan

CHAIN IF ~InParty("Xan")
See("Xan")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Xan",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneXan1","GLOBAL",0)~ THEN BXANNN C0SireneXan1
~I do pity you, you know that?~
DO ~SetGlobal("C0SireneXan1","GLOBAL",1)~
== BC0SIREN ~What cause do you have to pity me?~
== BXANNN ~Your faith is grounded in a futile endeavor. Is that not enough reason for pity?~
= ~Your order seeks to fight suffering in the world, yet life is nothing but suffering and futility. Isn't it a hopeless battle?~
== BC0SIREN ~Hopeless it may be, but we carry on the fight as long as we exist, one man at a time. 'Tis not enough, but 'tis worth it.~
== BXANNN ~Admirable, yet naive.~
== BC0SIREN ~You are a harsh man with strange views, Xan, but I believe you are not cruel. Why do you have such an aversion to helping others?~
== BXANNN ~Despite your blood, you are still a human by lifespan. Your views are as narrow and short-sighted as any other human. You help a single man and believe you are making a difference, but do not see the greater picture. It is the ignorance of mankind. Your efforts are doomed, as are we all.~
== BC0SIREN ~I... enough, leave me be, elf! I'll not argue my faith with a nihilist such as you!~
== BXANNN ~(sigh) As you wish, I will not force the issue.~
EXIT

CHAIN IF ~InParty("Xan")
See("Xan")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Xan",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneXan1","GLOBAL",1)~ THEN BC0SIREN C0SireneXan2
~I think I understand why you are so bitter, Xan.~
DO ~SetGlobal("C0SireneXan1","GLOBAL",2)~
== BXANNN ~Oh? Do tell.~
== BC0SIREN ~You are bound by vows to serve as I am, but yours is not by choice. You carry a great burden upon you, one that you do not wish to have.~
== BXANNN ~(sigh) Astute. Yes, my blade binds me to the fate to defend elvenkind until my death, in which there will be no future in Arvandor for me.~
== BC0SIREN ~Do you find no purpose to your duty as a protector of your kind?~
== BXANNN ~Why should I? I am a moonfighter, but I am also but a weak mageling who was captured by the merest kobolds and a cowardly priest of Cyric. Do you think that I am still capable of my duty?~
= ~I swear, if it were my choice alone, I would have had nothing to do with the blade.~
== BC0SIREN ~You're nothing but a great coward.~
== BXANNN ~(sigh)~
EXIT

CHAIN IF ~InParty("Xan")
See("Xan")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Xan",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneXan1","GLOBAL",2)~ THEN BC0SIREN C0SireneXan2
~Xan... I would apologize to you for our last argument.~
DO ~SetGlobal("C0SireneXan1","GLOBAL",3)~
== BXANNN ~You, apologize to me. This is unlike you.~
== BC0SIREN ~I feel as though we got off on the wrong foot. I called you a coward, and it was unworthy of me.~
= ~Perhaps you do not have the zeal for your duty as I for mine, but 'twas still wrong. You are no less devoted to your duty despite what you may say, and I did not realize that.~
== BXANNN ~Ah... this is most unexpected. If you must apologize, then perhaps it would be best of me to return the favor. I did start this argument, after all. Perhaps I had been... overly harsh with my opinions of your faith.~
= ~My belief has not changed- fighting against suffering is a futile effort. But to accept the suffering of others at your own expense regardless, without complaint... that is admirable. I would not have the courage.~
= ~It was my folly to not understand this from the beginning. I beg your pardon.~
== BC0SIREN ~(smile) Your kin may have a greater gift to them than they realize, my friend.~
== BXANNN ~It does not matter. Delayed though our doom may be, it is still inevitable.~
EXIT

// Xzar 

CHAIN IF ~InParty("Xzar")
See("Xzar")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Xzar",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneXzar1","GLOBAL",0)~ THEN BC0SIREN C0SireneXzar1
~*sniff* Ilmater's mercy, what is that stench? Xzar!~
DO ~SetGlobal("C0SireneXzar1","GLOBAL",1)~
== BXZAR ~Hmm?~
== BC0SIREN ~I thought it was coming from you. What in the names of all the gods is in your pack? It smells as though something died in there.~
== BXZAR ~Well, it did, last brillig. Would you care for me to introduce you?~
== BC0SIREN ~...No. No, Xzar, please do not.~
== BXZAR ~Say hello, Corpsy! Oh, she is walking away. How rude, hmph!~
EXIT

// Yeslick

CHAIN IF ~InParty("C0Sirene")
See("C0Sirene")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Yeslick",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneYeslick1","GLOBAL",0)~ THEN BYESLI C0SireneYeslick1
~I've seen many a strange thing in me lifetime, but a paladin? Ye?~
DO ~SetGlobal("C0SireneYeslick1","GLOBAL",1)~
== BC0SIREN ~That is how it is. Is there a problem?~
== BYESLI ~Ah... nay, nay. I'm just havin' a hard time believin' it.~
== BC0SIREN ~The proof is in front of you, Yeslick, in my faith and my sword. If my words cannot assure you, then my actions will.~
== BYESLI ~Fair enough, but I've got me eye on ye.~
EXIT

CHAIN IF ~InParty("C0Sirene")
See("C0Sirene")
InParty("C0Sirene")
See("C0Sirene")
!StateCheck("Yeslick",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneYeslick1","GLOBAL",1)~ THEN BYESLI C0SireneYeslick2
~I've, eh, been thinkin' abou' the last time we talked, lassie, an' I be thinkin' that I owe ye a apology.~
DO ~SetGlobal("C0SireneYeslick1","GLOBAL",2)~
== BC0SIREN ~Is it because of the distrust you showed to me? There is no need, Yeslick. I am well used to it.~
== BYESLI ~But I feel that I'm needin' to say it anyways. Ye've proven to be a true faithful to the Cryin' God, despite what yer looks may imply.~
= ~I'm an' old dwarf, and 'tis me duty to be open-minded an' considerate o' others, regardless o' how they may look on the surface.~
= ~I respect ye, child. Ye're willin' to forego the prejudice held against yer kin an' become a defender o' those who would condemn ye. It be a hard path that few would be willin' to follow. I truly beg yer pardon.~
== BC0SIREN ~I do not blame you, my friend, and I accept your apology. Few ever overcome their distrust over my heritage.~
== BYESLI ~Thank ye, young'un. There be a bright future in yer path, worry not.~
EXIT
