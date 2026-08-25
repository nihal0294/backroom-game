---
title: "Forum Theme"
source: "https://backrooms-wiki.wikidot.com/component:forum-theme"
retrieved_at: "2026-08-23T23:41:36+00:00"
license: CC-BY-SA-3.0
---

# Forum Theme

W A R N I N G  
**PLEASE DO NOT TOUCH THIS PAGE WITHOUT STAFF PERMISSION.**

**This is a template page used internally by the Backrooms Wiki.**

---

```
/* FORUMS */
span.printuser.avatarhover a:first-of-type, span.printuser.deleted img {
    width: unset;
}
 
.thread-container .post {
    padding: 0.6em 0;
}
 
.thread-container .post .long {
    padding: 0;
    border: none;
    border-radius: 0;
    background: #fffbf0;
    background: rgb(var(--pale-gray-monochrome));
    border-bottom: solid 3px rgb(var(--gray-monochrome));
    box-shadow: 0 0.2rem 0.3rem rgb(0 0 0 / 25%);
}
 
.thread-container .post .long .head .options a, .thread-container .post .short .options {
    display: flex;
    width: 1.5rem;
    height: 1.5rem;
    box-shadow: 0 0.2rem 0.3rem rgb(0 0 0 / 25%);
    font-size: 0 !important;
    position: absolute;
    top: 3.5px;
    right: 3.5px;
}
 
.thread-container .post .short .options { 
    background: linear-gradient(to top right, rgb(var(--white-monochrome)) 50%, rgb(var(--white-monochrome)) 50%), linear-gradient(to top right, rgb(var(--gray-monochrome)) 49%, rgba(var(--gray-monochrome), 0.8) 51%), linear-gradient(to top right, rgb(var(--white-monochrome)) 50%, rgb(var(--white-monochrome)) 50%);
    background-size: 45% 45%, 70% 70%, 100% 100%;
    background-repeat: no-repeat, no-repeat, repeat;
    background-position: center;
}
 
.thread-container .post .long .head .options a { 
    background: linear-gradient(to top right, rgb(var(--gray-monochrome)) 50%, rgba(var(--gray-monochrome), 0.8) 49%), linear-gradient(to top right, rgb(var(--white-monochrome)) 51%, rgb(var(--white-monochrome)) 50%);
    background-size: 70% 20%, 100% 100%;
    background-repeat: no-repeat,repeat;
    background-position: center;
}
 
.thread-container .post .long .head .printuser img.small {
    position: absolute;
    top: 0.65em;
    left: 0.6em;
    padding-left: 18px;
    height: 3.5em;
    width: 3.5em !important;
    background-repeat: no-repeat;
    background-position: left;
    background-size: 80px 115%;
    image-rendering: pixelated;
    object-fit: cover;
}
 
.thread-container .post .long .head .printuser img.small:hover {
   transform: scale(1.3);
}
 
.thread-container .post .long .head .title {
    font-size: 2em;
    letter-spacing: normal;
    line-height: 1em;
    padding: 0.1em 0;
    position: relative;
}
 
.post .head .printuser:nth-child(2) {
position: relative; 
}
 
.thread-container .post .head {
    position: relative;
    padding-left: 6em;
    padding-right: 2rem;
    box-shadow: none;
    border-radius: 0;
    color: white;
    color: rgb(var(--white-monochrome));
    background-image: radial-gradient(circle, rgb(var(--medium-accent)) 50%, transparent 0), linear-gradient(to top, rgba(var(--medium-accent)) 0%, rgba(var(--medium-accent), 0.90) 100% );
    background-repeat: repeat, no-repeat;
    background-size: 0.25em 0.25em, 100% 100%;
    background-blend-mode: unset;
    --link-color: var(--white-monochrome);
    --visited-link-color: var(--white-monochrome);
    --hover-link-color: var(--white-monochrome);
    min-height: 3.5rem;
}
 
.thread-container .post  .long  .head .info {
    font-style: italic;
    color: rgb(var(--white-monochrome));
}
 
.printuser img.small {
   transition: 0.5s;
   transition-timing-function: cubic-bezier (0,1,1,0);
}
 
.printuser img.small:hover {
   transform: scale(2);
   transition-delay: 0.5s;
}
 
#avatar-hover-container {
   display: none;
}
 
.forum-thread-box .description-block {
    background-color: rgb(var(--white-monochrome));
    box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
    border-radius: 0;
    border: none;
    border-left: 0.5rem solid rgba(var(--gray-monochrome));
}
 
.thread-container .post  .long  .head .options {
    position: absolute;
    right: 1rem;
    top: 0.5rem;
}
 
.post-container .odate { opacity: 0.6; }
 
/* short */
 
.post-container .post .short {
    padding: 0;
    border: none;
    border-radius: 0;
    box-shadow: 0 0.2rem 0.3rem rgb(0 0 0 / 25%);
    padding-left: 2.5rem;
    padding-top: 4px;
    background-image: radial-gradient(circle, rgb(var(--medium-accent)) 50%, transparent 0), linear-gradient(to top, rgba(var(--medium-accent)) 0%, rgba(var(--medium-accent), 0.90) 100% );
    background-repeat: repeat, no-repeat;
    background-size: 0.25em 0.25em, 100% 100%;
    color: white;
    color: rgb(var(--white-monochrome));
    height: 30px;
    box-sizing: border-box;
    position: relative;
    font-size: 0;
    --link-color: var(--white-monochrome);
    --visited-link-color: var(--white-monochrome);
    --hover-link-color: var(--white-monochrome);
    height: 33px;
    padding-top: 6px;
}
 
.thread-container .post .short .printuser img.small {
    font-size: 1rem;
    position: absolute;
    top: 7px;
    left: 7px;
    padding-left: 8px;
    height: 16px !important;
    width: 16px !important;
    background-repeat: no-repeat;
    background-position: left;
    background-size: unset;
    image-rendering: auto;
}
 
.post-container .post .short .title {
    font-size: 1rem;
    white-space: nowrap;
    text-overflow: ellipsis;
    overflow: hidden;
    font-family: var(--mono-font);
    font-weight: bold;
    color: white;
    display: inline-block;
    max-width: 40%;
    line-height: 12px;
    position: relative;
    top: 1px;
    padding-left: 0;
    font-style: normal;
}
 
.post-container .post .short a, .post-container .post .short .odate {
    font-size: 0.95rem;
    padding-left: 3.5px;
    font-style: italic;
}
 
/* replies */
.post-container .post-container .short {
    --medium-accent: 109,105,96;
}
 
.post-container .post-container {
    margin-left: 0.5rem;
    padding-left: 1rem;
    border-left: solid 2px rgb(var(--gray-monochrome),0.6);
}
 
.post-container .post-container .post .head {
    display: flex;
    column-gap: 0.5rem;
    align-items: flex-start;
    --medium-accent: 109,105,96;
    padding-left: 2.5rem;
    justify-content: flex-start;
    min-height: unset;
}
 
.post-container .post-container .post .long .head .title {
    font-size: 1rem;
    line-height: 1em;
    padding: 0;
    white-space: nowrap;
    text-overflow: ellipsis;
    overflow: hidden;
    margin: 0;
    padding-top: 2px;
}
 
.post-container .post-container .post  .long  .head .info {
    font-size: 1em;
    line-height: 1em;
    white-space: nowrap;
}
 
.post-container .post-container .post .long .head .printuser img.small {
    position: absolute;
    top: 7px;
    left: 7px;
    padding-left: 8px;
    height: 16px !important;
    width: 16px !important;
    background-repeat: no-repeat;
    background-position: left;
    background-size: unset;
    image-rendering: auto;
}
 
.thread-container .post  .long  .head .options {
    position: absolute;
    right: 0.04rem;
    top: 0.04rem;
}
 
.options .btn {
    border-radius: 0 !important;
}
 
.thread-container .post .long .options {
    height: auto;
    gap: 0.5rem;
    padding-bottom: 0.3rem;
    padding-right: 0.3rem;
}
 
.thread-container .post .short .options {
    top: -2px;
}
 
#page-content>div.forum-thread-box>div.new-post>a, #page-content>div.forum-thread-box>div.options a, .post-container>.post>div.long>div.options a {
    --wght: var(--ui-wght);
    display: inline-flex;
    z-index: 2;
    position: relative;
    align-items: center;
    justify-content: center;
    min-width: 5em;
    margin: 0;
    padding: .25em;
    overflow: hidden;
    border: .0625rem solid rgba(133,0,5,.05);
    border: .0625rem solid rgb(var(--swatch-primary),.05);
    outline: 0 solid #850005;
    outline: 0 solid rgb(var(--swatch-primary));
    background-color: #f4f4f4;
    background-color: rgb(var(--ui-button-bg));
    box-shadow: 0 0 0 0 #f4f4f4;
    box-shadow: 0 0 0 0 rgb(var(--ui-button-bg));
    color: #0c0c0c;
    color: rgb(var(--ui-button-txt));
    font-weight: 500;
    font-weight: var(--wght);
    font-family: PTRootUI,-apple-system,system-ui,Segoe UI,Roboto,Ubuntu,Cantarell,Noto Sans,sans-serif,BlinkMacSystemFont,Oxygen-Sans,Cantrell,Helvetica Neue,Apple Color Emoji,Segoe UI Emoji,Segoe UI Symbol;
    font-family: var(--UI-font);
    transition: border-color .2s cubic-bezier(.4,0,.2,1),box-shadow .2s cubic-bezier(.4,0,.2,1),color .15s cubic-bezier(.4,0,.2,1),background-color .15s cubic-bezier(.4,0,.2,1),font-weight .2s cubic-bezier(.4,0,.2,1),font-variation-settings .2s cubic-bezier(.4,0,.2,1);
    will-change: border-color,box-shadow,color,background-color,font-weight,font-variation-settings;
}
 
#page-content>div.forum-thread-box>div.new-post>a:active, #page-content>div.forum-thread-box>div.new-post>a:hover, #page-content>div.forum-thread-box>div.options>a:active, #page-content>div.forum-thread-box>div.options>a:hover, .post-container>.post>div.long>div.options a:active, .post-container>.post>div.long>div.options a:hover {
    --wght: var(--ui-hvr-wght);
    -webkit-text-decoration: none;
    border-color: transparent;
    outline: 0 solid #850005;
    outline: 0 solid rgb(var(--swatch-primary));
    background-color: #850005;
    background-color: rgb(var(--ui-button-hover-bg));
    box-shadow: 0 0 0 .125rem #850005;
    box-shadow: 0 0 0 .125rem rgb(var(--ui-button-hover-outline));
    color: #fcfcfc;
    color: rgb(var(--ui-button-hover-txt));
    font-weight: 500;
    font-weight: var(--wght);
    text-decoration: none;
    cursor: pointer;
}
 
#page-content>div.forum-thread-box>div.options, .post-container>.post>div.long>div.options {
    display: flex;
    justify-content: flex-end;
    gap: 0.5rem;
}
 
#thread-container-posts .info .printuser a:first-of-type {
    width: 0;
}
```

---

Source: [https://backrooms-wiki.wikidot.com/component:forum-theme](https://backrooms-wiki.wikidot.com/component:forum-theme)
