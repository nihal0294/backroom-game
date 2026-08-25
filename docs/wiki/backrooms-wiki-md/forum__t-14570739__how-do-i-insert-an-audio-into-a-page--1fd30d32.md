---
title: "How do I insert an audio into a page?"
source: "https://backrooms-wiki.wikidot.com/forum/t-14570739/how-do-i-insert-an-audio-into-a-page"
retrieved_at: "2026-08-23T23:57:14+00:00"
license: CC-BY-SA-3.0
---

# How do I insert an audio into a page?

[Forum](https://backrooms-wiki.wikidot.com/forum/start)
» [Writing Help / Help: Questions Desk](forum__c-6898689__help__questions-desk--7a9332f1.md)
» How do I insert an audio into a page?

Started by:   
Date: 19 Mar 2022 17:38  
Number of posts: 11  
![rss icon](http://www.wikidot.com/common--theme/base/images/feed/feed-icon-14x14.png)
RSS: [New posts](https://backrooms-wiki.wikidot.com/feed/forum/t-14570739.xml)

[Unfold All](javascript:;)
[Fold All](javascript:;)
 [More Options](javascript:;)

[Edit Title & Description](javascript:;)
[Stickness](javascript:;)
[Lock Thread](javascript:;)
[Move Thread](javascript:;)

[Fold](javascript:;)

How do I insert an audio into a page?

19 Mar 2022 17:38

I have a total of 8 audio clips I'm planning on inserting into The Musician's page, but I don't know how to do so. Do I need to upload them elsewhere first? What sort of code am I supposed to use??  
Edit: I also don't know how licenses and such work. If someone could explain that to me, that'd be greatly appreciated! :)

---

Stay icy!  
~Lemonade🍋

Last edited on 19 Mar 2022 17:40
by
 [Show more](javascript:;)

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[How do I insert an audio into a page?](javascript:;) by , 19 Mar 2022 17:38

[Fold](javascript:;)

Re: How do I insert an audio into a page?

19 Mar 2022 19:48

I got some help from the Tech Support team on the Discord server (i'm still learning haha)

The code below is for a play button script, which will just play the raw audio file.

[code](javascript:;)

[oooo code stuff](javascript:;)

```
[[html]]
<center>
<button id="disable" onclick="disable(); AudioSource.play()">Play Ambience</button>
<script>
var AudioSource = new Audio("insert audio URL here");
function disable() {
document.getElementById("disable").disabled = true;
setTimeout(function() {
   document.getElementById("disable").disabled = false;
}, AudioSource.duration * 1000);
}
</script>
</center>
[[/html]]
```

This code is for an audio snippet, which I have been told is better for multiple files since you can pause, change the volume, and skip to certain timestamps.

[code](javascript:;)

[very interesting](javascript:;)

```
[[include :snippets:html5player
| type=audio
| url=insert audio URL here]]
```

To make sure these work, you will need to upload all 8 files to the page itself. When you upload the Musician, go to the bottom of the page and press "Files." Upload each file one by one, and give them a name each. When it says "insert audio URL," you are going to need to go back down to Files, find the file you want, and click "Info." The link provided is what you need to put in the url section.

Hope this helps! If you have any other questions, reply here.

---

*Absolute secrecy must be upheld by any means necessary ~ The Vault*

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: How do I insert an audio into a page?](javascript:;) by , 19 Mar 2022 19:48

[Fold](javascript:;)

Re: How do I insert an audio into a page?

20 Mar 2022 03:18

Thank you so much!!

---

Stay icy!  
~Lemonade🍋

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: How do I insert an audio into a page?](javascript:;) by , 20 Mar 2022 03:18

[Fold](javascript:;)

Re: How do I insert an audio into a page?

20 Mar 2022 03:25

So how do I properly credit the place where I downloaded the audio files from?? I see people do stuff with licenses and all of that, but I don't really understand how those work ^\_^"

---

Stay icy!  
~Lemonade🍋

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: How do I insert an audio into a page?](javascript:;) by , 20 Mar 2022 03:25

[Fold](javascript:;)

Re: How do I insert an audio into a page?

20 Mar 2022 14:46

You will do that in your "Author" collapsible. How I do it is like this, which is from an example of [Level 197](level-197.md):

```
[[>]]
[[collapsible show="Something else shines in the darkness..." hide="Whoops! It's just these cool people!"]]
[[=]]
Written by [[*user NavyEOD_24]]
Custom SD Logo created by [[*user Entro_P]]
Relentlessly criticized by a bunch of people.
Thanks for the help, y'all!

Image Licensing:
Image 1 by Krystal Ng is licensed under the Unsplash License (https://unsplash.com/photos/1PlVbeOCd78)
Image 2 by lilartsy is licensed under the Unsplash License (https://unsplash.com/photos/TdAfVvGXelo)
Image 3 by Micheal Fuchs is licensed under the Unsplash License, edited by [[user *Natedagreat563]] (https://unsplash.com/photos/to1t9i0AQIY)

[[[navyeod-24|Rise Against the Hive.]]]
[[/=]]
[[/collapsible]]
[[/>]]
```

This type of Image/Content Licensing is my preferred method, but you can do it however you like!

---

*Absolute secrecy must be upheld by any means necessary ~ The Vault*

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: How do I insert an audio into a page?](javascript:;) by , 20 Mar 2022 14:46

[Fold](javascript:;)

Re: How do I insert an audio into a page?

20 Mar 2022 16:20

Ahh okay! So how do I know what license to use??? I don't even know any licenses in general so,,,

---

Stay icy!  
~Lemonade🍋

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: How do I insert an audio into a page?](javascript:;) by , 20 Mar 2022 16:20

[Fold](javascript:;)

Re: How do I insert an audio into a page?

20 Mar 2022 16:22

Ahh okay! So how do I know what license to use??? I don't even know any licenses in general so,,,

---

Stay icy!  
~Lemonade🍋

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: How do I insert an audio into a page?](javascript:;) by , 20 Mar 2022 16:22

[Fold](javascript:;)

Re: How do I insert an audio into a page?

20 Mar 2022 20:21

If they are your own audio files, you can upload them under CC BY-SA 3.0, which is our site standard currently. As they are your own files, you can update the licenses whenever you wish.

If they are not your own files, then you must find the source and check their license policy.

---

*Absolute secrecy must be upheld by any means necessary ~ The Vault*

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: How do I insert an audio into a page?](javascript:;) by , 20 Mar 2022 20:21

[Fold](javascript:;)

Re: How do I insert an audio into a page?

20 Mar 2022 22:50

OHHH okay, TYSM!! And just for future reference, what do I do if the site doesn't have any licensing policies?

---

Stay icy!  
~Lemonade🍋

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: How do I insert an audio into a page?](javascript:;) by , 20 Mar 2022 22:50

[Fold](javascript:;)

Re: How do I insert an audio into a page?

20 Mar 2022 23:20

If a site does not have explicit licensing policies or they are too hard to find, either send it to a staff member on the CC Image Team or completely disregard the photo. Sites with no explicit policies are untrustful, and there may be loopholes where you can be caught in a Catch 22.

---

*Absolute secrecy must be upheld by any means necessary ~ The Vault*

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: How do I insert an audio into a page?](javascript:;) by , 20 Mar 2022 23:20

[Fold](javascript:;)

Re: How do I insert an audio into a page?

24 Mar 2022 21:40

Thanks! That code really helped hahaha

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: How do I insert an audio into a page?](javascript:;) by , 24 Mar 2022 21:40

[New Post](javascript:;)

[Permanent Link](javascript:;)
[Edit](javascript:;)
[Delete](javascript:;)

/forum/t-14570739/how-do-i-insert-an-audio-into-a-page#post-

---

Source: [https://backrooms-wiki.wikidot.com/forum/t-14570739/how-do-i-insert-an-audio-into-a-page](https://backrooms-wiki.wikidot.com/forum/t-14570739/how-do-i-insert-an-audio-into-a-page)
