---
title: "Customization"
source: "https://backrooms-wiki.wikidot.com/fragment:component:offset-timeline-1"
retrieved_at: "2026-08-23T23:41:23+00:00"
license: CC-BY-SA-3.0
---

# Customization

Customization

# Hiding Offset Names:

By default, the Hovertip shows the Name of the offset, you can remove that using the following:

[[include :backrooms-wiki:component:offset-timeline  
|title=false  
]]

# More Customization with CSS:

These are extra pieces of customization you can do with CSS, either by adding the code into a [[module css]] or by adding the code into the page's theme. Keep the [[module css]] outside of the [[include]] for this component, put it beneath it or at the top or bottom of the page.  
Add this to your page/theme to edit all the colors:

```
[[module css]]
.offset-timeline {
  /* Colors */
  /* the color of the background line */
  --timeline-line-color: var(--swatch-primary-darkest, 128,128,128);
  /* the color of the text at the top left corner of the component (the title) */
  --timeline-title-color: var(--link-color, 128,128,128);
  /* the color of the borders of the buttons */
  --timeline-border-color: var(--swatch-primary-darkest, var(--button-border-color));
  /* the color of the background of the buttons */
  --timeline-background-color: var(--swatch-secondary-color, var(--button-background-color));
  /* the color of the text in the buttons */
  --timeline-text-color: var(--ui-button-txt, var(--button-text-color));
  /* the color of the background of the buttons when hovered on */
  --timeline-hover-background-color: var(--swatch-primary, var(--button-hover-background-color));
  /* the color of the borders of the buttons when hovered on */
  --timeline-hover-border-color: var(--swatch-primary, var(--button-hover-border-color));
  /* the color of the text in the buttons when hovered on */
  --timeline-hover-text-color: var(--ui-button-hover-txt, var(--button-hover-text-color));
 
  /* Fonts */
  /* the font of the text on the top left corner of the component (the title) */
  --timeline-title-font: var(--UI-font);
  /* the font of the text in the buttons */
  --timeline-content-font: var(--UI-font);
 
  /* Others, don't mess with these unless you know what you are doing */
  /* calculates the width of the page contents in bhl themes; used to calculate font sizes */
  --timeline-relative-width-bhl: min(90vw,var(--body-width-on-desktop));
  /* calculates the width of the page contents in bedrock themes; used to calculate font sizes */
  --timeline-relative-width-bedrock: min(calc(100vw - var(--main-content-side-margin) *2), var(--main-content-width));
}
[[/module]]
```

Use the component to navigate to the next offset, which includes snippets of CSS for further customization, or click [here](http://backrooms-wiki.wikidot.com/component:offset-timeline/offset/2)

---

Source: [https://backrooms-wiki.wikidot.com/fragment:component:offset-timeline-1](https://backrooms-wiki.wikidot.com/fragment:component:offset-timeline-1)
