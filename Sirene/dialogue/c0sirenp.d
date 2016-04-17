BEGIN C0SIRENP

IF ~Global("C0SireneJoined","GLOBAL",1)~ p1
 SAY ~Do you really want me to leave, <CHARNAME>?~
 	++ ~Yes, for now.~ + p2
 	++ ~No, I've changed my mind.~ + p3
END
 
IF ~~ p2
 SAY ~As you wish. I will return to the Song of the Morning temple for now. You'll find me there.~
IF ~~ DO ~SetGlobal("C0SireneJoined","GLOBAL",0) EscapeAreaMove("AR3400",1255,1150,2)~ EXIT
END

IF ~~ p3
 SAY ~Alright, then. Let's move on.~
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~Global("C0SireneJoined","GLOBAL",0)~ p4
 SAY ~We meet again, <CHARNAME>. I'm still willing to continue our travels.~
	++ ~So am I. Let's go.~ + p5
	++ ~Not yet.~ + p6
END

IF ~~ p5
 SAY ~Aye, as you wish.~
IF ~~ DO ~SetGlobal("C0SireneJoined","GLOBAL",1) JoinParty()~ EXIT
END

IF ~~ p6
 SAY ~I'm disappointed to hear it.~
IF ~~ EXIT
END