---
title: "Patch"
source: "https://backrooms-wiki.wikidot.com/component:patch"
retrieved_at: "2026-08-23T23:42:37+00:00"
license: CC-BY-SA-3.0
---

# Patch

W A R N I N G  
**PLEASE DO NOT TOUCH THIS PAGE WITHOUT STAFF PERMISSION.**

**This is a template page used internally by the Backrooms Wiki.**

---

```
/* NuLiminal Patch */
/* By Scutoid Studios */
/* 2023 Wikidot Theme Patch */
 
/* Vars */
:root {
    --dark-gray-monochrome: var(--gray-monochrome);
 
    --swatch-secondary-color: var(--pale-gray-monochrome);
    --swatch-menubg-color: var(--pale-gray-monochrome);
    --swatch-background: var(--white-monochrome);
    --swatch-primary: var(--gray-monochrome);
 
    --pagetags-text-color: var(--link-color);
 
    --rating-module-bg-color: var(--swatch-background);
 
    --UI-font: var(--body-font);
    --swatch-text-light: var(--pale-gray-monochrome);
}
 
/* Tabs */
body #content-wrap .yui-navset .yui-nav .selected a {
    color: rgb(var(--pale-gray-monochrome)) !important; 
}
 
/* Text */
.styled-quote, .lightblock { 
    color: unset; 
}
 
#header h1 a:before {
     transition: unset;
     text-shadow: .063rem 0.1rem 0.1rem #0c0c0c;
}
 
#header h1 a:hover:before {
     content: var(--header-title);
     position: static;
     text-shadow: .063rem 0.1rem 0.1rem #0c0c0c;
}
 
/* container wrap bug */
 
#container-wrap-wrap {
    width: 100vw;
}
 
/* tags */
 
#main-content .page-tags span a:not([href^="/system:page-tags/tag/_"]), #main-content .page-tags span a:visited:not([href^="/system:page-tags/tag/_"]) {
    --link-color: var(--bright-accent);
}
```

---

Source: [https://backrooms-wiki.wikidot.com/component:patch](https://backrooms-wiki.wikidot.com/component:patch)
