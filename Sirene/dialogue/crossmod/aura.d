CHAIN IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraSirene1","GLOBAL",0)~ THEN BC0Aura C0AuraSirene1
~Ow! That's the wrong spot... oh, I hope I didn't stab a vital artery...~
DO ~SetGlobal("C0AuraSirene1","GLOBAL",1)~
== BC0Siren ~Whatever are you doing with those needles, Aura?~
== BC0Aura ~I'm trying to learn a healing technique that I'm studying from a Shou manual. It's called 'acupuncture'. Strange, but apparently it works... yow! Nope, that's not right either...~
== BC0Siren ~I- I hope you are not endangering yourself. I confess, watching you pierce yourself repeatedly like that worries me.~
== BC0Aura ~Don't worry, I've made sure to sanitize the needles and I'm following the manual to the letter. It's just... hard to experiment on myself. I expect pain every time I'm about to use the needle on myself, and I can't help but flinch and ruin my precision.~
== BC0Siren ~If that is the case... would it help if you practiced on my body instead? I am certain that I can tolerate any pain that comes.~
== BC0Aura ~No! I wouldn't ever ask that of anyone, especially when I'm not sure what could happen if I... but, I am very curious...~
== BC0Siren ~Take some time to consider, if you need it. I am ready whenever you are.~
EXIT

CHAIN IF ~InParty("C0Aura")
See("C0Aura")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!StateCheck("C0Drake",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0AuraSirene2","GLOBAL",1)~ THEN BC0Siren C0AuraSirene2
~Hmm? What is it, Aura?~
DO ~SetGlobal("C0AuraSirene2","GLOBAL",2)~
== BC0Aura ~I've, um, got the tools prepared. Are... are you sure you want to act as my test subject? I can't help but feel this is wrong.~
== BC0Siren ~Fear not, Aura. I have suffered and endured much pain. I can tolerate this much.~
== BC0Aura ~Okay... if you say so. I'll need you to remove your gauntlet... I'll start on your arm. I don't dare try the cranium or back yet... here goes...~
== BC0Siren ~Ah...~
== BC0Aura ~Eep! Oh no, nononono, I'm so sorry! Did I hurt you? This was wrong, I knew it was...~
== BC0Siren ~Nay... on the contrary, I feel the strain being relieved from my shoulders as we speak. I think it is more effective than either of us expected.~
== BC0Aura ~Do you mean it? Great! That means this technique really is- wait. Do you mean you expected to feel pain?~
== BC0Siren ~D-did I suggest that? *ahem* Forgive me. That was not my intention.~
== BC0Aura ~Oh, well, forget it. I'm just glad it worked after all. To be honest, I didn't think I'd ever get results out of it.~
== BC0Siren ~Why do you say so?~
== BC0Aura ~*sigh* Well, the manual claims that acupuncture is supposed to correct the flow of 'ki' through your body... but I've never found evidence that 'ki' really existed. To be honest, I thought it was all a bunch of phony nonsense at first... that's why I had to test it to be sure.~
== BC0Siren ~And you were using this healing technique that you believed to be false... on yourself?~
== BC0Aura ~Yes. And then on you. I'm sorry. Anything could have gone wrong.~
== BC0Siren ~You need not ask me for forgiveness. But... please do not use yourself to take such risks. I do not wish for you to be harmed. From now on, I will take such tests in your stead, if you only ask.~
== BC0Aura ~I... alright. Thank you, Sirene.~
EXIT