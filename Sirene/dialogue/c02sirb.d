BEGIN C02SIRB

CHAIN IF WEIGHT #-1
~IsValidForPartyDialogue("C0Sirene")
Global("C02SireneMystery","GLOBAL",1)~ THEN C02SIRB a1
~Hail, travellers, hold a moment. I have come seeking one that is amongst you.~
== C02SIREJ ~You wear the colors of lord Ilmater, pilgrim. What brings you here?~
== C02SIRB ~I seek a champion of the faith. Are you Sirene of Ilmater?~
== C02SIREJ ~Yes... I am. I was not aware that others of the clergy knew of me. What do you require, brother?~
== C02SIREJ ~Wait... something is not right. You...~
END
++ ~What is it, Sirene?~ EXTERN C02SIREJ a1.1
++ ~Is something wrong?~ EXTERN C02SIREJ a1.1
++ ~We have no time for this.~ EXTERN C02SIREJ a1.2

CHAIN C02SIREJ a1.2
~Wait, <CHARNAME>. There is something unusual about this priest...~
EXTERN C02SIREJ a1.1

CHAIN C02SIREJ a1.1
~You wear the trappings of an Ilmatari, and I cannot sense any emanations from you, neither good nor evil. But... I know you are not who you claim to be.~
== C02SIRB ~Heh, impressive. You've deduced that much, have you?~
== C02SIREJ ~I cannot read your intent, yet there is something else that reacts to your presence... my blood. Who are you?~
== C02SIRB ~My name is of no consequence. Suffice to say that I am of fell blood, just like yourself.~
== C02SIREJ ~Perhaps you are. What do you want with me?~
== C02SIRB ~I want nothing. I am merely here to... judge you, for my own interests as well as that of my goddess.~
== C02SIREJ ~Your goddess? As I suspected, you are no true follower of Ilmater, then.~
== C02SIRB ~That is correct. My devotion lies with Talona.~
== C02SIREJ ~Talona...!~
== C02SIRB ~I see that you are familiar with Her name.~
== C02SIREJ ~If you truly worship the Lady of Poison, then you are my sworn foe and I should slay you where you stand.~
== C02SIRB ~Peace, my dear. I have no interest in opposing you... not yet, at least. The Mistress of Disease is interested with seeking your downfall, true, yet it is *my* interest in you which matters.~
== C02SIREJ ~Your interest...? If you have no intention of killing me, then what other interest might you have?~
== C02SIRB ~You do not know? Ah, but of course you would not. We met once long ago, though I was a different man then. Though there must be much you cannot recall, Sirene... murderer, kinslayer, born of misfortune.~
== C02SIREJ ~What? What are you speaking of?~
== C02SIRB ~Heh... I would like nothing better than to see your death in despair and confusion, yet my mistress demands that you live for the moment, so that you may live with the pain of doubting. I shall comply with her wishes, for my own sake...~
== C02SIREJ ~No, you will not leave me with such questions unanswered. Tell me!~
== C02SIRB ~You may come to understand, perhaps, if you survive this. Until then, Sirene... farewell.~
DO ~DisplayStringHead(Myself,@0)
ForceSpell(Myself,DRYAD_TELEPORT)
CreateCreatureObjectDoor("c02demkn",Player1,0,0,0)
Wait(2)
ActionOverride("c02demkn",ReallyForceSpell("c02demkn",WIZARD_FIRE_SHIELD_RED))
ActionOverride("c02demkn",ReallyForceSpell("c02demkn",WIZARD_HASTE))
ActionOverride("c02demkn",ReallyForceSpell("c02demkn",WIZARD_STONE_SKIN))
ActionOverride("c02demkn",ReallyForceSpell("c02demkn",WIZARD_IMPROVED_MANTLE))
ActionOverride("c02demkn",ForceSpell("c02demkn",WIZARD_SUN_FIRE))~
EXIT