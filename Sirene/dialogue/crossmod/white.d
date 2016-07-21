CHAIN IF ~InParty("V#1WHI")
See("V#1WHI")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("V#1WHI",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneWhite1","GLOBAL",0)~ THEN BC0Siren C0SireneWhite1
~You mentioned being raised within a temple, White. How is it that you grew up without faith?~
DO ~SetGlobal("V#C0SireneWhite1","GLOBAL",1)~
== V#1WHIB ~It wasn't much of a temple without any priests around. My mother taught me, but she never tried too hard to drill all that faith and worship stuff into my head.~
== BC0Siren ~I see. But you have never felt the calling? I have found that my own path became clearer once I had a cause to live for.~
== V#1WHIB ~That sounds nice, but it isn't for me. I prefer to be my own man.~
== BC0Siren ~Faith is not the ball and chain that you make it out to be, White.~
== V#1WHIB ~Isn't it? I mean- look at you. You risk your life every day to protect people who you don't owe anything to, and even fear you because of your blood. Why would you do that if it wasn't your religion that demanded it?~
== BC0Siren ~Well... 'tis true, I suppose, but... even if 'twas my duty at first, I protect others because I truly wish to. I do not regret entering the service of lord Ilmater.~
== V#1WHIB ~I get it. But I don't need some higher power to tell me what I want to do. If I protect someone, it'll be someone I like, and because I want to. No one can tell me otherwise.~
== BC0Siren ~I suppose 'tis your own will to do as you wish. But still... I hope that you will find a faith that aligns with your desires.~
EXIT

CHAIN IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("V#1WHI",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneWhite2","GLOBAL",0)~ THEN V#1WHIB C0SireneWhite2
~You're... different, too, aren't you? I've noticed. Man or woman, that doesn't matter to you. Or am I wrong?~
DO ~SetGlobal("V#C0SireneWhite2","GLOBAL",1)~
== BC0Siren ~I am... no, you are not. What of it?~
== V#1WHIB ~Nothing. I admit I'm almost a little envious. I'm not ashamed of my own preferences, but you... you're free to love whoever you want.~
== BC0Siren ~Aye, that I may, but I doubt many would return my feelings, if I had them.~
== V#1WHIB ~I wouldn't care so much if I were in your place. If I had devil blood and people shunned me for it, then they wouldn't deserve my affection at all.~
== BC0Siren ~That is easy enough for you to say, but... 'tis more difficult than it sounds.~
== V#1WHIB ~Sorry, I guess I shouldn't have assumed. I'm just used to how I am. Did you always know?~
== BC0Siren ~I could not tell you, White, for I cannot remember myself... I think I have always been drawn to the good in people, regardless of what they are.~
== V#1WHIB ~That's interesting. It's usually not my business to know what others like, but I'm still grateful that you were willing to talk to me.~
EXIT