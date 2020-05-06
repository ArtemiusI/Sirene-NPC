I_C_T X3EHK3 1 C0SireneX3EHK31
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID)~ THEN ~I have encountered such as you before, hunters. I sympathize with those who regard me with distrust, but your motives are far from noble. Stand down, for I shall not hesitate to defend myself nor my companions!~
== X3EHK3 ~Your words are naught but lies, fiend, and only serve as proof of your deceptive nature.~
END

I_C_T X32EHK3S 0 C0SireneX32EHK3S0
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) Global("C0SireneX3EHK31","GLOBAL",1)~ THEN ~These bear the same colors as the hunters we previously fought. Much as I wish it were other wise, I doubt they are any more willing to listen to reason.~
== C0SIRENJ IF ~InParty("C0Sirene") InMyArea("C0Sirene") !StateCheck("C0Sirene",CD_STATE_NOTVALID) !Global("C0SireneX3EHK31","GLOBAL",1)~ THEN ~I have faced such hunters in the past. They have never listened to reason... I fear this will only end in bloodshed.~
END
