---
title: "My Second Level"
source: "https://backrooms-wiki.wikidot.com/forum/t-15474729/my-second-level"
retrieved_at: "2026-08-23T23:52:29+00:00"
license: CC-BY-SA-3.0
---

# My Second Level

[Forum](https://backrooms-wiki.wikidot.com/forum/start)
» [Writing Help / Help: Draft Critique](forum__c-6898687__help__draft-critique--555ceb34.md)
» My Second Level

Started by:   
Date: 20 Dec 2022 19:13  
Number of posts: 26  
![rss icon](http://www.wikidot.com/common--theme/base/images/feed/feed-icon-14x14.png)
RSS: [New posts](https://backrooms-wiki.wikidot.com/feed/forum/t-15474729.xml)

Summary:

Greenlight and critique please. Be kind

[Unfold All](javascript:;)
[Fold All](javascript:;)
 [More Options](javascript:;)

[Edit Title & Description](javascript:;)
[Stickness](javascript:;)
[Lock Thread](javascript:;)
[Move Thread](javascript:;)

[Fold](javascript:;)

My Second Level

20 Dec 2022 19:13

<http://backrooms-sandbox-2.wikidot.com/tearsofblack-2>  
I know it's bad, but I tried. I don't know how to do a collapsible inside a collapsible.

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[My Second Level](javascript:;) by , 20 Dec 2022 19:13

[Fold](javascript:;)

Re: My Second Level

21 Dec 2022 09:37

Well.  
Concept of the level isn't bad at all.

I will reread this and give you after a more complete review.  
But i think you're on the good way.

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: My Second Level](javascript:;) by , 21 Dec 2022 09:37

[Fold](javascript:;)

Re: My Second Level

21 Dec 2022 17:02

Yay, thank you.

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: My Second Level](javascript:;) by , 21 Dec 2022 17:02

[Fold](javascript:;)

Re: My Second Level

21 Dec 2022 17:37

I don't think you *can* put a collapsible inside a collapsible. The syntax will read the first  
"[[/collapsible]]" you put down and assume that's the end of it. There are limits to this wonderful place, so here are two things I've discovered you cannot do.  
1. Put a collapsible inside a collapsible.  
2. Put a tab inside of a tab. Same reason as the collapsible.

---

My entire life has boiled down to this moment. This keyboard. What I write to you now is my blood, shed for your amusement.

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: My Second Level](javascript:;) by , 21 Dec 2022 17:37

[Fold](javascript:;)

Re: My Second Level

21 Dec 2022 17:43

Okay, thank you. I appreciate this info.

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: My Second Level](javascript:;) by , 21 Dec 2022 17:43

[Fold](javascript:;)

Re: My Second Level

21 Dec 2022 20:07

Of course. As soon as I get a little time, I'll spag you. That's my territory. If Nemu says it's, pretty good, you'll probably be fine. He's good with concept crit. (Still get a GL)  
EDIT: I just skimmed through it. Something I wanna know first: is this a joke level?

---

My entire life has boiled down to this moment. This keyboard. What I write to you now is my blood, shed for your amusement.

Last edited on 21 Dec 2022 20:10
by
 [Show more](javascript:;)

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: My Second Level](javascript:;) by , 21 Dec 2022 20:07

[Fold](javascript:;)

Re: My Second Level

21 Dec 2022 20:55

No, it is not. It's like the level wanted to write itself, sort of like level 14.

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: My Second Level](javascript:;) by , 21 Dec 2022 20:55

[Fold](javascript:;)

Re: My Second Level

21 Dec 2022 20:47

Well,  
it's possible and i've tested it on my sandbox.  
It just needs a special module.

Here the code.  
Adapt it to your own goals.

[[include :scp-wiki:component:coltop  
| show=+ show block  
| hide=- hide block  
]]  
First Collapsible  
[[include :scp-wiki:component:colend]]

[[include :scp-wiki:component:coltop  
| show=+ show block 1  
| hide=- hide block 1  
]]  
Text1  
[[include :scp-wiki:component:coltop  
| show=+ show block 2  
| hide=- hide block 2  
]]  
Text 2  
[[include :scp-wiki:component:coltop  
| show=+ show block 3  
| hide=- hide block 3  
]]  
Text 3  
[[include :scp-wiki:component:colend]]  
[[include :scp-wiki:component:colend]]  
[[include :scp-wiki:component:colend]]

Glad to have helped.  
Cordially,  
M. Nemu.

Last edited on 21 Dec 2022 20:47
by
 [Show more](javascript:;)

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: My Second Level](javascript:;) by , 21 Dec 2022 20:47

[Fold](javascript:;)

Re: My Second Level

21 Dec 2022 21:13

It worked great. Thank you, Mr. Nemu.

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: My Second Level](javascript:;) by , 21 Dec 2022 21:13

[Fold](javascript:;)

Re: My Second Level

21 Dec 2022 21:20

Well.  
Maybe, try instead this structure for the code:

[[include :scp-wiki:component:coltop  
| show=+ show block 1  
| hide=- hide block 1  
]]  
Text1  
[[include :scp-wiki:component:coltop  
| show=+ show block 2  
| hide=- hide block 2  
]]  
Text 2  
[[include :scp-wiki:component:coltop  
| show=+ show block 3  
| hide=- hide block 3  
]]  
Text 3  
[[include :scp-wiki:component:coltop  
| show=+ show block 4  
| hide=- hide block 4  
]]  
Text 4  
[[include :scp-wiki:component:colend]]  
[[include :scp-wiki:component:colend]]  
[[include :scp-wiki:component:colend]]  
[[include :scp-wiki:component:colend]]

Last edited on 22 Dec 2022 00:06
by
 [Show more](javascript:;)

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: My Second Level](javascript:;) by , 21 Dec 2022 21:20

[Fold](javascript:;)

Re: My Second Level

22 Dec 2022 00:07

Oups.  
Forgot the top.  
Corrected.

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: My Second Level](javascript:;) by , 22 Dec 2022 00:07

[Fold](javascript:;)

Re: My Second Level

22 Dec 2022 13:28

Well,  
the concept of a sentient level is interesting.  
Yet, this had been already done with an scp.

Howewer, i think that the level has enough potential to differentiate from these entries.

You have an approach on Gore that is presented in cute ways that is highly interesting.  
Howewer, this need improvement.

For example, opinions of travellers in logs with commentary of Cupey would be rad.

Exit with liberate 10 souls is a bit unclear. The method need to be precised.

As for theme weaving,  
Main themes are Cute Gore and Sentient.

Sentient and gore of course relate to the methods of cupey.  
Sentient and cute are its manners  
Cute and gore could be the theme for the whole entry.

Beware, don't shock and stay in the suggestions.

I think that a pink background would be fitting.

Here's a link to that effect.  
[http://backrooms-wiki.wikidot.com/theme:blankcolor](theme__blankcolor--a01343e7.md)

Finally, for the exit, use this code:  
[[include :scp-wiki:component:coltop  
| show=+ show block 1  
| hide=- hide block 1  
]]  
Text1  
[[include :scp-wiki:component:coltop  
| show=+ show block 2  
| hide=- hide block 2  
]]  
Text 2  
[[include :scp-wiki:component:coltop  
| show=+ show block 3  
| hide=- hide block 3  
]]  
Text 3  
[[include :scp-wiki:component:coltop  
| show=+ show block 4  
| hide=- hide block 4  
]]  
Text 4  
[[include :scp-wiki:component:colend]]  
[[include :scp-wiki:component:colend]]  
[[include :scp-wiki:component:colend]]  
[[include :scp-wiki:component:colend]]

Forgot the top in the code, i sent you earlier.  
Sorry for that.

Good writing.  
Cordially,  
M. Nemu.

Last edited on 22 Dec 2022 13:30
by
 [Show more](javascript:;)

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: My Second Level](javascript:;) by , 22 Dec 2022 13:28

[Fold](javascript:;)

Re: My Second Level

27 Dec 2022 19:55

Updated

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: My Second Level](javascript:;) by , 27 Dec 2022 19:55

[Fold](javascript:;)

Updated a little bit.

03 Jan 2023 13:39

It's been updated a little bit.

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Updated a little bit.](javascript:;) by , 03 Jan 2023 13:39

[Fold](javascript:;)

Re: Updated a little bit.

03 Jan 2023 13:54

Hello.  
Sorry for the late response.  
I was a bit busy.  
I'll look at your level and give it my feedback when i can.

Cordially,  
M. Nemu.

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: Updated a little bit.](javascript:;) by , 03 Jan 2023 13:54

[Fold](javascript:;)

Re: Updated a little bit.

03 Jan 2023 13:57

Thank you, .

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: Updated a little bit.](javascript:;) by , 03 Jan 2023 13:57

[Fold](javascript:;)

Re: Updated a little bit.

03 Jan 2023 21:42

Well,  
i have little to say.  
The execution and the idea are good, but can be developed further.  
However, i don't do SPaG.

An incoherence that I've noticed is how the recording (interview Kindred) came into the possession of M.E.G. if the recorder was crushed.

**Also, beware of the tone in general and of the personality of Cupey:**

For example, in the interview what do we learn of the cupey aside from the method of fabrication of the dolls ?

What if Cupey killed Kindred for a completely arbitrary reason in a cute way establishing the unstability of its personality in general ?

What if Cupey was ultra sweet with the description to the point that only the interview clarified the true nature of cupey ?

Example:  
**They all will climb onto you and grab you!**  
became a version of it where Cupey talk of it like a cute and ordinary action whereas the interviewer is skeptical.

**Last and for least, beside making friends what is the endgame of Cupey ?**

Good rewrite,  
Cordially,  
M. Nemu.

Last edited on 03 Jan 2023 21:43
by
 [Show more](javascript:;)

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: Updated a little bit.](javascript:;) by , 03 Jan 2023 21:42

[Fold](javascript:;)

Re: Updated a little bit.

05 Jan 2023 12:27

When Cupey says, "friends," they actually kind of mean, "captives." They hide their true meanings by replacing them with something cuter sounding if that makes sense. Does that not get across? If so, please tell me how it could be better.

Also, what's SPaG?

Last edited on 05 Jan 2023 12:45
by
 [Show more](javascript:;)

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: Updated a little bit.](javascript:;) by , 05 Jan 2023 12:27

[Fold](javascript:;)

Re: Updated a little bit.

05 Jan 2023 15:33

Ah sorry.  
I know that cupey like to have "friends" and transform them.  
Shoukd have used " "

But what is its endgame ?  
What its final objective ?  
(We both know that Cupey chose its targets)

Cordially,  
MisterNemu.

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: Updated a little bit.](javascript:;) by , 05 Jan 2023 15:33

[Fold](javascript:;)

Re: Updated a little bit.

06 Jan 2023 14:50

I tried my best to include it in the interview. Let me know if it feels awkward or anything.

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: Updated a little bit.](javascript:;) by , 06 Jan 2023 14:50

[Fold](javascript:;)

Re: Updated a little bit.

06 Jan 2023 16:04

So if i summarize its endgoal, Cupey is stuck in its level and try to get out of it.  
Therefore, cupey uses its ability to attract poor wanderers and under any pretext will transform them into dolls to gather their souls to gain enough energy to escape.

Seems pretty solid to me.  
The core concept is solid.

But i feel that ambiguity in the tone of Cupey really can serve the entry.

Like sugarcoating.

Dolls aren't grabbing you, they're hugging you, at least according to Cupey.

The interviewer can be more skeptical.

Last edited on 06 Jan 2023 16:08
by
 [Show more](javascript:;)

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: Updated a little bit.](javascript:;) by , 06 Jan 2023 16:04

[Fold](javascript:;)

Re: Updated a little bit.

07 Jan 2023 00:20

When they say grabbing, they mean it in the most menacing but sugar-coated way.

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: Updated a little bit.](javascript:;) by , 07 Jan 2023 00:20

[Fold](javascript:;)

Re: My Second Level

05 Jan 2023 15:09

Hi!

[You open a bottle, hoping to find Almond Water.](javascript:;)

[Instead, you find a handwritten critique notice.](javascript:;)

Spag is Spelling, Grammar, and Punctuation.

> **But I don't understand why some of them gave clear paint!**

I think this would be a good place to put the link, like **[clear paint!](entity-10.md)**  
Most of this seems pretty good, but I would create an error where it's loading the actual, clinical MEG file, like in the [Entity 18](entity-18.md) file.  
That's pretty much it for me.

---

My entire life has boiled down to this moment. This keyboard. What I write to you now is my blood, shed for your amusement.

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: My Second Level](javascript:;) by , 05 Jan 2023 15:09

[Fold](javascript:;)

Re: My Second Level

05 Jan 2023 21:26

Thank you so much, .

Last edited on 05 Jan 2023 21:27
by
 [Show more](javascript:;)

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: My Second Level](javascript:;) by , 05 Jan 2023 21:26

[Fold](javascript:;)

Re: My Second Level

06 Jan 2023 14:00

Of course! I just noticed this after reading through a bit, but you should fix the clinical tone in your exits section. Another thing is this quote:

> Be wary, as The Cupey is fast and will be infuriating.

I think you meant "infuriated". Sorry about that. Made a mistake.

---

My entire life has boiled down to this moment. This keyboard. What I write to you now is my blood, shed for your amusement.

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: My Second Level](javascript:;) by , 06 Jan 2023 14:00

[Fold](javascript:;)

Re: My Second Level

06 Jan 2023 14:50

Many thanks.

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: My Second Level](javascript:;) by , 06 Jan 2023 14:50

[New Post](javascript:;)

[Permanent Link](javascript:;)
[Edit](javascript:;)
[Delete](javascript:;)

/forum/t-15474729/my-second-level#post-

---

Source: [https://backrooms-wiki.wikidot.com/forum/t-15474729/my-second-level](https://backrooms-wiki.wikidot.com/forum/t-15474729/my-second-level)
