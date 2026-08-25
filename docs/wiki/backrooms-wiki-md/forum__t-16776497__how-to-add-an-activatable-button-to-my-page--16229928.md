---
title: "How to add an activatable button to my page"
source: "https://backrooms-wiki.wikidot.com/forum/t-16776497/how-to-add-an-activatable-button-to-my-page"
retrieved_at: "2026-08-23T23:48:41+00:00"
license: CC-BY-SA-3.0
---

# How to add an activatable button to my page

[Forum](https://backrooms-wiki.wikidot.com/forum/start)
» [Writing Help / Help: Questions Desk](forum__c-6898689__help__questions-desk--7a9332f1.md)
» How to add an activatable button to my page

Started by:   
Date: 17 Apr 2024 02:00  
Number of posts: 3  
![rss icon](http://www.wikidot.com/common--theme/base/images/feed/feed-icon-14x14.png)
RSS: [New posts](https://backrooms-wiki.wikidot.com/feed/forum/t-16776497.xml)

[Unfold All](javascript:;)
[Fold All](javascript:;)
 [More Options](javascript:;)

[Edit Title & Description](javascript:;)
[Stickness](javascript:;)
[Lock Thread](javascript:;)
[Move Thread](javascript:;)

[Fold](javascript:;)

How to add an activatable button to my page

17 Apr 2024 02:00

I really love the press the button on screen to see the level concepts of level 610, how do i make something like that?

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[How to add an activatable button to my page](javascript:;) by , 17 Apr 2024 02:00

[Fold](javascript:;)

Re: How to add an activatable button to my page

17 Apr 2024 02:57

At the top of your page:

```
[[module CSS]]
.light-switch-button a.collapsible-block-link {
  display: block;
  width: fit-content;
  margin: 0 auto;
  background: rgb(var(--black-monochrome));
  color: rgb(var(--white-monochrome));
  padding: 0.3em 1em;
  box-shadow: 0 0.3rem 0.5rem rgba(0,0,0,0.4);
  font-size: 150%;
  transform: translateY(-0.2rem);
  transition: 0.3s;
  text-decoration: none
}
.light-switch-button a.collapsible-block-link:hover {
  transform: translateY(0);
  box-shadow: 0 0.1rem 0.5rem rgba(0,0,0,0.4);
  text-decoration: none
}
[[/module]]
```

  
I recommend that you check and change the [[collapsibles]], because by putting this code, such parts will be affected and replaced by this button.

Last edited on 17 Apr 2024 03:00
by
 [Show more](javascript:;)

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: How to add an activatable button to my page](javascript:;) by , 17 Apr 2024 02:57

[Fold](javascript:;)

Re: How to add an activatable button to my page

18 Apr 2024 02:41

Thanks a lot dude!!!

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: How to add an activatable button to my page](javascript:;) by , 18 Apr 2024 02:41

[New Post](javascript:;)

[Permanent Link](javascript:;)
[Edit](javascript:;)
[Delete](javascript:;)

/forum/t-16776497/how-to-add-an-activatable-button-to-my-page#post-

---

Source: [https://backrooms-wiki.wikidot.com/forum/t-16776497/how-to-add-an-activatable-button-to-my-page](https://backrooms-wiki.wikidot.com/forum/t-16776497/how-to-add-an-activatable-button-to-my-page)
