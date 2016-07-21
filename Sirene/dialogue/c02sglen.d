BEGIN C02SGLEN

IF ~OR(3)
	!InParty("C0Sirene")
	Dead("c0sirene")
	!IsValidForPartyDialogue("C0Sirene")
	RandomNum(4,1)~ a0
SAY ~Say, you're the hero of Baldur's Gate, aren't you? By the gods, but it's an honor to meet you!~
IF ~~ EXIT
END

IF ~OR(3)
	!InParty("C0Sirene")
	Dead("c0sirene")
	!IsValidForPartyDialogue("C0Sirene")
	RandomNum(4,2)~ a1
SAY ~So much steel to shape, so little time, heh. Somethin' you need?~
IF ~~ EXIT
END

IF ~OR(3)
	!InParty("C0Sirene")
	Dead("c0sirene")
	!IsValidForPartyDialogue("C0Sirene")
	RandomNum(4,3)~ a2
SAY ~Ilmater's hands, but there's a lot of people in need of good steel. I'm buried in work right now, but I'll get to you eventually, alright?~
IF ~~ EXIT
END

IF ~OR(3)
	!InParty("C0Sirene")
	Dead("c0sirene")
	!IsValidForPartyDialogue("C0Sirene")
	RandomNum(4,4)~ a3
SAY ~The army ain't nothin' like back home.~
IF ~~ EXIT
END

CHAIN IF WEIGHT #-1 ~InParty("C0Sirene")
					 See("C0Sirene")
					 IsValidForPartyDialogue("C0Sirene")
					 Global("C02SireneGlen","GLOBAL",0)~ THEN C02SGLEN b1
~Heh, there ain't nothin' like bendin' stubborn steel with a good hammer. Good to see you, m'<PRO_LADYLORD>. Name's Glen. So, you need anythin'?~
DO ~SetGlobal("C02SireneGlen","GLOBAL",1)~
== C02SIREJ ~It seems difficult working the forge for so long. How do you fare, sir?~
== C02SGLEN ~Well enough, heh. There's somethin' bout the heat of the forge that keeps me goin', though this leg of mine ain't much good for... ack!~
== C02SIREJ ~What is it?~
== C02SGLEN ~You... pardon me, m'lady, but you're...~
== C02SIREJ ~Oh, do not fear, friend. 'Tis true that I have a trace of fiendish blood, but I mean you no harm.~
== C02SGLEN ~Beggin' your pardon, m'lady. It's just that... I once knew a girl with them horns, just like you.~
== C02SIREJ ~Did... did you really?~
== C02SGLEN ~Swear by Ilmater I did. All us kids were damn terrified of her. Wouldn' even eat when she was around. One time we pissed 'er off mighty hard, an' she took up a stick and beat us black an' blue. Broke me leg for good, too.~
== C02SIREJ ~Ah...!~
== C02SGLEN ~Must've been only five at the time, by my memory. Livin' nightmare, that was.~
== C02SIREJ ~She must have truly regretted her actions. Are you... angry with her?~
== C02SGLEN ~Now? Hells, no. I was an idiot kid back then. An' with my chances as a soldier gone, I went an' took up the forge instead. Best decision of my life.~
== C02SGLEN ~Back then, mayhaps I thought I hated 'er. But now I'd go back and give myself a good smack, like ma used to do. Probably got my comeuppance for bein' a black-hearted bastard. Would beg her forgiveness, if I met her again.~
== C02SIREJ ~You... you are being too hard on yourself.~
== C02SGLEN ~Mayhaps I am. Too late to change things now, though. Only hope is that lord Ilmater knows and forgives me.~
== C02SIREJ ~He has. I am certain of it. You are a good man, Glen.~
== C02SGLEN ~Thank you. You know, you make me think o' her, m'lady. Though you've got some kind eyes to you. I think... maybe I should give you this, to make up for my sins.~
== C02SGLEN ~Made it myself, not long after I left home. Thought I'd give it to that girl if I ever met 'er again, show 'er I forgave her, and wish her forgiveness too. But I ain't got hope I'll see her again, so I might as well give it to you, seein' how you remind me of 'er.~
DO ~GiveItem("c02amul","c0sirene")~
== C02SIREJ ~I... I do not deserve such a gift, sir. Not at all...~
== C02SGLEN ~Aw, jus' do me a favor an' take it. Gets heavier each day I carry it around. Hopefully it'll bring you luck. Sorry 'bout its quality, I was still an amateur when I made it.~
== C02SIREJ ~'Tis... beautiful. Thank you.~
== C02SGLEN ~No need for thanks, m'lady. You're the one keepin' us safe out there, after all. Now, I got to go find that wagon. Good <PRO_DAYEVENING> to you all.~
== C02SIREJ ~Goodbye... friend.~
DO ~ActionOverride("C02SGLEN",EscapeArea())~ EXIT