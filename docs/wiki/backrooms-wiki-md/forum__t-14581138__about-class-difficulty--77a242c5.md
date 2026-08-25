---
title: "about class difficulty"
source: "https://backrooms-wiki.wikidot.com/forum/t-14581138/about-class-difficulty"
retrieved_at: "2026-08-23T23:57:21+00:00"
license: CC-BY-SA-3.0
---

# about class difficulty

[Forum](https://backrooms-wiki.wikidot.com/forum/start)
» [Writing Help / Help: Questions Desk](forum__c-6898689__help__questions-desk--7a9332f1.md)
» about class difficulty

Started by:   
Date: 28 Mar 2022 02:14  
Number of posts: 4  
![rss icon](http://www.wikidot.com/common--theme/base/images/feed/feed-icon-14x14.png)
RSS: [New posts](https://backrooms-wiki.wikidot.com/feed/forum/t-14581138.xml)

Summary:

i want to change some extra text

[Unfold All](javascript:;)
[Fold All](javascript:;)
 [More Options](javascript:;)

[Edit Title & Description](javascript:;)
[Stickness](javascript:;)
[Lock Thread](javascript:;)
[Move Thread](javascript:;)

[Fold](javascript:;)

about class difficulty

28 Mar 2022 02:14

1. how do i change the “CLASS DIFFICULTY:” text

2. how do i get rid of the word “class” in front of every class?

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[about class difficulty](javascript:;) by , 28 Mar 2022 02:14

[Fold](javascript:;)

Re: about class difficulty

28 Mar 2022 02:25

For your first question, this is the code for how to change the text:

```
[[include :backrooms-sandbox-2:component:custom-class
|class=Variable
|ddisplay=Class **//Variable//**
|color=000000
|border=3B3B3B
|list-color=FFFFFF
|image=http://backrooms-sandbox-2.wikidot.com/local--files/entro-p-level-345/class%20unstable.png
|one=Mysterious Properties
|two=Scarce Information
|three=Sudden Changes in Environment
]]
[[module css]]
.bottom-box ul li {
     color: #FFFFFF !important;
}

.bottom-box ui li:before {
     background: #FFFFFF !important;
}
[[/module]]
```

  
Let me decipher some of this.

The "class=" is where the name of the SD will be, like "Class 5E" or "Class Deadzone."

Only use "image=" if you have a specific image in mind, which for a custom class you'll need an image URL. Go [here](http://backrooms-sandbox-2.wikidot.com/collab:stretchs-swag-ass-sd-class-collection) to get the URL's for certain classes.

"one=, two=, three=" are all used for the bullet points at the bottom. Change them to whatever you want.

"color=" and "border=" are HEX code only, and make up the color of your SD class. I highly suggest making the border a lighter color than the background color.

The whole bottom portion is used for the color of the bullet points. "ffffff" will make it white, and once again is HEX code only.

Your second point, I unfortunately do not know how to remove.

---

*Absolute secrecy must be upheld by any means necessary ~ The Vault*

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: about class difficulty](javascript:;) by , 28 Mar 2022 02:25

[Fold](javascript:;)

Re: about class difficulty

28 Mar 2022 03:55

thanks man!

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: about class difficulty](javascript:;) by , 28 Mar 2022 03:55

[Fold](javascript:;)

Re: about class difficulty

28 Mar 2022 23:40

No problem

---

*Absolute secrecy must be upheld by any means necessary ~ The Vault*

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: about class difficulty](javascript:;) by , 28 Mar 2022 23:40

[New Post](javascript:;)

[Permanent Link](javascript:;)
[Edit](javascript:;)
[Delete](javascript:;)

/forum/t-14581138/about-class-difficulty#post-

---

Source: [https://backrooms-wiki.wikidot.com/forum/t-14581138/about-class-difficulty](https://backrooms-wiki.wikidot.com/forum/t-14581138/about-class-difficulty)
