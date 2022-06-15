CHAIN IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("X3Helga",CD_STATE_NOTVALID)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneX3Helga1","GLOBAL",0)~ THEN X3HelgaB SireneHelga1
~I see a strong warrior in ye, Ilmatari. With a little fury, ye'll make an even greater mark on the battlefield.~
DO ~SetGlobal("C0SireneX3Kale1","GLOBAL",1)~
== BC0Siren ~Fury is... not a weapon I have wielded in pride. I choose not to resort to it, when possible.~
== X3HelgaB ~Ye be not that naive, methinks. Evil must be struck down, and it be done by the sword, not the shield.~
== BC0Siren ~I fight to protect. To strike down the wicked, the evil... that is a task many others are eager to take. I have seen too many innocents fall, their voices unheard. It is for them that I fight, and I do not hope to inspire fear though my means.~
== X3HelgaB ~Pah, ye place yer fears towards the ones ye save? Do as ye wish, though I see nae but a blade used wrongly.~
EXIT