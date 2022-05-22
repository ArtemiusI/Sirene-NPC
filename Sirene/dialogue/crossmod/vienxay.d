CHAIN IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("X3Vien",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneX3Vien1","GLOBAL",0)~ THEN X3VienB SireneVienxay1
~A fiend taking upon the pain of others. Do you so hate yourself so much that you would throw your body at anyone to get the tiniest sliver of pity for your blood?~
DO ~SetGlobal("C0SireneX3Vien1","GLOBAL",1)~
== BC0SIREN ~I do not sacrifice my own self for pity, Vienxay, but duty.~
== X3VienB ~You will never be loved. You will always be a monster, and your beliefs only make you weaker. Your duty is nothing but chains.~
== X3VIENB ~At least if you acted more as your blood, you might learn to become stronger to survive, as I had to when I was unjustly cast from my glorious home.~
== BC0SIREN ~You are cruel, Vienxay, and I do not think I could persuade you to understand why I act as I do or why I endure pain for others.~
== X3VIENB ~You couldn't, nor should you bother. It is tolerable, at least.~
== BC0SIREN ~And why is that?~
== X3VIENB ~Because with you around at least I know someone will die for me, ensuring that the greatest people will always live on.~
EXIT