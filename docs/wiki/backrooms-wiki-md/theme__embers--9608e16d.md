---
title: "Embers"
source: "https://backrooms-wiki.wikidot.com/theme:embers"
retrieved_at: "2026-08-23T23:41:23+00:00"
license: CC-BY-SA-3.0
---

# Embers

rating: +38[+](javascript:; "I like it")[–](javascript:; "I don't like it")[x](javascript:; "Cancel my vote")

This theme was made by !

To use this theme, type the following in your page!

[[include :backrooms-wiki:theme:embers]]

If you want the particles to not follow you down the page and stay where they are, type the following in your page!

[[module css]]  
:root {  
—anim-position: absolute;  
}  
[[/module]]

---

No I don't want to

---

be divided!!!

[+ Titles](javascript:;)

[- Titles](javascript:;)

# Gargantuan Guy

## Large Lad

### Big Boy

#### Medium Man

##### Small Son

###### oooo tiny widdle babyyyy

---

- [*Tab x1*](javascript:;)
- [*Tab x2*](javascript:;)
- [*Tab x3*](javascript:;)
- [*Tab x4 (help me i am going insane. help. release me from my prison. break my cage. please.)*](javascript:;)
- [*Tab x5*](javascript:;)
- [*Tab x6*](javascript:;)
- [*Tab x7*](javascript:;)
- [*Tab x8*](javascript:;)

Tabs

are

really cool ways of storing text! This one is just

way

way

way

way

too long!

break me from my chains

WOAH!!! A box INSIDE a TAB?????

Dark blocks are cool too!

> Woah!
>
> > this
> >
> > > is
> > >
> > > > cool!

> Help.  
> Me.

Ultra virgin lightmode user.

Gigachad darkmode user.

---

> Ogres are like
>
> ---
>
> onions
>
> > they
> >
> > > have
> > >
> > > > layers!

---

  

| Uno | Dos |
| --- | --- |
| Tres | Quatro |
| Five. | |

---

I'm Mr. Frog.

---

This is my show. I eat the bug.

---

I ate the bug. This is the end.

---

I love you.

  
  
Woah  
**this**  
*text*  
is  
super  
cool!

---

[+ Theme Code](javascript:;)

[- Close](javascript:;)

```
@import url(https://backrooms-wiki.wdfiles.com/local--code/component%3Apatch/1);
 
@import css('https://fontlibrary.org//face/fira-sans-condensed');
@import css('https://fontlibrary.org//face/rursus-compact-mono');
@import css('https://fontlibrary.org//face/brush-lettering-one');
 
@media screen and (prefers-reduced-motion: no-preference) {
    #page-title, #breadcrumbs, #page-content > * {
      animation-name: fadeIn;
      animation-duration: 1s;
      animation-iteration-count: 1;
      animation-timing-function: ease-out;
      animation-fill-mode: backwards;
    }
  }
  #page-title { animation-delay: 0s; }
 
  @keyframes fadeIn {
    from {
      opacity: 0;
      transform: translate(0,30px);
    }
    to {
      opacity: 1;
      transform: translate(0,0);
    }
  }
#page-content > :nth-child(1) { animation-delay: calc(1 * var(--fade-in-delay)); }
#page-content > :nth-child(2) { animation-delay: calc(2 * var(--fade-in-delay)); }
#page-content > :nth-child(3) { animation-delay: calc(3 * var(--fade-in-delay)); }
#page-content > :nth-child(4) { animation-delay: calc(4 * var(--fade-in-delay)); }
#page-content > :nth-child(5) { animation-delay: calc(5 * var(--fade-in-delay)); }
#page-content > :nth-child(6) { animation-delay: calc(6 * var(--fade-in-delay)); }
#page-content > :nth-child(7) { animation-delay: calc(7 * var(--fade-in-delay)); }
#page-content > :nth-child(8) { animation-delay: calc(8 * var(--fade-in-delay)); }
#page-content > :nth-child(9) { animation-delay: calc(9 * var(--fade-in-delay)); }
#page-content > :nth-child(10) { animation-delay: calc(10 * var(--fade-in-delay)); }
#page-content > :nth-child(11) { animation-delay: calc(11 * var(--fade-in-delay)); }
#page-content > :nth-child(12) { animation-delay: calc(12 * var(--fade-in-delay)); }
#page-content > :nth-child(13) { animation-delay: calc(13 * var(--fade-in-delay)); }
#page-content > :nth-child(14) { animation-delay: calc(14 * var(--fade-in-delay)); }
#page-content > :nth-child(15) { animation-delay: calc(15 * var(--fade-in-delay)); }
#page-content > :nth-child(n+15) { animation-delay: calc(16 * var(--fade-in-delay)); }
:root {
   --fade-in-delay: 0.1s;
 
   --theme-base: "black-highlighter";
   --theme-id: "ember";
   --theme-name: "Dying Embers";
 
   --logo-image: url("http://backrooms-wiki.wikidot.com/local--files/component:theme/logo.svg");
   --header-title: "The Infernal Keepers";
   --header-subtitle: "Through the fire and flames, we shall serve on.";
 
   --body-font: 'Fira Sans Condensed', monospace;
   --header-font: 'Rursus Compact Mono', monospace;
   --title-font: 'Rursus Compact Mono', monospace;
   --mono-font: 'Brush Lettering One', serif;
 
   --white-monochrome: 89, 42, 42;
   --pale-gray-monochrome: 46, 22, 22;
   --light-gray-monochrome: 150, 84, 42;
   --gray-monochrome: 184, 88, 4;
   --dark-gray-monochrome: 150, 58, 15;
   --black-monochrome: 230, 154, 108;
   --bright-accent: 211, 135, 67;
   --medium-accent: 163, 75, 34;
   --dark-accent: 184, 88, 4;
   --pale-accent: 184, 88, 4;
   --header-gradient: 235, 173, 51;
   --light-block-text: 178, 190, 181;
   --visited-link-color: 184, 88, 4;
   --rating-module-button-plus-color: 184, 88, 4;
   --rating-module-button-negative-color: 184, 88, 4;
   --rating-module-button-cancel-color: 184, 88, 4;
   --link-color: 201, 35, 20;
   --hover-link-color: 201, 35, 20;
   --anim-position: fixed;
 
   --swatch-topmenu-border-color: var(--medium-accent);
 
   --link-color: 230, 23, 68;
   --hover-link-color: 230, 23, 68;
 
   --background-gradient-distance: 0rem;
 
   --gradient-header: linear-gradient(to top,
      rgba(var(--header-gradient)) 0%,
      rgba(var(--medium-accent), 0.90) 100%
   );
   --diagonal-stripes: linear-gradient(transparent 0);
}
 
#header h1 a:hover:before {
     text-shadow: unset;
}
 
#skrollr-body {
   background-image:
    radial-gradient(circle, rgb(var(--black-monochrome)) 0.5%, transparent 0);
   background-repeat: repeat;
   background-size: 0.25em 0.25em;
   width: 100%;
   height: 7.5rem;
}
 
#side-bar .side-block div a img {
   filter: grayscale(100%);
}
 
#login-status {
   color: rgb(var(--swatch-text-light));
}
 
#search-top-box input.empty {
   color: rgb(var(--swatch-text-light));
}
 
#container {
   background-image: radial-gradient(circle, rgb(var(--medium-accent), 0.05) 50%, transparent 0);
   background-size: 0.25em 0.25em;
   background-repeat: repeat;
   background-attachment: fixed;
}
 
div#page-options-bottom-2 > a, div#page-options-bottom > a {
   border-radius: 0em;
   -moz-border-radius: 0em;
   border: none;
}
 
div#page-options-bottom-2 > a:active, div#page-options-bottom-2 > a:hover, div#page-options-bottom > a:active, div#page-options-bottom > a:hover {
   border: none;
}
 
#header, #top-bar {
   background-attachment: scroll;
}
 
#header {
   background-image: none;
}
 
#header::before {
   content: "";
   position: absolute;
   height: 100%;
   width: 100%;
   left: 0;
   top: 0;
   background-image: var(--logo-image);
   background-size: auto 16rem;
   background-position: center;
   background-repeat: no-repeat;
   opacity: 0.4;
}
 
#header h1, #header h1 a {
   position: absolute;
   top: 1rem;
   margin: 0;
   width: 100%;
   display: flex;
   justify-content: center;
   z-index: 0;
}
 
#header h2, #header h2 span, #header h2 span::before {
   position: absolute;
   top: 2rem;
   margin: 0;
   width: 100%;
   display: flex;
   justify-content: center;
}
 
#header h1 a::before, #header h2 span::before {
   text-shadow: 0rem 0rem 0rem #592a2a;
}
 
a.newpage {
   background: transparent;
   text-decoration: none
}
 
a.newpage {
   color: rgb(var(--newpage-color))
}
 
blockquote {
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
 
.dark-styled-quote {
   background-color:rgb(var(--pale-gray-monochrome));
   border-left: 0.5rem solid rgba(var(--gray-monochrome));
   color:rgb(var(--black-monochrome));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
 
.styled-quote {
   background-color:rgb(var(--gray-monochrome));
   border-left: 0.5rem solid rgba(var(--pale-gray-monochrome));
   color:rgb(var(--light-block-text));
   padding: 0.1rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0.05rem 0.1rem 0.3rem rgba(0,0,0,.25);
}
 
.lightblock {
   background-color:rgb(var(--gray-monochrome));
   color:rgb(var(--light-block-text));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
}
 
.darkblock {
   background-color:rgb(var(--pale-gray-monochrome));
   color:rgb(var(--black-monochrome));
   padding: 0.01rem 1rem;
   margin: 0.5rem 0 0.5rem 0.25rem;
   box-shadow: 0 0.2rem 0.3rem rgba(0,0,0,.25);
}
 
.lightblock a, .styled-quote a {
   color: rgb(128, 41, 41);
}
 
hr {
   background-color: rgb(var(--swatch-menubg-medium-dark-color));
}
 
@media (prefers-reduced-motion: no-preference) {
  #container-wrap-wrap:before,
  #container-wrap-wrap:after {
    animation: animStar 25s linear infinite;
    background: transparent;
    box-shadow: 805px 413px #FFA500, 724px 1326px #FFA500, 1175px 606px #FFA500,
      661px 1274px #FFA500, 1206px 1967px #FFA500, 1278px 1086px #FFA500,
      551px 1817px #FFA500, 1861px 1653px #FFA500, 5px 1525px #FFA500, 1414px 255px #FFA500,
      1892px 739px #FFA500, 894px 1633px #FFA500, 1615px 521px #FFA500, 1374px 651px #FFA500,
      250px 1473px #FFA500, 1984px 1096px #FFA500, 202px 5px #FFA500, 1694px 1095px #FFA500,
      1656px 433px #FFA500, 1274px 413px #FFA500, 1568px 1581px #FFA500,
      184px 1296px #FFA500, 1820px 532px #FFA500, 1791px 956px #FFA500,
      1522px 1638px #FFA500, 1056px 1907px #FFA500, 745px 493px #FFA500,
      576px 1246px #FFA500, 849px 1625px #FFA500, 1484px 91px #FFA500, 1818px 1294px #FFA500,
      1073px 1048px #FFA500, 24px 818px #FFA500, 1605px 1164px #FFA500, 903px 1546px #FFA500,
      7px 1147px #FFA500, 48px 485px #FFA500, 130px 1026px #FFA500, 306px 735px #FFA500,
      1280px 1057px #FFA500, 1944px 481px #FFA500, 142px 238px #FFA500, 1195px 732px #FFA500,
      535px 1985px #FFA500, 851px 962px #FFA500, 1406px 1056px #FFA500,
      1869px 1171px #FFA500, 968px 1272px #FFA500, 278px 461px #FFA500,
      1655px 1910px #FFA500, 1650px 940px #FFA500, 186px 1554px #FFA500,
      1401px 1811px #FFA500, 805px 450px #FFA500, 749px 831px #FFA500, 270px 1913px #FFA500,
      1254px 1571px #FFA500, 1655px 733px #FFA500, 1159px 340px #FFA500, 40px 941px #FFA500,
      911px 846px #FFA500, 568px 347px #FFA500, 849px 1892px #FFA500, 768px 1503px #FFA500,
      1501px 40px #FFA500, 480px 384px #FFA500, 1930px 1940px #FFA500, 1952px 201px #FFA500,
      1665px 494px #FFA500, 1264px 1252px #FFA500, 1046px 835px #FFA500,
      320px 1600px #FFA500, 1802px 1465px #FFA500, 1659px 1176px #FFA500,
      647px 1928px #FFA500, 1969px 403px #FFA500, 246px 1490px #FFA500,
      1823px 1326px #FFA500, 120px 1420px #FFA500, 1974px 396px #FFA500, 307px 231px #FFA500,
      338px 43px #FFA500, 1129px 343px #FFA500, 1261px 1927px #FFA500, 1830px 728px #FFA500,
      249px 701px #FFA500, 710px 714px #FFA500, 1453px 1998px #FFA500, 889px 879px #FFA500,
      218px 275px #FFA500, 128px 314px #FFA500, 1906px 1191px #FFA500, 1686px 791px #FFA500,
      903px 1248px #FFA500, 1157px 1869px #FFA500, 732px 94px #FFA500, 150px 1387px #FFA500,
      428px 1485px #FFA500, 1605px 192px #FFA500, 963px 67px #FFA500, 545px 495px #FFA500,
      1458px 1548px #FFA500, 1478px 803px #FFA500, 1319px 1843px #FFA500,
      367px 1029px #FFA500, 1976px 716px #FFA500, 1099px 1624px #FFA500,
      1308px 1228px #FFA500, 459px 1640px #FFA500, 652px 1290px #FFA500,
      1660px 772px #FFA500, 658px 1342px #FFA500, 534px 180px #FFA500, 196px 238px #FFA500,
      1052px 1552px #FFA500, 1192px 49px #FFA500, 546px 1743px #FFA500, 677px 420px #FFA500,
      495px 1695px #FFA500, 692px 1161px #FFA500, 1306px 1817px #FFA500,
      1323px 666px #FFA500, 1904px 1838px #FFA500, 1117px 275px #FFA500, 644px 520px #FFA500,
      1138px 1681px #FFA500, 1326px 74px #FFA500, 907px 1946px #FFA500, 666px 1159px #FFA500,
      822px 894px #FFA500, 1505px 1208px #FFA500, 1809px 987px #FFA500, 954px 373px #FFA500,
      1328px 391px #FFA500, 535px 350px #FFA500, 1047px 784px #FFA500, 1252px 1380px #FFA500,
      618px 270px #FFA500, 531px 1723px #FFA500, 1588px 845px #FFA500, 1170px 1020px #FFA500,
      973px 1587px #FFA500, 593px 692px #FFA500, 283px 1482px #FFA500, 959px 1392px #FFA500,
      39px 1335px #FFA500, 1457px 815px #FFA500, 21px 1727px #FFA500, 1998px 1064px #FFA500,
      1380px 1216px #FFA500, 827px 1538px #FFA500, 108px 1390px #FFA500,
      1612px 1389px #FFA500, 1516px 1392px #FFA500, 1584px 1044px #FFA500,
      1261px 1859px #FFA500, 1841px 646px #FFA500, 1652px 988px #FFA500,
      1848px 1407px #FFA500, 661px 344px #FFA500, 1805px 1758px #FFA500,
      1784px 247px #FFA500, 780px 123px #FFA500, 117px 332px #FFA500, 430px 354px #FFA500,
      522px 826px #FFA500, 1311px 1343px #FFA500, 1590px 1863px #FFA500,
      1155px 1803px #FFA500, 368px 168px #FFA500, 1965px 140px #FFA500, 210px 830px #FFA500,
      1954px 772px #FFA500, 1316px 1990px #FFA500, 1783px 692px #FFA500,
      669px 1323px #FFA500, 1188px 949px #FFA500, 833px 1030px #FFA500, 1467px 988px #FFA500,
      633px 1926px #FFA500, 1490px 320px #FFA500, 1619px 1516px #FFA500, 1370px 85px #FFA500,
      678px 1409px #FFA500, 152px 650px #FFA500, 321px 1771px #FFA500, 1443px 1821px #FFA500,
      1440px 391px #FFA500, 1501px 1296px #FFA500, 979px 133px #FFA500, 1911px 598px #FFA500,
      1719px 97px #FFA500, 893px 735px #FFA500, 310px 473px #FFA500, 1595px 1047px #FFA500,
      437px 293px #FFA500, 145px 343px #FFA500, 1246px 416px #FFA500, 1011px 1235px #FFA500,
      1462px 987px #FFA500, 167px 1525px #FFA500, 1688px 1415px #FFA500,
      574px 1801px #FFA500, 347px 1741px #FFA500, 880px 1109px #FFA500, 93px 1692px #FFA500,
      94px 1987px #FFA500, 1695px 951px #FFA500, 153px 601px #FFA500, 1013px 969px #FFA500,
      356px 434px #FFA500, 1228px 1942px #FFA500, 1083px 1445px #FFA500,
      1317px 438px #FFA500, 439px 1242px #FFA500, 1031px 356px #FFA500, 615px 666px #FFA500,
      1019px 1826px #FFA500, 1526px 1025px #FFA500, 538px 210px #FFA500, 78px 1954px #FFA500,
      1344px 965px #FFA500, 1280px 143px #FFA500, 211px 430px #FFA500, 282px 1279px #FFA500,
      1355px 1639px #FFA500, 1142px 1512px #FFA500, 141px 822px #FFA500, 60px 1923px #FFA500,
      1322px 1117px #FFA500, 523px 1165px #FFA500, 1289px 1438px #FFA500,
      974px 1937px #FFA500, 1915px 1955px #FFA500, 1793px 308px #FFA500,
      1712px 1273px #FFA500, 201px 1179px #FFA500, 1186px 12px #FFA500, 1635px 877px #FFA500,
      361px 256px #FFA500, 795px 1283px #FFA500, 305px 1072px #FFA500, 1099px 1995px #FFA500,
      1643px 906px #FFA500, 835px 1411px #FFA500, 142px 1950px #FFA500,
      1161px 1635px #FFA500, 5px 819px #FFA500, 977px 1049px #FFA500, 86px 417px #FFA500,
      731px 1015px #FFA500, 1746px 1059px #FFA500, 1904px 484px #FFA500,
      1367px 434px #FFA500, 982px 1646px #FFA500, 685px 1582px #FFA500, 1754px 496px #FFA500,
      1706px 292px #FFA500, 1962px 1932px #FFA500, 987px 806px #FFA500, 76px 1275px #FFA500,
      746px 430px #FFA500, 1337px 122px #FFA500, 653px 942px #FFA500, 487px 1433px #FFA500,
      1270px 1287px #FFA500, 1418px 574px #FFA500, 1640px 1046px #FFA500,
      950px 1608px #FFA500, 1660px 432px #FFA500, 1134px 153px #FFA500,
      1567px 1087px #FFA500, 1582px 1957px #FFA500, 474px 238px #FFA500,
      1514px 525px #FFA500, 1421px 1984px #FFA500, 16px 1994px #FFA500,
      1935px 1508px #FFA500, 438px 775px #FFA500, 1612px 630px #FFA500, 203px 879px #FFA500,
      496px 1057px #FFA500, 1607px 1518px #FFA500, 1588px 574px #FFA500,
      1451px 1062px #FFA500, 1590px 1593px #FFA500, 592px 351px #FFA500, 361px 437px #FFA500,
      456px 1221px #FFA500, 411px 1628px #FFA500, 1103px 44px #FFA500, 1890px 749px #FFA500,
      1368px 1990px #FFA500, 872px 18px #FFA500, 1528px 907px #FFA500, 1199px 235px #FFA500,
      395px 570px #FFA500, 1120px 127px #FFA500, 125px 711px #FFA500, 1825px 1327px #FFA500,
      64px 1870px #FFA500, 838px 1810px #FFA500, 663px 1427px #FFA500, 1819px 736px #FFA500,
      566px 1851px #FFA500, 1080px 656px #FFA500, 1134px 1861px #FFA500, 568px 64px #FFA500,
      1530px 1096px #FFA500, 981px 1711px #FFA500, 1783px 999px #FFA500,
      135px 1975px #FFA500, 1772px 1553px #FFA500, 1967px 1442px #FFA500,
      542px 372px #FFA500, 1684px 1445px #FFA500, 1041px 1106px #FFA500, 60px 1460px #FFA500,
      1083px 1677px #FFA500, 143px 204px #FFA500, 912px 350px #FFA500, 1000px 1586px #FFA500,
      1068px 908px #FFA500, 241px 794px #FFA500, 426px 409px #FFA500, 961px 1141px #FFA500,
      1551px 327px #FFA500, 1575px 1532px #FFA500, 929px 1507px #FFA500, 242px 364px #FFA500,
      1271px 731px #FFA500, 1660px 468px #FFA500, 1494px 589px #FFA500, 988px 1371px #FFA500,
      431px 539px #FFA500, 1974px 239px #FFA500, 68px 645px #FFA500, 781px 1716px #FFA500,
      1238px 65px #FFA500, 26px 1158px #FFA500, 525px 899px #FFA500, 1494px 1043px #FFA500,
      176px 1932px #FFA500, 372px 1933px #FFA500, 196px 883px #FFA500, 615px 614px #FFA500,
      1298px 288px #FFA500, 1690px 1284px #FFA500, 414px 5px #FFA500, 1050px 453px #FFA500,
      271px 1805px #FFA500, 1024px 1996px #FFA500, 458px 1817px #FFA500,
      831px 1155px #FFA500, 229px 1406px #FFA500, 1140px 1918px #FFA500,
      390px 1353px #FFA500, 1509px 1025px #FFA500, 893px 574px #FFA500, 461px 499px #FFA500,
      568px 1725px #FFA500, 791px 1565px #FFA500, 1494px 365px #FFA500,
      1423px 1289px #FFA500, 1239px 1356px #FFA500, 1367px 776px #FFA500,
      1596px 965px #FFA500, 1162px 798px #FFA500, 452px 1158px #FFA500, 191px 1111px #FFA500,
      1194px 1708px #FFA500, 694px 804px #FFA500, 999px 1711px #FFA500, 114px 1175px #FFA500,
      1950px 809px #FFA500, 1991px 889px #FFA500, 1948px 1999px #FFA500,
      1367px 1389px #FFA500, 1809px 1878px #FFA500, 1613px 607px #FFA500,
      1143px 842px #FFA500, 1746px 324px #FFA500, 102px 355px #FFA500, 852px 1729px #FFA500,
      633px 755px #FFA500, 723px 1465px #FFA500, 1081px 301px #FFA500, 1231px 699px #FFA500,
      1751px 616px #FFA500, 1387px 999px #FFA500, 500px 940px #FFA500, 545px 1387px #FFA500,
      1777px 223px #FFA500, 1058px 1381px #FFA500, 1014px 867px #FFA500, 403px 712px #FFA500,
      673px 958px #FFA500, 89px 652px #FFA500, 234px 1894px #FFA500, 603px 1674px #FFA500,
      111px 1930px #FFA500, 28px 1161px #FFA500, 1052px 962px #FFA500, 134px 1007px #FFA500,
      290px 1721px #FFA500, 1713px 439px #FFA500, 443px 1291px #FFA500, 1443px 528px #FFA500,
      465px 1761px #FFA500, 491px 82px #FFA500, 592px 938px #FFA500, 1409px 1274px #FFA500,
      633px 1201px #FFA500, 740px 33px #FFA500, 1214px 777px #FFA500, 1589px 1106px #FFA500,
      748px 371px #FFA500, 1422px 1726px #FFA500, 1607px 225px #FFA500, 1520px 280px #FFA500,
      873px 547px #FFA500, 765px 1174px #FFA500, 165px 97px #FFA500, 126px 422px #FFA500,
      301px 1356px #FFA500, 702px 1837px #FFA500, 866px 256px #FFA500, 1974px 849px #FFA500,
      805px 852px #FFA500, 1659px 1966px #FFA500, 1529px 265px #FFA500, 1007px 956px #FFA500,
      1245px 359px #FFA500, 1505px 752px #FFA500, 902px 201px #FFA500, 219px 1594px #FFA500,
      1134px 816px #FFA500, 1269px 1624px #FFA500, 33px 1155px #FFA500, 1374px 768px #FFA500,
      567px 1240px #FFA500, 1774px 187px #FFA500, 1445px 254px #FFA500, 1544px 399px #FFA500,
      228px 1003px #FFA500, 1132px 632px #FFA500, 1242px 10px #FFA500, 894px 1826px #FFA500,
      1325px 706px #FFA500, 1260px 471px #FFA500, 1769px 1115px #FFA500, 370px 482px #FFA500,
      774px 889px #FFA500, 1688px 777px #FFA500, 124px 1812px #FFA500, 364px 1573px #FFA500,
      1257px 722px #FFA500, 1219px 1214px #FFA500, 866px 1202px #FFA500, 683px 976px #FFA500,
      245px 562px #FFA500, 1958px 1456px #FFA500, 940px 331px #FFA500, 604px 1006px #FFA500,
      1871px 56px #FFA500, 1671px 1668px #FFA500, 114px 1835px #FFA500,
      1284px 1144px #FFA500, 1183px 223px #FFA500, 290px 969px #FFA500, 55px 92px #FFA500,
      3px 1067px #FFA500, 653px 599px #FFA500, 341px 1106px #FFA500, 351px 617px #FFA500,
      1245px 210px #FFA500, 1007px 1354px #FFA500, 1785px 1298px #FFA500,
      624px 1677px #FFA500, 1382px 1089px #FFA500, 204px 244px #FFA500,
      1572px 1534px #FFA500, 211px 1723px #FFA500, 1873px 558px #FFA500,
      1870px 415px #FFA500, 1267px 772px #FFA500, 2000px 1057px #FFA500,
      608px 1723px #FFA500, 722px 1493px #FFA500, 856px 207px #FFA500, 21px 434px #FFA500,
      451px 1696px #FFA500, 1712px 1156px #FFA500, 1316px 740px #FFA500, 606px 772px #FFA500,
      176px 1359px #FFA500, 487px 1748px #FFA500, 1240px 118px #FFA500, 231px 876px #FFA500,
      1149px 468px #FFA500, 591px 315px #FFA500, 739px 843px #FFA500, 1932px 464px #FFA500,
      61px 1995px #FFA500, 1884px 756px #FFA500, 1714px 547px #FFA500, 1764px 1477px #FFA500,
      1524px 258px #FFA500, 831px 1423px #FFA500, 858px 1524px #FFA500, 1759px 475px #FFA500,
      1140px 1721px #FFA500, 474px 1016px #FFA500, 1312px 1967px #FFA500,
      503px 1878px #FFA500, 53px 423px #FFA500, 281px 1378px #FFA500, 817px 152px #FFA500,
      1724px 1605px #FFA500, 356px 1030px #FFA500, 372px 1122px #FFA500,
      1477px 125px #FFA500, 195px 1014px #FFA500, 1155px 1432px #FFA500,
      633px 1810px #FFA500, 444px 477px #FFA500, 1311px 1863px #FFA500, 1081px 865px #FFA500,
      185px 1222px #FFA500, 1290px 1438px #FFA500, 630px 1709px #FFA500, 372px 117px #FFA500,
      1987px 1797px #FFA500, 801px 109px #FFA500, 1230px 1903px #FFA500,
      1502px 1630px #FFA500, 680px 1190px #FFA500, 1756px 908px #FFA500,
      930px 1899px #FFA500, 1505px 1734px #FFA500, 653px 1026px #FFA500,
      1486px 1566px #FFA500, 46px 109px #FFA500, 1526px 1040px #FFA500, 840px 519px #FFA500,
      1912px 1341px #FFA500, 1382px 471px #FFA500, 638px 1021px #FFA500, 38px 347px #FFA500,
      1290px 781px #FFA500, 1485px 847px #FFA500, 1496px 1245px #FFA500,
      1267px 1307px #FFA500, 449px 741px #FFA500, 636px 1550px #FFA500, 1524px 884px #FFA500,
      137px 604px #FFA500, 1864px 180px #FFA500, 1373px 323px #FFA500, 307px 985px #FFA500,
      1603px 1012px #FFA500, 642px 1490px #FFA500, 1889px 1992px #FFA500,
      1405px 762px #FFA500, 7px 582px #FFA500, 1586px 236px #FFA500, 538px 501px #FFA500,
      322px 917px #FFA500, 176px 430px #FFA500, 350px 785px #FFA500, 562px 1838px #FFA500,
      699px 1647px #FFA500, 67px 1144px #FFA500, 1656px 523px #FFA500, 64px 1469px #FFA500,
      770px 268px #FFA500, 1752px 501px #FFA500, 641px 179px #FFA500, 685px 220px #FFA500,
      1214px 380px #FFA500, 1579px 1438px #FFA500, 310px 1300px #FFA500,
      514px 1492px #FFA500, 625px 557px #FFA500, 634px 1043px #FFA500, 707px 1262px #FFA500,
      979px 304px #FFA500, 283px 29px #FFA500, 1541px 1335px #FFA500, 1255px 705px #FFA500,
      1118px 325px #FFA500, 1121px 723px #FFA500, 1510px 465px #FFA500,
      1609px 1975px #FFA500, 584px 1678px #FFA500, 1617px 1270px #FFA500,
      372px 1033px #FFA500, 976px 1024px #FFA500, 362px 715px #FFA500, 146px 1240px #FFA500,
      1458px 1770px #FFA500, 748px 1118px #FFA500, 139px 760px #FFA500, 1846px 839px #FFA500,
      1763px 716px #FFA500, 274px 1841px #FFA500, 1085px 74px #FFA500, 415px 1714px #FFA500,
      692px 374px #FFA500, 1005px 1084px #FFA500, 312px 562px #FFA500, 1476px 1325px #FFA500,
      1335px 458px #FFA500, 755px 584px #FFA500, 329px 1882px #FFA500, 73px 1102px #FFA500,
      1077px 272px #FFA500, 1790px 555px #FFA500, 936px 1429px #FFA500,
      1280px 1939px #FFA500, 243px 1187px #FFA500, 1323px 1294px #FFA500,
      1921px 281px #FFA500, 1163px 1764px #FFA500, 598px 100px #FFA500, 802px 745px #FFA500,
      1814px 1371px #FFA500, 1532px 1805px #FFA500, 1391px 1704px #FFA500,
      945px 321px #FFA500, 361px 1787px #FFA500, 985px 1903px #FFA500, 652px 1376px #FFA500,
      425px 1538px #FFA500, 1936px 1043px #FFA500, 158px 325px #FFA500, 89px 1559px #FFA500,
      1477px 1535px #FFA500, 595px 727px #FFA500, 956px 683px #FFA500, 1765px 1840px #FFA500,
      696px 1546px #FFA500, 1165px 112px #FFA500, 1777px 796px #FFA500, 894px 1331px #FFA500,
      531px 1025px #FFA500, 296px 1867px #FFA500, 1265px 693px #FFA500, 29px 1036px #FFA500,
      1204px 364px #FFA500, 605px 1px #FFA500, 687px 1940px #FFA500, 371px 68px #FFA500,
      602px 796px #FFA500, 1340px 470px #FFA500, 1460px 1570px #FFA500, 247px 1579px #FFA500,
      1118px 829px #FFA500, 1698px 386px #FFA500, 684px 1245px #FFA500, 463px 1516px #FFA500,
      1266px 1461px #FFA500, 898px 1751px #FFA500, 6px 1281px #FFA500, 1957px 166px #FFA500,
      999px 426px #FFA500, 1821px 245px #FFA500, 830px 1367px #FFA500, 1237px 1106px #FFA500,
      1412px 645px #FFA500, 7px 93px #FFA500, 550px 1194px #FFA500, 1950px 1403px #FFA500,
      639px 1787px #FFA500, 1293px 1807px #FFA500, 462px 1713px #FFA500,
      378px 1189px #FFA500, 1177px 1376px #FFA500, 308px 1471px #FFA500, 976px 221px #FFA500,
      1766px 200px #FFA500, 1577px 356px #FFA500, 1542px 890px #FFA500, 567px 1998px #FFA500,
      96px 1389px #FFA500, 1334px 698px #FFA500, 1752px 1068px #FFA500, 269px 257px #FFA500,
      950px 1864px #FFA500, 1640px 817px #FFA500, 1340px 1064px #FFA500,
      1507px 389px #FFA500, 30px 1855px #FFA500, 766px 1645px #FFA500, 1280px 1975px #FFA500,
      967px 1469px #FFA500, 1560px 1499px #FFA500, 52px 664px #FFA500, 1319px 995px #FFA500,
      483px 1952px #FFA500, 805px 2413px #FFA500, 724px 3326px #FFA500, 1175px 2606px #FFA500, 661px 3274px #FFA500, 1206px 3967px #FFA500, 1278px 3086px #FFA500, 551px 3817px #FFA500, 1861px 3653px #FFA500, 5px 3525px #FFA500, 1414px 2255px #FFA500, 1892px 2739px #FFA500, 894px 3633px #FFA500, 1615px 2521px #FFA500, 1374px 2651px #FFA500, 250px 3473px #FFA500, 1984px 3096px #FFA500, 202px 2005px #FFA500, 1694px 3095px #FFA500, 1656px 2433px #FFA500, 1274px 2413px #FFA500, 1568px 3581px #FFA500, 184px 3296px #FFA500, 1820px 2532px #FFA500, 1791px 2956px #FFA500, 1522px 3638px #FFA500, 1056px 3907px #FFA500, 745px 2493px #FFA500, 576px 3246px #FFA500, 849px 3625px #FFA500, 1484px 2091px #FFA500, 1818px 3294px #FFA500, 1073px 3048px #FFA500, 24px 2818px #FFA500, 1605px 3164px #FFA500, 903px 3546px #FFA500, 7px 3147px #FFA500, 48px 2485px #FFA500, 130px 3026px #FFA500, 306px 2735px #FFA500, 1280px 3057px #FFA500, 1944px 2481px #FFA500, 142px 2238px #FFA500, 1195px 2732px #FFA500, 535px 3985px #FFA500, 851px 2962px #FFA500, 1406px 3056px #FFA500, 1869px 3171px #FFA500, 968px 3272px #FFA500, 278px 2461px #FFA500, 1655px 3910px #FFA500, 1650px 2940px #FFA500, 186px 3554px #FFA500, 1401px 3811px #FFA500, 805px 2450px #FFA500, 749px 2831px #FFA500, 270px 3913px #FFA500, 1254px 3571px #FFA500, 1655px 2733px #FFA500, 1159px 2340px #FFA500, 40px 2941px #FFA500, 911px 2846px #FFA500, 568px 2347px #FFA500, 849px 3892px #FFA500, 768px 3503px #FFA500, 1501px 2040px #FFA500, 480px 2384px #FFA500, 1930px 3940px #FFA500, 1952px 2201px #FFA500, 1665px 2494px #FFA500, 1264px 3252px #FFA500, 1046px 2835px #FFA500, 320px 3600px #FFA500, 1802px 3465px #FFA500, 1659px 3176px #FFA500, 647px 3928px #FFA500, 1969px 2403px #FFA500, 246px 3490px #FFA500, 1823px 3326px #FFA500, 120px 3420px #FFA500, 1974px 2396px #FFA500, 307px 2231px #FFA500, 338px 2043px #FFA500, 1129px 2343px #FFA500, 1261px 3927px #FFA500, 1830px 2728px #FFA500, 249px 2701px #FFA500, 710px 2714px #FFA500, 1453px 3998px #FFA500, 889px 2879px #FFA500, 218px 2275px #FFA500, 128px 2314px #FFA500, 1906px 3191px #FFA500, 1686px 2791px #FFA500, 903px 3248px #FFA500, 1157px 3869px #FFA500, 732px 2094px #FFA500, 150px 3387px #FFA500, 428px 3485px #FFA500, 1605px 2192px #FFA500, 963px 2067px #FFA500, 545px 2495px #FFA500, 1458px 3548px #FFA500, 1478px 2803px #FFA500, 1319px 3843px #FFA500, 367px 3029px #FFA500, 1976px 2716px #FFA500, 1099px 3624px #FFA500, 1308px 3228px #FFA500, 459px 3640px #FFA500, 652px 3290px #FFA500, 1660px 2772px #FFA500, 658px 3342px #FFA500, 534px 2180px #FFA500, 196px 2238px #FFA500, 1052px 3552px #FFA500, 1192px 2049px #FFA500, 546px 3743px #FFA500, 677px 2420px #FFA500, 495px 3695px #FFA500, 692px 3161px #FFA500, 1306px 3817px #FFA500, 1323px 2666px #FFA500, 1904px 3838px #FFA500, 1117px 2275px #FFA500, 644px 2520px #FFA500, 1138px 3681px #FFA500, 1326px 2074px #FFA500, 907px 3946px #FFA500, 666px 3159px #FFA500, 822px 2894px #FFA500, 1505px 3208px #FFA500, 1809px 2987px #FFA500, 954px 2373px #FFA500, 1328px 2391px #FFA500, 535px 2350px #FFA500, 1047px 2784px #FFA500, 1252px 3380px #FFA500, 618px 2270px #FFA500, 531px 3723px #FFA500, 1588px 2845px #FFA500, 1170px 3020px #FFA500, 973px 3587px #FFA500, 593px 2692px #FFA500, 283px 3482px #FFA500, 959px 3392px #FFA500, 39px 3335px #FFA500, 1457px 2815px #FFA500, 21px 3727px #FFA500, 1998px 3064px #FFA500, 1380px 3216px #FFA500, 827px 3538px #FFA500, 108px 3390px #FFA500, 1612px 3389px #FFA500, 1516px 3392px #FFA500, 1584px 3044px #FFA500, 1261px 3859px #FFA500, 1841px 2646px #FFA500, 1652px 2988px #FFA500, 1848px 3407px #FFA500, 661px 2344px #FFA500, 1805px 3758px #FFA500, 1784px 2247px #FFA500, 780px 2123px #FFA500, 117px 2332px #FFA500, 430px 2354px #FFA500, 522px 2826px #FFA500, 1311px 3343px #FFA500, 1590px 3863px #FFA500, 1155px 3803px #FFA500, 368px 2168px #FFA500, 1965px 2140px #FFA500, 210px 2830px #FFA500, 1954px 2772px #FFA500, 1316px 3990px #FFA500, 1783px 2692px #FFA500, 669px 3323px #FFA500, 1188px 2949px #FFA500, 833px 3030px #FFA500, 1467px 2988px #FFA500, 633px 3926px #FFA500, 1490px 2320px #FFA500, 1619px 3516px #FFA500, 1370px 2085px #FFA500, 678px 3409px #FFA500, 152px 2650px #FFA500, 321px 3771px #FFA500, 1443px 3821px #FFA500, 1440px 2391px #FFA500, 1501px 3296px #FFA500, 979px 2133px #FFA500, 1911px 2598px #FFA500, 1719px 2097px #FFA500, 893px 2735px #FFA500, 310px 2473px #FFA500, 1595px 3047px #FFA500, 437px 2293px #FFA500, 145px 2343px #FFA500, 1246px 2416px #FFA500, 1011px 3235px #FFA500, 1462px 2987px #FFA500, 167px 3525px #FFA500, 1688px 3415px #FFA500, 574px 3801px #FFA500, 347px 3741px #FFA500, 880px 3109px #FFA500, 93px 3692px #FFA500, 94px 3987px #FFA500, 1695px 2951px #FFA500, 153px 2601px #FFA500, 1013px 2969px #FFA500, 356px 2434px #FFA500, 1228px 3942px #FFA500, 1083px 3445px #FFA500, 1317px 2438px #FFA500, 439px 3242px #FFA500, 1031px 2356px #FFA500, 615px 2666px #FFA500, 1019px 3826px #FFA500, 1526px 3025px #FFA500, 538px 2210px #FFA500, 78px 3954px #FFA500, 1344px 2965px #FFA500, 1280px 2143px #FFA500, 211px 2430px #FFA500, 282px 3279px #FFA500, 1355px 3639px #FFA500, 1142px 3512px #FFA500, 141px 2822px #FFA500, 60px 3923px #FFA500, 1322px 3117px #FFA500, 523px 3165px #FFA500, 1289px 3438px #FFA500, 974px 3937px #FFA500, 1915px 3955px #FFA500, 1793px 2308px #FFA500, 1712px 3273px #FFA500, 201px 3179px #FFA500, 1186px 2012px #FFA500, 1635px 2877px #FFA500, 361px 2256px #FFA500, 795px 3283px #FFA500, 305px 3072px #FFA500, 1099px 3995px #FFA500, 1643px 2906px #FFA500, 835px 3411px #FFA500, 142px 3950px #FFA500, 1161px 3635px #FFA500, 5px 2819px #FFA500, 977px 3049px #FFA500, 86px 2417px #FFA500, 731px 3015px #FFA500, 1746px 3059px #FFA500, 1904px 2484px #FFA500, 1367px 2434px #FFA500, 982px 3646px #FFA500, 685px 3582px #FFA500, 1754px 2496px #FFA500, 1706px 2292px #FFA500, 1962px 3932px #FFA500, 987px 2806px #FFA500, 76px 3275px #FFA500, 746px 2430px #FFA500, 1337px 2122px #FFA500, 653px 2942px #FFA500, 487px 3433px #FFA500, 1270px 3287px #FFA500, 1418px 2574px #FFA500, 1640px 3046px #FFA500, 950px 3608px #FFA500, 1660px 2432px #FFA500, 1134px 2153px #FFA500, 1567px 3087px #FFA500, 1582px 3957px #FFA500, 474px 2238px #FFA500, 1514px 2525px #FFA500, 1421px 3984px #FFA500, 16px 3994px #FFA500, 1935px 3508px #FFA500, 438px 2775px #FFA500, 1612px 2630px #FFA500, 203px 2879px #FFA500, 496px 3057px #FFA500, 1607px 3518px #FFA500, 1588px 2574px #FFA500, 1451px 3062px #FFA500, 1590px 3593px #FFA500, 592px 2351px #FFA500, 361px 2437px #FFA500, 456px 3221px #FFA500, 411px 3628px #FFA500, 1103px 2044px #FFA500, 1890px 2749px #FFA500, 1368px 3990px #FFA500, 872px 2018px #FFA500, 1528px 2907px #FFA500, 1199px 2235px #FFA500, 395px 2570px #FFA500, 1120px 2127px #FFA500, 125px 2711px #FFA500, 1825px 3327px #FFA500, 64px 3870px #FFA500, 838px 3810px #FFA500, 663px 3427px #FFA500, 1819px 2736px #FFA500, 566px 3851px #FFA500, 1080px 2656px #FFA500, 1134px 3861px #FFA500, 568px 2064px #FFA500, 1530px 3096px #FFA500, 981px 3711px #FFA500, 1783px 2999px #FFA500, 135px 3975px #FFA500, 1772px 3553px #FFA500, 1967px 3442px #FFA500, 542px 2372px #FFA500, 1684px 3445px #FFA500, 1041px 3106px #FFA500, 60px 3460px #FFA500, 1083px 3677px #FFA500, 143px 2204px #FFA500, 912px 2350px #FFA500, 1000px 3586px #FFA500, 1068px 2908px #FFA500, 241px 2794px #FFA500, 426px 2409px #FFA500, 961px 3141px #FFA500, 1551px 2327px #FFA500, 1575px 3532px #FFA500, 929px 3507px #FFA500, 242px 2364px #FFA500, 1271px 2731px #FFA500, 1660px 2468px #FFA500, 1494px 2589px #FFA500, 988px 3371px #FFA500, 431px 2539px #FFA500, 1974px 2239px #FFA500, 68px 2645px #FFA500, 781px 3716px #FFA500, 1238px 2065px #FFA500, 26px 3158px #FFA500, 525px 2899px #FFA500, 1494px 3043px #FFA500, 176px 3932px #FFA500, 372px 3933px #FFA500, 196px 2883px #FFA500, 615px 2614px #FFA500, 1298px 2288px #FFA500, 1690px 3284px #FFA500, 414px 2005px #FFA500, 1050px 2453px #FFA500, 271px 3805px #FFA500, 1024px 3996px #FFA500, 458px 3817px #FFA500, 831px 3155px #FFA500, 229px 3406px #FFA500, 1140px 3918px #FFA500, 390px 3353px #FFA500, 1509px 3025px #FFA500, 893px 2574px #FFA500, 461px 2499px #FFA500, 568px 3725px #FFA500, 791px 3565px #FFA500, 1494px 2365px #FFA500, 1423px 3289px #FFA500, 1239px 3356px #FFA500, 1367px 2776px #FFA500, 1596px 2965px #FFA500, 1162px 2798px #FFA500, 452px 3158px #FFA500, 191px 3111px #FFA500, 1194px 3708px #FFA500, 694px 2804px #FFA500, 999px 3711px #FFA500, 114px 3175px #FFA500, 1950px 2809px #FFA500, 1991px 2889px #FFA500, 1948px 3999px #FFA500, 1367px 3389px #FFA500, 1809px 3878px #FFA500, 1613px 2607px #FFA500, 1143px 2842px #FFA500, 1746px 2324px #FFA500, 102px 2355px #FFA500, 852px 3729px #FFA500, 633px 2755px #FFA500, 723px 3465px #FFA500, 1081px 2301px #FFA500, 1231px 2699px #FFA500, 1751px 2616px #FFA500, 1387px 2999px #FFA500, 500px 2940px #FFA500, 545px 3387px #FFA500, 1777px 2223px #FFA500, 1058px 3381px #FFA500, 1014px 2867px #FFA500, 403px 2712px #FFA500, 673px 2958px #FFA500, 89px 2652px #FFA500, 234px 3894px #FFA500, 603px 3674px #FFA500, 111px 3930px #FFA500, 28px 3161px #FFA500, 1052px 2962px #FFA500, 134px 3007px #FFA500, 290px 3721px #FFA500, 1713px 2439px #FFA500, 443px 3291px #FFA500, 1443px 2528px #FFA500, 465px 3761px #FFA500, 491px 2082px #FFA500, 592px 2938px #FFA500, 1409px 3274px #FFA500, 633px 3201px #FFA500, 740px 2033px #FFA500, 1214px 2777px #FFA500, 1589px 3106px #FFA500, 748px 2371px #FFA500, 1422px 3726px #FFA500, 1607px 2225px #FFA500, 1520px 2280px #FFA500, 873px 2547px #FFA500, 765px 3174px #FFA500, 165px 2097px #FFA500, 126px 2422px #FFA500, 301px 3356px #FFA500, 702px 3837px #FFA500, 866px 2256px #FFA500, 1974px 2849px #FFA500, 805px 2852px #FFA500, 1659px 3966px #FFA500, 1529px 2265px #FFA500, 1007px 2956px #FFA500, 1245px 2359px #FFA500, 1505px 2752px #FFA500, 902px 2201px #FFA500, 219px 3594px #FFA500, 1134px 2816px #FFA500, 1269px 3624px #FFA500, 33px 3155px #FFA500, 1374px 2768px #FFA500, 567px 3240px #FFA500, 1774px 2187px #FFA500, 1445px 2254px #FFA500, 1544px 2399px #FFA500, 228px 3003px #FFA500, 1132px 2632px #FFA500, 1242px 2010px #FFA500, 894px 3826px #FFA500, 1325px 2706px #FFA500, 1260px 2471px #FFA500, 1769px 3115px #FFA500, 370px 2482px #FFA500, 774px 2889px #FFA500, 1688px 2777px #FFA500, 124px 3812px #FFA500, 364px 3573px #FFA500, 1257px 2722px #FFA500, 1219px 3214px #FFA500, 866px 3202px #FFA500, 683px 2976px #FFA500, 245px 2562px #FFA500, 1958px 3456px #FFA500, 940px 2331px #FFA500, 604px 3006px #FFA500, 1871px 2056px #FFA500, 1671px 3668px #FFA500, 114px 3835px #FFA500, 1284px 3144px #FFA500, 1183px 2223px #FFA500, 290px 2969px #FFA500, 55px 2092px #FFA500, 3px 3067px #FFA500, 653px 2599px #FFA500, 341px 3106px #FFA500, 351px 2617px #FFA500, 1245px 2210px #FFA500, 1007px 3354px #FFA500, 1785px 3298px #FFA500, 624px 3677px #FFA500, 1382px 3089px #FFA500, 204px 2244px #FFA500, 1572px 3534px #FFA500, 211px 3723px #FFA500, 1873px 2558px #FFA500, 1870px 2415px #FFA500, 1267px 2772px #FFA500, 2000px 3057px #FFA500, 608px 3723px #FFA500, 722px 3493px #FFA500, 856px 2207px #FFA500, 21px 2434px #FFA500, 451px 3696px #FFA500, 1712px 3156px #FFA500, 1316px 2740px #FFA500, 606px 2772px #FFA500, 176px 3359px #FFA500, 487px 3748px #FFA500, 1240px 2118px #FFA500, 231px 2876px #FFA500, 1149px 2468px #FFA500, 591px 2315px #FFA500, 739px 2843px #FFA500, 1932px 2464px #FFA500, 61px 3995px #FFA500, 1884px 2756px #FFA500, 1714px 2547px #FFA500, 1764px 3477px #FFA500, 1524px 2258px #FFA500, 831px 3423px #FFA500, 858px 3524px #FFA500, 1759px 2475px #FFA500, 1140px 3721px #FFA500, 474px 3016px #FFA500, 1312px 3967px #FFA500, 503px 3878px #FFA500, 53px 2423px #FFA500, 281px 3378px #FFA500, 817px 2152px #FFA500, 1724px 3605px #FFA500, 356px 3030px #FFA500, 372px 3122px #FFA500, 1477px 2125px #FFA500, 195px 3014px #FFA500, 1155px 3432px #FFA500, 633px 3810px #FFA500, 444px 2477px #FFA500, 1311px 3863px #FFA500, 1081px 2865px #FFA500, 185px 3222px #FFA500, 1290px 3438px #FFA500, 630px 3709px #FFA500, 372px 2117px #FFA500, 1987px 3797px #FFA500, 801px 2109px #FFA500, 1230px 3903px #FFA500, 1502px 3630px #FFA500, 680px 3190px #FFA500, 1756px 2908px #FFA500, 930px 3899px #FFA500, 1505px 3734px #FFA500, 653px 3026px #FFA500, 1486px 3566px #FFA500, 46px 2109px #FFA500, 1526px 3040px #FFA500, 840px 2519px #FFA500, 1912px 3341px #FFA500, 1382px 2471px #FFA500, 638px 3021px #FFA500, 38px 2347px #FFA500, 1290px 2781px #FFA500, 1485px 2847px #FFA500, 1496px 3245px #FFA500, 1267px 3307px #FFA500, 449px 2741px #FFA500, 636px 3550px #FFA500, 1524px 2884px #FFA500, 137px 2604px #FFA500, 1864px 2180px #FFA500, 1373px 2323px #FFA500, 307px 2985px #FFA500, 1603px 3012px #FFA500, 642px 3490px #FFA500, 1889px 3992px #FFA500, 1405px 2762px #FFA500, 7px 2582px #FFA500, 1586px 2236px #FFA500, 538px 2501px #FFA500, 322px 2917px #FFA500, 176px 2430px #FFA500, 350px 2785px #FFA500, 562px 3838px #FFA500, 699px 3647px #FFA500, 67px 3144px #FFA500, 1656px 2523px #FFA500, 64px 3469px #FFA500, 770px 2268px #FFA500, 1752px 2501px #FFA500, 641px 2179px #FFA500, 685px 2220px #FFA500, 1214px 2380px #FFA500, 1579px 3438px #FFA500, 310px 3300px #FFA500, 514px 3492px #FFA500, 625px 2557px #FFA500, 634px 3043px #FFA500, 707px 3262px #FFA500, 979px 2304px #FFA500, 283px 2029px #FFA500, 1541px 3335px #FFA500, 1255px 2705px #FFA500, 1118px 2325px #FFA500, 1121px 2723px #FFA500, 1510px 2465px #FFA500, 1609px 3975px #FFA500, 584px 3678px #FFA500, 1617px 3270px #FFA500, 372px 3033px #FFA500, 976px 3024px #FFA500, 362px 2715px #FFA500, 146px 3240px #FFA500, 1458px 3770px #FFA500, 748px 3118px #FFA500, 139px 2760px #FFA500, 1846px 2839px #FFA500, 1763px 2716px #FFA500, 274px 3841px #FFA500, 1085px 2074px #FFA500, 415px 3714px #FFA500, 692px 2374px #FFA500, 1005px 3084px #FFA500, 312px 2562px #FFA500, 1476px 3325px #FFA500, 1335px 2458px #FFA500, 755px 2584px #FFA500, 329px 3882px #FFA500, 73px 3102px #FFA500, 1077px 2272px #FFA500, 1790px 2555px #FFA500, 936px 3429px #FFA500, 1280px 3939px #FFA500, 243px 3187px #FFA500, 1323px 3294px #FFA500, 1921px 2281px #FFA500, 1163px 3764px #FFA500, 598px 2100px #FFA500, 802px 2745px #FFA500, 1814px 3371px #FFA500, 1532px 3805px #FFA500, 1391px 3704px #FFA500, 945px 2321px #FFA500, 361px 3787px #FFA500, 985px 3903px #FFA500, 652px 3376px #FFA500, 425px 3538px #FFA500, 1936px 3043px #FFA500, 158px 2325px #FFA500, 89px 3559px #FFA500, 1477px 3535px #FFA500, 595px 2727px #FFA500, 956px 2683px #FFA500, 1765px 3840px #FFA500, 696px 3546px #FFA500, 1165px 2112px #FFA500, 1777px 2796px #FFA500, 894px 3331px #FFA500, 531px 3025px #FFA500, 296px 3867px #FFA500, 1265px 2693px #FFA500, 29px 3036px #FFA500, 1204px 2364px #FFA500, 605px 2001px #FFA500, 687px 3940px #FFA500, 371px 2068px #FFA500, 602px 2796px #FFA500, 1340px 2470px #FFA500, 1460px 3570px #FFA500, 247px 3579px #FFA500, 1118px 2829px #FFA500, 1698px 2386px #FFA500, 684px 3245px #FFA500, 463px 3516px #FFA500, 1266px 3461px #FFA500, 898px 3751px #FFA500, 6px 3281px #FFA500, 1957px 2166px #FFA500, 999px 2426px #FFA500, 1821px 2245px #FFA500, 830px 3367px #FFA500, 1237px 3106px #FFA500, 1412px 2645px #FFA500, 7px 2093px #FFA500, 550px 3194px #FFA500, 1950px 3403px #FFA500, 639px 3787px #FFA500, 1293px 3807px #FFA500, 462px 3713px #FFA500, 378px 3189px #FFA500, 1177px 3376px #FFA500, 308px 3471px #FFA500, 976px 2221px #FFA500, 1766px 2200px #FFA500, 1577px 2356px #FFA500, 1542px 2890px #FFA500, 567px 3998px #FFA500, 96px 3389px #FFA500, 1334px 2698px #FFA500, 1752px 3068px #FFA500, 269px 2257px #FFA500, 950px 3864px #FFA500, 1640px 2817px #FFA500, 1340px 3064px #FFA500, 1507px 2389px #FFA500, 30px 3855px #FFA500, 766px 3645px #FFA500, 1280px 3975px #FFA500, 967px 3469px #FFA500, 1560px 3499px #FFA500, 52px 2664px #FFA500, 1319px 2995px #FFA500, 483px 3952px #FFA500;
    content: " ";
    display: circle;
    height: 1px;
    position: var(--anim-position);
    width: 1px;
    z-index: 1;
    transparent: 0;
  }
  #container-wrap:before,
  #container-wrap:after {
    animation: animStar 37.5s linear infinite;
    background: transparent;
    box-shadow: 97px 253px #FFA500, 76px 278px #FFA500, 1958px 1952px #FFA500,
      117px 481px #FFA500, 1326px 1250px #FFA500, 835px 149px #FFA500, 61px 182px #FFA500,
      788px 1960px #FFA500, 1256px 652px #FFA500, 1233px 1544px #FFA500,
      970px 1685px #FFA500, 1697px 1583px #FFA500, 680px 1847px #FFA500,
      1282px 749px #FFA500, 220px 724px #FFA500, 673px 44px #FFA500, 1919px 1555px #FFA500,
      737px 1319px #FFA500, 491px 195px #FFA500, 1507px 171px #FFA500, 771px 1497px #FFA500,
      602px 419px #FFA500, 1908px 621px #FFA500, 1993px 1864px #FFA500, 345px 1915px #FFA500,
      1216px 387px #FFA500, 1663px 887px #FFA500, 1036px 746px #FFA500, 831px 12px #FFA500,
      1675px 1029px #FFA500, 1734px 1133px #FFA500, 888px 1255px #FFA500,
      195px 1336px #FFA500, 760px 1484px #FFA500, 88px 1319px #FFA500, 577px 1665px #FFA500,
      500px 889px #FFA500, 337px 1736px #FFA500, 1593px 1935px #FFA500, 1444px 803px #FFA500,
      1477px 703px #FFA500, 1380px 1137px #FFA500, 694px 1375px #FFA500,
      412px 1132px #FFA500, 223px 61px #FFA500, 1310px 225px #FFA500, 1640px 1415px #FFA500,
      1222px 955px #FFA500, 913px 791px #FFA500, 1987px 709px #FFA500, 162px 336px #FFA500,
      855px 1655px #FFA500, 738px 726px #FFA500, 1981px 1519px #FFA500,
      1798px 1921px #FFA500, 1723px 1314px #FFA500, 1313px 1711px #FFA500,
      1926px 1218px #FFA500, 1052px 1868px #FFA500, 1622px 912px #FFA500,
      1974px 901px #FFA500, 1195px 82px #FFA500, 1446px 757px #FFA500, 355px 1425px #FFA500,
      749px 1479px #FFA500, 1779px 963px #FFA500, 243px 656px #FFA500, 671px 1835px #FFA500,
      205px 780px #FFA500, 811px 1186px #FFA500, 14px 1319px #FFA500, 436px 64px #FFA500,
      686px 509px #FFA500, 129px 884px #FFA500, 683px 80px #FFA500, 1931px 1965px #FFA500,
      867px 373px #FFA500, 1215px 244px #FFA500, 814px 1658px #FFA500, 1600px 841px #FFA500,
      418px 443px #FFA500, 59px 516px #FFA500, 988px 1390px #FFA500, 164px 1317px #FFA500,
      1490px 1276px #FFA500, 940px 404px #FFA500, 721px 1457px #FFA500, 1678px 286px #FFA500,
      640px 385px #FFA500, 152px 1160px #FFA500, 1235px 1839px #FFA500, 1038px 444px #FFA500,
      1439px 300px #FFA500, 1025px 27px #FFA500, 1968px 577px #FFA500, 835px 1533px #FFA500,
      1445px 364px #FFA500, 1102px 1879px #FFA500, 1114px 1631px #FFA500, 636px 15px #FFA500,
      745px 200px #FFA500, 1489px 1114px #FFA500, 146px 1566px #FFA500, 613px 146px #FFA500,
      190px 1672px #FFA500, 1967px 578px #FFA500, 1414px 179px #FFA500,
      1750px 1833px #FFA500, 37px 922px #FFA500, 1833px 708px #FFA500, 413px 1989px #FFA500,
      1269px 1291px #FFA500, 971px 580px #FFA500, 503px 533px #FFA500, 641px 175px #FFA500,
      863px 1831px #FFA500, 1174px 1250px #FFA500, 1612px 1022px #FFA500,
      1136px 1170px #FFA500, 706px 1101px #FFA500, 887px 1795px #FFA500, 849px 444px #FFA500,
      1015px 1058px #FFA500, 322px 90px #FFA500, 1577px 266px #FFA500, 176px 878px #FFA500,
      710px 474px #FFA500, 769px 523px #FFA500, 418px 1298px #FFA500, 654px 1049px #FFA500,
      327px 743px #FFA500, 343px 192px #FFA500, 930px 125px #FFA500, 835px 1193px #FFA500,
      473px 1709px #FFA500, 1857px 319px #FFA500, 675px 278px #FFA500, 1546px 613px #FFA500,
      811px 764px #FFA500, 303px 1360px #FFA500, 447px 930px #FFA500, 1475px 1935px #FFA500,
      1101px 738px #FFA500, 1577px 1373px #FFA500, 1634px 628px #FFA500,
      1231px 663px #FFA500, 275px 1076px #FFA500, 1746px 668px #FFA500,
      1714px 1167px #FFA500, 847px 34px #FFA500, 1413px 450px #FFA500, 1037px 1738px #FFA500,
      794px 634px #FFA500, 1800px 1946px #FFA500, 1346px 1826px #FFA500,
      718px 1732px #FFA500, 151px 1276px #FFA500, 428px 976px #FFA500, 485px 938px #FFA500,
      98px 344px #FFA500, 1936px 1462px #FFA500, 142px 349px #FFA500, 1659px 324px #FFA500,
      1074px 1878px #FFA500, 345px 75px #FFA500, 508px 1532px #FFA500, 1117px 611px #FFA500,
      33px 350px #FFA500, 1002px 565px #FFA500, 986px 885px #FFA500, 1086px 1066px #FFA500,
      1102px 211px #FFA500, 590px 1021px #FFA500, 719px 145px #FFA500, 964px 980px #FFA500,
      259px 1554px #FFA500, 1942px 748px #FFA500, 1569px 601px #FFA500, 417px 609px #FFA500,
      1143px 1210px #FFA500, 1182px 552px #FFA500, 1224px 1804px #FFA500,
      898px 1516px #FFA500, 736px 624px #FFA500, 213px 754px #FFA500, 408px 496px #FFA500,
      1820px 1548px #FFA500, 1807px 1514px #FFA500, 739px 189px #FFA500,
      1304px 1249px #FFA500, 1437px 122px #FFA500, 1702px 821px #FFA500,
      370px 1554px #FFA500, 10px 1505px #FFA500, 501px 593px #FFA500, 1482px 23px #FFA500,
      1774px 1032px #FFA500, 828px 262px #FFA500, 1530px 1354px #FFA500,
      1698px 886px #FFA500, 97px 2253px #FFA500, 76px 2278px #FFA500, 1958px 3952px #FFA500, 117px 2481px #FFA500, 1326px 3250px #FFA500, 835px 2149px #FFA500, 61px 2182px #FFA500, 788px 3960px #FFA500, 1256px 2652px #FFA500, 1233px 3544px #FFA500, 970px 3685px #FFA500, 1697px 3583px #FFA500, 680px 3847px #FFA500, 1282px 2749px #FFA500, 220px 2724px #FFA500, 673px 2044px #FFA500, 1919px 3555px #FFA500, 737px 3319px #FFA500, 491px 2195px #FFA500, 1507px 2171px #FFA500, 771px 3497px #FFA500, 602px 2419px #FFA500, 1908px 2621px #FFA500, 1993px 3864px #FFA500, 345px 3915px #FFA500, 1216px 2387px #FFA500, 1663px 2887px #FFA500, 1036px 2746px #FFA500, 831px 2012px #FFA500, 1675px 3029px #FFA500, 1734px 3133px #FFA500, 888px 3255px #FFA500, 195px 3336px #FFA500, 760px 3484px #FFA500, 88px 3319px #FFA500, 577px 3665px #FFA500, 500px 2889px #FFA500, 337px 3736px #FFA500, 1593px 3935px #FFA500, 1444px 2803px #FFA500, 1477px 2703px #FFA500, 1380px 3137px #FFA500, 694px 3375px #FFA500, 412px 3132px #FFA500, 223px 2061px #FFA500, 1310px 2225px #FFA500, 1640px 3415px #FFA500, 1222px 2955px #FFA500, 913px 2791px #FFA500, 1987px 2709px #FFA500, 162px 2336px #FFA500, 855px 3655px #FFA500, 738px 2726px #FFA500, 1981px 3519px #FFA500, 1798px 3921px #FFA500, 1723px 3314px #FFA500, 1313px 3711px #FFA500, 1926px 3218px #FFA500, 1052px 3868px #FFA500, 1622px 2912px #FFA500, 1974px 2901px #FFA500, 1195px 2082px #FFA500, 1446px 2757px #FFA500, 355px 3425px #FFA500, 749px 3479px #FFA500, 1779px 2963px #FFA500, 243px 2656px #FFA500, 671px 3835px #FFA500, 205px 2780px #FFA500, 811px 3186px #FFA500, 14px 3319px #FFA500, 436px 2064px #FFA500, 686px 2509px #FFA500, 129px 2884px #FFA500, 683px 2080px #FFA500, 1931px 3965px #FFA500, 867px 2373px #FFA500, 1215px 2244px #FFA500, 814px 3658px #FFA500, 1600px 2841px #FFA500, 418px 2443px #FFA500, 59px 2516px #FFA500, 988px 3390px #FFA500, 164px 3317px #FFA500, 1490px 3276px #FFA500, 940px 2404px #FFA500, 721px 3457px #FFA500, 1678px 2286px #FFA500, 640px 2385px #FFA500, 152px 3160px #FFA500, 1235px 3839px #FFA500, 1038px 2444px #FFA500, 1439px 2300px #FFA500, 1025px 2027px #FFA500, 1968px 2577px #FFA500, 835px 3533px #FFA500, 1445px 2364px #FFA500, 1102px 3879px #FFA500, 1114px 3631px #FFA500, 636px 2015px #FFA500, 745px 2200px #FFA500, 1489px 3114px #FFA500, 146px 3566px #FFA500, 613px 2146px #FFA500, 190px 3672px #FFA500, 1967px 2578px #FFA500, 1414px 2179px #FFA500, 1750px 3833px #FFA500, 37px 2922px #FFA500, 1833px 2708px #FFA500, 413px 3989px #FFA500, 1269px 3291px #FFA500, 971px 2580px #FFA500, 503px 2533px #FFA500, 641px 2175px #FFA500, 863px 3831px #FFA500, 1174px 3250px #FFA500, 1612px 3022px #FFA500, 1136px 3170px #FFA500, 706px 3101px #FFA500, 887px 3795px #FFA500, 849px 2444px #FFA500, 1015px 3058px #FFA500, 322px 2090px #FFA500, 1577px 2266px #FFA500, 176px 2878px #FFA500, 710px 2474px #FFA500, 769px 2523px #FFA500, 418px 3298px #FFA500, 654px 3049px #FFA500, 327px 2743px #FFA500, 343px 2192px #FFA500, 930px 2125px #FFA500, 835px 3193px #FFA500, 473px 3709px #FFA500, 1857px 2319px #FFA500, 675px 2278px #FFA500, 1546px 2613px #FFA500, 811px 2764px #FFA500, 303px 3360px #FFA500, 447px 2930px #FFA500, 1475px 3935px #FFA500, 1101px 2738px #FFA500, 1577px 3373px #FFA500, 1634px 2628px #FFA500, 1231px 2663px #FFA500, 275px 3076px #FFA500, 1746px 2668px #FFA500, 1714px 3167px #FFA500, 847px 2034px #FFA500, 1413px 2450px #FFA500, 1037px 3738px #FFA500, 794px 2634px #FFA500, 1800px 3946px #FFA500, 1346px 3826px #FFA500, 718px 3732px #FFA500, 151px 3276px #FFA500, 428px 2976px #FFA500, 485px 2938px #FFA500, 98px 2344px #FFA500, 1936px 3462px #FFA500, 142px 2349px #FFA500, 1659px 2324px #FFA500, 1074px 3878px #FFA500, 345px 2075px #FFA500, 508px 3532px #FFA500, 1117px 2611px #FFA500, 33px 2350px #FFA500, 1002px 2565px #FFA500, 986px 2885px #FFA500, 1086px 3066px #FFA500, 1102px 2211px #FFA500, 590px 3021px #FFA500, 719px 2145px #FFA500, 964px 2980px #FFA500, 259px 3554px #FFA500, 1942px 2748px #FFA500, 1569px 2601px #FFA500, 417px 2609px #FFA500, 1143px 3210px #FFA500, 1182px 2552px #FFA500, 1224px 3804px #FFA500, 898px 3516px #FFA500, 736px 2624px #FFA500, 213px 2754px #FFA500, 408px 2496px #FFA500, 1820px 3548px #FFA500, 1807px 3514px #FFA500, 739px 2189px #FFA500, 1304px 3249px #FFA500, 1437px 2122px #FFA500, 1702px 2821px #FFA500, 370px 3554px #FFA500, 10px 3505px #FFA500, 501px 2593px #FFA500, 1482px 2023px #FFA500, 1774px 3032px #FFA500, 828px 2262px #FFA500, 1530px 3354px #FFA500, 1698px 2886px #FFA500;
    content: " ";
    display: circle;
    height: 2px;
    position: var(--anim-position);
    width: 2px;
    z-index: 1;
    transparent: 0;
  }
  #container:before,
  #container:after {
    animation: animStar 50s linear infinite;
    background: transparent;
    box-shadow: 46px 995px #FFA500, 1287px 1821px #FFA500, 1954px 1267px #FFA500,
      1880px 1659px #FFA500, 381px 829px #FFA500, 314px 1471px #FFA500,
      1631px 1262px #FFA500, 889px 506px #FFA500, 1836px 1779px #FFA500, 823px 42px #FFA500,
      343px 943px #FFA500, 1334px 1179px #FFA500, 285px 287px #FFA500, 1820px 1967px #FFA500,
      872px 663px #FFA500, 541px 1759px #FFA500, 253px 1099px #FFA500, 1383px 794px #FFA500,
      433px 716px #FFA500, 69px 1603px #FFA500, 1738px 1239px #FFA500, 1540px 1633px #FFA500,
      1829px 288px #FFA500, 1778px 1640px #FFA500, 1336px 1188px #FFA500,
      1001px 1419px #FFA500, 198px 334px #FFA500, 953px 840px #FFA500, 1115px 773px #FFA500,
      85px 844px #FFA500, 1974px 644px #FFA500, 1720px 429px #FFA500, 1088px 831px #FFA500,
      919px 390px #FFA500, 866px 346px #FFA500, 617px 5px #FFA500, 665px 1023px #FFA500,
      231px 118px #FFA500, 1715px 78px #FFA500, 901px 1788px #FFA500, 1516px 1203px #FFA500,
      541px 1364px #FFA500, 404px 562px #FFA500, 244px 155px #FFA500, 278px 72px #FFA500,
      1156px 889px #FFA500, 204px 1622px #FFA500, 313px 484px #FFA500, 760px 1478px #FFA500,
      1416px 1365px #FFA500, 257px 190px #FFA500, 632px 769px #FFA500, 1334px 1685px #FFA500,
      1769px 555px #FFA500, 643px 514px #FFA500, 1948px 376px #FFA500, 572px 579px #FFA500,
      643px 1787px #FFA500, 1194px 137px #FFA500, 1099px 1136px #FFA500, 987px 35px #FFA500,
      207px 1617px #FFA500, 756px 174px #FFA500, 346px 1054px #FFA500, 1338px 1897px #FFA500,
      1024px 1995px #FFA500, 1747px 382px #FFA500, 45px 7px #FFA500, 1764px 1556px #FFA500,
      944px 251px #FFA500, 1121px 113px #FFA500, 1660px 1388px #FFA500, 762px 1022px #FFA500,
      515px 287px #FFA500, 1115px 1817px #FFA500, 1306px 1942px #FFA500,
      1572px 1410px #FFA500, 1675px 48px #FFA500, 48px 1845px #FFA500, 1393px 174px #FFA500,
      1927px 1094px #FFA500, 114px 412px #FFA500, 1897px 1349px #FFA500,
      151px 1800px #FFA500, 3px 433px #FFA500, 1837px 173px #FFA500, 1844px 1357px #FFA500,
      957px 743px #FFA500, 672px 719px #FFA500, 433px 1476px #FFA500, 1314px 690px #FFA500,
      1764px 1888px #FFA500, 1287px 868px #FFA500, 1282px 1989px #FFA500,
      1258px 94px #FFA500, 1335px 1311px #FFA500, 957px 1204px #FFA500, 208px 1065px #FFA500,
      688px 678px #FFA500, 1835px 1130px #FFA500, 46px 2995px #FFA500, 1287px 3821px #FFA500, 1954px 3267px #FFA500, 1880px 3659px #FFA500, 381px 2829px #FFA500, 314px 3471px #FFA500, 1631px 3262px #FFA500, 889px 2506px #FFA500, 1836px 3779px #FFA500, 823px 2042px #FFA500, 343px 2943px #FFA500, 1334px 3179px #FFA500, 285px 2287px #FFA500, 1820px 3967px #FFA500, 872px 2663px #FFA500, 541px 3759px #FFA500, 253px 3099px #FFA500, 1383px 2794px #FFA500, 433px 2716px #FFA500, 69px 3603px #FFA500, 1738px 3239px #FFA500, 1540px 3633px #FFA500, 1829px 2288px #FFA500, 1778px 3640px #FFA500, 1336px 3188px #FFA500, 1001px 3419px #FFA500, 198px 2334px #FFA500, 953px 2840px #FFA500, 1115px 2773px #FFA500, 85px 2844px #FFA500, 1974px 2644px #FFA500, 1720px 2429px #FFA500, 1088px 2831px #FFA500, 919px 2390px #FFA500, 866px 2346px #FFA500, 617px 2005px #FFA500, 665px 3023px #FFA500, 231px 2118px #FFA500, 1715px 2078px #FFA500, 901px 3788px #FFA500, 1516px 3203px #FFA500, 541px 3364px #FFA500, 404px 2562px #FFA500, 244px 2155px #FFA500, 278px 2072px #FFA500, 1156px 2889px #FFA500, 204px 3622px #FFA500, 313px 2484px #FFA500, 760px 3478px #FFA500, 1416px 3365px #FFA500, 257px 2190px #FFA500, 632px 2769px #FFA500, 1334px 3685px #FFA500, 1769px 2555px #FFA500, 643px 2514px #FFA500, 1948px 2376px #FFA500, 572px 2579px #FFA500, 643px 3787px #FFA500, 1194px 2137px #FFA500, 1099px 3136px #FFA500, 987px 2035px #FFA500, 207px 3617px #FFA500, 756px 2174px #FFA500, 346px 3054px #FFA500, 1338px 3897px #FFA500, 1024px 3995px #FFA500, 1747px 2382px #FFA500, 45px 2007px #FFA500, 1764px 3556px #FFA500, 944px 2251px #FFA500, 1121px 2113px #FFA500, 1660px 3388px #FFA500, 762px 3022px #FFA500, 515px 2287px #FFA500, 1115px 3817px #FFA500, 1306px 3942px #FFA500, 1572px 3410px #FFA500, 1675px 2048px #FFA500, 48px 3845px #FFA500, 1393px 2174px #FFA500, 1927px 3094px #FFA500, 114px 2412px #FFA500, 1897px 3349px #FFA500, 151px 3800px #FFA500, 3px 2433px #FFA500, 1837px 2173px #FFA500, 1844px 3357px #FFA500, 957px 2743px #FFA500, 672px 2719px #FFA500, 433px 3476px #FFA500, 1314px 2690px #FFA500, 1764px 3888px #FFA500, 1287px 2868px #FFA500, 1282px 3989px #FFA500, 1258px 2094px #FFA500, 1335px 3311px #FFA500, 957px 3204px #FFA500, 208px 3065px #FFA500, 688px 2678px #FFA500, 1835px 3130px #FFA500;
    content: " ";
    display: circle;
    height: 3px;
    position: var(--anim-position);
    width: 3px;
    z-index: 1;
    transparent: 0;
  }
  @keyframes animStar {
    from {
      transform: translateY(0px);
    }
    to {
      transform: translateY(-2000px);
    }
  }
}
 
/* ==SD CLASS CODE== */
 
/* sd banner colours */
 
.sd-container {
   --sd-text:var(--white-monochrome);
   --sd-border:255,165,0;
   --sd-bullets:255,165,0;
   --sd-symbol:var(--white-monochrome);
}
 
.bottom-box ul li {
     color: #FFA500 !important;
}
.top-box {
     background: #FFA500;
}
.bottom-box ui li:before {
     background: #FFA500 !important;
}
.header-diamond .diamond-color {
     background: #FFA500;
}
```

[- Close](javascript:;)

---

Source: [https://backrooms-wiki.wikidot.com/theme:embers](https://backrooms-wiki.wikidot.com/theme:embers)
