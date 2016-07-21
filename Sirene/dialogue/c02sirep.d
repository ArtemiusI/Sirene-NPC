BEGIN C02SIREP

IF ~AreaCheck("bd4700")
GlobalLT("bd_plot","global",570)~ r0
SAY ~Regardless of whether you will have me, <CHARNAME>, I shall stand with you against this evil!~
IF ~~ DO ~SetGlobal("C02SireneKickedmdd1330","global",1)
SetGlobal("bd_joined","locals",0)~ EXIT
END

IF WEIGHT #-1 ~Global("C0SireneAngered","GLOBAL",1)~ angry
SAY ~Leave me be, <CHARNAME>. I will continue to do my part for the camp, but I refuse to be an accomplice to your despicable acts.~
IF ~~ EXIT
END

IF ~OR(2)
	AreaCheck("BD0120")
	AreaCheck("BD0130")
	GlobalGT("bd_joined","LOCALS",0)~ p1
SAY ~I would prefer to remain with you, <CHARNAME>. Would you truly have me leave now?~
 	++ ~Only for the moment. Remain here until I return.~ + p2
	+ ~OR(2)
		!Range("ff_camp",999)
		NextTriggerObject("ff_camp")
		!IsOverMe("c0sirene")~ + ~Only for the moment. Return to the entrance and wait for me.~ + p3
 	++ ~No, remain with me.~ + p0
END

IF ~~ p0
 SAY ~Very well then. Shall we move on?~
IF ~~ DO ~JoinParty()~ EXIT
END
 
IF ~~ p2
 SAY ~Aye... I will do as you command.~
IF ~~ DO ~SetGlobal("bd_joined","LOCALS",0)~ EXIT
END

IF ~~ p3
 SAY ~As you will... be wary in this dangerous place, <CHARNAME>. Farewell.~
IF ~~ DO ~SetGlobal("bd_joined","LOCALS",0) EscapeAreaMove("BD0120",837,1777,NE)~ EXIT
END

IF ~OR(2)
AreaCheck("BD0120")
AreaCheck("BD0130")
Global("bd_joined","LOCALS",0)~ p4
 SAY ~You have need of me, my friend?~ [C0SIR011]
	++ ~I do. Will you rejoin me?~ + p5
	++ ~Your sword would be a welcome asset in this place, Sirene.~ + p5
	++ ~Not at the moment.~ + p6
END

IF ~~ p5
 SAY ~I am at your command, my friend. Let us go.~
IF ~~ DO ~SetGlobal("bd_joined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ p6
 SAY ~I see... if that is your will.~
IF ~~ EXIT
END

IF ~GlobalGT("bd_joined","LOCALS",0)~ q1
SAY ~You no longer wish for my company, <CHARNAME>? I would remain with you, if you allow it.~
 	++ ~Only for the moment. Remain here until I return.~ + q2
 	+ ~NextTriggerObject("ff_camp") IsOverMe("c0sirene")~ + ~I need you to stay at the camp for a while, Sirene, until I need you again.~ + q3
 	+ ~GlobalGT("bd_npc_camp_chapter","global",1)
	   GlobalLT("bd_npc_camp_chapter","global",5)
	   OR(2)
	   !Range("ff_camp",999)
	   NextTriggerObject("ff_camp")
	   !IsOverMe("c0sirene")~ + ~I need you to return to the camp, Sirene, until I need you again.~ DO ~SetGlobal("bd_npc_camp","locals",1)~ + q4
 	++ ~In that case, stay.~ + q0
END

IF ~~ q0
SAY ~Thank you. Shall we continue?~
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~~ q2
SAY ~Very well... though I do not like the thought of waiting in this place, I shall trust your judgment.~
IF ~~ DO ~SetGlobal("bd_joined","LOCALS",0)~ EXIT
END

IF ~~ q3
SAY ~Aye, as you wish... I shall await your return, my friend.~
IF ~~ DO ~SetGlobal("bd_joined","LOCALS",0)~ EXIT
END

IF ~~ q4
SAY ~Aye, as you wish... I shall await at the camp for your return, my friend.~
IF ~~ DO ~SetGlobal("bd_joined","LOCALS",0)~ EXIT
END

IF ~Global("bd_joined","LOCALS",0)~ q5
 SAY ~You have need of me, my friend? I am eager to rejoin you, if 'tis your desire.~ [C0SIR011]
	++ ~It is. I would have you by my side, Sirene.~ + q6
	++ ~Join me, then.~ + q6
	++ ~Not at the moment.~ + p6
END

IF ~~ q6
SAY ~Aye, I am at your command. Lead on.~
IF ~~ DO ~SetGlobal("bd_joined","LOCALS",1) JoinParty()~ EXIT
END

IF WEIGHT #-1 ~AreaCheck("bd0104")
Global("chapter","global",13)
Global("bd_jail_visitors","bd0104",5)
Global("C02SireneRomanceActive","global",2)~ postgame
SAY ~<CHARNAME>...~
+ ~Global("bd_player_exiled","global",0)~ + ~What do you want, Sirene?~ DO ~SetGlobal("bd_jail_visitors","bd0104",6) SetGlobal("bd_visit_player","locals",1)~ + postgamebad
+ ~!Global("bd_player_exiled","global",0)~ + ~What do you want, Sirene?~ DO ~SetGlobal("bd_jail_visitors","bd0104",6) SetGlobal("bd_visit_player","locals",1)~ + postgamegood
+ ~Global("bd_player_exiled","global",0)~ + ~Hello.~ DO ~SetGlobal("bd_jail_visitors","bd0104",6) SetGlobal("bd_visit_player","locals",1)~ + postgamebad
+ ~!Global("bd_player_exiled","global",0)~ + ~Hello.~ DO ~SetGlobal("bd_jail_visitors","bd0104",6) SetGlobal("bd_visit_player","locals",1)~ + postgamegood
+ ~Global("bd_player_exiled","global",0)~ + ~Leave me alone.~ DO ~SetGlobal("bd_jail_visitors","bd0104",6) SetGlobal("bd_visit_player","locals",1)~ + postgamebad1
+ ~!Global("bd_player_exiled","global",0)~ + ~Leave me alone.~ DO ~SetGlobal("bd_jail_visitors","bd0104",6) SetGlobal("bd_visit_player","locals",1)~ + postgamegood1
END

IF ~~ postgamebad
SAY ~I know not what words could satisfy, <CHARNAME>. Perhaps 'twas a mistake even to come, and I should have remained silent and forgotten you. Yet... here I am.~
++ ~I didn't kill Skie. Please, of all people, you must know that.~ + postgamebad2
++ ~If seeing me would bring you such pain, why are you here? To blame me for a crime you know I didn't commit?~ + postgamebad2
++ ~Here you are. If that's all, you can leave now.~ + postgamebad1
END

IF ~~ postgamebad1
SAY ~Very well. I sought a final speck of hope from you... but 'twould seem I came only to see you crush it beneath your heel.~
= ~Farewell, <CHARNAME>. May this moment be the last, for the good of both of us.~
IF ~~ DO ~EscapeArea()~ EXIT
END

IF ~~ postgamebad2
SAY ~I know nothing. I only know that I cared for, perhaps even loved a <PRO_MANWOMAN>, and that <PRO_MANWOMAN> is now before me in chains, condemned for the gravest crime of murder.~
= ~Regardless of what the truth is, I cannot help you, <CHARNAME>. I can only pray that this is all some cruel nightmare, and I will awaken seeing you again, the person I believed you were.~
++ ~It was real. We... we were real. But this isn't. Please, you can't leave me.~ + postgamebad3
++ ~I'm sorry. No matter what you think of me, I'm truly sorry.~ + postgamebad3
++ ~Leave, and go to sleep then. Perhaps you'll get your wish, and leave me - the real me - to suffer here.~ + postgamebad1
END

IF ~~ postgamebad3
SAY ~No. I am sorry, <CHARNAME>, for everything we were. Had none of this happened, perhaps I would have stayed with you, and *died* for you.~
= ~But 'twas nothing more than a fantasy, was it not? I should have known. You would have fallen into the darkness of your heritage, and I would have slain you, and then myself in grief. Now? Now it does not matter.~
= ~'Tis best if we never meet again, <CHARNAME>. Forget me, and perhaps I will one day forget you in turn. Farewell. May Ilmater protect you from unjust suffering.~
IF ~~ DO ~EscapeArea()~ EXIT
END

IF ~~ postgamegood
SAY ~I am sorry, <CHARNAME>. So, so sorry... had I been more alert, more cautious... perhaps we would not be standing here. I have failed you. Forgive me...~
++ ~There's nothing to forgive. You couldn't possibly have seen this coming.~ + postgamegood2
++ ~I guess that means you think I'm innocent. That's a relief, at least.~ + postgamegood2
++ ~Regardless of anything else that might happen, I'm glad to see you again... one more time.~ + postgamegood2
++ ~Is that all you have to say? Go, Sirene. I don't want to see you again.~ + postgamegood5
END

IF ~~ postgamegood1
SAY ~Please, my- <CHARNAME>, at least listen to me, this one time - and if you truly desire, you shall never see me again.~
IF ~~ + postgamegood
END

IF ~~ postgamegood2
SAY ~No one who knows you - truly knows you, as well as I do - could believe you did such a terrible thing. But I know... 'tis not that which has truly condemned you.~
= ~The people who hailed you as a hero, those who never truly know you... they fear what you are. What you could become.~
++ ~My blood. Always my damn blood.~ + postgamegood4
++ ~And... what about you? Do you fear the same?~ + postgamegood3
++ ~I don't want to hear this. Leave, Sirene, and never come back.~ + postgamegood5
END

IF ~~ postgamegood3
SAY ~No, <CHARNAME>, I do not... small comfort that might be.~
IF ~~ + postgamegood4
END

IF ~~ postgamegood4
SAY ~If 'twere in my power, I would do anything I could to save you, <CHARNAME>. But I cannot. Without you, I lack even the power for an audience with the Council... and my blood will only serve as a point against my favor.~
= ~I cannot remain here, <CHARNAME>. 'Tis too dangerous for the both of us. I would have lived and died by your side... but if there can be any hope at all, this is the only way. Forgive me.~
++ ~I understand, Sirene. Go, leave the city as quickly as you can. I'll rest easy knowing that you're safe.~ + postgamegood5
++ ~Is that really the reason, or have you already given me up for lost?~ + postgamegood5
++ ~I... suppose this is it, then. Farewell, Sirene.~ + postgamegood5
++ ~So, you abandon me like the rest. I should have expected this. Get out of my face.~ + postgamegood5
END

IF ~~ postgamegood5
SAY ~...~
= ~This may be the last time we ever meet. I wish it could have been more...~
= ~Let me touch you one last time, my dear <CHARNAME>... so that I know 'twas more than just a fantasy.~
= ~...farewell. May... may Ilmater guide you through your trials ahead.~
IF ~~ DO ~EscapeArea()~ EXIT
END