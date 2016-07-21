// First meeting

BEGIN C02SIREN

IF ~AreaCheck("BD0111")
Global("C02SireneMetSoD","GLOBAL",0)~ THEN BEGIN j0
 SAY ~Yes...? Is here something I can do for you?~ [C0SIR013]
+ ~!Alignment(Player1,MASK_EVIL)~ + ~It hasn't been that long. Have you forgotten me already, Sirene?~ DO ~SetGlobal("C0SireneMetBG1","GLOBAL",1) SetGlobal("C02SireneMetSoD","GLOBAL",1)~ + j1
+ ~!Alignment(Player1,MASK_EVIL) !BeenInParty("C0Sirene")~ + ~Do I know you, lady?~ DO ~SetGlobal("C02SireneMetSoD","GLOBAL",1)~ + j2
+ ~Alignment(Player1,MASK_EVIL)~ + ~Do I know you, lady?~ DO ~SetGlobal("C02SireneMetSoD","GLOBAL",1)~ + jx
END

IF ~~ jx
SAY ~No... no, I think not. Forgive me, but there is much to do here. I must ask that you leave me to tend to those around us.~
IF ~~ EXIT
END

IF ~~ j1
SAY ~Oh, 'tis you, <CHARNAME>. No, I have not, fortunately... 'tis good to see you again, my friend. But I thought you had remained at the palace since we parted?~
++ ~We can get to that later. How have you been?~ + j3
++ ~You look exhausted. Have you even found time to rest?~ + j4
++ ~I need your help, Sirene.~ + j5
END

IF ~~ j2
SAY ~No, I think not... but, ah, I believe I recognize you, though I do not think we have met... <CHARNAME>, the hero of Baldur's Gate. 'Twas your efforts that removed the Iron Throne from power. I have heard your name repeated many times since I arrived to this city.~
= ~Forgive my lack of manners. I am Sirene of Ilmater, the Crying God. What may I do for you, my <PRO_LADYLORD>? There is much I must do here, so I cannot spare too much time.~
++ ~Who are all these people in this place?~ + j2a
++ ~You seem like a fighting woman. What are you doing here?~ + j2b
++ ~I'm looking for capable men and women to join me on the road to Dragonspear Castle. Would you like to join me?~ + j2c
++ ~I don't need anything from you. Farewell.~ + j10
END

IF ~~ j2a
SAY ~*sigh* I had thought that would be obvious, my <PRO_LADYLORD>. They are refugees from the north, who fled from the ongoing threat.~
IF ~~ + j6
END

IF ~~ j2b
SAY ~Aye, you are not wrong, my <PRO_LADYLORD>. I am, in fact, a paladin of the Crying God, and I have seen battle in the past. But I have no love for bloodshed, and when there are those in need of my aid, I strive to do everything I can.~
IF ~~ + j6
END

IF ~~ j2c
SAY ~Join you? I... would not be opposed to it, but... I have a duty to those that require my aid here, in this place. What would you need of me?~
++ ~I intend to travel north to Dragonspear Castle and end the crusade directly. I could use the help of someone like you.~ + j7
++ ~Never mind. These people can use as much help as they can get. Goodbye.~ + j10
END

IF ~~ j3
SAY ~I wish I could say that I have been well, my friend... but as you can see around you, there has been... much to do as of late.~
IF ~~ + j6
END

IF ~~ j4
SAY ~Not often, at least... within the past few days, as I recall. I wish there was time to spare... but there are too many people in need to consider it.~
IF ~~ + j6
END

IF ~~ j5
SAY ~There are... still many I must aid here, but for you, my friend, I will listen, at the very least. What is it?~
++ ~I'm going to Dragonspear Castle with the Flaming Fist to face the armies of the Shining Lady. What do you know of her?~ + j5a
++ ~Caelar Argent's men tried to assassinate me, right here in the city. I'm planning on taking the fight to her.~ + j5b
++ ~It's a long story, and I'd rather not waste time discussing it here. Would you join me again?~ + j5c
++ ~On second thought, there's nothing I need from you. Continue with your work.~ + j8
END

IF ~~ j5a
SAY ~In my travels, I have heard much of the Shining Lady, Caelar Argent... a strong and resolute woman, they have described her.~
= ~There were many who wished to join her crusade, men who spoke her name with... reverence, almost worship. I would never have expected her actions to cause so much suffering, until I saw for myself upon my return to Baldur's Gate.~
= ~I know not what would drive such a person to raise and lead an army against innocent men, but no matter her motivations... she must be stopped. There is no hope for these men otherwise.~
++ ~She's after me, apparently, for whatever reason. That's why I need your help. Will you join me?~ + j5c
+ ~!Global("C02SireneKnowsLady","GLOBAL",1)~ + ~You sound as though you have met her personally.~ + j5d
++ ~I see. Thank you for telling me this. I'll be on my way now.~ + j8
END

IF ~~ j5b
SAY ~Caelar Argent's men? That is... most strange, indeed. Her crusade may be a threat to the people, yet her character... it does not seem her way.~
++ ~What do you mean?~ + j5a
++ ~Have you met her?~ + j5d
++ ~Regardless, I could use your help with facing her.~ + j5c
END

IF ~~ j5c
SAY ~I... wish I could, <CHARNAME>, but look around you. There are too many here that have lost everything as a result of the ongoing troubles, and many bear the marks of injury and exhaustion. I cannot abandon them, at least, not without reason.~
++ ~There's a reason. We can end the crusade directly, together, and put an end this suffering.~ + j7
++ ~I see. That's a shame, but I understand your position. I won't force you to change your mind.~ + j9
++ ~Fine. I expected better from you, but I'll deal with the Shining Lady by myself.~ + j9
END

IF ~~ j5d
SAY ~I have... seen the Shining Lady with my own eyes, aye, though 'tis not worth discussing at length at the moment. Perhaps I could tell you of it another time.~
IF ~!Global("C02SireneKnowsLady","GLOBAL",1)~ DO ~SetGlobal("C02SireneKnowsLady","GLOBAL",1)~ + j5a
IF ~Global("C02SireneKnowsLady","GLOBAL",1)~ + j11
END

IF ~~ j6
SAY ~These men and women were fortunate enough to flee from the chaos of the Shining Lady's crusade. Many did not escape unscathed. I have spent every waking minute tending to their needs... yet for every one I cure, two more come through the doors. There seems to be no end in sight.~
++ ~Fleeing from the crusade, you say? What do you know about the Shining Lady?~ + j5a
+ ~BeenInParty("c0sirene")~ + ~I have need of your assistance, Sirene.~ + j5
++ ~You could do more good elsewhere. Join me, and we can strike at the heart of the crusade together.~ + j7
++ ~In that case, I shan't keep you. Farewell, Sirene.~ + j8
END

IF ~~ j7
SAY ~To fight the crusade directly... I have considered it. And... though it pains me to admit this, my efforts here seem a hopeless endeavour... no matter how many I help in this place, I cannot hope to save them all so long as the crusade continues.~
= ~Aye... I think that I will. Even if you had not come to me, perhaps I would have went regardless. Better that we met here, that I might share your company sooner.~
= ~My sword is at your command, <CHARNAME>. 'Tis an honor to serve you.~
IF ~~ DO ~AddJournalEntry(@1,INFO) SetGlobal("bd_joined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ j8
SAY ~Farewell, <CHARNAME>. Perhaps... no, I will need more time to think on this. May we meet again.~
IF ~~ EXIT
END

IF ~~ j9
SAY ~Forgive me, <CHARNAME>. May Ilmater guide you through your trials, and may you be victorious against the crusade. Farewell.~
IF ~~ EXIT
END

IF ~~ j10
SAY ~Farewell. May Ilmater give you the strength to bear your suffering.~
IF ~~ EXIT
END

IF ~~ j11
SAY ~Is there something else you need, <CHARNAME>? I can spare time for you.~
++ ~I'm going to Dragonspear Castle with the Flaming Fist to face the armies of the Shining Lady. What do you know of her?~ + j5a
++ ~Caelar Argent's men tried to assassinate me, right here in the city. I'm planning on taking the fight to her.~ + j5b
++ ~Would you consider joining my party, Sirene?~ + j5c
++ ~On second thought, there's nothing I need from you. Continue with your work.~ + j8
END

IF ~AreaCheck("BD0111")
Global("C02SireneMetSoD","GLOBAL",1)~ THEN BEGIN k0
SAY ~Forgive me... there are many I must tend for. I have no time to talk at the moment.~
+ ~!Alignment(Player1,MASK_EVIL)~ + ~I need someone like you to join me on the road to the north, to face the Shining Lady's crusade. Will you accept?~ + j7
++ ~Then I will not keep you.~ EXIT
END

// Post-Baldur's Gate

IF ~!AreaCheck("BD0111") Global("C02SireneMetSoD","GLOBAL",0)~ THEN BEGIN k0
 SAY ~Oh... greetings, <CHARNAME>.~ [C0SIR000]
+ ~Global("C02SireneMetSoD","GLOBAL",0)~ + ~Sirene. It's good to see you again.~ DO ~SetGlobal("C0SireneMetBG1","GLOBAL",1) SetGlobal("C02SireneMetSoD","GLOBAL",1)~ + k1
+ ~Global("C02SireneMetSoD","GLOBAL",0)~ + ~I remember you. What are you doing here?~ DO ~SetGlobal("C02SireneMetSoD","GLOBAL",1)~ + k1
+ ~Global("C02SireneMetSoD","GLOBAL",0) !BeenInParty("c0sirene")~ + ~I don't believe we've met, my lady. May I know your name?~ DO ~SetGlobal("C02SireneMetSoD","GLOBAL",1)~ + k2
+ ~Global("C02SireneMetSoD","GLOBAL",1)~ + ~I thought you were remaining at the Gate.~ + k3
+ ~Global("C02SireneMetSoD","GLOBAL",1)~ + ~It's good to see you here. Will you join me?~ + k4
++ ~I require nothing of you.~ EXIT
END

IF ~~ k1
SAY ~'Tis good to see you again as well, my friend. I had thought it would be many seasons before I met you again, but... I am glad to be wrong.~
++ ~So, you've decided to fight the crusade too?~ + k5
++ ~Join me once more, and we'll face the crusade together.~ + k4
++ ~As am I, though I don't have time to talk right now.~ EXIT
END

IF ~~ k2
SAY ~My name is Sirene. I am a paladin of Ilmater, the Crying God. If the... traces of my heritage concern you, <CHARNAME>, rest assured that I am everything I claim to be.~
++ ~Why are you fighting the crusade?~ + k5
++ ~How does a tiefling come into the service of the church of Ilmater?~ + k6
++ ~Having a paladin in my group could be helpful. Join me.~ + k4
++ ~That is all I require at the moment.~ EXIT
END

IF ~~ k3
SAY ~I had intended to, aye, but... after considering my position, I decided that my place was here, with those that would bring the crusade to its end.~
= ~There were many who were capable of taking my place, and this seemed the best decision... so if you will have me, I would gladly join you.~
++ ~Then you shall. Come, join my side.~ + k4
++ ~I don't need you at the moment.~ EXIT
END

IF ~~ k4
SAY ~Aye, I am yours to command.~
IF ~~ DO ~AddJournalEntry(@1,INFO) SetGlobal("bd_joined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ k5
SAY ~I have seen with my own eyes the suffering was caused by the Shining Lady's crusade... countless men and women who lost everything they had, fleeing to the city hoping for shelter, their pleas drowned out by each others' voices... 'twas too much for me to bear.~
= ~Regardless of her motivations, Caelar Argent must be stopped, and that is why I am here.~
++ ~Then you should join my group, so that we may face her together.~ + k4
++ ~An admirable stance, but I have no need for you right now.~ EXIT
END

IF ~~ k6
SAY ~For my fell blood, I was orphaned not long after I was born, and saved by a pilgrim of Ilmater. I was raised among the faith as a ward of the church, and taught in their ways. In time I discovered that I could serve Ilmater as well with steel as I could with chants and prayers. When I was of age, I left my home village to become a travel in search for those in need.~
++ ~What brought you to fight against the crusade?~ + k5
++ ~In that case, I could use someone such as you in my group. Would you care to join me?~ + k4
++ ~That is all for now.~ EXIT
END

IF ~!AreaCheck("BD0111") Global("C02SireneMetSoD","GLOBAL",1)~ THEN BEGIN l0
SAY ~Greetings to you again, <CHARNAME>. Do you need something?~
++ ~Would you care to join my party?~ + k4
++ ~I require the assistance of a paladin.~ + k4
++ ~Not at the moment.~ EXIT
END