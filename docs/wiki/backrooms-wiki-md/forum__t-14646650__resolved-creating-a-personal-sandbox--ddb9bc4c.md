---
title: "[Resolved] Creating a personal sandbox"
source: "https://backrooms-wiki.wikidot.com/forum/t-14646650/resolved-creating-a-personal-sandbox"
retrieved_at: "2026-08-23T23:57:41+00:00"
license: CC-BY-SA-3.0
---

# [Resolved] Creating a personal sandbox

[Forum](https://backrooms-wiki.wikidot.com/forum/start)
» [Writing Help / Help: Questions Desk](forum__c-6898689__help__questions-desk--7a9332f1.md)
» [Resolved] Creating a personal sandbox

Started by:   
Date: 19 Apr 2022 18:15  
Number of posts: 5  
![rss icon](http://www.wikidot.com/common--theme/base/images/feed/feed-icon-14x14.png)
RSS: [New posts](https://backrooms-wiki.wikidot.com/feed/forum/t-14646650.xml)

Summary:

I'm trying to create a personal wikidot site for my own works, as I feel like I make too many pages.

[Unfold All](javascript:;)
[Fold All](javascript:;)
 [More Options](javascript:;)

[Edit Title & Description](javascript:;)
[Stickness](javascript:;)
[Lock Thread](javascript:;)
[Move Thread](javascript:;)

[Fold](javascript:;)

Creating a personal sandbox

19 Apr 2022 18:15

I can't exactly figure out how themes work.

---

> JamiMyst **|** she/her

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Creating a personal sandbox](javascript:;) by , 19 Apr 2022 18:15

[Fold](javascript:;)

Re: Creating a personal sandbox

19 Apr 2022 18:33

Creating an entire theme, or simply putting a header and subtitle?

---

~🌱

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: Creating a personal sandbox](javascript:;) by , 19 Apr 2022 18:33

[Fold](javascript:;)

Re: Creating a personal sandbox

19 Apr 2022 20:17

I'm trying to add the Liminal Theme to a different website

---

> JamiMyst **|** she/her

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: Creating a personal sandbox](javascript:;) by , 19 Apr 2022 20:17

[Fold](javascript:;)

Re: Creating a personal sandbox

19 Apr 2022 22:51

Ohh, I can’t help you with that. Sorry!

---

~🌱

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: Creating a personal sandbox](javascript:;) by , 19 Apr 2022 22:51

[Fold](javascript:;)

Re: Creating a personal sandbox

19 Apr 2022 23:19

What you'll want to do is…  
- Go to your website  
- Click "Site Tools"  
- Click "Orphaned Pages"  
- Click on "Customize your theme" (or if you want to skip this process, type in <http://sitename.wikidot.com/admin:themes>)  
- Copy the following code into the box by pressing Edit, like a normal Wikidot page.

[Get ready for a bunch of code.](javascript:;)

[Told you so](javascript:;)

```
/*
   Liminal Theme
   [2020 Wikidot Theme]
   by Lynch & Etoile
*/

@import url('https://fontlibrary.org/face/fantasque-sans-mono');
@import url("http://backrooms-wiki.wdfiles.com/local--files/component%3Atheme/normalize-archived.css");
@import url("http://backrooms-wiki.wdfiles.com/local--files/component%3Atheme/bhl-archived.css");
@import url("http://backrooms-wiki.wikidot.com/local--files/component:theme/sidebar.css");

:root {
   --theme-base: "black-highlighter";
   --theme-id: "liminal";
   --theme-name: "Liminal Theme";

   --logo-image: url("http://backrooms-sandbox-2.wikidot.com/local--files/entro-p-level-345/class%20unstable.png");
   --header-title: "The Gateway";
   --header-subtitle: "Welcome to the Database";

   --body-font: proxima-nova, sans-serif;
   --header-font: 'Fantasque Sans Mono', monospace;
   --title-font: 'Fantasque Sans Mono', monospace;
   --mono-font: 'Fantasque Sans Mono', monospace;

   --white-monochrome: 237, 233, 223;
   --pale-gray-monochrome: 255, 251, 240;
   --light-gray-monochrome: 160, 160, 160;
   --gray-monochrome: 72, 69, 60;
   --black-monochrome: 25, 20, 16;
   --bright-accent: 140, 136, 126;
   --medium-accent: 72, 69, 60;
   --dark-accent: 140, 136, 126;
   --pale-accent: 140, 136, 126;

   --swatch-topmenu-border-color: var(--medium-accent);

   --link-color: 230, 23, 68;
   --hover-link-color: 230, 23, 68;

   --background-gradient-distance: 0rem;

   --gradient-header: linear-gradient(to top,
      rgba(var(--medium-accent)) 0%,
      rgba(var(--medium-accent), 0.90) 100%
   );
   --diagonal-stripes: linear-gradient(transparent 0);
}

#skrollr-body {
   background-image:
    radial-gradient(circle, rgb(var(--medium-accent)) 50%, transparent 0);
   background-repeat: repeat;
   background-size: 0.25em 0.25em;
   width: 100%;
   height: 7.5rem;
}

#side-bar .side-block div a img {
   filter: grayscale(100%);
}

#container {
   background-image: radial-gradient(circle, rgb(var(--medium-accent), 0.05) 50%, transparent 0);
   background-size: 0.25em 0.25em;
   background-repeat: repeat;
   background-attachment: fixed;
}

div#page-options-bottom-2 > a, div#page-options-bottom > a {
   border-radius: 0em;
   -moz-border-radius: 0em;
   border: none;
}

div#page-options-bottom-2 > a:active, div#page-options-bottom-2 > a:hover, div#page-options-bottom > a:active, div#page-options-bottom > a:hover {
   border: none;
}

#header, #top-bar {
   background-attachment: scroll;
}

#header {
   background-image: none;
}

#header::before {
   content: "";
   position: absolute;
   height: 100%;
   width: 100%;
   left: 0;
   top: 0;
   background-image: var(--logo-image);
   background-size: auto 16rem;
   background-position: center;
   background-repeat: no-repeat;
   opacity: 0.4;
}

#header h1, #header h1 a {
   position: absolute;
   top: 1rem;
   margin: 0;
   width: 100%;
   display: flex;
   justify-content: center;
   z-index: 0;
}

#header h2, #header h2 span, #header h2 span::before {
   position: absolute;
   top: 2rem;
   margin: 0;
   width: 100%;
   display: flex;
   justify-content: center;
}

#header h1 a::before, #header h2 span::before {
   text-shadow: .063rem 0.1rem 0.1rem #0c0c0c;
}

a.newpage {
   background: transparent;
   text-decoration: none
}

a.newpage {
   color: rgb(var(--newpage-color))
}

blockquote {
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}

.styled-quote {
   background-color:rgb(var(--pale-gray-monochrome));
   border-left: 0.5rem solid rgba(var(--gray-monochrome));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}

.dark-styled-quote {
   background-color:rgb(var(--gray-monochrome));
   border-left: 0.5rem solid rgba(var(--pale-gray-monochrome));
   color:rgb(var(--white-monochrome));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}

.dark-styled-quote a{
color: rgb(var(--swatch-menubg-medium-color));
}

.lightblock {
   background-color:rgb(var(--white-monochrome));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
}

.darkblock {
   background-color:rgb(var(--gray-monochrome));
   color:rgb(var(--white-monochrome));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
}

.darkblock a {
color: rgb(var(--swatch-menubg-medium-color));
}
```

  
Doing this will allow you to use **any** Backrooms theme currently uploaded to the site, such as [my website](index.md).

---

*Absolute secrecy must be upheld by any means necessary ~ The Vault*

**[Reply](javascript:;)**
[Options](javascript:;)

[Unfold](javascript:;)
[Re: Creating a personal sandbox](javascript:;) by , 19 Apr 2022 23:19

[New Post](javascript:;)

[Permanent Link](javascript:;)
[Edit](javascript:;)
[Delete](javascript:;)

/forum/t-14646650/resolved-creating-a-personal-sandbox#post-

---

Source: [https://backrooms-wiki.wikidot.com/forum/t-14646650/resolved-creating-a-personal-sandbox](https://backrooms-wiki.wikidot.com/forum/t-14646650/resolved-creating-a-personal-sandbox)
