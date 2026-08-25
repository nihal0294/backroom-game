---
title: "How do you make text fade?"
source: "https://backrooms-wiki.wikidot.com/forum/t-17402030/how-do-you-make-text-fade"
retrieved_at: "2026-08-23T23:44:57+00:00"
license: CC-BY-SA-3.0
---

# How do you make text fade?

[Forum](https://backrooms-wiki.wikidot.com/forum/start)
» [Writing Help / Help: Questions Desk](forum__c-6898689__help__questions-desk--7a9332f1.md)
» How do you make text fade?

Started by:   
Date: 28 Oct 2025 17:06  
Number of posts: 3  
![rss icon](http://www.wikidot.com/common--theme/base/images/feed/feed-icon-14x14.png)
RSS: [New posts](https://backrooms-wiki.wikidot.com/feed/forum/t-17402030.xml)

[Unfold All](javascript:;)
[Fold All](javascript:;)
 [More Options](javascript:;)

[Edit Title & Description](javascript:;)
[Stickness](javascript:;)
[Lock Thread](javascript:;)
[Move Thread](javascript:;)

[Fold](javascript:;)

How do you make text fade?

28 Oct 2025 17:06

If someone could give me the syntax code to make text seem like it is fading, or a page that has text like this, that would be wonderful.

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[How do you make text fade?](javascript:;) by , 28 Oct 2025 17:06

[Fold](javascript:;)

Re: How do you make text fade?

29 Oct 2025 10:34

add the following to your module:

.end-grad {  
background: linear-gradient(to right, rgba(255,255,255,1), rgba(0,0,0,0));  
-webkit-background-clip: text;  
-webkit-text-fill-color: transparent;  
-moz-background-clip: text;  
-moz-text-fill-color: transparent;  
}

Then all you gotta do is add [[span class="end-grad"]] FADING TEXT HERE YO [[/span]]  
for it to work

Last edited on 29 Oct 2025 10:35
by
 [Show more](javascript:;)

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: How do you make text fade?](javascript:;) by , 29 Oct 2025 10:34

[Fold](javascript:;)

29 Oct 2025 12:16

Thank you :}

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
 by , 29 Oct 2025 12:16

[New Post](javascript:;)

[Permanent Link](javascript:;)
[Edit](javascript:;)
[Delete](javascript:;)

/forum/t-17402030/how-do-you-make-text-fade#post-

---

Source: [https://backrooms-wiki.wikidot.com/forum/t-17402030/how-do-you-make-text-fade](https://backrooms-wiki.wikidot.com/forum/t-17402030/how-do-you-make-text-fade)
