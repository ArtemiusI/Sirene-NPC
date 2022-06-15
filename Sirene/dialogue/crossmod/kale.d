CHAIN IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("X3Kale",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneX3Kale1","GLOBAL",0)~ THEN IF_FILE_EXISTS X3KaleB SireneKale1
~Y'know, Sirene, maybe you should try shouting sometimes.~
DO ~SetGlobal("C0SireneX3Kale1","GLOBAL",1)~
== BC0Siren ~I—I beg your pardon?~
== X3KaleB ~Shouting. Like in battle. Your swings pack twice the punch when you lead with a nice loud shout. Completely true, every hero does it.~
== BC0Siren ~That is... well, even t'were truly the case, I am fighting to defend my allies, not mutilate my foes.~
== X3KaleB ~Pfft, come on. I wield a big sword. You wield a bigger sword. We don't have much in common, but we're both good ol' scrappers in the frontlines, wouldn't you agree?~
== BC0Siren ~Indeed, and in that, perhaps you may understand why I prefer calmness in battle. I would not like to lose myself in battle and have another suffer harm.~
== X3KaleB ~Ha, you knightly lots are bloody stubborn about the smallest things. Sure I can't tempt you to try: "Have a taste of devilish death!" at least once?~
== BC0Siren ~No, thank you.~
EXIT