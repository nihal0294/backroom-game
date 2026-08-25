---
title: "CSS Snippets"
source: "https://backrooms-wiki.wikidot.com/fragment:component:offset-timeline-2"
retrieved_at: "2026-08-23T23:41:21+00:00"
license: CC-BY-SA-3.0
---

# CSS Snippets

CSS Snippets

|  |
| --- |
| [Fold](javascript:;)[Unfold](javascript:;)  Table of Contents  [Database Theme Fix](index.md)  [Always Uncollapsed](index.md) |

  
Welcome to the super secret hideout of CSS Snippets for the component. Here you can find code made by other people to further customize this component. Good luck!

This offset is collaborative, you may add your own snippets by following the guide at the top of the page's source. Check with staff if you are unsure about how to do that. To access the page itself click [here](fragment__component__offset-timeline-2--2fdc3fc5.md).

---

# Database Theme Fix

This code fixes color issues with the [database](theme__database--04a89a45.md) theme.  
![database-fix.png](https://backrooms-wiki.wdfiles.com/local--files/fragment:component:offset-timeline-2/database-fix.png)

[+ Show Code](javascript:;)

[- Hide Code](javascript:;)

```
[[module css]]
.offset-timeline {
  --timeline-hover-background-color: var(--swatch-primary-darkest);
  --timeline-hover-border-color: var(--swatch-primary-darkest);
  --timeline-hover-text-color: var(--swatch-primary);
}
[[/module]]
```

---

# Always Uncollapsed

This code makes the component always open; even if you are not hovering over it.

[+ Show Code](javascript:;)

[- Hide Code](javascript:;)

```
[[module css]]
div.offset-timeline {
  --clip-path: -100% -100%, -100% 100vh, 200% 100vh, 200% -100%;
}
[[/module]]
```

  

Congratulations! You have now mastered the component, have fun using it!

---

Source: [https://backrooms-wiki.wikidot.com/fragment:component:offset-timeline-2](https://backrooms-wiki.wikidot.com/fragment:component:offset-timeline-2)
