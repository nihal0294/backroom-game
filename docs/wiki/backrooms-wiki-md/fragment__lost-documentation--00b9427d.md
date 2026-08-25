---
title: "Lost Documentation"
source: "https://backrooms-wiki.wikidot.com/fragment:lost-documentation"
retrieved_at: "2026-08-23T23:42:33+00:00"
license: CC-BY-SA-3.0
---

# Lost Documentation

|  |
| --- |
| [Fold](javascript:;)[Unfold](javascript:;)  Table of Contents |

[+ Theme Code](javascript:;)

[- Close](javascript:;)

```
/*=== LOST DOCUMENTATION THEME BY scutoid ===*/
/*=== Made for Backrooms Wiki, but take parts of this for use anywhere that uses Black Highlighter! ===*/
/*=== CC-BY-SA-3.0 as the day is long. ===*/
 
/*= Fonts =*/
/* Roboto Slab */
@import url('https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@100;200;300;400;500;600;700;800;900&display=swap');
/* Roboto */
@import url('https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap');
/* Roboto Mono */
@import url('https://fonts.googleapis.com/css2?family=Roboto+Mono:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;1,100;1,200;1,300;1,400;1,500;1,600;1,700&display=swap');
 
/*= Root =*/
:root {
    /* ===S-CSS-P INTEGRATION=== */
    --theme-base: "black-highlighter";
    --theme-id: "lost-documetation";
    --theme-name: "Lost Documentation Theme";
 
    /* ===HEADER ELEMENTS=== */
    --logo-image: url("http://backrooms-sandbox-2.wikidot.com/local--files/collab:lost-theme/deertest.png");
    --header-title: "Lost Legends";
    --header-subtitle: "Archival Initiative";
 
    /* ===TYPEFACES=== */
    --body-font: 'Roboto', Inter, Verdana, Geneva, "Helvetica Neue", Helvetica, Arial, sans-serif;
    --UI-font: 'Roboto', PTRootUI, -apple-system, system-ui, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen-Sans, Ubuntu, Cantrell, "Helvetica Neue", sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol";
    --header-font: 'Roboto Slab', Inter, "Franklin Gothic Medium", "Franklin Gothic", "ITC Franklin Gothic", "Helvetica Neue", Helvetica, Arial, sans-serif;
    --mono-font: 'Roboto Mono', Recursive, Consolas, Monaco, monospace;
 
    /* ===STANDARD THEME COLORS=== */
   --white-monochrome: 255, 252, 231;
   --pale-gray-monochrome:  245, 218, 189;
   --light-gray-monochrome: 155, 101, 62;
   --gray-monochrome: 67, 102, 49;
   --dark-gray-monochrome: 45, 69, 33;
   --black-monochrome: 63, 66, 50;
   --bright-accent: 79, 120, 58;
   --medium-accent: 32, 18, 4;
   --dark-accent: 89, 58, 42;
   --pale-accent: 67, 42, 23;
 
   --link-color: 87, 148, 56;
   --visited-link-color: 168, 168, 36;
 
    --gradient-header: linear-gradient(rgb(var(--gray-monochrome)), rgb(var(--gray-monochrome)));
    --diagonal-stripes: none;
    --gradient-background: none;
    --gradient-topmenu-mobile: linear-gradient(rgb(var(--dark-gray-monochrome)), rgb(var(--dark-gray-monochrome)));
} 
 
/*= Image Block =*/
:is(.image-caption, .scp-image-caption) {
    width: unset !important;
}
 
:is(div.image-block,div.scp-image-block) {
    align-items: stretch;
}
 
:is(div.image-block,div.scp-image-block) img.image {
    width: 100% !important;
    border: 0;
}
 
/*= Div Boxes =*/
.darkblock {
    color: rgb(var(--white-monochrome));
    background: rgb(var(--dark-gray-monochrome));
    padding: 0.01rem 1rem;
    margin: 0.5rem 0;
}
 
.lightblock {
    color: rgb(var(--black-monochrome));
    background: rgb(var(--pale-gray-monochrome));
    padding: 0.01rem 1rem;
    margin: 0.5rem 0;
}
 
/*= Div Quotes =*/
 
.styled-quote {
    color: rgb(var(--black-monochrome));
    background: rgb(var(--pale-gray-monochrome));
    padding: 0.01rem 1rem;
    margin: 0.5rem 0;
    border-left: solid 6px rgb(var(--dark-gray-monochrome));
}
 
.dark-styled-quote {
    color: rgb(var(--white-monochrome));
    background: rgb(var(--gray-monochrome));
    padding: 0.01rem 1rem;
    margin: 0.5rem 0;
    border-left: solid 6px rgb(var(--dark-gray-monochrome));
}
 
/*= Nice scroll behaviour =*/
html {
    scroll-behavior: smooth;
}
 
/*= Page Content Fix =*/
#page-content {
    max-width: 100%;
    min-height: 170vh;
}
 
/* Header */
#header h2 span {
    opacity: 0.7;
}
 
/* Header for Mober */
@media only screen and (max-width: 56.25rem) {
    #header {
       background: none;
    }
 
    #header::before {
        content: "";
        position: absolute;
        height: 100%;
        width: 100%;
        left: 0;
        top: 0;
        background-image: var(--logo-image);
        background-size: auto 40vw;
        background-position: 105%;
        background-repeat: no-repeat;
        opacity: 0.4;
        filter: blur(3px);
    }
 
    #header h1 a {
        margin-top: -webkit-calc(((var(--header-height-on-mobile)/2)) - 3rem);
        margin-top: calc(((var(--header-height-on-mobile)/2)) - 3rem);
        margin-left: -webkit-calc(var(--header-height-on-mobile) - 5.625rem); 
        margin-left: calc(var(--header-height-on-mobile) - 5.625rem);
    }
 
    #header h2 span {
        margin-top: -webkit-calc(((var(--header-height-on-mobile)/2) + (var(--header-h1-font-size)/2) - .8rem));
        margin-top: calc(((var(--header-height-on-mobile)/2) + (var(--header-h1-font-size)/2) - .8rem));
        margin-left: -webkit-calc(var(--header-height-on-mobile) - 5.6rem);
        margin-left: calc(var(--header-height-on-mobile) - 5.6rem);
        line-height: 1;
    }
 
}
 
/*=== THE BIT THAT MAKES THE FUNKY LAYOUT ===*/
 
@media only screen and (min-width: 56.25rem) {
    /*= Root =*/
    :root {
        overflow-x: hidden;
        --sidebar-width-on-desktop: 21rem;
        --diagonal-stripes: none;
        --body-width-on-desktop: 100%;
    }
 
    /*= Make the topbar and header gradients not visible =*/
    body {
        background-size: 0, 0, 100% var(--background-gradient-distance);
    }
 
    /*= Put the header on the side =*/
    #container {
        grid-template-areas: "header content-wrap""header footer""header license";
        grid-template-columns: var(--sidebar-width-on-desktop) calc(100vw - var(--sidebar-width-on-desktop));
    }
 
    /*= Make the content wrap thing be over where the header is so that the sidebar can be under it =*/
    #content-wrap {
        width: 100vw;
        margin-left: calc(var(--sidebar-width-on-desktop) * -1 );
    }
 
    /*= Give padding to the main content that isn't just at the top, helps the flexibility of the layout =*/
    #main-content {
        padding: 1rem;
    }
 
    /*= Move the sidebar down, also change the box sizing to work as expected =*/
    #side-bar {
        margin-top: 100vh;
        box-sizing: border-box;
    }
 
    #side-bar > p {
        margin: 0;
    }
 
    /*= The header shit =*/
    #header {
        width: var(--sidebar-width-on-desktop);
        background: rgb(var(--gray-monochrome));
        z-index: 1;
        height: 21rem;
    }
 
    #header div[class*="top-bar"] > ul {
        width: var(--sidebar-width-on-desktop);
        flex-direction: column;
        height: auto;
        text-align: left;
    }
 
    .top-bar {
        height: fit-content;
        background: rgb(var(--dark-gray-monochrome));
    }
 
    #header div[class*="top-bar"] > ul > li ul > li {
        box-shadow: none;
    }
 
    #header h1 a {
        margin-left: 1.25rem;
        line-height: 1em;
        width: min-content;
    }
 
    #header h2 span {
        margin-top: 9rem;
        margin-left: 1.4rem;
    }
 
    #header div[class*="top-bar"] > ul > li > a {
        height: var(--topbar-height-on-desktop);
        box-sizing: border-box;
    }
 
    #header div#top-bar {
        margin-top: 10.75rem;
    }
 
    #header div[class*="top-bar"] > ul > li > a {
        height: var(--topbar-height-on-desktop);
        box-sizing: border-box;
        padding-left: 1.3rem;
        justify-content: left;
    }
 
    #header div[class*="top-bar"] > ul > li > ul {
        margin-top: 0;
        margin-left: 100%;
        min-width: unset;
    }
 
    #header div[class*="top-bar"] > ul:first-of-type > li:last-of-type > ul {
        left: unset;
        right: unset;
    }
 
    #search-top-box {
        margin-right: 1rem;
    }
 
    #login-status {
        left: 0;
        margin-left: 0;
    }
 
    #header::before {
        content: "";
        position: absolute;
        height: 10.75rem;
        width: 100%;
        left: 0;
        top: 0;
        background-image: var(--logo-image);
        background-size: auto 15rem;
        background-position: 9rem;
        background-repeat: no-repeat;
        opacity: 0.4;
        filter: blur(3px);
    }
 
    /*= Table of contents =*/
    #toc #toc-action-bar, #toc .title {
        display: none !important;
    }
 
    #toc #toc-list {
        max-height: unset;
    }
 
    #u-table-of-contents {
        position: absolute;
        top: 21rem;
        padding-left: 1rem;
        min-width: unset;
        width: 19rem;
        padding-right: 1rem;
        background: rgb(var(--gray-monochrome));
        height: calc(100vh - 21rem);
        left: 0;
    }
 
    #page-content div#toc {
        width: 19rem;
        min-width: 19rem;
        display: block;
        height: calc(100vh - 22.5rem);
        background: rgb(var(--toc-body-bg-color));
        overflow-y: scroll;
    }
 
    /* Shadow thing that gives a shadow to the header and sidebar in one */
    .shadowforsidebar {
        box-shadow: 0 0 .25rem 0 rgba(var(--swatch-tertiary-color),.8);
        position: absolute;
        top: 0;
        left: 0;
        height: 100%;
        width: var(--sidebar-width-on-desktop);
        pointer-events: none;
        z-index: -1;
    }
 
    /* Make the footer span the whole page */
    #footer, #license-area {
        margin-left: calc(var(--sidebar-width-on-desktop) * -1);
        width: 100vw;
    }
 
    /*= I have NO IDEA why this was broken =*/
    #footer .options {
        width: unset;
    }
 
    /*= When the body width is a percentage the edit buttons and shit break because it does maths on the value that need it to be rem or px. So here's a value subsituted in. =*/
    form#edit-page-form .wd-editor-toolbar-panel, form#edit-post-form .wd-editor-toolbar-panel, form#new-post-form .wd-editor-toolbar-panel, form#new-thread-form .wd-editor-toolbar-panel {
        --body-width-on-desktop: 45rem;
        margin: auto;
    }
 
}
```

[- Close](javascript:;)

---

Source: [https://backrooms-wiki.wikidot.com/fragment:lost-documentation](https://backrooms-wiki.wikidot.com/fragment:lost-documentation)
