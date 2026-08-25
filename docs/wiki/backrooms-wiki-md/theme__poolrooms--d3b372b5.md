---
title: "Poolrooms Theme"
source: "https://backrooms-wiki.wikidot.com/theme:poolrooms"
retrieved_at: "2026-08-23T23:42:29+00:00"
license: CC-BY-SA-3.0
---

# Poolrooms Theme

rating: +35[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

This is a theme primarily intended for articles relating to the Poolrooms[1](javascript:;) (which are currently unfinished).

To use it on your own article, include the following code somewhere on your page:

[[include :backrooms-wiki:theme:poolrooms]]

People always ask "where the pool is" but no one asks "how the pool is." 😔

# Wahoooo!

![Missing alt text.](http://backrooms-sandbox-2.wdfiles.com/local--files/collab%3Apoolrooms-theme/pool.jpg)

It's a pool.

To make a horizontal line, put five hyphens in a row. These can separate stuff, but so can line breaks.

----- creates a horizontal line.

@@ @@ creates an empty line (note the space).

---

Big text big text.

[Woah, a collapsible!](javascript:;)

[Collapse the collapsible!](javascript:;)

# + Incomprehensibly large

## ++ Comprehensively large

### +++ A bit smaller

#### ++++ Manageable

##### +++++ Pretty small

###### ++++++ Tiny little text goblin ooh what will it do

Also superscript and subscript if you want it really small.

---

- [*Oo*](javascript:;)
- [*Ee*](javascript:;)
- [*Oo ah ah*](javascript:;)
- [*Ting*](javascript:;)
- [*Tang*](javascript:;)
- [*Wala wala*](javascript:;)
- [*Bing bang*](javascript:;)

Tabs! Little clickity buttons! Separate sections! Create wonders!

Behold, separate text in this tab! It's absolutely magical!

Everyone's talking about tabs, but no one's talking about what I think we should talk about—bats!

> > > Going batty.

Hear me out—bats in pools!

Someone should try that out some time. How many bats could a swimming pool hold if a swimming pool could hold bats?

- [*Mortals fear me*](javascript:;)
- [*Fish want me*](javascript:;)

I did it again. Tabs in tabs.

Quaking and shaking.

---

> Blockquote, used for whenever you feel like sticking some stuff in one.
>
> > Oh yeah you can put blockquotes inside of blockquotes.
> >
> > > >  is better than [[div class="blockquote"]], fight me.
> > >
> > > > (I put tabs inside of tabs without CSS, you will not win).

---

| This is a | desk table |
| --- | --- |
| So the default theme pages | claim that making these |
| should be common knowledge | |
| I, however, digress. | |
| They're weirdly formatted | and not commonly used. |
| Go nuts! | |

---

[[div class="styled-quote"]]

Oh, look, a line over there! That's cool!

[[/div]]

[[div class="lightblock"]]

The line's gone, that's unfortunate.

[[/div]]

[[div class="dark-styled-quote"]]

Wait no, it was preparing its special attack! The whole block is turning dark!

[[/div]]

[[div class="darkblock"]]

No mind to think, no will to break, no voice to cry suffering.

[[/div]]

---

Our whole database was in a hot dense state  
*Then twenty four and some months ago*  
**Code manifested**  
Wait  
The brackets began to close, found where the semicolon goes  
What's happening? Who knows!  
[Stole CSS (We stole some Javascript)](index.md)  
[Copy, paste, and check for bugs](theme__poolrooms--d3b372b5.md)  
[Writing slower than a slug](https://backrooms-wiki.wikidot.com/this-page-doesnt-exist-except-for-real-this-time-fuck-you)  
***It all started with a program***

---

The body font is Nunito.

The header font is Anek Kannada.

The monospace font is IBM Plex Mono.

---

[Big and scary theme code](javascript:;)

[CSS—Crying, sobbing, and shaking](javascript:;)

```
@import url(https://backrooms-wiki.wdfiles.com/local--code/component%3Apatch/1);
 
@import url('https://fonts.googleapis.com/css2?family=Nunito&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Nunito:ital@1&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Nunito:wght@700&display=swap');
@import url('https://fonts.googleapis.com/css2?family=IBM+Plex+Mono:wght@300&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Anek+Kannada:wght@500&display=swap');
 
:root {
  --theme-base: "black-highlighter";
  --theme-id: "poolrooms-theme";
  --theme-name: "Poolrooms Theme";
 
  --logo-image: "";
  --header-title: "The Poolrooms";
  --header-subtitle: "The waters surround";
 
  /* Typefaces */
  --body-font: 'Nunito', sans-serif;
  --header-font: 'Anek Kannada', sans-serif;
  --title-font: 'Anek Kannada', sans-serif;
  --mono-font: 'IBM Plex Mono', monospace;
 
  /* Standard Colors */
  --white-monochrome: 250, 250, 250;
  /* white */
  --pale-accent: 11, 70, 170;
  /* visited links */
  --bright-accent: 109, 125, 153;
  /* bright teal */
  --medium-accent: 108, 150, 224;
  /* medium teal - the "default" accent color */
  --dark-accent: 113, 129, 157;
  /* dark teal */
  --alt-accent: 11, 70, 170;
  /* darkblocks */
  --gray-monochrome: 108, 150, 224;
  /* blockquotes */
  --pale-gray-monochrome: 250, 253, 253;
  /* tables */
  --light-gray-monochrome: 67, 131, 241;
  /* some buttons */
  --dark-gray-monochrome: var(--gray-monochrome);
  /* blue */
  --dark-blue: 23, 70, 150;
  --swatch-topmenu-border-color: var(--medium-accent);
  --swatch-topmenu-bg-color: var(--bright-accent);
  --swatch-border-color: var(--medium-accent);
  --border-styling: outset 2px rgb(var(--swatch-border-color));
   --darker-accent: 155, 80, 226;
 
  --link-color: var(--dark-blue);
  --link-color-bright: var(--dark-blue);
  --hover-link-color: 69, 129, 208;
  --newpage-color: 129, 81, 206;
  --swatch-menubg-color: 169, 183, 214;
 
  /* Box-Shadow 1px Borders */
  --box-border-bottom: 4px 4px 0 0 rgba(0, 0, 0, 0.2);
  --box-border-top: 4px 4px 0 0 rgba(0, 0, 0, 0.2);
  --box-border-left: 4px 4px 0 0 rgba(0, 0, 0, 0.2);
  --box-border-right: 4px 4px 0 0 rgba(0, 0, 0, 0.2);
  --box-border-all: 4px 4px 0 0 rgba(0, 0, 0, 0.2);
 
  /* Rating box */
  --rating-module-button-plus-color: var(--light-gray-monochrome);
  --rating-module-button-negative-color: var(--light-gray-monochrome);
  --rating-module-button-cancel-color: var(--light-gray-monochrome);
  --rating-module-button-credit-color: var(--light-gray-monochrome);
}
 
#account-topbutton {
  border-color: rgb(var(--swatch-text-light));
}
 
#header h1, #header h1 a {
  top: 0.5rem;
  font-size: 200%;
}
 
#header h2, #header h2 span, #header h2 span::before {
  top: 1.7rem;
  font-size: 110%;
}
 
#login-status {
  color: rgb(var(--dark-blue));
}
 
#search-top-box {
  display: none;
}
 
#skrollr-body {
  width: 100%;
  position: absolute;
  top: 0;
  left: 0;
  background-image: url("https://backrooms-sandbox-2.wdfiles.com/local--files/collab%3Apool-of-magic-zask-juice/banner_tiles.png");
  background-repeat: repeat;
  background-size: 60%;
}
 
#page-title, h1, h2 {
  color: rgb(var(--dark-blue));
}
 
h3,h4,h5,h6 {
  color: rgb(var(--medium-accent));
}
 
.styled-quote {
   border-left: 0.5rem solid rgb(var(--dark-blue));
}
 
.dark-styled-quote {
   border-left: 0.5rem solid rgb(var(--dark-blue));
}
 
.darkblock h1,
.darkblock h2,
.dark-styled-quote h1,
.dark-styled-quote h2 {
  color: rgb(var(--medium-accent));
}
 
@media screen and (max-width: 600px) {
  #header h1, #header h1 a {
    font-size: 150%;
  }
}
```

---

[Authors/Licensing](javascript:;)

[Weeeeeee](javascript:;)

Theme created by ([Author page!](necros-tower.md)), based off one by from [level 512](level-512.md). Greenlit by .

The [header background image](https://ambientcg.com/view?id=Tiles020) is from AmbientCG, licensed under [CC0](https://help.ambientcg.com/01-General/Licensing.html).

[Hearst Pool](https://wordpress.org/openverse/image/f84ef35b-e6b9-4e7c-8b4a-eb77db4416e0) by Joeracer is licensed under [CC BY-SA 2.0](https://creativecommons.org/licenses/by/2.0/?ref=openverse).

Footnotes

[1](javascript:;). Such a clever name. Rooms with pools in them, Absolutely genius.

---

Source: [https://backrooms-wiki.wikidot.com/theme:poolrooms](https://backrooms-wiki.wikidot.com/theme:poolrooms)
