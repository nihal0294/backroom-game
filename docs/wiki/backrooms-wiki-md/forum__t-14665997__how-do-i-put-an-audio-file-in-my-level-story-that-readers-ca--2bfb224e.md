---
title: "How do I put an audio file in my level/story that readers can listen to while reading?"
source: "https://backrooms-wiki.wikidot.com/forum/t-14665997/how-do-i-put-an-audio-file-in-my-level-story-that-readers-ca"
retrieved_at: "2026-08-23T23:57:45+00:00"
license: CC-BY-SA-3.0
---

# How do I put an audio file in my level/story that readers can listen to while reading?

[Forum](https://backrooms-wiki.wikidot.com/forum/start)
» [Writing Help / Help: Questions Desk](forum__c-6898689__help__questions-desk--7a9332f1.md)
» How do I put an audio file in my level/story that readers can listen to while reading?

Started by:   
Date: 26 Apr 2022 23:58  
Number of posts: 3  
![rss icon](http://www.wikidot.com/common--theme/base/images/feed/feed-icon-14x14.png)
RSS: [New posts](https://backrooms-wiki.wikidot.com/feed/forum/t-14665997.xml)

Summary:

Basically, I saw a level or tale (I quite forgot, to be honest) where I could click a button and play music while reading the article. I would like to try that out with my article, and I am looking for help on how to do that.

[Unfold All](javascript:;)
[Fold All](javascript:;)
 [More Options](javascript:;)

[Edit Title & Description](javascript:;)
[Stickness](javascript:;)
[Lock Thread](javascript:;)
[Move Thread](javascript:;)

[Fold](javascript:;)

How do I put an audio file in my level/story that readers can listen to while reading?

26 Apr 2022 23:58

Basically, I saw a level or tale (I quite forgot, to be honest) where I could click a button and play music while reading the article. I would like to try that out with my article, and I am looking for help on how to do that. (Copied from summary)

---

Certified Nerd, Musician, and Procrastinator

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[How do I put an audio file in my level/story that readers can listen to while reading?](javascript:;) by , 26 Apr 2022 23:58

[Fold](javascript:;)

Re: How do I put an audio file in my level/story that readers can listen to while reading?

27 Apr 2022 15:50

First, you'll need to upload the file to your sandbox page, the Files can be found at the bottom of the page.

After doing so, copy the following code, and add the link from the Files tab to add the music.

[+ show block](javascript:;)

[– hide block](javascript:;)

```
[[html]]
<center>
<button id="disable" onclick="disable(); AudioSource.play()">Play Ambience</button>
<script>
var AudioSource = new Audio("link name here");
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

---

> JamiMyst **|** she/her

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: How do I put an audio file in my level/story that readers can listen to while reading?](javascript:;) by , 27 Apr 2022 15:50

[Fold](javascript:;)

Wikidon't

27 Apr 2022 15:58

I love double posting wikidon't moments

---

> JamiMyst **|** she/her

Last edited on 28 Apr 2022 17:28
by
 [Show more](javascript:;)

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Wikidon't](javascript:;) by , 27 Apr 2022 15:58

[New Post](javascript:;)

[Permanent Link](javascript:;)
[Edit](javascript:;)
[Delete](javascript:;)

/forum/t-14665997/how-do-i-put-an-audio-file-in-my-level-story-that-readers-ca#post-

---

Source: [https://backrooms-wiki.wikidot.com/forum/t-14665997/how-do-i-put-an-audio-file-in-my-level-story-that-readers-ca](https://backrooms-wiki.wikidot.com/forum/t-14665997/how-do-i-put-an-audio-file-in-my-level-story-that-readers-ca)
