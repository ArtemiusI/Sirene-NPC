CHAIN IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("GV#DAVE",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneGV#DaveBanter1","GLOBAL",0)~ THEN BGV#DAVE SIRENE-DAVE-1
~Ah, Sirene. I have to admit, it makes me sad to look at you. All I can see is one big missed opportunity.~
DO ~SetGlobal("C0SireneGV#DaveBanter1","GLOBAL",1)~
== BC0SIREN ~Missed by whom?~
== BGV#DAVE ~By the Talassans! If we’d been the ones to take you in…well. Let’s just say a lot of our best priests were bullied as children.~
== BC0SIREN ~Then Ilmater has blessed me twice over, to save me from such a hateful upbringing.~
== BGV#DAVE ~Oh please. I can’t speak for every church, but ours puts a firm emphasis on directing hate outwards, not in.~
== BGV#DAVE ~Just imagine it. One big rambunctious family, where fiendish blood is a point of pride. Would that really have been so terrible for you?~
== BC0SIREN ~A family that teaches me to relish violence and cruelty? To silence my heart? Aye, I can think of nothing worse.~
== BGV#DAVE ~Uggh. You’re in deep, aren’t you? Tiefling my foot. I might as well be talking to a planetar.~
EXIT

CHAIN IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("GV#DAVE",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneGV#DaveBanter2","GLOBAL",0)~ THEN BGV#DAVE SIRENE-DAVE-2
~Sirene, have you ever had thoughts that this doctrine of altruism is self-defeating?~
DO ~SetGlobal("C0SireneGV#DaveBanter2","GLOBAL",1)~
== BGV#DAVE ~Let’s say you have a bowl of grain, and you give it to someone who “needs it more than you.” Then I come along and see you, and I think “Oh, that poor girl has nothing to eat. I’ll give her my bowl of grain, because that’s the right thing to do.”~
== BGV#DAVE ~So now you have a bowl of grain. Which you, uh, give to someone else, thereby defeating the whole point of my act, and someone else has to give me their bowl because now I don’t have one…do you see the problem here? It’s a snake devouring its own tail.~
== BC0SIREN ~And yet in truth, you would not offer me your bowl, nor would I refuse to eat from it. This tale exists only in your imagining, Dave. You know well that I do not starve myself, and a good deed is as likely to end at its beneficiary as it is to run around the world. I give what I can, when I can. Let it stand on its own merits.~
== BGV#DAVE ~Ah, but you’ve changed the subject. A few handouts given as and when is one thing, but the Martyrdom is a way of life. One you’re trying to perpetuate.~
== BGV#DAVE ~Like I said, it’s the doctrine that foils itself. If you never stop to think about your own needs, other people have to do it for you, and it ends with everyone trying to carry each other instead of just walking.~
== BC0SIREN ~The day that everyone on Toril is willing to carry their fellow man is the day that Ilmater will finally rest, for his work will be done. Until then, I and my brethren shall lead by example.~
EXIT

CHAIN IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("GV#FLAR",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneGV#FlaraBanter1","GLOBAL",0)~ THEN BGV#FLAR SIRENE-FLARA-1
~A creature borne of hell to serve heaven. How unbearably bardic. Many find you quite the oxymoron, tiefling, but I can fathom your motives well enough.~
DO ~SetGlobal("C0SireneGV#FlaraBanter1","GLOBAL",1)~
== BC0SIREN ~You believe you understand Ilmater’s teachings? A claim that rings false in your treatment of others.~
== BGV#FLAR ~I will never purport to understand the lunacy of charity, any more than the gibberings of a mouther, but *you* I understand perfectly well.~
== BGV#FLAR ~Those who torment you for your dark birth, who spit at you and throw stones…if ever you chose to draw your blade and give them what they truly deserved, they’d truss you to a pyre. A glimmer of catharsis, all to end in ashes. But this way you can show them, can’t you? With patience as your weapon, you show them all the folly of their prejudice and bask in vindication. It’s a poor man’s revenge, and how very fitting that is.~
== BC0SIREN ~...~
== BC0SIREN ~There was a time your words would have held a measure of truth, but it may as well have been an age ago. My pride was unmade in Ilmater’s forgiveness. That angry, wilful girl is no more.~
== BGV#FLAR ~You are well indoctrinated indeed, if you would speak of pride as something to forgive. Turn away now, swordmeat, and bear a blow or two for me. Such is your raison d'être, I believe.~
EXIT

CHAIN IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("GV#LITT",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneGV#LittlunBanter1","GLOBAL",0)~ THEN BGV#LITT SIRENE-LITTLUN-1
~The way people look at you sometimes, Sirene…it’s three feet too high to be aimed at me and I still want to slap it off their nosy faces. How do you put up with that rubbish?~
DO ~SetGlobal("C0SireneGV#LittlunBanter1","GLOBAL",1)~
== BC0SIREN ~I remind myself of what the alternatives would bring. If I may say so, you yourself can be no stranger to the feeling that you don’t quite belong. To lash out at every maligner will naught but drain you.~
== BGV#LITT ~Heh. It’s strange to say it, but my tribe wouldn’t give half a damn about the devil in you. They’d treat you just like everyone else, which is to say they’d turn you out on your arse if you came anywhere near ‘em. Humans, dwarves, tieflings, they all get the same.~
== BC0SIREN ~‘Tis equity, at least, if not acceptance. Though I would gladly bear their revulsion if it meant they would open their hearts to others again.~
== BGV#LITT ~Ah, that’s a long time coming, I reckon. A lot of old wounds still to close. You can scarcely call it history when there’s those still alive who remember.~
== BGV#LITT ~Me, though, I go by my own experiences. I know one tiefling, and she’s a good person, so that’s one in one. Better odds than I can give anyone else.~
== BC0SIREN ~I…fear you’ll find that’s not always the case, Littlun. Though it pains me to say so, many of my kind are exactly what their appearance would suggest.~
== BGV#LITT ~Ah-ah-ah. You let me discover that for myself. If it’s a mistake, it’s mine to make, and I’ll learn from it.~
EXIT

CHAIN IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("GV#LITT",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
HPPercentLT("C0Sirene",50)
Global("C0SireneGV#LittlunBanter2","GLOBAL",0)~ THEN BGV#LITT SIRENE-LITTLUN-2
~Flamin’ hell, Sirene. If you ain’t gonna heal yourself, at least let me have a look at you. You see all this red stuff? That’s called blood, and it’s meant to be on the inside.~
DO ~SetGlobal("C0SireneGV#LittlunBanter2","GLOBAL",1)~
== BC0SIREN ~Haha...ah, I would ask that you don’t make me laugh at present. ‘Tis a bearable ache otherwise.~
== BGV#LITT ~You won’t be laughing when these bandages are going on, I promise you. This’ll have to be a tight wrap.~
== BGV#LITT ~You need to look after yourself better, you know that? Whatever noble end Your Holiness is working towards, you can’t see it through if you’re dead.~
== BC0SIREN ~I am not so easily felled, my friend. My wounds seem severe to you, I am sure, but I’ve spent many a year training to endure such pains. They pass, always.~
== BGV#LITT ~I don’t care how long you trained. There’s only so much a person can take, and it ain’t a sin to know when’s enough. You don’t have to suffer alone all the time.~
== BC0SIREN ~Your concern is welcome, Littlun, truly. But from the moment I embraced Ilmater, I have never suffered alone.~
EXIT

CHAIN IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("GV#MOID",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneGV#MoidreBanter1","GLOBAL",0)~ THEN BGV#MOID SIRENE-MOIDRE-1
~Haven’t got much to say about your god, Sirene, but seems his followers could do with some combat lessons.~
DO ~SetGlobal("C0SireneGV#MoidreBanter1","GLOBAL",1)~
== BC0SIREN ~You find flaw in my technique, then?~
== BGV#MOID ~Technique, no. Choice of armaments, yes. If your business is taking someone else’s licks, use a shield, not your body. It’ll hold longer.~
== BC0SIREN ~I’m well aware of the function of a shield, Moidre. Surely you don’t think me so foolish. I fight as I do because Ilmater would not have me shy away from harm.~
== BGV#MOID ~Fine. Make the gesture. Prove your fearlessness and devotion, or whatever he wants to see in you. Then what? Your lung takes a spear your shield would’ve blocked. You catch an arrow in the wrong place, not that there’s a right one. You die honourably. But your ward doesn’t. They die running, begging for someone to protect them, and you can’t answer.~
== BGV#MOID ~What’s more important? The gesture, or the outcome?~
== BC0SIREN ~Both are important. You were taught to use more pragmatic methods, and I understand this, but...forgive my rudeness...you are not a paladin. It is for precisely such gestures that Ilmater grants me his strength. Without them, without him, I am merely...~
== BGV#MOID ~Another grunt. Fair enough. Can’t fault anyone for not wanting to be me.~
EXIT

CHAIN IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("GV#VYND",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneGV#VyndBanter1","GLOBAL",0)~ THEN BGV#VYND SIRENE-VYND-1
~Gods. As if Drizzt wasn’t bad enough, now we’ve got half-demon paladins running around. Or quarter-demon. Whatever it is. Can’t anyone just play by the rules these days?~
DO ~SetGlobal("C0SireneGV#VyndBanter1","GLOBAL",1)~
== BC0SIREN ~Our paths are not laid by our heritage, and you know this as well as I. You would not be here otherwise.~
== BGV#VYND ~Oh, be a good little Ilmatari and spare me the agony of apprentice philosophy. This isn’t about fate versus free will. This about you muddying people’s perceptions, making things complicated for everyone else. Do you realise how annoying you must be to all the tieflings trying to make an honest living as blood-quaffing warlocks?~
== BC0SIREN ~If my example gives them even a moment’s pause then I have done more than I could have hoped.~
== BGV#VYND ~Yeah, so where was your moment’s pause? Did you ever think, just for an instant, that those people might be having more fun than you?~
== BC0SIREN ~Where does your intent lie, Vynd? You would have me cast aside everything I’ve learned, conform to what the mob believes I should be, in order to...do what? Prevent confusion? What exactly is your grievance here? Or are you simply being argumentative for the sake of it?~
== BGV#VYND ~Yes.~
== BC0SIREN ~...~
== BGV#VYND ~And you’re duty-bound to put up with it. Get ready for a long trip.~
EXIT

CHAIN IF ~InParty("C0Sirene")
See("C0Sirene")
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("GV#VYND",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("C0SireneGV#VyndBanter2","GLOBAL",0)~ THEN BGV#VYND SIRENE-VYND-2
~Ilmater. That’s a god with more followers than you’d expect. It’s amazing how often I cross paths with your type. Must be because you’re always on the road, since owning a house would get you excommunicated.~
DO ~SetGlobal("C0SireneGV#VyndBanter2","GLOBAL",1)~
== BC0SIREN ~Or perhaps it is because selflessness is neither as rare nor as scornworthy as you would claim.~
== BGV#VYND ~Pfft. If it makes you feel special, handing everything you earned to people who didn’t, that’s your business. It’s this obsession with misery that trips me up. The only other god I know that demands her followers suffer is Lolth, and at least she revels in being a pointless, idiotic monster.~
== BC0SIREN ~You compare the Broken God to the Spider Queen? I would take offence if I thought you believed yourself.~
== BC0SIREN ~Those who have taken the cloth will tell you the same as I. The pain we bear in Ilmater’s name is a teacher. A teacher of humility, of perseverance, and of empathy for those who bear such burdens without ever having chosen-~
== BGV#VYND ~Stick your sermons where your tail grows, tiefling. Or would, if you had one. By the time I was taller than my sword, I already knew more about pain than you’ll ever learn in your life. I’ll bet you all the moths in your coinpurse.~
== BGV#VYND ~So answer me this, oh martyred one. If suffering is so virtuous, so edifying, then how’d I end up as a five foot cocktail of everything you hate in the world?~
== BC0SIREN ~Hate? Is that what you think I feel? If you had but listened, you would know how wrong you are. I am sorrowful for those his mercy could not reach, and I grieve for the man in you who died without it. That is all.~
EXIT