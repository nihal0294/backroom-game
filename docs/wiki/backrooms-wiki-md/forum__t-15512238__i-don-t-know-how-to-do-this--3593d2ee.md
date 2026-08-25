---
title: "I don't know how to do this..."
source: "https://backrooms-wiki.wikidot.com/forum/t-15512238/i-don-t-know-how-to-do-this"
retrieved_at: "2026-08-23T23:52:11+00:00"
license: CC-BY-SA-3.0
---

# I don't know how to do this...

[Forum](https://backrooms-wiki.wikidot.com/forum/start)
» [Writing Help / Help: Questions Desk](forum__c-6898689__help__questions-desk--7a9332f1.md)
» I don't know how to do this...

Started by:   
Date: 06 Jan 2023 13:08  
Number of posts: 16  
![rss icon](http://www.wikidot.com/common--theme/base/images/feed/feed-icon-14x14.png)
RSS: [New posts](https://backrooms-wiki.wikidot.com/feed/forum/t-15512238.xml)

Summary:

How to do the creepy person who visits the pages name in the text thing.

[Unfold All](javascript:;)
[Fold All](javascript:;)
 [More Options](javascript:;)

[Edit Title & Description](javascript:;)
[Stickness](javascript:;)
[Lock Thread](javascript:;)
[Move Thread](javascript:;)

[Fold](javascript:;)

I don't know how to do this...

06 Jan 2023 13:08

You know how in some articles it will say your name in it and it feels creepy? I want to learn how to do that. Could someone teach me?

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[I don't know how to do this...](javascript:;) by , 06 Jan 2023 13:08

[Fold](javascript:;)

Re: I don't know how to do this...

06 Jan 2023 20:50

just copy and paste this code

[[/code]]

[[module ListUsers users="."]]  
lorem ipsum %%title%% lorem ipsum  
[[/module]]

```
**note: sorry if it's broken**
```

---

hi it is me aaron92

Last edited on 06 Jan 2023 20:51
by
 [Show more](javascript:;)

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: I don't know how to do this...](javascript:;) by , 06 Jan 2023 20:50

[Fold](javascript:;)

Re: I don't know how to do this...

07 Jan 2023 00:53

I don't think it works.

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: I don't know how to do this...](javascript:;) by , 07 Jan 2023 00:53

[Fold](javascript:;)

Re: I don't know how to do this...

10 Jan 2023 13:20

Could you give me a fixed one?

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: I don't know how to do this...](javascript:;) by , 10 Jan 2023 13:20

[Fold](javascript:;)

Re: I don't know how to do this...

10 Jan 2023 21:18

Aaron made a small mistake. All you need is this:

[[module ListUsers users="."]]  
lorem ipsum %%title%% lorem ipsum  
[[/module]]

  
  
  
Replace the "lorem ipsum" with whatever text you want to put down on either side of it. Check out the third tab in [my sandbox](http://backrooms-sandbox-2.wikidot.com/dracodiablo99-sandbox-br) and tell me if you see your name! If you do, then this works.  
  
  
With regards,

---

My entire life has boiled down to this moment. This keyboard. What I write to you now is my blood, shed for your amusement.

Last edited on 10 Jan 2023 21:23
by
 [Show more](javascript:;)

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: I don't know how to do this...](javascript:;) by , 10 Jan 2023 21:18

[Fold](javascript:;)

Re: I don't know how to do this...

17 Jan 2023 12:13

It doesn't seem to work for me. Tell me what I did wrong.

<http://backrooms-sandbox-2.wikidot.com/tearsofblack-3>

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: I don't know how to do this...](javascript:;) by , 17 Jan 2023 12:13

[Fold](javascript:;)

Re: I don't know how to do this...

31 Jan 2023 14:39

[[module ListUsers users="."]]  
%%title%%  
[[/module]]  
The [[module ListUsers users="."]] needs to be at the top of your page, the [[/module]] at the bottom of the page. The %%title%% will be where you want the user's name to be displayed.

Last edited on 31 Jan 2023 14:41
by
 [Show more](javascript:;)

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: I don't know how to do this...](javascript:;) by , 31 Jan 2023 14:39

[Fold](javascript:;)

Re: I don't know how to do this...

31 Jan 2023 15:07

So, I did that, but now my page doesn't work. It worked for a bit, until I went to fix it. <http://backrooms-sandbox-2.wikidot.com/tearsofblack-all>

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: I don't know how to do this...](javascript:;) by , 31 Jan 2023 15:07

[Fold](javascript:;)

Re: I don't know how to do this...

31 Jan 2023 16:17

Get rid of the rating module. It messes it up.

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: I don't know how to do this...](javascript:;) by , 31 Jan 2023 16:17

[Fold](javascript:;)

Re: I don't know how to do this...

31 Jan 2023 16:50

Now everything level 41 and past won't show up.

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: I don't know how to do this...](javascript:;) by , 31 Jan 2023 16:50

[Fold](javascript:;)

Re: I don't know how to do this...

31 Jan 2023 17:30

Make the page you want to have the list user module in a different sandbox. Keep everything you don't want to use the module in the tabs.

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: I don't know how to do this...](javascript:;) by , 31 Jan 2023 17:30

[Fold](javascript:;)

Re: I don't know how to do this...

31 Jan 2023 17:36

Alrighty. Thank you so much, .

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: I don't know how to do this...](javascript:;) by , 31 Jan 2023 17:36

[Fold](javascript:;)

Re: I don't know how to do this...

31 Jan 2023 17:40

Something happened. <http://backrooms-sandbox-2.wikidot.com/tearsofblack-3>

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: I don't know how to do this...](javascript:;) by , 31 Jan 2023 17:40

[Fold](javascript:;)

Re: I don't know how to do this...

31 Jan 2023 18:18

Put the List user ="." after  
[[include component:image-block  
|name=41Graves  
|caption=Inside the Mausoleum  
|align=center  
]]

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: I don't know how to do this...](javascript:;) by , 31 Jan 2023 18:18

[Fold](javascript:;)

Re: I don't know how to do this...

31 Jan 2023 18:57

Many thanks. It works now.

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: I don't know how to do this...](javascript:;) by , 31 Jan 2023 18:57

[Fold](javascript:;)

Re: I don't know how to do this...

31 Jan 2023 19:02

Your welcome.

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: I don't know how to do this...](javascript:;) by , 31 Jan 2023 19:02

[New Post](javascript:;)

[Permanent Link](javascript:;)
[Edit](javascript:;)
[Delete](javascript:;)

/forum/t-15512238/i-don-t-know-how-to-do-this#post-

---

Source: [https://backrooms-wiki.wikidot.com/forum/t-15512238/i-don-t-know-how-to-do-this](https://backrooms-wiki.wikidot.com/forum/t-15512238/i-don-t-know-how-to-do-this)
