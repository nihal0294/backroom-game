---
title: "Theme"
source: "https://backrooms-wiki.wikidot.com/component:theme"
retrieved_at: "2026-08-23T23:37:24+00:00"
license: CC-BY-SA-3.0
---

# Theme

W A R N I N G  
**PLEASE DO NOT TOUCH THIS PAGE WITHOUT STAFF PERMISSION.**

**This is a template page used internally by the Backrooms Wiki.**

---

## This is the site theme.

### If you're making your own theme:

**Do not** copy all the [Hallprint](theme__hallprint--b63c1382.md) theme code and edit it to your liking, if you do this you will end up with extra code you don't need.  
A guide as to how to properly make a theme is [here](https://backrooms-wiki.wikidot.com/theme-guide).

### If you're making a sandbox site, or language branch:

For sandboxes or other sites seeking to mimic the styling of this wiki, you should not copy your own version of [Hallprint](theme__hallprint--b63c1382.md). As updates to the theme occur, your version will drift out of sync with the mainsite theme, and present problems for your users.

You should import the code from this site instead:

1. Create a page named "component:theme" on your site. You should lock this page.
2. In the Site Manager for your site, go to **Appearances & Behavior**, **Themes**, then select the **External** tab, and enter "https://your-site-name.wdfiles.com/local--code/component:theme/1".
3. Copy the [Side Bar](nav__side--8b989701.md) and/or [Top Bar](nav__top--e93ae583.md) if you wish to use the new format for those. Note that the bullet icons are attached to the side bar page as well.

If you do not want the wiki staff to have coloured usernames (e.g. if you are a language branch that wants to have your own staff highlighted) then go ahead and use this code for your component:theme page:

[[code type="css"]]  
/\* Site Theme \*/  
@import url(<https://backrooms-wiki.wdfiles.com/local--code/theme%3Ahallprint/1>);

/\* Collapsible Sidebar \*/  
@import url("<http://backrooms-wiki.wikidot.com/component:sidebar-theme/code/1>");  
[[/code]]

If you do want that, use:

[[code type="css"]]  
@import url(https://backrooms-wiki.wdfiles.com/local--code/component%3Atheme/1);  
[[/code]]

### If you're a new Technical Team member (or a nosey user):

To see the rest of the site CSS, follow these links (they're @imported here anyway but those aren't clickable)

- [Hallprint](theme__hallprint--b63c1382.md)'s theme page where the code is stored for it
- [Black Highlighter Theme](https://nu-scptheme.github.io/Black-Highlighter/css/black-highlighter.css) (the minified version is imported in this site theme, but this link takes you to the human-readable version)
- [Sidebar Styling](component__sidebar-theme--6d39fe7b.md)
- [Forum Styling](component__forum-theme--0c090131.md)

*There are more, but they aren't very interesting.*

---

~

```
/* Site Theme */
@import url(https://backrooms-wiki.wdfiles.com/local--code/theme%3Ahallprint/1);
 
/* Collapsible Sidebar */
@import url("https://backrooms-wiki.wikidot.com/component:sidebar-theme/code/1");
 
/* User Flairs */
@import url("https://backrooms-wiki.wikidot.com/component:user-flairs/code/1");
```

---

Source: [https://backrooms-wiki.wikidot.com/component:theme](https://backrooms-wiki.wikidot.com/component:theme)
