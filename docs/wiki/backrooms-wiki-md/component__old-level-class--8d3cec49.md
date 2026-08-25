---
title: "Old Level Class"
source: "https://backrooms-wiki.wikidot.com/component:old-level-class"
retrieved_at: "2026-08-23T23:37:51+00:00"
license: CC-BY-SA-3.0
---

# Old Level Class

W A R N I N G  
**PLEASE DO NOT TOUCH THIS PAGE WITHOUT STAFF PERMISSION.**

**This is a template page used internally by the Backrooms Wiki.**

---

SURVIVAL DIFFICULTY:

Class {$class}

- {$one}
- {$two}
- {$three}

---

# How to use:

[[include :backrooms-wiki:component:level-class  
|class=CLASS  
]]

## Valid parameters include:

- 0
- 1
- 2
- 3
- 4
- 5
- unknown
- habitable
- deadzone
- pending
- n/a
- amended
- omega

## Custom classes:

[[include :backrooms-wiki:component:level-class  
|class=ClassName  
|color=#000000 (Hex code with hashtag.)  
|image=URL (URL to image)  
|one=Put any  
|two=text here  
|three=that you want  
]]

# Customization with CSS:

These are extra pieces of customization you can do with CSS, either by adding the code into a [[module css]] or by adding the code into the page's theme. **Keep the [[module css]] outside of the [[include]] for this component, put it beneath it or at the top or bottom of the page.**  
Add this to your page/theme to edit all the colours, since the |color= part of the component only controls the background:

[[module css]]  
.sd-container {

/\* font \*/  
--sd-font:Poppins;

/\* borders \*/  
--sd-border:var(--gray-monochrome); /\* for most classes \*/  
--sd-border-secondary:0,0,0; /\* for n/a \*/  
--sd-border-deadzone:20,0,0; /\* for deadzone \*/

/\* symbols \*/  
--sd-symbol:var(--sd-border) !important; /\* for most symbols \*/  
--sd-symbol-secondary: 255,255,255; /\* white for class 4 and higher \*/

/\* text \*/  
--sd-bullets:var(--sd-border) !important; /\* the colour of the bullet point text \*/  
--sd-text:var(--swatch-text-secondary-color); /\* the colour of the text in the top box \*/

/\* class colours \*/  
--class-0:247,227,117;  
--class-1:247,227,117;  
--class-1:255,201,14;  
--class-2:245,156,0;  
--class-3:249,90,0;  
--class-4:254,23,1;  
--class-5:175,6,6;  
--class-unknown:38,38,38;  
--class-habitable:26,128,111;  
--class-deadzone:44,13,12;  
--class-pending:182,182,182;  
--class-n-a:38,38,38;  
--class-amended:185,135,212;  
--class-omega:25,46,255;  
}  
[[/module]]

## Old colors:

If you want the old red border color back instead of the new themed ones, just add to your page along with the component:

[[module css]]  
.sd-container {  
 --sd-border:90,29,27;  
 --sd-image:90,29,27;  
 --sd-symbol:90,29,27;  
}  
[[/module]]

---

Source: [https://backrooms-wiki.wikidot.com/component:old-level-class](https://backrooms-wiki.wikidot.com/component:old-level-class)
