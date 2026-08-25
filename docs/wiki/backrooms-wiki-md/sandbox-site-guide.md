---
title: "Sandbox Site Guide"
source: "https://backrooms-wiki.wikidot.com/sandbox-site-guide"
retrieved_at: "2026-08-23T23:37:17+00:00"
license: CC-BY-SA-3.0
---

# Sandbox Site Guide

|  |  |
| --- | --- |
| Sandbox Site Guide | rating: +19[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")     Info  All your needs of making a sandbox site should be here!  Written by .  [Close](index.md) |

|  |
| --- |
| [Fold](javascript:;)[Unfold](javascript:;)  Table of Contents  [Introduction](index.md)  [Sandbox Site Making](index.md)  [Theme](index.md)  [Navigational Menus](index.md)  [Top Bar](index.md)  [Side Bar](index.md)  [Meta Tags](index.md)  [Final Touches](index.md) |

# Introduction

A sandbox is the page where one writes, experiments with, and works on their draft before publishing it. A sandbox site is one's personal Wikidot site where they can store all of their sandboxes. The most common reason for creating such a site is for organizational purposes; if you have several drafts or sandboxes, storing them all on the main sandbox site can get cluttered. Additionally, a sandbox site can give one more freedom to write and organize their drafts as desired. There are also other benefits not mentioned here.

In this guide, we will cover every single step required to make a sandbox site. This is a comprehensive guide, so it will say **what to do**, along with **what not to do**. If you follow every step correctly, you will have your own sandbox site. Important information will be **bolded**, whereas supplementary—though it's suggested to be read—won't be bolded. When the guide uses a general link (e.g. sandboxexample.wikidot.com/) that means you need to replace "sandboxexample" with your site's name. Sometimes a shorthand form (e.g. /component:theme) is used, where only the part that goes after your site's address is shown. (The latter form will only be used if the same link is mentioned many times).

Let's go over the steps before we start:

Estimated completion time: **15 - 45** minutes.

- Create your site with the correct template.
- Add the backrooms wiki theme.
- Fix the navigational menus.
- Meta tag shenanigans!
- Finishing touches.

  
Okay, that might seem like a lot, but this guide will make sure you don't make any mistakes. Don't worry, you don't need any coding experience!

# Sandbox Site Making

![Missing alt text.](https://backrooms-wiki.wdfiles.com/local--files/sandbox-site-guide/BlankTemplate.png)

What the blank template looks like.

First things first, creating the site itself. First, go to <https://www.wikidot.com/account/sites> and **create a site.** Next, it lets you add your details. Make sure to have a name you can remember and are willing to associate with! The important part is to choose the **blank template**. If you do not choose that template the next steps will not work whatsoever. Now, you are left with the blank template, and importantly, your own site!

## Theme

Now is time to add the Backrooms theme (currently [hallprint](theme__hallprint--b63c1382.md)). This is the hard part, so read carefully! We need to go to your theme page. This isn't created by default, so **go to sandboxexample.wikidot.com/component:theme and create the page.** On this page, you need to add a little bit of code! This code has "Title" and "Subtitle", which you can replace with whatever text you desire. So, **add this code:**

```
[[code type="css"]]
@import url("https://backrooms-wiki.wdfiles.com/local--code/component%3Atheme/1");

:root {
   --logo-image: url("");
   --header-title: "Title";
   --header-subtitle: "Subtitle.";
}
[[/code]]
```

  
Now that you have done that, we still have to actually make your site use the theme! You should currently be on the page /component:theme. **Simply add "/code" to the end of the url**, so that it's /component:theme/code. Once you press enter, you will be sent to sandboxexample.wdfiles.com/local--code/component%3Atheme. **Copy the url**—you will need it next!  
 

![Missing alt text.](https://backrooms-wiki.wdfiles.com/local--files/sandbox-site-guide/SavingTheme.png)

Where to put in the link to apply the theme.

**Go to your site's admin page**, sandboxexample.wikidot.com/\_admin. Go to **Appearance & Behavior**, and then press **Themes**. Next, go to **External** and **type in the url you copied**. Remember that? It's still important! Once you've done that, you can press "Save Changes". Now your site has the Backrooms theme, and it will always keep up to date in case of any changes!

## Navigational Menus

So, now that you have the theme, everything should look pretty good. However, you may notice a few problems with the theme as a whole, and those problems lie within the navigational menus. Luckily, it only takes a quick few changes to fix them.

### Top Bar

**Take all the code from [http://backrooms-wiki.wikidot.com/nav:top](nav__top--e93ae583.md) and copy it**. To access this code, you can go to the bottom of the page, press "History", and then press the "S" button to view the source code of the most recent revision. This code fixes all the problems with the current look of the top bar, so you can put it in the page with the matching url on your site, that is, sandboxexample.wikidot.com/nav:top. **Replace all the current code that is added by default with the code you copied**. That is really it! Simple, and easy as pie.

![Missing alt text.](https://backrooms-wiki.wdfiles.com/local--files/sandbox-site-guide/ViewHistory.png)

What buttons to press to view the history of a page.

### Side Bar

This part is less important, as it already is functional as-is, but in the case that you want to make your site mirror the Backrooms wiki, then these next steps are for you. Just like you took the code from the /nav:top from before, we can do the exact same for /nav:side. You can go to [http://backrooms-wiki.wikidot.com/nav:side](nav__side--8b989701.md), take the code, and then replace all the code on sandboxexample.wikidot.com/nav:side with it. Just like with the top bar, it's simple.

## Meta Tags

If you were to access your site on mobile right now, the layout would appear a bit wonky. This is because we need to add a **meta tag** to control how your site will react to mobile users. Though the term may initially appear intimidating, fixing the issue is easy and will only take a few button presses.

![Missing alt text.](https://backrooms-wiki.wdfiles.com/local--files/sandbox-site-guide/Meta1.png)

Buttons to open the meta tags menu.

Before all, go to your home page and add this code to your page, preferably at the very top or bottom, then click save:

```
[[module css]]
#edit-meta-newtag-form a:nth-of-type(2) {
  display: inline-flex;
  pointer-events: unset;
}
[[/module]]
```

This is needed to reveal a button we will soon need to use to save the meta tags properly, if you don't add this, you will not be able to complete the steps coming up ahead.

Then, scroll to the bottom of whatever page you added that code in, and **open "+ Options"**, then **open "Edit Meta"**. **Press "Add a New Meta Tag"** and now you have the menu open. As you may see, there are two boxes open, and both of these needs’ inputs.

The first box is "name". **Inside it, enter:**

```
viewport
```

  
The second box is "content". **Inside it, enter:**

```
width=device-width, initial-scale=1.0
```

  
 

![Missing alt text.](https://backrooms-wiki.wdfiles.com/local--files/sandbox-site-guide/meta2.png)

Which boxes to input the code.

Now that you've done that, all that is left is to save the meta tag. When saving it, be sure to **press "Add to All Pages" and no other button**. If you don't do it for all pages, it will only affect the page you added it to. Do not choose any other option. After that, you are finished!

## Final Touches

So, you've completed the most important steps. Great! If you are happy with what you have, you are done! If you followed the guide, then you've done it, no-doubt. What you've made now mirrors the Backrooms wiki, but feel free to change it up if you want! One suggestion is to change the main page, as it's rather bland right now, having almost nothing on it. Change it up if you want! The sky's the limit, as they say. Change the title or subtitle, or perhaps even touch up the navigational menus to fit your needs. Well, that's all, you now have your very own sandbox site!

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Sandbox Site Guide](sandbox-site-guide.md)" by Super-Robot14, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/sandbox-site-guide](sandbox-site-guide.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/sandbox-site-guide">Sandbox Site Guide</a>" by Super-Robot14, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/sandbox-site-guide">https://backrooms-wiki.wikidot.com/sandbox-site-guide</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/sandbox-site-guide](https://backrooms-wiki.wikidot.com/sandbox-site-guide)
