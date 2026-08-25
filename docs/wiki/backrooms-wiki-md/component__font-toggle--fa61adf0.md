---
title: "Font Toggle"
source: "https://backrooms-wiki.wikidot.com/component:font-toggle"
retrieved_at: "2026-08-23T23:40:55+00:00"
license: CC-BY-SA-3.0
---

# Font Toggle

W A R N I N G  
**PLEASE DO NOT TOUCH THIS PAGE WITHOUT STAFF PERMISSION.**

**This is a template page used internally by the Backrooms Wiki.**

---

[Toggle Font](index.md)[Toggle Font](index.md)

rating: +6[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

  

Hello! so you want to make a font toggle, huh? kinda like that one on the top right of the page? I gotchu!

This component is developed by , but is heavily based on an older version made by , and is inspired by another more developed version by , I just modified some stuff to make it more customizable.

just throw this in your page, sort your variables, and it's gonna do the rest for ya!

[[include :backrooms-wiki:component:font-toggle  
|font-import=FontImportFromGoogleFontsHere  
|font-family=FontNameHere  
|font-size=FontSizeMultiplier (optional)  
|off-by-default=a (optional)  
]]

  

What? I didn't say what each variable does? Yeah fair point, here, have a table with each one or whatever idk

| Parameter | Optional | Description |
| --- | --- | --- |
| font-import |  | This is the @import font clause to import the font you want to use. You can generate this for sites like Google Fonts. |
| font-family |  | This is the name of the font family itself, you should find this in the same place you got the font @import clause from. |
| font-size | ✓ | This number represents a multiplicative factor of how big the font will be rendered. You can use decimal numbers. |
| off-by-default | ✓ | Set this to "a" to switch the toggle to be off by default. |

now any div (or span if you wanna be fancy) with the class toggle-font will be affected! you make one of those like this:

[[div class="toggle-font"]]  
Put your contents that will switch font here  
[[/div]]

  

the following is an example code you'd use in a Blanche page:

[[include :backrooms-wiki:component:font-toggle  
|font-import=@import url('https://fonts.googleapis.com/css2?family=Italianno&display=swap');  
|font-family=Italianno  
|font-size=2  
]]

  

oh also here're all the CSS color variables if you want to mess with those for some reason, the names should be self-explanatory:

```
[[module css]]
a.font-toggle {
  --font-toggle-background-color: var(--light-gray-monochrome);
  --font-toggle-border-color: var(--black-monochrome);
  --font-toggle-text-color: var(--white-monochrome);
  --font-toggle-hover-background-color: var(--gray-monochrome);
  --font-toggle-hover-border-color: var(--light-gray-monochrome);
  --font-toggle-hover-text-color: var(--white-monochrome);
}
[[/module]]
```

  

Have fun!

---

Source: [https://backrooms-wiki.wikidot.com/component:font-toggle](https://backrooms-wiki.wikidot.com/component:font-toggle)
