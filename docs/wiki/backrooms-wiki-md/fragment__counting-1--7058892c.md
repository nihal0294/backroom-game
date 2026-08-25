---
title: "fragment:counting-1"
source: "https://backrooms-wiki.wikidot.com/fragment:counting-1"
retrieved_at: "2026-08-23T23:39:46+00:00"
license: CC-BY-SA-3.0
---

# fragment:counting-1

[+ Theme Code](javascript:;)

[- Close](javascript:;)

```
/*=== ROOT VARS ===*/
:root {
    /*=== S-CSS-P ===*/
    --theme-base: "black-highlighter";
    --theme-id: "nuterminal";
    --theme-name: "NuTerminal Theme";
 
    /*=== Colors ===*/
    /*== Basic Colors ==*/
 
   --black-monochrome: 0, 4, 15;
   --dark-gray-monochrome: 18, 22, 32;
   --gray-monochrome: 95, 95, 95;
   --light-gray-monochrome: 115, 119, 129;
   --pale-gray-monochrome: 207, 210, 216;
   --white-monochrome: 230, 235, 239;
   --bright-accent: 115, 119, 129;
   --medium-accent: 0, 4, 15;
   --dark-accent: 115, 119, 129;
   --pale-accent: 115, 119, 129;
 
    /*== Swatches ==*/
    --swatch-background: var(--dark-gray-monochrome);
    --swatch-primary: var(--light-gray-monochrome);
    --swatch-primary-darker: var(--gray-monochrome);
    --swatch-primary-darkest: var(--light-gray-monochrome);
    --swatch-border-color: var(--white-monochrome);
 
    --swatch-text-dark: var(--black-monochrome);
    --swatch-text-light: var(--white-monochrome);
    --swatch-text-general: var(--swatch-text-light);
    --swatch-important-text: var(--pale-accent);
 
    --swatch-menubg-color: var(--black-monochrome);
    --swatch-menubg-light-color: var(--light-gray-monochrome);
    --swatch-menubg-medium-color: var(--gray-monochrome);
    --swatch-menubg-medium-dark-color: var(--black-monochrome);
    --swatch-menubg-dark-color: var(--dark-gray-monochrome);
    --swatch-menubg-black-color: var(--black-monochrome);
    --swatch-menubg-hover-color: var(--gray-monochrome);
 
    --swatch-menutxt-dark-color: var(--black-monochrome);
    --swatch-menutxt-light-color: var(--white-monochrome);
    --swatch-menutxt-general-color: var(--swatch-menutxt-light-color);
    --sideblock-heading-text-color: var(--swatch-menutxt-general-color);
 
    --swatch-secondary-color: var(--black-monochrome);
    --swatch-tertiary-color: var(--pale-gray-monochrome);
    --swatch-alternate-color: var(--pale-gray-monochrome);
 
    --swatch-text-secondary-color: var(--white-monochrome);
    --swatch-text-tertiary-color: var(--white-monochrome);
 
    --footer-text-color: var(--black-monochrome);
    --license-text-color: var(--black-monochrome);
 
    --gradient-header: linear-gradient(to top,
        rgba(var(--medium-accent)) 0%,
        rgba(var(--medium-accent), 0.3) 100%
    );
}
 
/*=== FOOTER ===*/
#footer {
   --footer-text-color: inherit;
   --footer-link-color: var(--black-monochrome);
}
 
#license-area {
   --license-text-color: inherit;
   --license-link-color: var(--black-monochrome);
}
 
/*=== Div Boxes ===*/
.darkerblock {
    color: rgb(var(--white-monochrome));
    background: rgb(var(--black-monochrome));
    padding: 0.01rem 1rem;
    margin: 0.5rem 0;
    box-shadow: var(--quote-shadow);
}
 
.styled-quote {
    border-left: solid 6px rgb(var(--black-monochrome));
}
 
/*=== Dots ===*/
#container {
   background-image: radial-gradient(circle, rgb(var(--black-monochrome), 0.40) 50%, transparent 0);
}
 
/*=== SD COLOURS ===*/
.sd-container {
   --sd-border:var(--white-monochrome);
   --sd-text:222,222,222;
   --sd-symbol:var(--sd-text);
   --sd-bullets:var(--sd-text);
}
```

[- Close](javascript:;)

My name is Mark Anderson. I am, well, I *was*, a Deputy Underseer at Base Kappa. If you're reading this years from now and don't know what Base Kappa is, that's good; this message found its way to the right person. If you do know… I'm sorry we couldn't stop it. I will do my best to describe the events of today without putting you in any further danger.

It started on Tuesday, we picked up chatter about unusual activity on the local Backnet chat room, it appeared that multiple channels and forum threads devolved into a stream of incoherent counting. We chalked it up to a glitch, maybe some kid playing a prank—we locked the server and kicked it down the line to Tech Support, making it their problem.

This afternoon is when it all really started going downhill. Every morning the underseers of the other outposts[1](javascript:;) check in with Point Henry for a debrief of the previous day—neither of the other outposts responded this morning. We had limited manpower, so we had to prioritize getting an accurate read on the situation as fast as possible. Point Jackle is much closer to the main hub, so we sent a two-man team to go check it out and maintained radio contact with them during the mission.

**Radio Log Transcript**

Featuring: David Lynn (Communication Operator), Miguel Gonzalez (Security), and Nate Finch (Explorer)

---

12:08[2](javascript:;)

David: Radio check—can y'all hear me?

Miguel: Loud and clear.

David: I reckon we make contact again in—uh, let's say thirty minutes.

Miguel: You got it, Dave. Nate's real sweet on a girl from Jackle, so we should make good time on the way.

*[Miguel can be heard protesting in the background.]*

David: Y'all just take it easy, ya'hear?

Miguel: Copy that.

---

12:35

Miguel: Gonzalez to Point Henry.

David: We hear'ya, Gonzalez. How's it goin'?

Miguel: We should be coming up on Jackle any minute now, figured we'd let you know.

David: *[Muffled]* Alright now—I'll be on standby.

Miguel: Damn—what are they serving for lunch?

David: *[Chuckles]* As if I'd know, friend. Got me cooped up like a jailbird on this radio all day. I'm eatin' what they'd like me to believe is *meatloaf* left over from yesterday.

Miguel: Yeah, that's how it— *[Nate can be heard in the background.]* Looks like we're coming up on Jackle now, stand-by.

12:38

---

12:41

Miguel: You hearing me, Point Henry?

David: I reckon we do, Gonzalez. How goes it?

Miguel: Well, the lights are on, but there's no security out front—no one answered the buzzer at the front gate—we had to break in.

David: Are they in lockdown? Something Could'a happened.

Miguel: Don't think so, Dave, the red light is off and there are no real signs of anything going down. I could've sworn I heard someone inside, but the front door is locked and no one is answering.

David: That ain't soundin' copacetic—what're ya thinkin'?

Miguel: Sent Nate around to the east entrance to see if anyone is there. I'm seeing how likely it is I'll be able to make it up into this window.

David: Alright, keep in touch—let me know when y'all make it inside.

12:45

---

12:58

Miguel: Come in, Point Henry.

David: I hear'ya, y'all make it inside yet?

Miguel: Yeah, Nate made it in, well— *[distant]* here, you tell him.

Nate: Yeah, the east entrance had nobody either, got lucky and the door was open. I didn't see anyone inside either. Aren't there, like, fifty people stationed here, maybe more?

David: Sixty-four, last I reckoned. How much of the building did y'all check?

Nate: I just came straight to the front to let Gonzalez in, haven't searched far yet*[Miguel can be heard talking]*

Miguel: I'll keep you posted, we're going to do a sweep.

David: Don't'cha go splittin' up again, we don't know what's going on yet.

Miguel: You got it.

13:03

---

13:26

David: Come in, Gonzalez—status update.

Miguel: Dave, I don't know what to make of it, it's like the whole outpost just up and left—didn't take much with them either, by the looks of it.

David: No signs of a struggle?

Miguel: No, there's—well, we found some blood, it's just, there's writing on some of the walls.

David: Writing? I'm not sure I follow.

Miguel: The blood is on the wall—it looks like someone used it to write a bunch of numbers. None of it makes much sense to us.

David: I'll be damned, no bodies or anything?

Miguel: Not one. Nate's picking the lock to the storage room, we hear *something* moving around in there—could've sworn we heard talking too. That aside, there's no way all sixty of them are in there.

David: Just be careful.

13:29

---

13:35

Miguel: We're in.

David: Well, anyone in there?

Miguel: Not *in here* exactly—they've got someone locked in a closet, got a chair jammed on it to keep it closed. They keep banging on the door, mumbling something—can't really hear what.

David: Could it be an entity? Maybe they were attacked.

Miguel: I'm going to check it out, someone could be hurt in there. I'll hand you off to Nate.

Nate: Some really creepy shit, man. I'm not liking the looks of this, I really hope Diane's alright.

David: Don't go daydreamin' 'bout your girlfriend—you don't know what's goin' on yet.

*[Miguel can be heard in the background, his voice raised.]*

Miguel: I'm going to open the door, don't do anything crazy, okay?

Nate: The banging stopped—they're still muttering something in there.

David: This don't feel ri—

*[David is cut off by the sound of a gunshot.]*

Nate: Fuck—it's—

*[Incoherent yelling; a gravelly voice can be heard counting.]*

David: What in God's name is going on, boy?

*[Static.]*

David: Nate? Gonzalez? What the hell is goin' on?

13:43

---

13:47

Nate: *[Speaking quietly]* Point Henry, do you copy?

David: Boy, you damn near gave me a heart attack. What is goin' on?

Nate: It got Gonzalez, it—I don't know what was wrong with them.

David: Out with it—what happened?

Nate: When Gonzalez opened the door, there was a man standing there, blood dripping down his forehead. Didn't hesitate, just lunged at him. He got a shot off, but he must've missed—the guy jumped on him and knocked him to the ground. Started slamming his head into the floor while counting—I panicked, okay? I didn't know what to do, I just ran out of there.

David: Christ, I, uh, it's alright now. You just gotta worry 'bout gettin' out of there, ya'hear?

Nate: I'm in a bathroom—I think it chased me. I honestly couldn't even tell, I just—

David: Calm down, it's gonna be alright.

Nate: There's writing here, on the walls, it's all over, 3478-53-8, 3479-59-3, 3480-61-2, 3481-67-7, 3482-71-9…

David: Yeah, that's great n'all, but we don't have time for that—you need to get a move on.

Nate: *[Sounds further away from the radio.]* 3485-83-3, 3486-89-6, 3487-97-2, 3488-101-9…

David: Nate, can ya'hear me? Nate!

Nate: 3489-103-1, 3490-107-7, 3491-109-5, 3451-113-8…

*[Nate continues to count as his voice grows more distant, eventually fading away.]*

13:57

---

[END Log]

As you could imagine, this sent Point Henry into high alert—we still didn't know exactly what was going on, but we knew it wasn't good. Underseer Campbell put the outpost in lockdown and called an administrator meeting at half past two. Not knowing what we were facing didn't help, but we tried coming up with some kind of plan nonetheless. We sent three security operators to Point Ignus to see if they were in a similar situation. Everyone else was split between lockdown maintenance, resources management, and analysis of what little evidence we had. We might've been in a tough spot, but we really thought we were going to get a handle on things.

Twenty minutes after the security team left, David down in the comms room activated the outpost's PA system—he sounded out of it, to put it lightly. It wasn't very clear at first, but after a few times we could tell what he was saying. It was numbers—he was counting, just like Nate and the assailant from Point Jackle. He didn't stop either, just kept rattling off numbers, louder and clearer as he kept going—only stopping to gasp for air. We sent security down to stop David, and after a slight altercation, they managed to subdue him.

The security operators were as brutish as ever and broke the comms system while trying to apprehend David. While the researchers tried to figure out what was happening to David, old man Vincent went to work trying to fix the radio. The non-administrators were in a frenzy, and for good reason too. The base went into lockdown unexpectedly and then everyone's favorite radio operator was roughed up on the PA—if we were confused at the situation, they were certainly lost.

The researchers working on David were the next to go mad. At about quarter past three we sent the new kid down to the research wing to check on their progress. They had disemboweled a research assistant and were using his viscera to write numbers on the walls—intestines strung up like Christmas lights spelling out a hellish arithmetic. I won't feign understanding of the numbers or what they mean—I've never been good at math, acute dyscalculia, that's what my teachers called it. In this case, I think it's best to not understand.

The translevel communication unit seemed like it was still operational, so we decided to send for help.

**Outgoing Transmission – Base Kappa**

Broadcasting: Point Henry

Receiving: Base Beta

Subject: Emergency situation; request for assistance.

---

Point Henry is currently under lockdown. The crew of Point Jackle is MIA with signs of a struggle—Point Ignus is unresponsive. We believe we are being affected by an unknown pathogen or possibly an unrecorded phenomenon. Several members of Point Henry are experiencing some form of extreme psychosis assumed to be linked to a pattern of numbers. Please advise.

---

**(!) Alert: Transmission Failure**

The only reason it would fail was that there had to be something wrong with transmitter, unfortunately it's located off-site, at the midway point between our three outposts. In all my years at Point Henry, that broadcast unit has never gone offline—I knew something was up. Luckily the security system had a terminal in the comms room, so we checked the CCTV footage of the entrance to the transmitter building.

[![Man on cctv nightvision camera, image is blurry.](https://backrooms-wiki.wdfiles.com/local--resized-images/fragment:counting-1/nate/medium.jpg)](https://backrooms-wiki.wdfiles.com/local--files/fragment:counting-1/nate)

Attached File: nate.jpg

I don't know how or why he ended there, but I have no doubt that the man in that footage was the explorer Nate Finch. He must've left Point Jackle and gone straight for the broadcaster, but I had no idea why. From the footage it looked like he left the transmitter building aafter ten minutes and went in the direction of Point Ignus. None of this made any sense… still doesn't.

All I knew is that I needed to figure out what was happening in Point Ignus, and, as if on cue, Vincent had finally repaired the part of the radio we needed to contact the security team. Unfortunately, we had more pressing concerns close to home—the phone that connected to the Underseer's phone began to ring.

**Phone Recording – Point Henry**

Featuring: Mark Anderson (Deputy Underseer), Niles Campbell (Underseer)

---

[Call Connected]

Mark: Comms room, Anderson speak—

Niles: Anderson, where the fuck have you been? This whole outpost has gone to shit! I'm on my way back to my office now, and you better be there when I arrive.

Mark: We just got the radio working, sort of. I'm about to make contact with the security—

Niles: I don't give a shit about that—get some security operators and get to my office, we can send for help from the terminal there.

Mark:, I'm sorry, but we really need to find out what— *[Mark is cut off by the sound of a gunshot.]* Sir? Are you alright?

Niles: Fuckin' hell, they're crazy. The whole lot of them have lost their goddamn minds. Just get to my office, Anderson.

Mark: I'll be there as soon as I—

[Call Disconnected]

Niles was as charming as ever, but he had a point. His office was the most secure in Point Henry, and it did have a computer terminal with its own external Backnet connection. But first I had to know what happened to Point Ignus, and someone needed to go repair the transmitter, or the Underseer's terminal would be just as useless as the one in the comms room. Old man Vincent offered to go fix it, he was a braver man than me—we both knew it was a mission he most likely wouldn't come back from. There were no radios left for him to take, so I gave him the flare gun David kept in his desk drawer and a handful of flares—not the best defense, but it's better than nothing. I locked the door behind him and ran to the radio.

**Radio Log Transcript**

Featuring: Mark Anderson (Deputy Underseer), Sarah Monroe (Security Operator)

---

15:26

Mark: Point Henry to security team.

Mark: Hello, Sarah? Donavan? Pasquale? Shit.

Sarah: What the fuck David—I've been trying to reach you for an hour.

Mark: This is Anderson. David is… Well, things aren't so great over here, this place is in chaos.

Sarah:, *[Forced laugh.]* Shit, I really doubt it tops this hellhole though.

Mark: What's the situation there?

Sarah: Dire. *[Sarah chuckles, which turns into a cough.]* Listen, they're all here—the people from Jackle, the crew here… They've all gone fucking crazy.

Mark: It's happening here too, it's something to do with the number—

Sarah: Yeah, the numbers, well, I've never seen numbers like this, man. I—I could barely hold down my lunch when I saw it.

Mark: Saw what?

Sarah: Listen—don't come here—don't send anyone else… You've got to get out of the—

Mark: Sarah! What the hell is going on?

Sarah: They're changing, Mark. I don't *[wet coughing]* I don't know how, they've twisted themselves, bones ripping through their skin—they're contorting themselves to form long blocks of numbers with their bodies. Dozens of them, all sprawled throughout the outpost—they're screaming now, you can hear their vocal cords tearing as they just keep counting.

Mark: Holy shit… What about Donavan and Pasquale?

Sarah: Dead. The ones that haven't *changed* are walking around the halls, attacking anyone that isn't counting—we were overwhelmed.

Mark: Okay, well… Shit. Where are you now?

Sarah: Locked in the security room, figured they can't break in here.

Mark: At least you should be safe for now. Do you have supplies? The exit to the level won't be open for another two days, so—

*[Sarah's cough devolves into a low gurgle.]*

Sarah: I'm not gonna make it, Mark. They—they cut me good. Right in the gut—probably trying to string me up like they did Pasquale.

Mark: Fuck—why is this happening?

Sarah: I don't know—I can feel it though… *[coughing]* It's stirring around the back of my mind. I've resisted, but I can't last forever.

Mark: I don't get it. What started it? Why here?

Sarah: This place is like that sometimes—doesn't always make sense.

Mark: Listen, you need to patch yourself up, we can get out of— *[Mark is interrupted by labored coughing.]*

Sarah: Y–You take care of yourself, Mark—try and hold out. I'm gonna *[Sarah begins to cough heavily.]* I'm— I… *[A quiet gurgling noise can be heard.]*

Mark: Sarah? Fuck, Sarah, are you there?

Mark: Hello?

[15:32]

---

[END LOG]

Panic overwhelmed me—I stared blankly out the window, the full weight of the day's events bearing down on me. Something in the corner of my eye snapped me out of it—movement, and plenty of it. Nearly the entire crew of Point Henry, at least what was left of it, shuffled out of the outpost together—a shambling wave of the counting shells of my former peers. I took that as my sign to act.

I ran through the halls towards the stairwell that led to the Underseer's office, nearly slipping several times on the bloody puddles left behind from the chaos. I did my best not to look at the bloody numeric murals strewn across the walls, but the smell of blood was thick in the air—a sense I could not easily ignore. As I busted through the doors to the stairway, I was met with a most grotesque sight. Three, maybe even four, people were congealed together in a writhing mass on the landing below. Their movement was unnatural, almost mechanical, they bent and snapped and twisted themselves until I could finally see what they were becoming: the numbers five, six, one, and three. They let out a piercing shriek, which helped motivate my push up the stairs in the opposite direction.

I stepped over the corpses of several of my coworkers to get to the Underseer's office door, wiping the blood from the keypad as I shakily typed in the passcode. The office was dark inside—I could see one of the lamps beside a knocked over table just inside the doorway. I slowly walked inside, and right on cue, I could see a flare arc across the sky through the double-pane office window. My relief was cut short by the shadow casting from the flare's light—I wasn't alone. I reached for the switch and flipped on the lights. Underseer Niles Campbell stood before me, somehow an even more oppressive presence than usual. His jaw was ripped from the socket on one side, hanging like a broken door clinging to a broken hinge. The Underseer's tongue waggled as he choked out incoherent noises. God knows I couldn't understand him, but I knew what he was saying. I knew he was still counting.

He fell upon me with a speed I wouldn't think someone in his condition could muster—we tumbled to the floor, blood pouring from the gash that was once his mouth. His tongue lapped across my face as I did my best to keep him away. He tore at the arm I had extended to hold him up, my other hand searching frantically for something to aid me. Finally, my hand found the fallen lamp, and I struck him across the face with it using all my strength. His jaw fully came loose, slamming against the blood-covered wall—I didn't hesitate, I brought the lamp down on what was left of his head, over and over, until there was nothing but a bony paste remaining.

---

Audio Log

Featured: Mark Anderson (Deputy Underseer)

---

*That was an hour ago… I've been typing this out since then, luckily the Underseer's terminal has all the records I needed to write this.*

*I was going to ask for a rescue—that was the whole point of getting up here—but I can feel it now, same as Sarah did. The numbers are gnawing away at the back of my mind. The Underseer keeps an old revolver in his desk drawer… I'm not going out like the rest of them.*

*Please, don't come here. Don't let the two hundred and fifty-some odd souls that were erased here have done so in vain. Delete the files, change the names, seal the entrance—I don't care how, just let this die with us. Let this level and Base Kappa slip into rumor-just another strange story people trade on long walks between levels, the kind smart folks shake their heads at and keep moving. Don't try to confirm anything. Don't try to research it. And whatever you do—don't start counting.*

Footnotes

[1](javascript:;). Base Kappa is split into three separate outposts on Level ███: Point Henry, the main hub, as well as Point Ingnus and Point Jackle.

[2](javascript:;). All times are in M.E.G. Standard Time.

---

Source: [https://backrooms-wiki.wikidot.com/fragment:counting-1](https://backrooms-wiki.wikidot.com/fragment:counting-1)
