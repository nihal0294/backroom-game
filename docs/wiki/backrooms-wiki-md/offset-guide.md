---
title: "Offset Guide"
source: "https://backrooms-wiki.wikidot.com/offset-guide"
retrieved_at: "2026-08-23T23:37:05+00:00"
license: CC-BY-SA-3.0
---

# Offset Guide

rating: +64[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

# Introduction to offsets

For a while, offsets have generally had a bad reputation for being very difficult and finicky to execute; they’re often considered one of those things that only coding wizards can even begin to think about doing. Many authors desire to use the trick, but are too intimidated by the long and easy-to-do-wrong process. Some of the most popular pages on the wiki use offsets, and have very high upvote scores from it. Some articles with amazing coding magic use offsets in order to make said magic work. It’s easy to look at such articles and think that you could never do such a thing; however this guide intends to change that.

# What are offsets?

First things first, what are offsets anyway? An offset is a way to bring the reader to a different page without losing the upvotes and comments of the original page. This feature can be very useful for story elements such as article revisions following a new discovery, CSS transitions, and so forth. Click [here](http://backrooms-wiki.wikidot.com/offset-guide/offset/1) to see how an offset works!

Offsets are a built-in Wikidot feature using a module called list-pages. The feature utilizes a special type of page on the wiki called a “fragment” page. These fragment pages are invisible to anyone without a direct link. Fragment pages are another built-in Wikidot feature that is most commonly used for offsets, though they can be used for other page types, such as themes and includes. They will not show up on the “most recent pages” list on the front page or be linked on any of the top rated pages.

# How to use offsets

Alright, now that you know how offsets work and we’ve defined some vocabulary, it’s time to implement them onto your page. Where do I begin? The first thing you want to do is create what is called the “parent page.” The parent page is what the reader will stay on for the entire duration of the article, acting as the main stage for the fragments to present themselves on. The best way to visualize this is the plate analogy. Imagine that the parent page is an empty plate: on its own, you don’t have much. To give it what it needs, you need to put food on it, which are the fragment pages. The food cannot exist on its own, and it needs something to be put on — likewise for the fragments.This is where the parent page, or the plate, comes in. On their own, they can’t be used for anything. Together, however, you have one complete meal/page.

To create your parent page, all you need to do is just make a regular page. For example, the page you’re currently on is **http://backrooms-wiki.wikidot.com/offset-guide**. If you are on the sandbox, however, there is a wikidot glitch where you need to add “collab:” before the page for the feature to work. Without doing this, the feature will not work properly on the sandbox. Using the same example, the link I would make for the sandbox of this page would be **http://backrooms-sandbox-2.wikidot.com/collab:offset-guide.** Yes, this does mean that others will have the ability to edit the parent page, but this is strictly against the rules. Report any unauthorized edits to staff, and the individual will be dealt with accordingly.

Now that you have created your page, you need to set it up for offsets. Remember, the actual content of the page will not go on here, but rather on the fragment pages, which will be touched on soon. In order to format your parent page, follow the template below:

---

(IF USING ONE, PUT THEME HERE)

[[module css]]  
(Add any CSS you want to apply to all pages here)  
[[/module]]

[[include :backrooms-wiki:component:open]]  
Put any content warnings and whatever else you want to add here, additionally, you must add |cw=1 before the closing bracket in the line above if there are content warnings here  
[[include :backrooms-wiki:component:close]]

[[module ListPages category="fragment" parent="." limit="1" order="created\_at" offset="@URL|0"]]  
%%content%%  
[[/module]]

------

[[div class="footer-wikiwalk-nav"]]  
[[=]]  
@< [[[Level n-1]]] | Level n | [[[Level n+1]]] >@  
[[/=]]  
[[/div]]

Then at the bottom of your page, you must add the [License Box](component__license-box--969e0688.md) component.

Use this if you **DON'T** have images or other media

[[include :backrooms-wiki:component:license-box]]  
=====  
=====  
[[include :backrooms-wiki:component:license-box-end]]

But if you have images or media, add this for each piece of media/image you use between the two "=====" lines:

> \*\*Name:\*\*  
> \*\*Author:\*\*  
> \*\*License:\*\*  
> \*\*Source Link:\*\*  
> \*\*Derivative of:\*\* (If applicable)  
> \*\*Additional Notes:\*\* (Optional)

---

Let’s break down this template a little bit. At the top of the page, you want to include the theme you’re going to use, if you’re using one. If your page is using the default Liminal Theme or you want to change the theme for each offset, omit this part of the template. Below that is your CSS module. This will be the area that you’ll include any CSS you want to apply to all pages. Common things to put here include fonts, custom divs, and theme-related CSS, such as text color changes. If you aren’t including any css that will remain consistent across all pages, omit this part of the template. Below this is the rate module. The rate module is mandatory to include on all offsets used, meaning it’s ideal to include it on the parent page, otherwise you would have to include it individually on every fragment. Below this is the code that makes the magic happen. This code must be included in order to make the offsets function. Below that is your author collapsible. This is also mandatory to include on all offsets, meaning it’s most ideal to include on the parent page as to avoid having to redundantly copy and paste it on every fragment. Once you format the parent page, you’re ready to begin creating the fragment pages.

To make your fragment page, you want to start by adding “fragment:” to the beginning of the page name. At the end of the page name, you’re going to add a number. For the first fragment, you’re going to start with “0.” Continuing the example for this page, the first fragment will be called **http://backrooms-wiki.wikidot.com/fragment:offset-guide-0**. Fragment pages work exactly the same on the sandbox as well. To connect this page to the parent page, you want to go to the bottom menu, press **options**, then press **parent**, as shown in the photo below:

---

> ![ParentPagePic](http://natedagreat563.wdfiles.com/local--files/storage-unit-3/ParentPagePic)

---

Once the menu shows up, you’ll type in the name of the parent page. A menu will appear asking you to select which page you want to connect the fragment to. Click on your page when it appears, and the pages will be connected. Now that you have your fragment set up, you want to begin writing the actual page content. Anything you put on fragment 0 will be what first appears when the reader opens the page. This is before any offsets or css transitions come into play. Put on offset 0 only what you want the reader to see before going to any other offsets.

**NOTE: EVERY TIME YOU MAKE AN EDIT TO A FRAGMENT, YOU MUST REFRESH THE PARENT PAGE BY OPENING THE EDIT BOX AND CLICKING SAVE. A GLITCH EXISTS THAT CAN CAUSE THE ENTIRE PAGE TO IRREVERSIBLY MALFUNCTION, WHICH YOU DO NOT WANT TO RISK. REFRESH THE PARENT PAGE AFTER EVERY FRAGMENT EDIT.**

From this point on, you essentially repeat this process over and over until all the desired fragments have been written. For the first offset page, the link will be **http://backrooms-wiki.wikidot.com/fragment:offset-guide-1**. The next offset will be **http://backrooms-wiki.wikidot.com/fragment:offset-guide-2**, and so forth. In order to bring readers to the next offset page, we must use yet another unique link. If everything previously mentioned was done properly, then this will work, otherwise it will bring you to a blank page. Using this page as an example yet again, the link that will bring the reader to the first offset is: **http://backrooms-wiki.wikidot.com/offset-guide/offset/1**. This syntax is also identical on the sandbox site. When uploading your fragments to the main site after the article is greenlit, each fragment should be tagged with the **fragment** tag. If you forget, staff will do it for you.

A common mistake people make is linking the fragment page instead of this special link, which will not retain the upvotes and comments, and it should not be done this way. If your page isn’t working, double-check that you’re using this special link and not the fragment. Additionally, the standard triple bracket method of linking does not work with offset links, meaning you must use single bracket links. See the [wikidot syntax](wikidot-syntax.md) guide for more information if this doesn’t make sense to you.

Whew! That was a lot. Even though this looks intimidating, I promise you will get the hang of it eventually. After you get through the initial rough patch of doing it for the first time, you’ll be able to do it no sweat next time.

[TL;DR directions [+]](javascript:;)

[TL;DR directions [-]](javascript:;)

1. Create the parent page. This page will have things like your rating module, author information, and css that applies to all offsets, such as a theme. Make sure to make it a collab page if it’s on the sandbox.
2. Use the special offset listpages code from the directions above on the parent page.
3. Create the first fragment by naming the page fragment:PAGE-NAME, and put whatever you want to show up first on that page.
4. Go down to options —> parent —> then type in the name of the parent page, which will be collab:PAGE-NAME if on the sandbox.
5. Refresh the parent page.
6. Repeat steps 3–5 for every fragment you wish to include.
7. Use the special offset links with single bracket link syntax to bring the reader between offsets.
8. Make sure you upload the parent page and then the offsets in order of appearance to the main wiki once your article is greenlit.

# Troubleshooting

Listed below are some common issues and how to solve them. This process is very finicky and easy to break, meaning it is likely you will encounter problems at some point.

### Upvotes and comments don’t stay the same

If your upvotes and comments aren’t retaining to the next offset, make sure you’re linking the offset and not the fragment. The link which brings you to the next offset should look something like this: **http://backrooms-wiki.wikidot.com/offset-guide/offset/1** and NOT like this: **http://backrooms-wiki.wikidot.com/fragment:offset-guide-1**

### The offset link just takes me to a dead page

If the offset link is dead, verify that there are no typos in the page link. The offset link should be identical to the parent page link, except with “/offset/1” at the end (or another number if there’s multiple offsets). If the link is still dead, make sure your syntax looks like this: **[http://backrooms-wiki.wikidot.com/offset-guide/offset/1 DISPLAY TEXT]** and not like this: **[[[offset-guide/offset/1|DISPLAY TEXT]]]**. If the link is still dead, verify that the fragment page is connected to the correct page on the wiki. If it still doesn’t work after all this, you likely forgot to refresh your parent page after an edit and fell victim to the glitch. If this happens, the page is irreversibly broken, and the code needs to be transferred to new pages.

### Linking the fragment to the parent page won’t work

Are you getting this message when you’re trying to link the fragment to the parent page?

---

> ![OffsetError](http://natedagreat563.wdfiles.com/local--files/storage-unit-3/OffsetError)

---

If this message appears, it means you forgot to add “collab:” to the beginning of the parent page. To amend this error, simply go down to **options**, then to **rename**, and add “collab:” before the page name. Once you do that, the fragments should successfully link to the parent page. This error only happens on the sandbox, and you don’t need to worry about it when posting the page to the main wiki after it’s greenlit.

### The offset page is blank even though the fragment is connected

If this error happens, first double-check that the parent page that the fragments are linked to is correct. If it still doesn’t work, it means you posted the fragments *before* the parent page. When making a page with offsets, the order in which you post the pages is imperative due to how the listpages code works. Thus, you must follow this order exactly when posting the pages. The parent page must be posted FIRST before any other pages. Then, you must post the fragments in order of appearance. For example, fragment 0 must be the 2nd page posted, fragment 1 must be the 3rd, fragment 2 must be the 4th, and so on. If this order wasn’t followed when you post the page to the wiki after getting a greenlight, you have to delete all the pages and re-upload them in proper order to fix the issue.

Tip: If you want an easy way to get around this error, it’s recommended that you open the edit box for the parent page and all the fragments on every individual link, and copy-paste the code into every page from the sandbox. Once all the code has been copy-pasted to each page and all of the edit boxes are open, you can rapidly save and connect to the parent page for every fragment in seconds. Make sure that the offset links are changed to main wiki links and not sandbox links before you do this.

### My offsets are in the wrong order

This is a similar situation to the above one. If your offsets are in the wrong order, it means you posted the fragment pages out of order. For example, if you posted fragment 1 before fragment 0, the page will think that fragment 1 is fragment 0, and show it first, which isn’t what you want. If you are having this issue on the sandbox, an easy fix is to just swap the source codes of both fragments. You can use the tip in the above issue in order to get around this problem when posting your greenlit page to the wiki.

---

# Tips and tricks

Listed below are a few tips and tricks that you can utilize when making a page with offsets! Feel free to use these on your page if you desire.

### Theme change

One of the best things that you’re able to do with offsets is change the theme on the page. This can be utilized for concepts such as page corruption, multi-part articles, and more!

[Example](http://backrooms-wiki.wikidot.com/offset-guide/offset/2)

[Theme Page](themes.md)

### Font toggle

While there is fancy CSS and HTML to do this, fiddling around with code is NERDY and WEIRD. Real kings use offsets. If you wanna use a difficult to read font and provide a more accessible alternative, offsets are the way to go!

[Example](http://backrooms-wiki.wikidot.com/offset-guide/offset/3)

Tutorial:

[Show directions +](javascript:;)

[Hide directions -](javascript:;)

##### Step 1:

Go to [Google Fonts](index.md).

##### Step 2:

Select a font that you want, and click the button with a plus on it. Then, click the square thing on the top right.

##### Step 3:

Click the option that says “import.” Copy the code in the first box excluding the <style> and </style> html.

##### Step 4:

Paste the code into a CSS module. Click enter, and put what you want to call the font after a period, make a space, then add a {. Click enter and then hit the space bar four times. Copy-paste the code that begins with “font style,” which is in the second box. Hit enter once more and add a }.

##### Step 5:

Use this code on the fragment page for the font toggle:

```
[[div style="font: 2rem 'FONTNAME'"]]
Article code here 
[[/div]]
```

  
And replace FONTNAME with the name of the font. When you’re all done, it should look something like this:

```
[[module css]]
@import url('https://fonts.googleapis.com/css2?family=Inspiration&display=swap');
.sussy {
    font-family: 'Inspiration', cursive;
}

[[/module]]

[[div style="font: 2rem 'Inspiration'"]]
FANCY FONT TEXT
[[/div]]
```

### Password:

Another popular trick that is used with offsets is a password! has kindly written a special JavaScript code that will lead to a new page if you enter the proper password. This code can be used to lead the reader to a new offset as well, which helps for ideas such as a database entry or hidden supplementary section. Try it out for yourself!

Example:

[Show Example +](javascript:;)

[Hide Example -](javascript:;)

Directions:

[Show directions +](javascript:;)

[Hide directions -](javascript:;)

**Step 1:** Copy paste this code on your first fragment page, and edit according to the directions.

```
[[html]]
<head>
<script language="javascript">

function LogIn(){
let loggedIn = false;
let passWord = "PASSWORD HERE";
let passWord2 = prompt("TEXT");
passWord2 = passWord2.toLowerCase();
                <!-- To add more passwords, simply use the let function: let passWord4 = "new password"; -->
                <!-- Replace PASSWORD HERE with the password you want to use and TEXT with the text you want to appear at the top of the popup. Do not use any capital letters in the password or the code will break. The code ignores capital letters when you actually enter in the password. -->
    if (passWord2 === passWord) {
          loggedIn = true;
          window.open('LINK');
    }
              <!-- Replace LINK with the OFFSET link NOT the fragment link -->
    else if (passWord2 === passWord3) {
          loggedIn = true;
          window.open('LINK');

    }
                <!-- Remove this if you only require 1 correct answer. Add more if you require more than 2, just make sure to change the numbers to the proper functions -->
    else {
          alert("ERRORTEXT");
                <!-- Replace ERRORTEXT with the text that shows up if the wrong password is entered. -->
    }
}

</script>
</head>

                <!-- This is where you can mess around with the design of the button, ideally to match the theme. Fool around with the color values until you get what you want. The code below will make the colors orange and black. -->
<style type="text/css">
input[type=button] {
border-color: rgb(229, 140, 36);
color: rgb(229, 140, 36);
background: rgb(29, 18, 7);
}

input[type=button]:focus {
border-color: rgb(229, 140, 36);
color: rgb(229, 140, 36);
background: rgb(29, 18, 7);
}

input[type=button]:hover {
color: rgb(29, 18, 7);
background: rgb(229, 140, 36);
}
</style>

                <!-- This part below allows the button to be center aligned. Remove this part if you want it on the left. -->

<body style="text-align: center;">
<form><input type=button value="(Input Here)" onClick="LogIn()" align=center></form>
</body>
[[/html]]
```

**Step 2:** Create the offset page that you want the password box to lead to. Make sure you add the offset link to the LINK sections and NOT the fragment link.

**Step 3:** Test the password code out yourself to make sure it works, and you’re good!

Note: If your device is using a pop-up blocker or does not allow pop-ups for wikidot, this code will not work. Make sure you allow pop-ups for wikidot or turn off any pop-up blockers if you want to use this code. Wikidot is an ad-free platform, so no actual pop-up ads will show up if you allow wikidot to display them — it will just allow for JavaScript such as this to appear.

### Pop-up CSS transition

Another cool trick you can do with offsets is a pop-up transition trick where a video flashes on screen for a few seconds before the page becomes visible. The trick requires some video editing know-how, but is worth it when the product is finished. Just make sure you use it sparingly and wisely, or else it may get annoying or overused.

[Check it out in action!](http://backrooms-wiki.wikidot.com/archived-journals-of-lucy-fox/offset/1)

Directions:

[Show directions +](javascript:;)

[Hide directions -](javascript:;)

**Step 1:** Create a 9 second video offsite that you want to present at the start of the page. Upload the video to the page files.

**Step 2:** Copy-paste the following code onto the fragment you want the page to appear on. Replace FILELINKHERE with the link to the wikidot file. For example, if you want it to show up when you go to the offset, put it on the second fragment page.

```
[[module css]]
.animation {
   position: absolute;
   height: 100%;
   width: 100%;
   background: black;
   background-image: url("FILELINKHERE");
   background-repeat: no-repeat;
   background-size: 85%;
   transform: translate(-13rem, -17.5rem);
   animation: hide 1s 9.25s 1 both;
}

.background-left {
   position: absolute;
   height: 100%;
   width: 100%;
   background: black;
   transform: translate(-20rem, -17.5rem);
   animation: hide2 1s 9.25s 1 both;
}

@keyframes hide {
   0% { opacity: 1; z-index: 99999;}
   100% { opacity: 0; z-index: -1;}
}

@keyframes hide2 {
   0% { opacity: 1; z-index: 90000;}
   100% { opacity: 0; z-index: -1;}
}
[[/module]]

[[div class="animation"]]
[[/div]]
[[div class="background-left"]]
[[/div]]
```

**Step 3:** Make yourself seem like a coding wizard with your fancy, new trick!

# Conclusion

Congratulations! You’ve made it through the crash course on everything you need to know about fragments and offsets. Offsets are a very popular and impressive trick that can be useful for many different reasons. This guide will hopefully remove the stigma that offsets are impossibly difficult, and only for the CSS masters and coding nerds. If you have any further questions, feel free to DM/PM or a member of the tech team. If you’re on the Discord, feel free to ask any questions in the #tech-support channel as well. Happy coding!

[Here](fragment__offset-guide-0--60414cea.md) is a link to the fragment if you wanted to see any of the source code used on this page. Just don’t edit without permission.

---

[Author](javascript:;)

[I always come back](javascript:;)

**Author**

Written by   
[Author Page](natedagreatap.md)

| Other Pages By This Author | |
| --- | --- |
| Levels | [Electrical Station](level-3.md) | [TH3 SH4DY GR3Y](th3-sh4dy-gr3y.md) | [The Metro](level-903.md) | [The Dark Metro](level-904.md) |
| Sub-Sections | [Terror Hotel Casino](level-5-1.md) | [Level 800.1](level-800-1.md) |
| Entities | [Endless/Nameless](https://backrooms-wiki.wikidot.com/entity-195) | [The Saberzoa](entity-600.md) | [Icarus Procidens](icarus-procidens.md) |
| Objects | [The Ultimate Backrooms Cookbook](object-56.md) | [Spirit Links](object-36.md) | [Almond Water](object-1.md) |
| Tales | [Archived Journals of Lucy Fox](archived-journals-of-lucy-fox.md) | [The Broken City Part 1: City Boy](city-boy.md) | [The Broken City Part 2: Macy](macy.md) | [The Broken City Part 3: Meggies](meggies.md) | [The Broken City Part 4: Terror](terror.md) | [The Broken City Part 5: Good Intentions](good-intentions.md) | [Blanche’s Halloween Party](blanches-halloween-party.md) | [Ascension](ascension.md) | [Cracks](cracks.md) |
| People of Interest | [Eden G.](eden-g.md) |
| Guides/Essays | [Survival Difficulty Class System Guide](sd-class-guide.md) | [Offsets 101](offset-guide.md) |

**Code**

Password code is by and modified by

Animation pop-up code is by

**Licensing**

“Offsets Guide” by Natedagreat563 is licensed under [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/)

**Image Sources:**

All images used on the page are by Natedagreat563 and licensed under [CC-BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/).

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Offset Guide](offset-guide.md)" by Natedagreat563, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/offset-guide](offset-guide.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/offset-guide">Offset Guide</a>" by Natedagreat563, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/offset-guide">https://backrooms-wiki.wikidot.com/offset-guide</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/offset-guide](https://backrooms-wiki.wikidot.com/offset-guide)
