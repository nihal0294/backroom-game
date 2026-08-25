---
title: "Level 312 - \"Farewell, Humanity\""
source: "https://backrooms-wiki.wikidot.com/level-312"
retrieved_at: "2026-08-23T23:36:08+00:00"
license: CC-BY-SA-3.0
---

# Level 312 - "Farewell, Humanity"

[+ 展开样式代码](javascript:;)

[- 收起样式代码](javascript:;)

```
:root {
    --nusd-speed: 1;
}
 
/*岛*/
.ic_wrap-box {
}
/*上*/
.ic_wrap-box .ic_top-left-box {
    animation: right0  calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
}
 
.ic_wrap-box .ic_top-left-box .ic_text {
    animation: right0  calc(1.1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
}
 
.ic_wrap-box .ic_h-icon {
    animation: ic-right  calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.3s / var(--nusd-speed));
    opacity: 0;
}
 
.ic_wrap-box .ic_r-icon {
    animation: ic-right  calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.4s / var(--nusd-speed));
    opacity: 0;
}
 
.ic_wrap-box .ic_s-icon {
    animation: ic-right  calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.5s / var(--nusd-speed));
    opacity: 0;
}
 
/*sd*/
.ic_wrap-box .ic_sd-box {
    clip-path: polygon(0% 0%,0.4rem 0%,0.4rem 0%,0% 0%);
    animation: fadeIn-nu-exit calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
}
 
.ic_wrap-box .ic_infobox-1,.ic_wrap-box .ic_infobox-2 {
    clip-path: polygon(0% 0%,0.4rem 0%,0.4rem 0%,0% 0%);
    animation: fadeIn-nu-env calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.1s / var(--nusd-speed));
}
 
.ic_wrap-box .ic_infobox-3 {
    clip-path: polygon(0% 0%,0.4rem 0%,0.4rem 0%,0% 0%);
    animation: fadeIn-nu-enti calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.2s / var(--nusd-speed));
}
/*字*/
.ic_wrap-box .ic_sd-box .ic_text {
    animation: rightin2 calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
}
 
.ic_wrap-box .ic_sd-box .ic_sd {
    animation: rightin2 calc(1.1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
}
 
.ic_wrap-box .ic_infobox-1 .ic_text {
    animation: rightin calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.1s / var(--nusd-speed));
}
 
.ic_wrap-box .ic_infobox-1 .ic_info {
    animation: rightin calc(1.1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.1s / var(--nusd-speed));
}
 
.ic_wrap-box .ic_infobox-2 .ic_text {
    animation: rightin calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.2s / var(--nusd-speed));
}
 
.ic_wrap-box .ic_infobox-2 .ic_info {
    animation: rightin calc(1.1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.2s / var(--nusd-speed));
}
 
.ic_wrap-box .ic_infobox-3 .ic_text {
    animation: rightin calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.3s / var(--nusd-speed));
}
 
.ic_wrap-box .ic_infobox-3 .ic_info {
    animation: rightin calc(1.1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.3s / var(--nusd-speed));
}
/*info*/
.ic_wrap-box .ic_add-h {
    clip-path: polygon(50% 0%,50% 0%,50% 100%,50% 100%);
    animation: ic-add-h  calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.3s / var(--nusd-speed));
}
 
.ic_wrap-box .ic_add-r {
    clip-path: polygon(50% 0%,50% 0%,50% 100%,50% 100%);
    animation: ic-add-r  calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.4s / var(--nusd-speed));
}
 
.ic_wrap-box .ic_add-s {
    clip-path: polygon(50% 0%,50% 0%,50% 100%,50% 100%);
    animation: ic-add-s  calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.5s / var(--nusd-speed));
}
/*字*/
.ic_wrap-box .ic_add-h .ic_text {
    animation: rightin2 calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.5s / var(--nusd-speed));
}
 
.ic_wrap-box .ic_add-h .ic_info {
    animation: rightin calc(1.1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.5s / var(--nusd-speed));
}
 
.ic_wrap-box .ic_add-r .ic_text {
    animation: rightin2 calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.6s / var(--nusd-speed));
}
 
.ic_wrap-box .ic_add-r .ic_info {
    animation: rightin calc(1.1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.6s / var(--nusd-speed));
}
 
.ic_wrap-box .ic_add-s .ic_text {
    animation: rightin2 calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.7s / var(--nusd-speed));
}
 
.ic_wrap-box .ic_add-s .ic_info {
    animation: rightin calc(1.1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.7s / var(--nusd-speed));
}
 
.ic_addbox .ic_text,.ic_addbox .ic_info{
        opacity: 0;
}
/*bubor*/
 
.ic_top-box {
    animation: ic-border  calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
}
 
.ic_wrap-box {
    border-bottom: rgba(var(--ic_border-color), 0) solid var(--ic_interspace);
    animation: ic-border  calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
    animation-delay: calc(0.7s / var(--nusd-speed));
}
 
@keyframes ic-right {
    0% {
        transform: translateX(-1rem);
        transform: rotate(30deg);
        opacity: 0;
    }
 
    80% {
        transform: translateX(-1rem);
        transform: rotate(30deg);
        opacity: 0;
    }
 
    100% {
        transform: translateX(0);
        transform: rotate(0deg);
        opacity: 1;
    }
}
 
@keyframes ic-border {
    0% {
        border-bottom: rgba(var(--ic_border-color), 0) solid var(--ic_interspace);
    }
 
    100% {
        border-bottom: rgba(var(--ic_border-color), 1) solid var(--ic_interspace);
    }
}
 
@keyframes ic-add-h {
    0% {
        clip-path: polygon(50% 0%,50% 0%,50% 100%,50% 100%);
        background-color: rgba(var(--ic_border-color), 1);
    }
 
    100% {
        clip-path: polygon(0% 0%,100% 0%,100% 100%,0% 100%);
        background-color: rgba(var(--ic_add-habitability-bg-color), 1);
    }
}
 
@keyframes ic-add-r {
    0% {
        clip-path: polygon(50% 0%,50% 0%,50% 100%,50% 100%);
        background-color: rgba(var(--ic_border-color), 1);
    }
 
    100% {
        clip-path: polygon(0% 0%,100% 0%,100% 100%,0% 100%);
        background-color: rgba(var(--ic_add-resource-bg-color), 1);
    }
}
 
@keyframes ic-add-s {
    0% {
        clip-path: polygon(50% 0%,50% 0%,50% 100%,50% 100%);
        background-color: rgba(var(--ic_border-color), 1);
    }
 
    100% {
        clip-path: polygon(0% 0%,100% 0%,100% 100%,0% 100%);
        background-color: rgba(var(--ic_add-signal-bg-color), 1);
    }
}
 
/*nusd*/
 
/*左*/
 
.sdnumber p {
    opacity: 0;
    animation: right0 calc(2s / var(--nusd-speed));
    animation-fill-mode: forwards;
}
 
.sdnumber p {
    opacity: 0;
    animation: right0 calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
}
 
.sdnumber strong {
    opacity: 0;
    animation: right0 calc(1.2s / var(--nusd-speed) );
    animation-fill-mode: forwards;
}
 
.sdnumber .lines {
    opacity: 0;
    animation: fadeIn-nu-sd calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
}
 
/*右*/
 
.sd-container .exit {
    animation: fadeIn-nu-exit calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
}
 
.sd-container .environment {
    animation: fadeIn-nu-env calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
}
 
.sd-container .entity {
    animation: fadeIn-nu-enti calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
}
 
.sd-container .syntax .sd{
    animation: rightin calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
}
 
.sd-container .syntax p strong {
    animation: rightin calc(1.05s / var(--nusd-speed) );
    animation-fill-mode: forwards;
}
 
.class.customclass strong::after{
    animation: no-opacity calc(1.05s / var(--nusd-speed) );
    animation-fill-mode: forwards;
}
 
/*字*/
/*ex*/
.sd-container .exit strong {
    animation: rightin2 calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
}
 
.sd-container .exit p span:nth-child(3) {
    animation: rightin2 calc(1.1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
}
 
/*ev*/
.sd-container .environment strong {
    animation: rightin2 calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
}
 
.sd-container .environment p span:nth-child(3) {
    animation: rightin2 calc(1.1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
}
 
/*en*/
.sd-container .entity strong {
    animation: rightin2 calc(1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
}
 
.sd-container .entity p span:nth-child(3) {
    animation: rightin2 calc(1.1s / var(--nusd-speed) );
    animation-fill-mode: forwards;
}
 
/*动画*/
 
@keyframes clip0 {
    0% {
        clip-path: inset(0 0 100% 0);
    }
 
    100% {
        clip-path: inset(0 0 0 0);
    }
}
 
@media only screen and (min-width: 1071px) {
 
    .sd-container .border {
        animation: border-spin-pc calc(1s / var(--nusd-speed) );
        transform-origin: right;
    }
 
@keyframes border-spin-pc {
        0%{
    clip-path: polygon(0% 0%,0% 0.4rem,0% 0.4rem,0% 0%);
        transform: scaleX(5000%);
    }
 
    30% {
        clip-path: polygon(0% 0%,0% 0.4rem,100% 0.4rem,100% 0%);
        transform: scaleX(5000%);
        opacity: 1;
    }
 
    60% {
        clip-path: polygon(0% 0%,0% 100%,100% 100%,100% 0%);
        transform: scaleX(5000%);
        opacity: 1;
    }
 
    100% {
        transform: scaleX(100%);
        opacity: 1;
    }
}
 
.sdnumber p {
    animation-delay: calc((2s / var(--nusd-speed))*0.6);
}
 
.sdnumber p {
    animation-delay: calc((1s / var(--nusd-speed))*0.6);
}
 
.sdnumber strong {
    animation-delay: calc((1.2s / var(--nusd-speed))*0.6);
}
 
.sdnumber .lines {
    animation-delay: calc((1s / var(--nusd-speed))*0.6);
}
 
}
 
@media only screen and (min-width: 620px) and (max-width: 1070px) {
    .sd-container .border {
        animation: border-spin-mo calc(1s / var(--nusd-speed) );
        animation-fill-mode: forwards;
    }
}
 
@media only screen and (max-width: 620px) {
 
    .sd-container .border {
        animation: border-spin-mo calc(1s / var(--nusd-speed) );
        animation-fill-mode: forwards;
    }
 
    .sd-container .exit {
        clip-path: polygon(0% 0%,0.4rem 0%,0.4rem 0%,0% 0%);
        animation-delay: 0;
        animation-fill-mode: forwards;
    }
 
    .sd-container .environment {
        clip-path: polygon(0% 0%,0.4rem 0%,0.4rem 0%,0% 0%);
        animation-delay: calc(0.5s / var(--nusd-speed) );
        animation-fill-mode: forwards;
    }
 
    .sd-container .entity {
        clip-path: polygon(0% 0%,0.4rem 0%,0.4rem 0%,0% 0%);
        animation-delay: calc(1s / var(--nusd-speed) );
        animation-fill-mode: forwards;
    }
}
 
@keyframes border-spin-mo {
    0% {
        clip-path: polygon(50% 0%,50% 100%,50% 100%,50% 0%);
    }
 
    70% {
        clip-path: polygon(50% 0%,50% 100%,50% 100%,50% 0%);
        opacity: 1;
    }
 
    100% {
        clip-path: polygon(0% 0%,0% 100%,100% 100%,100% 0%);
        opacity: 1;
    }
}
 
@keyframes rightin {
    0% {
        transform: translateX(-1rem);
        opacity: 0;
    }
 
    80% {
        transform: translateX(-1rem);
        opacity: 0;
    }
 
    100% {
        transform: translateX(0);
        opacity: 1;
    }
}
 
@keyframes rightin2 {
    0% {
        transform: translateY(1rem);
        opacity: 0;
    }
 
    80% {
        transform: translateY(1rem);
        opacity: 0;
    }
 
    100% {
        transform: translateY(0);
        opacity: 1;
    }
}
 
@keyframes upin0 {
    0% {
        transform: translateY(1rem);
        opacity: 0;
    }
 
    100% {
        transform: translateY(0);
        opacity: 1;
    }
}
 
@keyframes right0 {
    0% {
        transform: translateX(-1rem);
        opacity: 0;
    }
 
    100% {
        transform: translateX(0);
        opacity: 1;
    }
}
 
@keyframes fadeIn-nu-sd {
    0% {
        clip-path: polygon(0% 0%,0% 0%, -10% 100%,0% 100%);
        transform: rotateY(180deg);
    }
 
    100% {
        clip-path: polygon(0% 0%,200% 0%, 100% 100%,0% 100%);
        transform: rotateX(0deg);
        opacity: 1;
    }
}
 
@keyframes upin1 {
    0% {
        transform: translateY(1rem);
        opacity: 0;
    }
 
    50% {
        transform: translateY(1rem);
        opacity: 0;
    }
 
    100% {
        transform: translateY(0);
        opacity: 1;
    }
}
 
@keyframes upin2 {
    0% {
        transform: translateY(1rem);
        opacity: 0;
    }
 
    50% {
        transform: translateY(1rem);
        opacity: 0;
    }
 
    75% {
        transform: translateY(0);
        opacity: 1;
    }
 
    100% {
        transform: translateY(0);
        opacity: 1;
    }
}
 
@keyframes fadeIn-nu-exit {
    0% {
        clip-path: polygon(0% 0%,0.4rem 0%,0.4rem 0%,0% 0%);
    }
 
    25% {
        clip-path: polygon(0% 0%,0.4rem 0%,0.4rem 100%,0% 100%);
    }
 
    100% {
        clip-path: polygon(0% 0%,100% 0%,100% 100%,0% 100%);
    }
}
 
@keyframes fadeIn-nu-env {
    0% {
        clip-path: polygon(0% 0%,0.4rem 0%,0.4rem 0%,0% 0%);
    }
 
    25% {
        clip-path: polygon(0% 0%,0.4rem 0%,0.4rem 100%,0% 100%);
    }
 
    100% {
        clip-path: polygon(0% 0%,100% 0%,100% 100%,0% 100%);
    }
}
 
@keyframes fadeIn-nu-enti {
    0% {
        clip-path: polygon(0% 0%,0.4rem 0%,0.4rem 0%,0% 0%);
    }
 
    25% {
        clip-path: polygon(0% 0%,0.4rem 0%,0.4rem 100%,0% 100%);
    }
 
    100% {
        clip-path: polygon(0% 0%,100% 0%,100% 100%,0% 100%);
    }
}
 
@keyframes no-opacity {
    0% {
        opacity: 0;
    }
    25% {
        opacity: 0;
    }
    100% {
        opacity: 1;
    }
}
```

```
:root {
    --lh-red: #c0392b;
    --lh-blue: #2980b9;
    --lh-green: #27ae60;
    --lh-dark-green: #16a085;
    --lh-purple: #8e44ad;
    --lh-orange: #e67e22;
    --lh-yellow: #f1c40f;
 
    --lh-paper-bg: 255, 251, 240;
    --lh-string-color: 192, 57, 43;
    --lh-book-color: var(--gray-monochrome);
    --lh-tape-color: 90,90,90,0.3;
    --lh-white-bg: 249,249,249;
    --lh-dark-bg: 50, 50, 50;
    --lh-highlighter: var(--bright-accent);
    --lh-border-color: var(--gray-monochrome);
    --lh-wiki-note-color: var(--bright-accent)
}
 
/**
 *  旧代码合集
 *  为了向下兼容而保留
 */
 
.grid-container{display:flex;flex-direction:row;flex-wrap:wrap;width:100%}.grid-container,.grid-container [class*=grid]{box-sizing:border-box}[class*=grid]{padding:5px}.grid{width:100%}.grid-large{width:75%}.grid-big{width:50%}.grid-medium{width:33.33%}.grid-small{width:25%}@media screen and (min-width:768px){.wd-grid-large{width:75%}.wd-grid,.wd-grid-big{width:50%}.wd-grid-medium{width:33.33%}.wd-grid-small{width:25%}}.text-hover-hide{opacity:0;transition:opacity .3s}.text-hover-hide:hover{opacity:1}.text-block-hide{background:rgb(var(--black-monochrome));color:rgb(var(--black-monochrome));transition:background .3s}.text-block-hide:hover{background:0 0}.text-blur-hide,.text-blur-hover-hide{filter:blur(.3rem);-webkit-filter:blur(.3rem) transition: blur .3s}.text-blur-hover-hide:hover{filter:blur(0);-webkit-filter:blur(0)}.lyric-box{text-align:center;font-size:1.05rem;display:flex;flex-direction:column;flex-wrap:wrap;justify-content:center}.lyric-box p{margin:1.5em auto}.lyric-box.with-bigger-line p{margin:3em auto}
 
/**
 *  便签纸
 *  notepaper
 */
 
.notepaper {
    background: linear-gradient(rgb(var(--lh-paper-bg)) 95%, #ddd 0);
    line-height: 2em;
    background-size: 100% 2em;
    background-attachment: local;
    border: 2em solid rgb(var(--lh-paper-bg));
    box-shadow: 0 0.1rem 0.3rem rgba(0,0,0,0.2);
    padding: 0;
    margin: 1em auto;
    box-sizing: border-box;
    position: relative
}
.notepaper p {
    margin: 0;
    font-size: 1.05rem;
    letter-spacing: 0.1rem;
    line-height: inherit
}
.notepaper.narrow,
.notepaper.wide {
        width: 90%
}
@media screen and (min-width:768px){
    .notepaper.narrow {
        width: 50%
    }
    .notepaper.wide {
        width: 75%
    }
}
 
.notepaper.tight {
    border-width: 1rem;
    border-left-width: 1.2rem;
    border-right-width: 1.2rem;
    line-height: 1.8em;
    background-size: 100% 1.8em;
    font-size: 13px
}
 
.notepaper.with-string::before {
    content: '';
    width: 0.5em;
    height: 6rem;
    background: rgb(var(--lh-string-color));
    top: -2rem; right: -1rem;
    display: block;
    position: absolute;
    box-shadow: 0 0.1em 0.2em rgba(0,0,0,0.2);
    clip-path: polygon(-100% -100%,100% 0%,100% 100%,50% 98%,0% 100%);
}
.notepaper.with-tape::before {
    content: '';
    border: 1px solid #ddd;
    background: rgba(var(--lh-tape-color));
    width: 1.5em;
    height: 4em;
    transform: rotate(45deg);
    display: block;
    position: absolute;
    top: -3em;
    left: -1.8em
}
 
.notepaper.tight.with-string::before {
    top: -1rem; 
    right: -0.25rem;
}
.notepaper.tight.with-tape::before {
    top: -2.5em;
    left: -1.3em
}
 
.notepaper.page {
    min-height: 36em;
    counter-increment: page;
    display: flex;
    flex-direction: column;
    justify-content: space-between
}
@media screen and (min-width:768px){
    .notepaper.page {
        width: 70%
    }
}
.notepaper.page:after {
    content: counter(page);
    display: block;
    text-align: center
}
.notepaper-group {
    counter-reset: page;
}
 
.book-pattern {
    display: flex;
    flex-wrap: wrap;
    flex-direction: row
}
.book-pattern .notepaper.page:not(.notepaper > .notepaper) {
    width: 100%
}
@media screen and (min-width: 768px) {
    .book-pattern .notepaper.page:not(.notepaper > .notepaper) {
        width: 50%
    }
}
 
.book-wrapper {
    background: rgb(var(--lh-book-color));
    padding: 0.5rem;
    box-shadow: 0 0.1rem 0.2rem rgba(0,0,0,0.2);
    border-radius: 5px;
    margin: 1rem auto
}
@media screen and (min-width: 768px) {
    .book-wrapper .notepaper {
        margin: 0
    }
}
 
/**
 *  文字修饰
 */
 
.text-highlighted {
    position: relative
}
.text-highlighted::before {
    content: "";
    position: absolute;
    height: 0.9em;
    bottom: 2px;
    left: -2px;
    width: 105%;
    z-index: -1;
    background-color: rgb(var(--lh-highlighter));
    opacity: .6;
    transform: skew(-15deg);
    transition: opacity .2s ease;
    border-radius: 3px 8px 10px 6px;
    transition: 0.1s ease background-color;
}
 
.text-underlined {
    text-decoration: underline;
    text-underline-offset: 4px;
    text-decoration-thickness: 2px;
    text-decoration-color: rgb(var(--lh-highlighter))
}
.text-wavy {
    text-decoration: underline wavy;
    text-underline-offset: 4px;
    text-decoration-color: rgb(var(--lh-highlighter))
}
 
.text-circled,
.text-squared {
    display: inline-block;
    border: 2px solid rgb(var(--lh-highlighter));
    border-radius: 100%;
    box-sizing: border-box
}
.text-squared { border-radius: 0 }
 
.text-shadow { text-shadow: 0.075em 0.075em 0 rgb(var(--lh-highlighter)) }
 
.text-highlighted.td-red::before { background: var(--lh-red) }
.text-circled.td-red, .text-squared.td-red { border-color: var(--lh-red) }
.text-underlined.td-red, .text-wavy.td-red { text-decoration-color: var(--lh-red) }
 
.text-highlighted.td-blue::before { background: var(--lh-blue) }
.text-circled.td-blue, .text-squared.td-blue { border-color: var(--lh-blue) }
.text-underlined.td-blue, .text-wavy.td-blue { text-decoration-color: var(--lh-blue) }
 
.text-highlighted.td-green::before { background: var(--lh-green) }
.text-circled.td-green, .text-squared.td-green { border-color: var(--lh-green) }
.text-underlined.td-green, .text-wavy.td-green { text-decoration-color: var(--lh-green) }
 
.text-highlighted.td-darkgreen::before { background: var(--lh-dark-green) }
.text-circled.td-darkgreen, .text-squared.td-darkgreen { border-color: var(--lh-dark-green) }
.text-underlined.td-darkgreen, .text-wavy.td-darkgreen { text-decoration-color: var(--lh-dark-green) }
 
.text-highlighted.td-purple::before { background: var(--lh-purple) }
.text-circled.td-purple, .text-squared.td-purple { border-color: var(--lh-purple) }
.text-underlined.td-purple, .text-wavy.td-purple { text-decoration-color: var(--lh-purple) }
 
.text-highlighted.td-yellow::before { background: var(--lh-yellow) }
.text-circled.td-yellow, .text-squared.td-yellow { border-color: var(--lh-yellow) }
.text-underlined.td-yellow, .text-wavy.td-yellow { text-decoration-color: var(--lh-yellow) }
 
.text-highlighted.td-orange::before { background: var(--lh-orange) }
.text-circled.td-orange, .text-squared.td-orange { border-color: var(--lh-orange) }
.text-underlined.td-orange, .text-wavy.td-orange { text-decoration-color: var(--lh-orange) }
 
/* 隐藏文字 */
 
.text-blank { color: rgba(0,0,0,0) }
.text-block { 
    background: rgb(var(--black-monochrome));
    color: rgb(var(--black-monochrome)); 
}
.text-blur { 
    filter: blur(0.3em);
    -webkit-filter: blur(0.3em)
}
 
.text-hoverback,
.text-selectback {
    transition-duration: 0.3s;
    transition-property: background, transform, color
}
 
.text-blank.text-hoverback:hover,
.text-blank.text-selectback::selection,
.text-blank.text-selectback *::selection { color: rgb(var(--black-monochrome)) }
 
.text-block.text-hoverback:hover { background: transparent!important }
.text-block.text-selectback::selection,
.text-block.text-selectback *::selection { color: rgb(var(--white-monochrome, 255, 255, 255)) }
 
.text-blur.text-hoverback:hover { filter: blur(0)!important; -webkit-filter: blur(0)!important }
 
/**
 * 附加项
 */
.with-border, .with-box-style { border: 1px solid rgb(var(--bright-accent)) }
.with-border-dark { border: 1px solid rgb(var(--black-monochrome)) }
.with-border-light { border: 1px solid rgb(var(--white-monochrome)) }
.with-border-thick { border-width: 2px }
 
.with-shadow-sm { box-shadow: 0 0 0.1em rgba(0,0,0,0.2) }
.with-shadow { box-shadow: 0 0.1em 0.2em rgba(0,0,0,0.2) }
.with-shadow-lg { box-shadow: 0 0.15em 0.3em rgba(0,0,0,0.2) }
.with-shadow-xl { box-shadow: 0 0.2em 0.5em rgba(0,0,0,0.2) }
.with-shadow-xxl { box-shadow: 0 0.25em 0.8em rgba(0,0,0,0.2) }
 
.with-padding, .with-box-style { padding: 0.25em 1em }
.with-p-sm { padding: 0.125em 0.5em }
.with-p-lg { padding: 0.5em 2em }
 
.with-margin, .with-box-style { margin: 1em auto }
.with-m-sm { margin: 0.5em auto }
.with-m-lg { margin: 2em auto }
 
.with-narrow-width { 
    width: 90%!important; 
    margin-left: auto; 
    margin-right: auto 
}
@media screen and (min-width: 768px) {
    .with-narrow-width { width: 75%!important }
}
[class*="with-bg-"], [class*="with-bg-"] h1 { color: #fff!important }
.with-bg-red { background: var(--lh-red)!important }
.with-bg-blue { background: var(--lh-blue)!important }
.with-bg-green { background: var(--lh-green)!important }
.with-bg-darkgreen { background: var(--lh-dark-green)!important }
.with-bg-yellow { background: var(--lh-yellow)!important }
.with-bg-orange { background: var(--lh-orange)!important }
.with-bg-purple { background: var(--lh-purple)!important }
 
/**
 * 删除类
 */
 
.offwith-shadow { box-shadow: none!important }
.offwith-border { border: none!important }
.offwith-padding, .offwith-pam { padding: 0!important }
.offwith-margin, .offwith-pam { margin: 0!important }
 
.offwith-width-limit {
    width: auto!important;
    margin-left: auto!important;
    margin-right: auto!important
}
 
div[class*="grider"].offwith-grid-gap { grid-gap: 0!important }
 
/**
 * 网格布局
 */
 
/* Gridder 容器 */
 
div[class*="gridder"] {
    display: grid;
    box-sizing: border-box;
    grid-gap: 1rem;
    padding: 0
}
div[class*="gridder"] * { box-sizing: border-box }
 
.gridder, .gridder-col-2 {
    grid-template-columns: 1fr 1fr;
}
.gridder-col-3 {
    grid-template-columns: repeat(3, 1fr);
}
.gridder-col-4 {
    grid-template-columns: repeat(4, 1fr);
}
 
@media screen and (min-width: 768px) {
    .pc-gridder, .pc-gridder-col-2 {
       grid-template-columns: 1fr 1fr;
   }
   .pc-gridder-col-3 {
       grid-template-columns: repeat(3, 1fr);
   }
   .pc-gridder-col-4 {
       grid-template-columns: repeat(4, 1fr);
   }
}
 
.spanner, .spanner-2 {
    grid-column-start: span 2;
}
.spanner-3 {
    grid-column-start: span 3;
}
 
/**
 * 告示组件
 */
.signblock,
.signblock-dark,
.signblock-warn {
    margin: 1rem auto;
    box-shadow: 0 0.1rem 0.3rem rgba(0,0,0,0.4);
    background: rgb(var(--lh-white-bg));
    font-size: 1.05rem;
    padding: 2rem
}
@media screen and (min-width: 768px) {
    .signblock,
    .signblock-dark,
    .signblock-warn {
        width: 75%
    }
}
.signblock-dark, 
.signblock-dark h1 {
    background: rgb(var(--lh-dark-bg));
    color: #fff
}
.signblock-warn, 
.signblock-warn h1 {
    background: var(--lh-red);
    color: #fff
}
 
.signblock h1,
.signblock-dark h1,
.signblock-warn h1 {
    text-align: center;
    font-size: 2rem;
    margin: 0;
    font-weight: 700
}
.signblock-img {
    display: flex;
    flex-direction: row;
    justify-content: center
}
.signblock-img img {
    width: 8em
}
.signblock-footer {
    font-size: 0.9em;
    text-align: center;
    margin: 0.5rem 0;
    font-weight: bolder;
    display: block
}
 
/**
 * 报告
 */
 
.reportblock,
.reportblock-dark {
    border: 2px solid rgb(var(--lh-border-color));
    box-shadow: 0 0.1rem 0.2rem rgba(0,0,0,0.3);
    background: rgb(var(--white-monochrome));
    padding: 0.8rem 1.5rem;
    padding-bottom: 0.4rem;
    margin: 1.5rem auto;
    margin-bottom: 1rem;
    position: relative
}
 
.reportblock hr,
.reportblock-dark hr {
    background-color: rgb(var(--lh-border-color));
    margin-left: -1.5rem;
    margin-right: -1.5rem
}
 
.reportblock h1:first-child,
.reportblock-dark h1:first-child {
    position: absolute;
    top: -1rem;
    left: 1.5rem;
    font-size: 110%;
    font-weight: 600;
    background: rgb(var(--lh-border-color));
    color: #fff;
    padding: 0.2rem 0.5rem;
    margin: 0;
}
 
.reportblock-dark,
.reportblock-dark h1 {
    border-color: rgb(var(--lh-white-bg));
    background: rgb(var(--lh-dark-bg));
    color: #fff
}
 
.reportblock-dark hr {
    background-color: rgb(var(--lh-white-bg));
}
 
/* 更好的折叠框 */
 
.bettercollap {
  margin: 1em 0;
}
 
.bettercollap .collapsible-block {
  width: auto;
  overflow: hidden;
  border: 1px solid rgb(var(--lh-border-color))
}
 
.bettercollap .collapsible-block-content,
.bettercollap .collapsible-block-link {
  background: rgb(var(--white-monochrome));
  padding: 0.5em
}
 
.bettercollap .collapsible-block-content {
  padding-left: 1em;
  padding-right: 1em
}
 
.bettercollap .collapsible-block-link {
  color: rgb(var(--lh-border-color));
  background: rgb(var(--white-monochrome));
  transition: .3s;
  display: block;
}
.bettercollap .collapsible-block-link:hover,
.bettercollap .collapsible-block-unfolded .collapsible-block-link,
.styledcollap.bettercollap .collapsible-block-link {
  color: rgb(var(--white-monochrome));
  background: rgb(var(--lh-border-color))!important;
  text-decoration: none
}
 
.bettercollap .collapsible-block-link:hover a { color: rgb(var(--white-monochrome)) }
 
.bettercollap .collapsible-block-link::before {
  content: "\25BC";
  display: inline-block;
  margin-right: 0.5em;
  transform: rotate(-90deg) scale(0.9)
}
.bettercollap .collapsible-block-unfolded .collapsible-block-link::before {
   transform: rotate(0) scale(0.9)
}
 
.bettercollap .collapsible-block + .collapsible-block { border-top: none }
 
.styledcollap.bettercollap .collapsible-block {
  border-radius: 2px;
  box-shadow: 0 0.1rem 0.2rem rgba(0,0,0,0.3)
}
 
.styledcollap.bettercollap .collapsible-block-content {
  background-color: rgb(var(--pale-gray-monochrome));
  border-width: 3px
}
 
.styledcollap.bettercollap .collapsible-block-link:hover {
  background: rgba(var(--lh-border-color),0.95)!important;
}
 
/**
 * 提示框
 */
 
.infoblock {
    color: #f1f1f1;
    font-weight: bold;
    background: #424242;
    padding: 5px 5px 5px 5px;
    border-radius: 4px;
    margin: -0.5rem 0 1rem 0;
    display: block;
    width: fit-content;
    padding-right: 25px;
}
 
.infoblock::before {
    content: "ⓘ "
}
 
/**
 * 单页迭代 
 */
 
.offset-page:not(:target), .offset-page:target ~ div#u-default-page { display: none }
.offset-page:target { display: block }
```

rating: +27[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

[Dragon](javascript:;)

---

# LEVEL 312

---

Author:

Critics:  
  
  
  
  
Natheniel on Discord  
*MisterNemu* does not match any existing user name

Cleared by .

Thanks to all of these great people.

LEVEL  
**312**

SURVIVAL DIFFICULTY  
**CLASS ​0**

**Exit: 0/5**  
Guaranteed Exit

**Environment: 1/5**  
Low Environmental Risk

**Entities: 0/5**  
No Hostile Entities

---

# Description

---

![a lab desk with flasks](https://backrooms-wiki.wdfiles.com/local--files/level-312/312-changed.jpg)

A laboratory equipment rack in Level 312, on which cleaned conical flasks and measuring cylinders are arranged in an orderly manner.

**Level 312** is a small biosafety laboratory, with an area of approximately 30m2. There is a large amount of internal equipment in the laboratory, including multiple fume hoods, experimental benches, and a complete set of molecular biology analysis instruments. The entire laboratory still seems new, but most of the experimental equipment shows signs of prior use. Notably, there is a banner across from the main entrance. Although the handwriting has become mottled, the words "Humanity Will Surely Win" can still be recognized.

No entities were found throughout **Level 312**, but the bodies of two humanoid creatures were discovered in front of a bench. When approaching them, one can smell a strong odor of expired disinfectant mixed with carrion. The bodies were wearing standard M.E.G. uniforms, and identification on their chests indicated that they belonged to the '47th Research Group'. But after information retrieval in the database, it was found that this group was disbanded by Team "Overseers" as early as 2030, over five decades prior to the discovery. No information was found regarding its members and research projects, and no detailed explanation of the reasons for its dissolution was left in the database. Currently, the only result obtained from searching for '47th Research Group' in the database is the following command from Team "Overseers":

To everyone at the 47th Research Group:

  

Let's accept the evolution; we have no other choice.

There's no need to try to resist them any longer; they represent a new possibility for humanity.

**They will not remember us.**

**That is the last mercy we can give them.**

  

*- I'm sorry. I'm so tired. Signed, Overseer Command, 2030.*

Despite the highly decomposed bodies, medical experts were still able to restore the appearance of the creature. The results indicate that although these organisms are very similar to humans, there are still significant differences between the two:

- Compared to benchmark humans[1](javascript:;), this organism has a prominent and well-defined ear canal, with significant development of the earlobe. And their sclera appears milky white instead of the typical blood red color.
- The measured height is 1.78-1.82 meters, significantly lower than the current average height of benchmark humans[2](javascript:;).
- Severe degeneration of the phalanges, limited range of motion of the metatarsophalangeal joints, and loss of grasping function. The arch structure of the foot is intact, but the plantar fascia shows atypical thickening.[3](javascript:;)
- These humanoid organisms have only 46 chromosomes in their nuclei, instead of 47.

A document was recovered from the pockets of two bodies, which seemed to indicate that **Level 312** had been used to develop a specific cure for a certain retrovirus[4](javascript:;). According to this document, the first symptom that occurs after being infected with this virus is [anterograde amnesia](https://en.wikipedia.org/wiki/Anterograde_amnesia), followed by abnormal development[5](javascript:;) in certain parts of the body several weeks later. It is confusing that the genetic material of the retrovirus recorded in the document is actually a segment of the normal human chromosome 47[6](javascript:;). But no direct link to the bodies' transformation has been established.

In addition, a note was recovered from the table in front of the bodies. Its contents are shown below:

To the victorious monsters:

  

You are not human. We have lost. Humanity has lost.

**Farewell, humanity.**

---

# Entrances & Exits

---

## Entrances

- A locked door at Base Alpha leads to **Level 312**, and the key was found in a cabinet in the [Redacted] office. Surveillance investigations did not reveal that the key had been placed there intentionally.

## Exits

- Retrace your entry point.
- Due to the low ceiling height of **Level 312**, which is only about 2.2 meters, it is not recommended to stay in this level for a long time. Multiple personnel complained of spinal discomfort when leaving **Level 312**.

[+ Open Footnotes](javascript:;)

[- Close Footnotes](javascript:;)

Footnotes

[1](javascript:;). Refer to the "Backrooms Human Recognition Standards" published by the M.E.G., 2066.

[2](javascript:;). About 2.8 meters, nearly a meter taller than the two bodies in this level.

[3](javascript:;). This means that these humanoid organisms do not have the ability to grasp things with their feet. Feet should be simply walking tools for them, not used for using tools. Their climbing ability should also be extremely poor by current human standards.

[4](javascript:;). Retroviruses are a type of virus that uses single-stranded RNA as its genetic material, but their replication must be completed through a DNA intermediate and integrated into the host cell's genome. This integration behavior is considered by some to be a key factor in inducing mutations and driving evolution.

[5](javascript:;). The abnormal development that infected individuals may experience as described in the document includes: the sclera changing from milky white to blood red, ear cartilage hyperplasia leading to changes in ear shape, abnormal increase in foot flexor muscle tone, and the appearance of the grasping reflex.

[6](javascript:;). The origin of this special unpaired chromosome is currently being studied, and it is known to contain an important DNA that differs from other genetic material origins, affecting the expression of many traits. Comparative genomic analysis suggests over 60% of its sequence lacks homology with any known primate DNA. Instead, it shares high sequence similarity with the genetic core of certain retroviruses. It is worth noting that some of the known close relatives of this retroviral family exhibit the ability to regulate host hippocampal synapses.

---

« [Level 311](level-311.md) | Level 312 | [Level 313](level-313.md) »

  

[‡ Licensing / Citation](javascript:;)

[‡ Hide Licensing / Citation](javascript:;)

Cite this page as:

> "[Level 312 - "Farewell, Humanity"](level-312.md)" by I\_am\_a\_dragon, from the [Backrooms Wiki](index.md). Source: [https://backrooms-wiki.wikidot.com/level-312](level-312.md). Licensed under [CC-BY-SA-3.0](https://creativecommons.org/licenses/by-sa/3.0/).

- - \_

  [+ Embed citation as HTML](javascript:;)[- Embed citation as HTML](javascript:;)

  "<a href="https://backrooms-wiki.wikidot.com/level-312">Level 312 - "Farewell, Humanity"</a>" by I\_am\_a\_dragon, from the <a href="http://backrooms-wiki.wikidot.com/">Backrooms Wiki</a>. Source: <a href="https://backrooms-wiki.wikidot.com/level-312">https://backrooms-wiki.wikidot.com/level-312</a>. Licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/">CC-BY-SA-3.0</a>.

---

> **Filename:** Laboratory  
> **Author:** George Hodan  
> **License:** [CC0 Public Domain](https://creativecommons.org/publicdomain/zero/1.0/)  
> **Link:** <https://www.publicdomainpictures.net/pictures/60000/velka/laboratory-13791456161Q4.jpg>

For more information about on-wiki content, visit the [Licensing Master List](licensing-master-list.md).

---

Source: [https://backrooms-wiki.wikidot.com/level-312](https://backrooms-wiki.wikidot.com/level-312)
