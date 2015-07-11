<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Main Page.aspx.cs" Inherits="Main_Page" %>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
      <meta charset="UTF-8">
    <link href="style3.css" rel="stylesheet"/>
                    <link rel="SHORTCUT ICON" href="images/bull.png">
<title>BlueChip- Technology</title>
      <style>
        #logo{
    position: absolute;
    right:10px;
    bottom: 10px;
}
body{
    margin: 0;
    padding: 0;
    font-size: 15px;
    font-family: "Lucida Grande", "Helvetica Nueue", Arial, sans-serif;
}
nav {
    background-color: #333;
    border: 1px solid #333;
    color: #fff;
    display: block;
    margin: 0;
    overflow: hidden;
}
nav ul{
    margin: 0;
    padding: 0;
    list-style: none;
}
nav ul li {
    margin: 0;
    display: inline-block;
    list-style-type: none;
    transition: all 0.2s;
}

nav > ul > li > a {
    color: #aaa;
    display: block;
    line-height: 2em;
    padding: 0.5em 2em;
    text-decoration: none;

}

nav li > ul{
    display : none;
    margin-top:1px;
    background-color: #bbb;

}

nav li > ul li{
    display: block;
}

nav  li > ul li a {
    color: #111;
    display: block;
    line-height: 2em;
    padding: 0.5em 2em;
    text-decoration: none;
}

nav li:hover {
    background-color: #666;
}
nav li:hover > ul{
    position:absolute;
    display : block;
}
nav li > ul > li ul  {
    display: none;
    background-color: #888;
}
nav li > ul > li:hover > ul  {
    position:absolute;
    display : block;
    margin-left:100%;
    margin-top:-3em;
}

    </style>
<style>
    * {
 margin: 0px;
 padding: 0px;
 font-family: helvetica neue, helvetica, arial, sans-serif;
 font-weight: 200;
}
body 
{ 
    background-color:black

}
.nav {
  position: fixed;
  top: 0px;
  height: 60px;
  background: #006666;
  left: -10px;
  right: -50px;
  text-align: center;
  color: #fff;
  line-height: 100px;
  width: 2345px;
    }

.content {
  height: 2000px;
  padding: 20px;
  color:#fff;
  width:728px;
  margin:150px auto;
}
.content p {
  margin: 20px 0;
}
</style>
    <style>
div.img {
    margin: 25px;
    padding: 5px;
    border: 1px solid #0000ff;
    height: auto;
    width: auto;
    float: left;
    text-align: center;
}

div.img img {
    display: inline;
    margin: 5px;
    border: 1px solid #ffffff;
}

div.img a:hover img {
    border:1px solid #0000ff;
}

div.desc {
    text-align: center;
    font-weight: normal;
    width: 232px;
    margin: 5px;
            height: 99px;
        }
</style>
        <style>
        body{
font-family: "HelveticaNeue-Light", "Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif; 
  font-weight: 300;
}
.css-slideshow{
  position: relative;
  max-width: 495px;
  height: 370px;
  margin-top:100px;
  margin-left:50px;
                top: -1075px;
                left: -45px;
            }
.css-slideshow figure{
  margin: 0;
  max-width: 495px;
  height: 370px;
  background: #000;
  position: absolute;
}
.css-slideshow img{
  box-shadow: 0 0 2px #666;
}
.css-slideshow figcaption{
  position: absolute;
  top: 0;
  color: #fff;
  background: rgba(0,0,0, .3);
  font-size: .8em;
  padding: 8px 12px;
  opacity: 0;
  transition: opacity .5s;
  
}
.css-slideshow:hover figure figcaption{
  opacity: 1;
  position:relative;
  padding:0; 
  margin:0;
  top:3px;
}
.css-slideshow-attr{
  max-width: 495px;
  text-align: right;
  font-size: .7em;
  font-style: italic;
  margin-top:0px;
  margin-left:-120px;
}
.css-slideshow-attr a{
  color: #666;
}
.css-slideshow figure{
  opacity:0;
                top: 1px;
                left: 14px;
            }
figure:nth-child(1) {
  animation: xfade 48s 42s infinite;
}
figure:nth-child(2) {
  animation: xfade 48s 36s infinite;
}
figure:nth-child(3) {
  animation: xfade 48s 30s infinite;
}
figure:nth-child(4) {
  animation: xfade 48s 24s infinite;
}
figure:nth-child(5) {
  animation: xfade 48s 18s infinite;
}
figure:nth-child(6) {
  animation: xfade 48s 12s infinite;
}
figure:nth-child(7) {
  animation: xfade 48s 6s infinite;
}
figure:nth-child(8) {
  animation: xfade 48s 0s infinite;
}
.css-slide{
  position: relative;
  max-width: 495px;
  height: 22px;
  margin-top:100px;
  margin-left:50px;
                top: -427px;
                left: 1044px;
                width: 84px;
            }
.css-slide figure{
  margin: 0;
  max-width: 495px;
  height: 370px;
  background: #000;
  position: absolute;
}
.css-slide img{
  box-shadow: 0 0 2px #666;
}
.css-slide figcaption{
  position: absolute;
  top: 0;
  color: #fff;
  background: rgba(0,0,0, .3);
  font-size: .8em;
  padding: 8px 12px;
  opacity: 0;
  transition: opacity .5s;
  
}
.css-slide:hover figure figcaption{
  opacity: 1;
  position:relative;
  padding:0; 
  margin:0;
  top:3px;
}
.css-slide-attr{
  max-width: 495px;
  text-align: right;
  font-size: .7em;
  font-style: italic;
  margin-top:0px;
  margin-left:-120px;
}
.css-slide-attr a{
  color: #666;
}
.css-slide figure{
  opacity:0;
                top: 1px;
                left: 14px;
            }
        @keyframes xfade {
            0% {
                opacity: 1;
            }

            10.5% {
                opacity: 1;
            }

            12.5% {
                opacity: 0;
            }

            98% {
                opacity: 0;
            }

            100% {
                opacity: 1;
            }
        }
    </style>
      <style>
body {
    color: #535353;
}


a {
    color: #001927;
    font-weight: normal;
    text-decoration: none;
}

a:hover {
    color: #07599a;
}

h2 {
  color: #111;
}

h3 {
    color: #034285;
}


#TopMenu li a, #TopMenu li div {
    border-left: 1px solid #208db5;
    color: #fff;
}

#TopMenu li div a {
    border-left: 0;
}

#TopMenu li a:hover {
    color: #fff;
}

.Menu li a {
    color: #fff;
}





.Menu li:hover > a, .Menu li.over a{
    color:#fff;
background: #006666; /* Old browsers */
background: -moz-linear-gradient(top,  #f8005f 0%, #ff216b 81%, #ff999a 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#f8005f), color-stop(81%,#ff216b), color-stop(100%,#ff999a)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  #f8005f 0%,#ff216b 81%,#ff999a 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  #f8005f 0%,#ff216b 81%,#ff999a 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  #f8005f 0%,#ff216b 81%,#ff999a 100%); /* IE10+ */
background: linear-gradient(to bottom,  #f8005f 0%,#ff216b 81%,#ff999a 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#f8005f', endColorstr='#ff999a',GradientType=0 ); /* IE6-9 */

}
.Menu li ul li a:hover {
    color: #fff;
    background: #006666; /* Old browsers */
background: -moz-linear-gradient(top,  #2b2727 0%, #000000 84%, #8e8e8e 99%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#2b2727), color-stop(84%,#000000), color-stop(99%,#8e8e8e)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  #2b2727 0%,#000000 84%,#8e8e8e 99%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  #2b2727 0%,#000000 84%,#8e8e8e 99%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  #2b2727 0%,#000000 84%,#8e8e8e 99%); /* IE10+ */
background: linear-gradient(to bottom,  #2b2727 0%,#000000 84%,#8e8e8e 99%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#2b2727', endColorstr='#8e8e8e',GradientType=0 ); /* IE6-9 */

}
.ActivePage{
    color:#fff;
 background: #006666; /* Old browsers */
background: -moz-linear-gradient(top,  #f8005f 0%, #ff216b 81%, #ff999a 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#f8005f), color-stop(81%,#ff216b), color-stop(100%,#ff999a)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  #f8005f 0%,#ff216b 81%,#ff999a 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  #f8005f 0%,#ff216b 81%,#ff999a 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  #f8005f 0%,#ff216b 81%,#ff999a 100%); /* IE10+ */
background: linear-gradient(to bottom,  #f8005f 0%,#ff216b 81%,#ff999a 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#f8005f', endColorstr='#ff999a',GradientType=0 ); /* IE6-9 */
   
}
.Menu li ul li a {
    color: #fff;
    border:none;
}
#Outer {
    
}


#Header {
padding-bottom: 10px;
}

#Logo h1 {
    color: #fff;
    background: url(../../default/images/blue/Logo.png) top left no-repeat;
}

#Logo h1 a {
    color: #fff;
}

#SearchForm {
    color: #95bbd1;
}

#SearchForm label {
    color: #fff;
}

#SearchForm a {
    color: #b1ccdc;
}

#SearchForm a:hover {
    color: #fff;
}

.Left {
    background: transparent url('../../default/images/blue/LeftBg.gif') no-repeat;
}

.Left li {
    border-bottom: 1px solid #c5dde9;
}

.Left li a:hover {
    color: #07599a;
}

.Content {
   
}

.Content a {
    color: #075899;
}

.Content.Wide {
 
}

.Content.Widest {
    background-image: url('../../default/images/ContentBgWidest.gif');
}


.Right {
    background: transparent url('../../default/images/blue/RightBg.gif') no-repeat;
}

.Right a {
    color: #034285;
}

.Right a:hover, .Right a:hover strong {
    color: #001927;
}

#Footer {
   
}

#Footer p a {
 color:#fff;
}

.Content .ProductList li {
    border: 1px solid #cddee2;
}

.Content .ProductList li:hover, .Content .ProductList li.Over {
    background: #DFF2F7;
}

.ProductList .ProductImage {
    background: #fff;
}

.ProductList strong, .ProductList strong a {
    color: #075899;
}

.ProductPrice, .ProductList em {
    color: #800000;
}

.ProductList .Rating {
    color: #797979;
}

.Right .ProductList li {
    border-bottom: 1px solid #c0dae7;
}

.Content .FeaturedProducts .ProductList li {
    background: #dff2f7;
}

.Content .FeaturedProducts .ProductList li:hover, .Content .FeaturedProducts .ProductList li.Over {
    background: #D2E8EE;
}

.Left .TopSellers li .TopSellerNumber, .Right .TopSellers li .TopSellerNumber { /* Contains the number of the item */
    background: url(../../default/images/blue/TopSellerNumberBg.gif) 0 4px no-repeat;
    color: #075899;
}

.Left .TopSellers li.TopSeller1, .Right .TopSellers li.TopSeller1 { /* No1 seller box */
    border: 1px solid #c0dae7;
    background: #fff;
}

.Left .TopSellers li.TopSeller1 .TopSellerNumber, .Right .TopSellers li.TopSeller1 .TopSellerNumber {
    background: url(../../default/images/blue/TopSellerNumber1Bg.png) 0 0 no-repeat;
    color: #075899;
}

.Breadcrumb {
    border-bottom: 1px solid #DCDFE2;
}


.CompareItem { width:200px; border-left: solid 1px #CACACA; }
.CompareFieldName { font-weight:bold; border-bottom: 1px solid #EFF8FA; }
.CompareFieldTop { border-bottom:solid 1px #85BADF; }
.CompareFieldTop a:hover { color:red; }
.CompareCenter { border-left:solid 1px #85BADF; border-bottom:solid 1px #F2F2F2; }
.CompareLeft { border-left:solid 1px #85BADF; border-bottom:solid 1px #F2F2F2; }

.ViewCartLink {
    background: url('../../default/images/blue/Cart.gif') no-repeat 3px 0;
}

table.CartContents, table.General {
    border: 1px solid #c7d7db;
}

.CartContents thead tr th, table.General thead tr th {
    background: #edf2f3;
    color: #424748;
    border-bottom: 1px solid #c7d7db;
}

.CartContents tfoot .SubTotal td {
    border-top: 1px solid #c7d7db;
    color: #075899;
}

.MiniCart .SubTotal {
    color: #075899;
}

.JustAddedProduct {
    border: 1px solid #c0dae7;
    background: #fff;
}

.JustAddedProduct strong, .JustAddedProduct a {
    color: #075899;
}

.CategoryPagination {
    color: #034285;
    background: #f4fbfc;
    border: 1px solid #c0dae7;
}

.CheckoutRedeemCoupon { background: #EAFDFF; padding: 10px; width: 300px; border: 1px solid #9DD3D8; margin-bottom: 10px; }

.SubCategoryList, .SubBrandList {
    background:#EEF5F9;
}

.InfoMessage {
    background: #EFF8FA url('../../default/images/InfoMessage.gif') no-repeat 5px 8px;
    color: #555;
}

.SuccessMessage {
    background: #E8FFDF url('../../default/images/SuccessMessage.gif') no-repeat 5px 8px;
    color: #555;
}

.ErrorMessage {
    background: #FFECEC url('../../default/images/ErrorMessage.gif') no-repeat 5px 8px;
    color: #555;
}

.ComparisonTable tr:hover td, .ComparisonTable tr.Over td {
    background: #EFF8FA;
}

/* Shipping Estimation on Cart Contents Page */
.EstimateShipping {
    border: 1px solid #c7d7db;
    background: #edf2f3;
}

/* Express Checkout */
.ExpressCheckoutBlock .ExpressCheckoutTitle {
    background: #dcf0f5;
    border: 1px solid #bce0e8;
}

.ExpressCheckoutBlockCollapsed .ExpressCheckoutTitle {
    background: #f0f0f0;
    border: 1px solid #ddd;
    color: #555;
}

.ExpressCheckoutBlockCompleted .ExpressCheckoutCompletedContent {
    color: #888;
}

/* Tabbed Navigation */
.TabNav {
    border-bottom: 1px solid #3d9abe;
}

.TabNav li a {
    border: 1px solid #3d9abe;
    background: #ddf0f6;
}

.TabNav li a:hover {
    background-color: #c8e6ed;
}

.TabNav li.Active a {
    border-bottom: 1px solid #fff;
    background: #fff;
}

/* General Tables */
table.General tbody tr td {
    border-top: 1px solid #efefef;
}

/* Product Videos */

#VideoContainer {
    border: 1px solid #cccccc;
    -moz-border-radius: 5px;
    -webkit-border-radius: 5px;
    border-radius: 5px;
}

.currentVideo {
    background-color: #ddf0f6;
}

.videoRow:hover {
    background-color: #efefef;
}

/* Product Videos */

#VideoContainer {
    border: 1px solid #cccccc;
    -moz-border-radius: 5px;
    -webkit-border-radius: 5px;
    border-radius: 5px;
}

.currentVideo {
    background-color: #ddf0f6;
}

.videoRow:hover {
    background-color: #efefef;
}

#SearchResultsCategoryAndBrand {
    background-color: #EEF5F9;
}

.CartContents .ItemShipping th {
    border-bottom-color: #c7d7db;
    border-top-color: #c7d7db;
    background: #edf2f3;
}
.side-media{
 position:fixed;
-webkit-transition: all 300ms ease;
-moz-transition: all 300ms ease;
-ms-transition: all 300ms ease;
-o-transition: all 300ms ease;
transition: all 300ms ease;  
 width: 80px;
 height:270px;
background: #45484d; /* Old browsers */
background: -moz-linear-gradient(top,  #45484d 0%, #000000 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#45484d), color-stop(100%,#000000)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  #45484d 0%,#000000 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  #45484d 0%,#000000 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  #45484d 0%,#000000 100%); /* IE10+ */
background: linear-gradient(to bottom,  #45484d 0%,#000000 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#45484d', endColorstr='#000000',GradientType=0 ); /* IE6-9 */

 
 border:solid 3px #FFF;
    box-shadow:0px 0px 8px #666;
    z-index:1000;
    border-radius:0px 20px 30px 0px;
    
 left: -70px;
    
 bottom: 22%;
    
}
.side-media:hover{
 left:-5px;   
}
.side-media a{
    float:left;
    margin-left: 35px;
margin-top: 19px;
}
.slider-outer{
 width:100%;  
}
.c1{
 float:left;   
 width: 340px;
 margin-right:30px;
 padding:15px;
 height:370px;   
}
.clr1{
 
background: rgba(241,231,103,1);
background: -moz-linear-gradient(top, rgba(241,231,103,1) 0%, rgba(254,182,69,1) 100%);
background: -webkit-gradient(left top, left bottom, color-stop(0%, rgba(241,231,103,1)), color-stop(100%, rgba(254,182,69,1)));
background: -webkit-linear-gradient(top, rgba(241,231,103,1) 0%, rgba(254,182,69,1) 100%);
background: -o-linear-gradient(top, rgba(241,231,103,1) 0%, rgba(254,182,69,1) 100%);
background: -ms-linear-gradient(top, rgba(241,231,103,1) 0%, rgba(254,182,69,1) 100%);
background: linear-gradient(to bottom, rgba(241,231,103,1) 0%, rgba(254,182,69,1) 100%);
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#f1e767', endColorstr='#feb645', GradientType=0 );
   
}

.clr1 h2{
 border-bottom-color:#C2AE18;   
}
.clr1 p{
 color:#4B2B00   
}
.clr2{
 
background: rgba(147,206,222,1);
background: -moz-linear-gradient(top, rgba(147,206,222,1) 0%, rgba(73,165,191,1) 100%);
background: -webkit-gradient(left top, left bottom, color-stop(0%, rgba(147,206,222,1)), color-stop(100%, rgba(73,165,191,1)));
background: -webkit-linear-gradient(top, rgba(147,206,222,1) 0%, rgba(73,165,191,1) 100%);
background: -o-linear-gradient(top, rgba(147,206,222,1) 0%, rgba(73,165,191,1) 100%);
background: -ms-linear-gradient(top, rgba(147,206,222,1) 0%, rgba(73,165,191,1) 100%);
background: linear-gradient(to bottom, rgba(147,206,222,1) 0%, rgba(73,165,191,1) 100%);
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#93cede', endColorstr='#49a5bf', GradientType=0 );
   
}
.clr3{
 
background: rgba(179,243,245,1);
background: -moz-linear-gradient(top, rgba(179,243,245,1) 0%, rgba(72,207,185,1) 100%);
background: -webkit-gradient(left top, left bottom, color-stop(0%, rgba(179,243,245,1)), color-stop(100%, rgba(72,207,185,1)));
background: -webkit-linear-gradient(top, rgba(179,243,245,1) 0%, rgba(72,207,185,1) 100%);
background: -o-linear-gradient(top, rgba(179,243,245,1) 0%, rgba(72,207,185,1) 100%);
background: -ms-linear-gradient(top, rgba(179,243,245,1) 0%, rgba(72,207,185,1) 100%);
background: linear-gradient(to bottom, rgba(179,243,245,1) 0%, rgba(72,207,185,1) 100%);
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#b3f3f5', endColorstr='#48cfb9', GradientType=0 );
   
}
.clr3 h2{
 border-bottom-color:#35C5A1;   
}
.c2{
 float: left;
width: 1170px;
margin-right: 60px;
height: 125px;
-webkit-border-radius: 10px;
-moz-border-radius: 10px;
border-radius: 10px;  
    background: #ffc578; /* Old browsers */
background: -moz-linear-gradient(top,  #ffc578 0%, #fb9d23 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#ffc578), color-stop(100%,#fb9d23)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  #ffc578 0%,#fb9d23 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  #ffc578 0%,#fb9d23 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  #ffc578 0%,#fb9d23 100%); /* IE10+ */
background: linear-gradient(to bottom,  #ffc578 0%,#fb9d23 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffc578', endColorstr='#fb9d23',GradientType=0 ); /* IE6-9 */

}
.c2 h2{
 color:#fff;
background: #5ea2c4; /* Old browsers */
background: -moz-linear-gradient(top,  #5ea2c4 0%, #258dc8 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#5ea2c4), color-stop(100%,#258dc8)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  #5ea2c4 0%,#258dc8 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  #5ea2c4 0%,#258dc8 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  #5ea2c4 0%,#258dc8 100%); /* IE10+ */
background: linear-gradient(to bottom,  #5ea2c4 0%,#258dc8 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#5ea2c4', endColorstr='#258dc8',GradientType=0 ); /* IE6-9 */;   text-align:center;
}
.full-image{
 float:left;   
 width:100%;
 height:490px;
 margin-top:50px;
 margin-bottom:50px;   
 background: url('../../../product_images/uploaded_images/page1-bg1.jpg') no-repeat;   
    padding-top: 25px;
}
#subscribe_form{
 float: left;
margin-left: 33px;
margin-top: 20px; 
}
.more{
 font-weigt:bold;
 color:#A55C16;
    
}
.img-prev{
 float:left;
 width:590px;   
    margin-top: 30px;
}
.img-thumbs{
 float:left;
 width: 575px;   
}
.img-thumbs .more:hover{
    color:#fff;
}
.img-thumbs .more{
    font-size:18px;
    margin-left:10px;
}
.img-thumbs li{
 float:left;
 list-style:none;
 margin: 8px;
 border: 4px solid transparent;
 cursor:pointer;
 -webkit-transition: all 300ms linear;
-moz-transition: all 300ms linear;
-ms-transition: all 300ms linear;
-o-transition: all 300ms linear;
transition: all 300ms linear;   
}
.img-thumbs li:hover{
  border-color:#000;  
}
.gall1 li{
 display:none;
 list-style:none;   
}
#HomeRecentBlogs li{
 list-style:none;
 margin-bottom:10px;
     padding-bottom:10px;

    text-align:center;
    font-size:20px;
    font-weight:bold;
    color:#FFF;
}
#HomeRecentBlogs li a{
 font-size:15px;   
}
#captcha{
 padding:7px;   
}
.ContactButton{
 background: #563d7c; /* Old browsers */
background: -moz-linear-gradient(top,  #563d7c 0%, #734f99 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#563d7c), color-stop(100%,#734f99)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  #563d7c 0%,#734f99 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  #563d7c 0%,#734f99 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  #563d7c 0%,#734f99 100%); /* IE10+ */
background: linear-gradient(to bottom,  #563d7c 0%,#734f99 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#563d7c', endColorstr='#734f99',GradientType=0 ); /* IE6-9 */
color:#FFF;
font-size:14px;
border:solid 1px #B386E0;
padding:7px;
    cursor:pointer;
}
.ContactButton:hover{
 background: #b386e0; /* Old browsers */
background: -moz-linear-gradient(top,  #b386e0 0%, #563d7c 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#b386e0), color-stop(100%,#563d7c)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  #b386e0 0%,#563d7c 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  #b386e0 0%,#563d7c 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  #b386e0 0%,#563d7c 100%); /* IE10+ */
background: linear-gradient(to bottom,  #b386e0 0%,#563d7c 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#b386e0', endColorstr='#563d7c',GradientType=0 ); /* IE6-9 */
   
}
#PageContent img{
-webkit-border-radius: 10px;
-moz-border-radius: 10px;
border-radius: 10px;
  border:solid 4px #fff;
  box-shadow:0px 0px 5px #999;
  margin:35px;  
}
#PageContent li{
 font-family:Arial;
    color:#ADAEAF;
}
#toTop {
display:none;
    width: 24px;
    height: 24px;
    background: url(../../../product_images/uploaded_images/top.png) no-repeat;
    position: fixed;
    margin-right: -640px !important;
    right: 50%;
    bottom: 120px;
    z-index: 999;
}
#toTop:hover {
    opacity: 0.5;
    filter: alpha(opacity=50);
}
.c3{
 float:left;
 width:275px;
 margin-right: 23px;   
}
.c3 img{
 border-top:solid 5px transparent;
    -webkit-transition: all 300ms linear;
-moz-transition: all 300ms linear;
-ms-transition: all 300ms linear;
-o-transition: all 300ms linear;
transition: all 300ms linear;
}
.c3:hover img{
 border-top-color:#f85032;   
}
.c3 h2{
text-align: center;
font-size: 30px;
color: #000;
padding-top: 5px;
margin-bottom: 60px;
    background: #fff023; /* Old browsers */
background: -moz-linear-gradient(top,  #fff023 0%, #f1da36 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#fff023), color-stop(100%,#f1da36)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  #fff023 0%,#f1da36 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  #fff023 0%,#f1da36 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  #fff023 0%,#f1da36 100%); /* IE10+ */
background: linear-gradient(to bottom,  #fff023 0%,#f1da36 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#fff023', endColorstr='#f1da36',GradientType=0 ); /* IE6-9 */

}
.social a {
 border:none !important;   
}
.simply-scroll{
 height:260px;   
}
.simply-scroll .simply-scroll-clip {
 width:1170px;
 height:250px;   
}
.simply-scroll .simply-scroll-clip li {
 height:260px;   
}
    </style>


      <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <!--------- Back to top start   -------------->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js" type="text/javascript"></script>

<script type="text/javascript">
    $(function () {
        $(window).scroll(function () {
            if ($(this).scrollTop() >= 500) {
                $('#backtotop').fadeIn();
            } else {
                $('#backtotop').fadeOut();
            }
        });

        $('#backtotop').click(function () {
            $('body,html').animate({ scrollTop: 0 }, 800);
        });
    });
</script>
    <style>


#content{
	margin : 20px auto 20px auto;
	padding	: 20px;
	border : 1px solid #333;
	width : 900px;
	height	: auto;
	background : #FFF;
	position : relative;
	text-align : left;
}

p{
	margin : 0px 0px 0px 0px;
	padding	: 5px 0px 10px 0px;
	line-height : 1.6em;
}

h1{
	margin : 0px 0px 0px 0px;
	padding	: 5px 0px 10px 0px;
	font-size : 30px;
	font-weight : normal;
}

#backtotop {
	cursor : pointer;
	display : none;
	margin : 0px 0px 0px 360px;
	position : fixed;
	bottom : 10px;
    left : 800px;
	font-size : 90%;
	padding	: 10px;
	width : 100px;
	text-align : center;
	background-color : #006666;
	border-radius : 8px;
	-webkit-border-radius : 8px;
	-moz-border-radius : 8px;
	filter : alpha(opacity=60);
	-khtml-opacity : 0.6;
	-moz-opacity : 0.6;
	opacity	: 0.6;
	color : #FFF;
	font-size : 14px;
	z-index	: 1000;
}
#backtotop:hover
{
	filter : alpha(opacity=90);
	-khtml-opacity : 0.9;
	-moz-opacity : 0.9;
	opacity	: 0.9;
}
    </style>
    <!--------- Back to top Ends  ----------------->

    <script type='text/javascript' src='http://tour.techinasia.com/wp-includes/js/jquery/jquery.js?ver=1.11.2'></script>

</head>

<body>
     <form id="form1" runat="server">
           <div id="backtotop">Scroll to Top</div>
     <div style="height: 300px">
                  <!--------------Blogger ends   ------------->
         
         <div class="css-slideshow" style="background-color:grey; top: 0px; left: 682px; width: 553px;">
             <label style="color:black">&nbsp;&nbsp;&nbsp; Lattest News</label>
         </div>
                  <div class="css-slideshow" style="background-color:white; top: -453px; left: 987px; width: 150px;height:100px;">
                                <asp:Image  ID="blog1" runat="server" width="150" height="100" /> 

         </div>
                  <div class="css-slideshow" id="mnm" runat=server style="background-color:white; top: -533px; left: 987px; width: 150px;height:100px">
                                <asp:Image  ID="blog2" runat="server" width="150" height="100" /> 

         </div>
                  <div class="css-slideshow" style="background-color:white; top: -609px; left: 987px; width: 150px;height:100px">
                                <asp:Image  ID="blog3" runat="server" width="150" height="100" /> 
         </div>

         <!--------------Blogger ends   ------------->

                 <!--------------Slideshow Starts   ------------->
         <div style="margin-left:50px">
    <div class="css-slideshow">
    <figure>
        <asp:Image  ID="Imag1" runat="server" alt="class-header-device" width="495" height="370" class="alignnone size-full wp-image-177" /> 
                                                                            <!-------- Text bar1 starts  ---->
                         							<div  >
		<a href="/topic/kickstarter" class="kicker" id="tb1a" runat="server">Kickstarter</a>		
                                <h3>
                                    <a href="/article/248140" id="slideshowa1" runat="server"></a>

                                </h3>
                                 <div class="deck">
                                  <a id="tb1aa1" runat="server">  
                                      
                                      </a> 
                                  </div>
					       <a class="authorhero" href="/author/catherine-clifford">
						<img alt="Catherine Clifford" class="lazy" data-original="https://assets.entrepreneur.com/content/1x1/30/20141210220039-catherine-clifford.jpeg" />
					</a>
				
				<div class="byline"><a href="/author/catherine-clifford" id="author1" runat="server"></a></div>
							
							   <a id="time39" runat="server"> </a>
						</div>   
                         <!-------- Text bar1 Ends  ---->
     </figure>
    <figure>
        <asp:Image  ID="Imag2" runat="server" alt="class-header-device" width="495" height="370" class="alignnone size-full wp-image-177" /> 
                                                                            <!-------- Text bar2 starts  ---->
                         							<div  >
		<a href="/topic/kickstarter" class="kicker">Kickstarter</a>		
                                <h3>
                                    <a href="/article/248140" id="slideshowa2" runat="server"></a>

                                </h3>
                                 <div class="deck">
                                       <a id="tb1aa2" runat="server">  
                                      </a>                                  

                                 </div>
					       <a class="authorhero" href="/author/catherine-clifford">
						<img alt="Catherine Clifford" class="lazy" data-original="https://assets.entrepreneur.com/content/1x1/30/20141210220039-catherine-clifford.jpeg" />
					</a>
				
				<div class="byline"><a href="/author/catherine-clifford" id="author2" runat="server"></a></div>
							
							   <a id="time40" runat="server"> </a>
						</div>   
                         <!-------- Text bar2 Ends  ---->
     </figure>
    <figure>
        <asp:Image  ID="Imag3" runat="server" alt="class-header-device" width="495" height="370" class="alignnone size-full wp-image-177" /> 
                                                                            <!-------- Text bar3 starts  ---->
                         							<div  >
		<a href="/topic/kickstarter" class="kicker">Kickstarter</a>		
                                <h3>
                                    <a href="/article/248140" id="slideshowa3" runat="server"></a>

                                </h3>
                                 <div class="deck">
                                       <a id="tb1aa3" runat="server">  
                                      </a>                                   

                                 </div>
					       <a class="authorhero" href="/author/catherine-clifford">
						<img alt="Catherine Clifford" class="lazy" data-original="https://assets.entrepreneur.com/content/1x1/30/20141210220039-catherine-clifford.jpeg" />
					</a>
				
				<div class="byline"><a href="/author/catherine-clifford" id="author3" runat="server"></a></div>
							
							   <a id="time41" runat="server"> </a>
						</div>   
                         <!-------- Text bar3 Ends  ---->
     </figure> 
    <figure>
    <!--    <img src="images/3.3.jpg" alt="class-header-device" width="495" height="370" class="alignnone size-full wp-image-177" /> -->
        <asp:Image  ID="img1" runat="server" alt="class-header-device" width="495" height="370" class="alignnone size-full wp-image-177" /> 
                                                                            <!-------- Text bar4 starts  ---->
                         							<div  >
		<a href="/topic/kickstarter" class="kicker">Kickstarter</a>		
                                <h3>
                                    <a href="/article/248140" id="slideshowa4" runat="server"></a>

                                </h3>
                                 <div class="deck">
                                       <a id="tb1aa4" runat="server">  
                                      </a>                                   

                                 </div>
					       <a class="authorhero" href="/author/catherine-clifford">
						<img alt="Catherine Clifford" class="lazy" data-original="https://assets.entrepreneur.com/content/1x1/30/20141210220039-catherine-clifford.jpeg" />
					</a>
				
				<div class="byline"><a href="/author/catherine-clifford" id="author4" runat="server"></a></div>
							
							   <a id="time42" runat="server"> </a>
						</div>   
                         <!-------- Text bar4 Ends  ---->
     </figure>
<figure>
     <!--   <img src="images/4.4.jpg" alt="class-header-connectivity" width="495" height="370" class="alignnone size-large wp-image-176" /> -->
            <asp:Image  ID="img2" runat="server" alt="class-header-device" width="495" height="370" class="alignnone size-full wp-image-177" /> 
                                                                            <!-------- Text bar5 starts  ---->
                         							<div  >
		<a href="/topic/kickstarter" class="kicker">Kickstarter</a>		
                                <h3>
                                    <a href="/article/248140" id="slideshowa5" runat="server"></a>

                                </h3>
                                 <div class="deck">
                                       <a id="tb1aa5" runat="server">  
                                      </a>                                   </div>
					       <a class="authorhero" href="/author/catherine-clifford">
						<img alt="Catherine Clifford" class="lazy" data-original="https://assets.entrepreneur.com/content/1x1/30/20141210220039-catherine-clifford.jpeg" />
					</a>
				
				<div class="byline"><a href="/author/catherine-clifford" id="author5" runat="server"></a></div>
							
							   <a id="time43" runat="server"> </a>
						</div>   
                         <!-------- Text bar5 Ends  ---->
     </figure>
    <figure>
      <!--  <img src="images/1.1.jpg" alt="class-header-multimedia" width="495" height="370" class="alignnone size-large wp-image-175" /> -->
                    <asp:Image  ID="img3" runat="server" alt="class-header-device" width="495" height="370" class="alignnone size-full wp-image-177" /> 
                                                                            <!-------- Text bar6 starts  ---->
                         							<div  >
		<a href="/topic/kickstarter" class="kicker">Kickstarter</a>		
                                <h3>
                                    <a href="/article/248140" id="slideshowa6" runat="server"></a>

                                </h3>
                                 <div class="deck">
                                       <a id="tb1aa6" runat="server">  
                                      </a>                                   </div>
					       <a class="authorhero" href="/author/catherine-clifford">
						<img alt="Catherine Clifford" class="lazy" data-original="https://assets.entrepreneur.com/content/1x1/30/20141210220039-catherine-clifford.jpeg" />
					</a>
				
				<div class="byline"><a href="/author/catherine-clifford" id="author6" runat="server"></a></div>
							
							   <a id="time44" runat="server"> </a>
						</div>   
                         <!-------- Text bar6 Ends  ---->
     </figure>
    <figure>
    <!--    <img src="images/2.2.jpg" alt="class-header-3d" width="495" height="370" class="alignnone size-large wp-image-174" /> -->
                    <asp:Image  ID="img4" runat="server" alt="class-header-device" width="495" height="370" class="alignnone size-full wp-image-177" /> 
                                                                            <!-------- Text bar7 starts  ---->
                         							<div  >
		<a href="/topic/kickstarter" class="kicker">Kickstarter</a>		
                                <h3>
                                    <a href="/article/248140" id="slideshowa7" runat="server"></a>

                                </h3>
                                 <div class="deck">
                                       <a id="tb1aa7" runat="server">  
                                      </a>                                   </div>
					       <a class="authorhero" href="/author/catherine-clifford">
						<img alt="Catherine Clifford" class="lazy" data-original="https://assets.entrepreneur.com/content/1x1/30/20141210220039-catherine-clifford.jpeg" />
					</a>
				
				<div class="byline"><a href="/author/catherine-clifford" id="author7" runat="server"></a></div>
							
							   <a id="time45" runat="server"> </a>
						</div>   
                         <!-------- Text bar7 Ends  ---->
     </figure>
            <figure>
    <!--    <img src="images/3.3.jpg" alt="class-header-performance" width="495" height="370" class="alignnone size-large wp-image-173" />  -->
                    <asp:Image  ID="img5" runat="server" alt="class-header-device" width="495" height="370" class="alignnone size-full wp-image-177" /> 
                                                                            <!-------- Text bar8 starts  ---->
                         							<div  >
		<a href="/topic/kickstarter" class="kicker">Kickstarter</a>		
                                <h3>
                                    <a href="/article/248140" id="slideshowa8" runat="server"></a>

                                </h3>
                                 <div class="deck">
                                       <a id="tb1aa8" runat="server">  
                                      </a>                                   </div>
					       <a class="authorhero" href="/author/catherine-clifford">
						<img alt="Catherine Clifford" class="lazy" data-original="https://assets.entrepreneur.com/content/1x1/30/20141210220039-catherine-clifford.jpeg" />
					</a>
				
				<div class="byline"><a href="/author/catherine-clifford" id="author8" runat="server"></a></div>
							
							   <a id="time46" runat="server"> </a>
						</div>   
                         <!-------- Text bar8 Ends  ---->
     </figure>
  </div>  
             </div>
        
                          <!--------------Slideshow ends   ------------->

                  <!--------------Blogger Text starts   ------------->
                           <div class="css-slideshow" style="background-color:white; top: -1522px; left: 689px; width: 279px; height:100px;">
  <!------  <asp:TextBox ID="tbx1" runat="server" style="top: -1522px; left: 689px;width: 279px; height:100px" ReadOnly="True" TextMode="MultiLine">
    </asp:TextBox > ------------->
                                                        <!-------- Text bar starts  ---->
                         							<div  >
                                <h3>
                                    <a href="/article/248140" id="tb0a0" runat="server"></a>

                                </h3>											
						</div>   
                         <!-------- Text bar Ends  ---->

         </div>
                  <div class="css-slideshow" style="background-color:white; top: -1602px; left: 689px; width: 279px; height:100px;">
   <!--------- <asp:TextBox ID="tbx2" runat="server" style="background-color:white; top: -1602px; left: 689px; width: 279px; height:100px;" ReadOnly="True" TextMode="MultiLine" >

    </asp:TextBox >    ------------>
                                               <!-------- Text bar starts  ---->
                         							<div  >
                                <h3>
                                    <a href="/article/248140" id="tb2a2" runat="server"></a>

                                </h3>											
						</div>   
                         <!-------- Text bar Ends  ---->
                           </div>
                  <div class="css-slideshow" style="background-color:white; top: -1677px; left: 689px; width: 279px; height:100px;">
    <!---<asp:TextBox ID="tbx3" runat="server" style="background-color:white; top: -1677px; left: 689px; width: 279px; height:100px;" ReadOnly="True" TextMode="MultiLine">

    </asp:TextBox > ------->        
                         <!-------- Text bar starts  ---->
                         							<div  >
                                <h3>
                                    <a href="/article/248140" id="tb3a3" runat="server"></a>

                                </h3>											
						</div>   
                         <!-------- Text bar Ends  ---->
                  </div>

         <!--------------Blogger text ends   ------------->
     </div>
         <div class="css-slide">
         <asp:Label ID="lbname" runat="server">
            
         </asp:Label>
             </div>


            				
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script>
    $(function () {
        var prevScroll = 0,
            curDir = 'down',
            prevDir = 'up';

        $(window).scroll(function () {
            if ($(this).scrollTop() >= prevScroll) {
                curDir = 'down';
                if (curDir != prevDir) {
                    $('.nav').stop();
                    $('.nav').animate({ top: '-100px' }, 300);
                    prevDir = curDir;
                }
            } else {
                curDir = 'up';
                if (curDir != prevDir) {
                    $('.nav').stop();
                    $('.nav').animate({ top: '0px' }, 300);
                    prevDir = curDir;
                }
            }
            prevScroll = $(this).scrollTop();
        });
    })
</script>
<script type="text/javascript">

    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-36251023-1']);
    _gaq.push(['_setDomainName', 'jqueryscript.net']);
    _gaq.push(['_trackPageview']);

    (function () {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();

</script>
         <div runat="server" id="theDiv1" style="margin-top:200px">     
             <center>
    <asp:Button ID="Btncreat" runat="server" onclick="BtncreatNewForm_Click" Text="CREATE NEW FORM" Width="311px" style="background-color:#006666; color:white"  ></asp:Button>
                 <asp:Label ID="lbcheck" runat="server" Text=""></asp:Label>
                 </center>
             <br />   
             <div class="img" style="width: 229px">
             <section>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:FileUpload ID="FileSlideshow" runat="server" />
                 &nbsp;&nbsp;&nbsp;
                 <asp:Button ID="Button14" runat="server" onclick="Button14_Click" Text="Upload" />
                 <br />

                  <br />
                 <asp:Label ID="l2" runat="server" Text=""></asp:Label>
             </section>
         </div>
          <div class="img" style="width: 167px">
                      <asp:CheckBox ID="slide1" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="slide2" runat="server" Width="23px"/>
                      &nbsp;
                      <asp:CheckBox ID="slide3" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="slide4" runat="server" style="width:20px"/>
                                    &nbsp;
                      <asp:CheckBox ID="slide5" runat="server" style="width:20px"/>
                                                 <label>Slide show</label>
                     </div>
&nbsp;<div class="img" style="width: 229px">
             <section>
                 <asp:FileUpload ID="FileBlog" runat="server" />
                 &nbsp;&nbsp;&nbsp;
                 <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Upload" />
                 <br />

                  <br />
                 <asp:Label ID="Label13" runat="server" Text=""></asp:Label>
             </section>
         </div>

                   <div class="img" style="width: 120px">
                      <asp:CheckBox ID="pic1" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="pic2" runat="server" Width="23px"/>
                      &nbsp;
                      <asp:CheckBox ID="pic3" runat="server" style="width:20px"/>
                     <label>Images</label>
                     </div>
                   <div class="img" style="width: 105px">
                      <asp:CheckBox ID="text1" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="text2" runat="server" Width="23px"/>
                      &nbsp;
                      <asp:CheckBox ID="text3" runat="server" style="width:20px"/>
                     <label>Blog text</label>
                     </div>
     <br />     
       <asp:TextBox ID="tb1" runat="server" Width="241px" style="opacity: 0.5;filter: alpha(opacity=50)" BorderColor="Black" BorderWidth="5" placeholder="Write Blog*"></asp:TextBox >

         <asp:Button ID="btntextpost" runat="server" Text="Post" OnClick="btntextpost_Click1" />

     &nbsp;
             <br /><br /><br />
                   <div class="img" style="width: 133px">
                      <asp:CheckBox ID="text4" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="text5" runat="server" Width="23px"/>
                      &nbsp;
                      <asp:CheckBox ID="text6" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="text7" runat="server" style="width:20px"/>
                        &nbsp;
                      <asp:CheckBox ID="CheckBox1" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox2" runat="server" Width="23px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox3" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox4" runat="server" style="width:20px"/>
                     <label>SlideShow Heading text</label>
                     </div>

     &nbsp;<div class="img" style="width: 132px">
                      <asp:CheckBox ID="text8" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="text9" runat="server" Width="23px"/>
                      &nbsp;
                      <asp:CheckBox ID="text10" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="text11" runat="server" style="width:20px"/>
                       &nbsp;
                      <asp:CheckBox ID="CheckBox5" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox6" runat="server" Width="23px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox7" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox8" runat="server" style="width:20px"/>
                     <label>SlideShow small text</label>
                     </div>  
                  &nbsp;<br /><br /><br />   <asp:TextBox ID="tbslideshow" runat="server" Width="241px" style="opacity: 0.5;filter: alpha(opacity=50)" BorderColor="Black" BorderWidth="5" placeholder="Write Blog*"></asp:TextBox >

         <asp:Button ID="Button8" runat="server" Text="Post" OnClick="btnslidepost_Click" />
              <br /><br /><br />

     <br />
     <br />
     <br />


         <style>
             sectionn {
    width: 80%;
    height: 200px;
    
    padding: 10px;
}
div#onee {
    width: 15%;
    height: 114px;
}
div#twoo {
    margin-left: 15%;
    height: 114px;
}
         </style>
         <div style="height: 26px">
         <!-------------- upload1 starts   ------------>
             <div class="img" style="width: 229px">
         <section>
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:FileUpload ID="FileUpload1" runat="server" />

       &nbsp;&nbsp;&nbsp;

       <asp:Button ID="Button1" runat="server" Text="Upload" onclick="Button1_Click"/>

       <br />

        <br />
        <asp:Label ID="l1" runat="server" Text=""></asp:Label>
   
</section>

                      </div>
                              <div class="img" style="width: 229px">
                      <asp:CheckBox ID="onne" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="twwo" runat="server" Width="23px"/>
                      &nbsp;
                      <asp:CheckBox ID="three" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="four" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox13" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox14" runat="server" Width="23px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox15" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox16" runat="server" style="width:20px"/>
                       <label>Lattest TAG Pictures</label>
                     </div>
                                <div class="img" style="width: 128px">
                      <asp:CheckBox ID="cb1" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="cb2" runat="server" Width="23px"/>
                      &nbsp;
                      <asp:CheckBox ID="cb3" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="cb4" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox29" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox30" runat="server" Width="23px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox31" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox32" runat="server" style="width:20px"/>
                     <label>Lattest Pics Heading Text</label>
                     </div>
                      
                      <div class="img" style="width: 128px">
                      <asp:CheckBox ID="CheckBox33" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox34" runat="server" Width="23px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox35" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox36" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox37" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox38" runat="server" Width="23px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox39" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox40" runat="server" style="width:20px"/>
                     <label>Lattest Pics Small Text</label>
                     </div>
                     
              <asp:TextBox ID="TextBox1" runat="server" Width="241px" style="opacity: 0.5;filter: alpha(opacity=50)" BorderColor="Black" BorderWidth="5" placeholder="Write Blog*"></asp:TextBox >

         <asp:Button ID="Button3" runat="server" Text="Post" OnClick="btntextpost_Click2" Width="52px" />
                           <!-------------- upload1 ends   ------------>
             </div>

         <br />
     <br />
                  <br />
                  <br />
             </div>

         <br />
     <br />


         <br />
                  <br />

         <br />
           <br />
           <br />
           <br />
     <br />
    <style>
        section {
    width: 18%;
    height: 12px;
    padding: 10px;
}
div#one {
    width: 5%;
    height: 24px;
    float: left;
    margin-left:0px;
    margin-top: 0px;
    background-color:grey;
        }
div#two {
    margin-left: 53px;
    height: 5px;
    background: black;
            width: 1189px;
            top:30px;
        }
    </style>
     <!------------ Section 1 starts   ------> 
        <div style="margin-left:50px">
    <div id="one"  style="color:white; background-color:#006666" >Lattest</div>
    <section>
    <div id="two"></div>
</section>
    </div>


         <div style="margin-left:90px">
 
	<div id="vc_images-carousel-1-1436213477" data-ride="vc_carousel"
			 data-wrap="true" style="width: 100%;"
			 data-interval="1000" data-auto-height="yes"
			 data-mode="horizontal" data-partial="false"
			 data-per-view="3"
			 data-hide-on-end="false" class="vc_slide vc_images_carousel">
 			<div class="vc_carousel-inner">
				<div class="vc_carousel-slideline">
					<div class="vc_carousel-slideline-inner">
						<div class="vc_item">
						   <div class="vc_inner">
                 <asp:Image  ID="Image121" runat="server" alt="mini web banner for tour - osaka-2" width="300" height="300"  class="attachment-full" />														
                                </div>

                                                                              <!-------- Text bar1 starts  ---->
                         							<div  >
		<a href="/topic/kickstarter" class="kicker">Kickstarter</a>		
                                <h3>
                                    <a href="/article/248140" id="heading1" runat="server"></a>

                                </h3>
                                 <div class="deck">
   <a id="small1" runat="server"> 
                                       </a>
                                  </div>
					       <a class="authorhero" href="/author/catherine-clifford">
						<img alt="Catherine Clifford" class="lazy" data-original="https://assets.entrepreneur.com/content/1x1/30/20141210220039-catherine-clifford.jpeg" />
					</a>
				
				<div class="byline"><a href="/author/catherine-clifford" id="authorr1" runat="server">Catherine Clifford</a></div>
							   <a id="time1" runat="server"> </a>
									<!----<time datetime="2015-07-07 17:47:00">2015-07-07 17:47:00</time>  ------->
						</div>   
                         <!-------- Text bar1 Ends  ---->
						</div>
						 <div class="vc_item">
							<div class="vc_inner">
     <asp:Image  ID="Image122" runat="server" alt="mini web banner for tour - jakarta-2" width="300" height="300"  class="attachment-full" />																												
                                 </div>

                                                                               <!-------- Text bar2 starts  ---->
                        							<div  >
		<a href="/topic/kickstarter" class="kicker">Kickstarter</a>		
                                <h3>
                                    <a href="/article/248140" id="A2" runat="server"></a>

                                </h3>
                                 <div class="deck">
    <a id="A3" runat="server">  
                                       </a>
                                  </div>
					       <a class="authorhero" href="/author/catherine-clifford">
						<img alt="Catherine Clifford" class="lazy" data-original="https://assets.entrepreneur.com/content/1x1/30/20141210220039-catherine-clifford.jpeg" />
					</a>
				
				<div class="byline"><a href="/author/catherine-clifford" id="a4" runat="server">Catherine Clifford</a></div>
							
							   <a id="time2" runat="server"> </a>
						</div> 
                         <!-------- Text bar2 Ends  ---->
						</div>
						 <div class="vc_item">
							<div class="vc_inner">
               <asp:Image  ID="Image123" runat="server" alt="mini web banner for tour - hong kong-2" width="300" height="300"  class="attachment-full" />																												
															
                                 </div>

                                                                               <!-------- Text bar3 starts  ---->
                        							<div  >
		<a href="/topic/kickstarter" class="kicker">Kickstarter</a>		
                                <h3>
                                    <a href="/article/248140" id="A5" runat="server"></a>

                                </h3>
                                 <div class="deck">
     <a id="A6" runat="server">  
                                       </a>
                                  </div>
					       <a class="authorhero" href="/author/catherine-clifford">
						<img alt="Catherine Clifford" class="lazy" data-original="https://assets.entrepreneur.com/content/1x1/30/20141210220039-catherine-clifford.jpeg" />
					</a>
				
				<div class="byline"><a href="/author/catherine-clifford" id="a7" runat="server">Catherine Clifford</a></div>
							
							   <a id="time3" runat="server"> </a>
						</div> 
                         <!-------- Text bar3 Ends  ---->
						</div>
						 <div class="vc_item">
							<div class="vc_inner">
         <asp:Image  ID="Image124" runat="server" alt="mini web banner for tour - bangkok" width="300" height="300"  class="attachment-full" />																												
												
                                 </div>

                                                                               <!-------- Text bar4 starts  ---->
                        							<div  >
		<a href="/topic/kickstarter" class="kicker">Kickstarter</a>		
                                <h3>
                                    <a href="/article/248140" id="A8" runat="server"></a>

                                </h3>
                                 <div class="deck">
    <a id="A9" runat="server">  
                                       </a>
                                  </div>
					       <a class="authorhero" href="/author/catherine-clifford">
						<img alt="Catherine Clifford" class="lazy" data-original="https://assets.entrepreneur.com/content/1x1/30/20141210220039-catherine-clifford.jpeg" />
					</a>
				
				<div class="byline"><a href="/author/catherine-clifford" id="a10" runat="server">Catherine Clifford</a></div>
							
							   <a id="time4" runat="server"> </a>
						</div> 
                         <!-------- Text bar4 Ends  ---->
						</div>
						 <div class="vc_item">
							<div class="vc_inner">
         <asp:Image  ID="Image125" runat="server" alt="mini web banner for tour - fukuoka" width="300" height="300"  class="attachment-full" />																												
															
                                 </div>

                                                                               <!-------- Text bar5 starts  ---->
                        							<div  >
		<a href="/topic/kickstarter" class="kicker">Kickstarter</a>		
                                <h3>
                                    <a href="/article/248140" id="A11" runat="server"></a>

                                </h3>
                                 <div class="deck">
     <a id="A12" runat="server"> 
                                       </a>
                                  </div>
					       <a class="authorhero" href="/author/catherine-clifford">
						<img alt="Catherine Clifford" class="lazy" data-original="https://assets.entrepreneur.com/content/1x1/30/20141210220039-catherine-clifford.jpeg" />
					</a>
				
				<div class="byline"><a href="/author/catherine-clifford" id="a13" runat="server">Catherine Clifford</a></div>
							
							   <a id="time5" runat="server"> </a>
						</div> 
                         <!-------- Text bar5 Ends  ---->
						</div>
					 <div class="vc_item">
							<div class="vc_inner">
        <asp:Image  ID="Image126" runat="server" alt="mini web banner for tour - singapore" width="300" height="300"  class="attachment-full" />																												
														
                                 </div>
 
                                                                           <!-------- Text bar6 starts  ---->
                         							<div  >
		<a href="/topic/kickstarter" class="kicker">Kickstarter</a>		
                                <h3>
                                    <a href="/article/248140" id="A14" runat="server"></a>

                                </h3>
                                 <div class="deck">
       <a id="A15" runat="server">
                                       </a>
                                  </div>
					       <a class="authorhero" href="/author/catherine-clifford">
						<img alt="Catherine Clifford" class="lazy" data-original="https://assets.entrepreneur.com/content/1x1/30/20141210220039-catherine-clifford.jpeg" />
					</a>
				
				<div class="byline"><a href="/author/catherine-clifford" id="a16" runat="server">Catherine Clifford</a></div>
							
							   <a id="time6" runat="server"> </a>
						</div> 
                         <!-------- Text bar6 Ends  ---->
						</div>
					 <div class="vc_item">
							<div class="vc_inner">
        <asp:Image  ID="Image127" runat="server" alt="mini web banner for tour - taipei" width="300" height="300"  class="attachment-full" />																												
															

							</div>

                                                                           <!-------- Text bar7 starts  ---->
                        							<div  >
		<a href="/topic/kickstarter" class="kicker">Kickstarter</a>		
                                <h3>
                                    <a href="/article/248140" id="A17" runat="server"></a>

                                </h3>
                                 <div class="deck">
             <a id="A18" runat="server"> 
                                       </a>
                                  </div>
					       <a class="authorhero" href="/author/catherine-clifford">
						<img alt="Catherine Clifford" class="lazy" data-original="https://assets.entrepreneur.com/content/1x1/30/20141210220039-catherine-clifford.jpeg" />
					</a>
				
				<div class="byline"><a href="/author/catherine-clifford" id="a19" runat="server">Catherine Clifford</a></div>
							
							   <a id="time7" runat="server"> </a>
						</div> 
                         <!-------- Text bar7 Ends  ---->
						</div>
					 <div class="vc_item">
							<div class="vc_inner">
           <asp:Image  ID="Image128" runat="server" alt="mini web banner for tour - tokyo" width="300" height="300"  class="attachment-full" />																												
         														

							</div>

                                                                           <!-------- Text bar8 starts  ---->
                        							<div  >
		<a href="/topic/kickstarter" class="kicker">Kickstarter</a>		
                                <h3>
                                    <a href="/article/248140" id="A20" runat="server"></a>

                                </h3>
                                 <div class="deck">
     <a id="A21" runat="server"> 
                                       </a>
                                  </div>
					       <a class="authorhero" href="/author/catherine-clifford">
						<img alt="Catherine Clifford" class="lazy" data-original="https://assets.entrepreneur.com/content/1x1/30/20141210220039-catherine-clifford.jpeg" />
					</a>
				
				<div class="byline"><a href="/author/catherine-clifford" id="a22" runat="server">Catherine Clifford</a></div>
							
							   <a id="time8" runat="server"> </a>
						</div> 
                         <!-------- Text bar8 Ends  ---->
						</div>
											</div>
				</div>
			</div>
						<!-- Controls -->
			<a class="vc_left vc_carousel-control" href="#vc_images-carousel-1-1436213477" data-slide="prev">
				<span class="icon-prev"></span>
			</a>
			<a class="vc_right vc_carousel-control" href="#vc_images-carousel-1-1436213477" data-slide="next">
				<span class="icon-next"></span>
			</a>
					</div>
  
<link rel='stylesheet' id='vc_carousel_css-css'  href='http://tour.techinasia.com/wp-content/plugins/js_composer/assets/lib/vc_carousel/css/vc_carousel.css?ver=4.3.5' 
    type='text/css' media='all' />
<script type='text/javascript' src='http://tour.techinasia.com/wp-content/plugins/contact-form-7/includes/js/jquery.form.min.js?ver=3.51.0-2014.06.20'></script>
<script type='text/javascript' src='http://tour.techinasia.com/wp-content/plugins/js_composer/assets/lib/vc_carousel/js/transition.js?ver=4.3.5'></script>
<script type='text/javascript' src='http://tour.techinasia.com/wp-content/plugins/js_composer/assets/lib/vc_carousel/js/vc_carousel.js?ver=4.3.5'></script>
         </div>
                            
    <br /><br /><br /><br /> 
    <!------------ Section 1 Ends   ------>  
  
 

                  <!-------------- upload5 starts   ------------>

         <div runat="server" id="theDiv2">
         <div style="height: 26px">
             <div class="img" style="width: 229px">
         <section>
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:FileUpload ID="FileUpload5" runat="server" />

       &nbsp;&nbsp;&nbsp;

       <asp:Button ID="Button5" runat="server" Text="Upload" onclick="Button5_Click"/>

       <br />

        <br />
        <asp:Label ID="Label16" runat="server" Text=""></asp:Label>
   
</section>
                      </div>
                                           <div class="img" style="width: 147px">
                      <asp:CheckBox ID="five" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="six" runat="server" Width="23px"/>
                      &nbsp;
                      <asp:CheckBox ID="seven" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="eight" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox17" runat="server" Width="23px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox18" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox19" runat="server" style="width:20px"/>                      
                      &nbsp;
                      <asp:CheckBox ID="CheckBox20" runat="server" Width="23px"/>

                     </div>
              <div class="img" style="width: 125px">
                      <asp:CheckBox ID="cbb1" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="cbb2" runat="server" Width="23px"/>
                      &nbsp;
                      <asp:CheckBox ID="cbb3" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="cbb4" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox49" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox50" runat="server" Width="23px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox51" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox52" runat="server" style="width:20px"/>
                     <label>Tablet Heading Text</label>
                     </div>
                           <div class="img" style="width: 128px">
                      <asp:CheckBox ID="CheckBox53" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox54" runat="server" Width="23px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox55" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox56" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox57" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox58" runat="server" Width="23px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox59" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox60" runat="server" style="width:20px"/>
                     <label>Tablet Small Text</label>
                     </div>

              <asp:TextBox ID="TextBox2" runat="server" Width="241px" style="opacity: 0.5;filter: alpha(opacity=50)" BorderColor="Black" BorderWidth="5" placeholder="Write Blog*"></asp:TextBox >

         <asp:Button ID="Button4" runat="server" Text="Post" OnClick="btntextpost_Click3" Width="52px" />

             </div>
         <br /><br /><br /><br />
          <br /><br />
             </div>
          <br /><br /> <br />
                                    <!-------------- upload5 ends   ------------>

      <!------------ Section 2 starts   ------> 
        <div style="margin-left:50px">
    <div id="one"  style="color:white; background-color:#006666" >Tablets</div>
    <section>
    <div id="two"></div>
</section>
    </div>
         <div style="margin-left:90px">
 
	<div id="vc_images-carousel-1-14362134727" data-ride="vc_carousel"
			 data-wrap="true" style="width: 100%;"
			 data-interval="1000" data-auto-height="yes"
			 data-mode="horizontal" data-partial="false"
			 data-per-view="3"
			 data-hide-on-end="false" class="vc_slide vc_images_carousel">
 			<div class="vc_carousel-inner">
				<div class="vc_carousel-slideline">
					<div class="vc_carousel-slideline-inner">
						<div class="vc_item">
						   <div class="vc_inner">
                 <asp:Image  ID="Image7" runat="server" alt="mini web banner for tour - osaka-2" width="300" height="300" class="attachment-full" />														
                                </div>

                                                                              <!-------- Text bar1 starts  ---->
                         							<div  >
		<a href="/topic/kickstarter" class="kicker">Kickstarter</a>		
                                <h3>
                                    <a href="/article/248140" id="A23" runat="server"></a>

                                </h3>
                                 <div class="deck">
   <a id="A24" runat="server">
                                       </a>
                                  </div>
					       <a class="authorhero" href="/author/catherine-clifford">
						<img alt="Catherine Clifford" class="lazy" data-original="https://assets.entrepreneur.com/content/1x1/30/20141210220039-catherine-clifford.jpeg" />
					</a>
				
				<div class="byline"><a href="/author/catherine-clifford" id="a25" runat="server">Catherine Clifford</a></div>
							
							   <a id="time9" runat="server"> </a>
						</div>   
                         <!-------- Text bar1 Ends  ---->
						</div>
						 <div class="vc_item">
							<div class="vc_inner">
     <asp:Image  ID="Image8" runat="server" alt="mini web banner for tour - jakarta-2" width="300" height="300" class="attachment-full" />																												
                                 </div>

                                                                               <!-------- Text bar2 starts  ---->
                        							<div  >
		<a href="/topic/kickstarter" class="kicker">Kickstarter</a>		
                                <h3>
                                    <a href="/article/248140" id="A26" runat="server"></a>

                                </h3>
                                 <div class="deck">
         <a id="A27" runat="server">
                                       </a>
                                  </div>
					       <a class="authorhero" href="/author/catherine-clifford">
						<img alt="Catherine Clifford" class="lazy" data-original="https://assets.entrepreneur.com/content/1x1/30/20141210220039-catherine-clifford.jpeg" />
					</a>
				
				<div class="byline"><a href="/author/catherine-clifford" id="a28" runat="server">Catherine Clifford</a></div>
							
							   <a id="time10" runat="server"> </a>
						</div> 
                         <!-------- Text bar2 Ends  ---->
						</div>
						 <div class="vc_item">
							<div class="vc_inner">
               <asp:Image  ID="Image9" runat="server" alt="mini web banner for tour - hong kong-2" width="300" height="300" class="attachment-full" />																												
															
                                 </div>

                                                                               <!-------- Text bar3 starts  ---->
                        							<div  >
		<a href="/topic/kickstarter" class="kicker">Kickstarter</a>		
                                <h3>
                                    <a href="/article/248140" id="A29" runat="server"></a>

                                </h3>
                                 <div class="deck">
              <a id="A30" runat="server">
                                       </a>
                                  </div>
					       <a class="authorhero" href="/author/catherine-clifford">
						<img alt="Catherine Clifford" class="lazy" data-original="https://assets.entrepreneur.com/content/1x1/30/20141210220039-catherine-clifford.jpeg" />
					</a>
				
				<div class="byline"><a href="/author/catherine-clifford" id="a31" runat="server">Catherine Clifford</a></div>
							
							   <a id="time11" runat="server"> </a>
						</div> 
                         <!-------- Text bar3 Ends  ---->
						</div>
						 <div class="vc_item">
							<div class="vc_inner">
         <asp:Image  ID="Image10" runat="server" alt="mini web banner for tour - bangkok" width="300" height="300" class="attachment-full" />																												
												
                                 </div>

                                                                               <!-------- Text bar4 starts  ---->
                        							<div  >
		<a href="/topic/kickstarter" class="kicker">Kickstarter</a>		
                                <h3>
                                    <a href="/article/248140" id="A32" runat="server"></a>

                                </h3>
                                 <div class="deck">
      <a id="A33" runat="server"> 
                                       </a>
                                  </div>
					       <a class="authorhero" href="/author/catherine-clifford">
						<img alt="Catherine Clifford" class="lazy" data-original="https://assets.entrepreneur.com/content/1x1/30/20141210220039-catherine-clifford.jpeg" />
					</a>
				
				<div class="byline"><a href="/author/catherine-clifford" id="a34" runat="server">Catherine Clifford</a></div>
							
							   <a id="time12" runat="server"> </a>
						</div> 
                         <!-------- Text bar4 Ends  ---->
						</div>
						 <div class="vc_item">
							<div class="vc_inner">
         <asp:Image  ID="Image11" runat="server" alt="mini web banner for tour - fukuoka" width="300" height="300"  class="attachment-full" />																												
															
                                 </div>

                                                                               <!-------- Text bar5 starts  ---->
                        							<div  >
		<a href="/topic/kickstarter" class="kicker">Kickstarter</a>		
                                <h3>
                                    <a href="/article/248140" id="A35" runat="server"></a>

                                </h3>
                                 <div class="deck">
         <a id="A36" runat="server">
                                       </a>
                                  </div>
					       <a class="authorhero" href="/author/catherine-clifford">
						<img alt="Catherine Clifford" class="lazy" data-original="https://assets.entrepreneur.com/content/1x1/30/20141210220039-catherine-clifford.jpeg" />
					</a>
				
				<div class="byline"><a href="/author/catherine-clifford" id="a37" runat="server">Catherine Clifford</a></div>
							
							   <a id="time13" runat="server"> </a>
						</div> 
                         <!-------- Text bar5 Ends  ---->
						</div>
					 <div class="vc_item">
							<div class="vc_inner">
        <asp:Image  ID="Image12" runat="server" alt="mini web banner for tour - singapore" width="300" height="300" class="attachment-full" />																												
														
                                 </div>

                                                                           <!-------- Text bar6 starts  ---->
                         							<div  >
		<a href="/topic/kickstarter" class="kicker">Kickstarter</a>		
                                <h3>
                                    <a href="/article/248140" id="A38" runat="server"></a>

                                </h3>
                                 <div class="deck">
         <a id="A39" runat="server">
                                       </a>
                                  </div>
					       <a class="authorhero" href="/author/catherine-clifford">
						<img alt="Catherine Clifford" class="lazy" data-original="https://assets.entrepreneur.com/content/1x1/30/20141210220039-catherine-clifford.jpeg" />
					</a>
				
				<div class="byline"><a href="/author/catherine-clifford" id="a40" runat="server">Catherine Clifford</a></div>
							
							   <a id="time14" runat="server"> </a>
						</div> 
                         <!-------- Text bar6 Ends  ---->
						</div>
					 <div class="vc_item">
							<div class="vc_inner">
        <asp:Image  ID="Image13" runat="server" alt="mini web banner for tour - taipei" width="300" height="300"  class="attachment-full" />																												
															

							</div>

                                                                           <!-------- Text bar7 starts  ---->
                        							<div  >
		<a href="/topic/kickstarter" class="kicker">Kickstarter</a>		
                                <h3>
                                    <a href="/article/248140" id="A41" runat="server"></a>

                                </h3>
                                 <div class="deck">
        <a id="A42" runat="server"> 
                                       </a>
                                  </div>
					       <a class="authorhero" href="/author/catherine-clifford">
						<img alt="Catherine Clifford" class="lazy" data-original="https://assets.entrepreneur.com/content/1x1/30/20141210220039-catherine-clifford.jpeg" />
					</a>
				
				<div class="byline"><a href="/author/catherine-clifford" id="a43" runat="server">Catherine Clifford</a></div>
							
							   <a id="time15" runat="server"> </a>
						</div> 
                         <!-------- Text bar7 Ends  ---->
						</div>
					 <div class="vc_item">
							<div class="vc_inner">
           <asp:Image  ID="Image14" runat="server" alt="mini web banner for tour - tokyo" width="300" height="300" class="attachment-full" />																												
         														

							</div>

                                                                           <!-------- Text bar8 starts  ---->
                        							<div  >
		<a href="/topic/kickstarter" class="kicker">Kickstarter</a>		
                                <h3>
                                    <a href="/article/248140" id="A44" runat="server"></a>

                                </h3>
                                 <div class="deck">
      <a id="A45" runat="server"> 
                                       </a>
                                  </div>
					       <a class="authorhero" href="/author/catherine-clifford">
						<img alt="Catherine Clifford" class="lazy" data-original="https://assets.entrepreneur.com/content/1x1/30/20141210220039-catherine-clifford.jpeg" />
					</a>
				
				<div class="byline"><a href="/author/catherine-clifford" id="a46" runat="server">Catherine Clifford</a></div>
							
							   <a id="time16" runat="server"> </a>
						</div> 
                         <!-------- Text bar8 Ends  ---->
						</div>
											</div>
				</div>
			</div>
						<!-- Controls -->
			<a class="vc_left vc_carousel-control" href="#vc_images-carousel-1-14362134727" data-slide="prev">
				<span class="icon-prev"></span>
			</a>
			<a class="vc_right vc_carousel-control" href="#vc_images-carousel-1-14362134727" data-slide="next">
				<span class="icon-next"></span>
			</a>
					</div>
  
<link rel='stylesheet' id='vc_carousel_css-css'  href='http://tour.techinasia.com/wp-content/plugins/js_composer/assets/lib/vc_carousel/css/vc_carousel.css?ver=4.3.5' 
    type='text/css' media='all' />
<script type='text/javascript' src='http://tour.techinasia.com/wp-content/plugins/contact-form-7/includes/js/jquery.form.min.js?ver=3.51.0-2014.06.20'></script>
<script type='text/javascript' src='http://tour.techinasia.com/wp-content/plugins/js_composer/assets/lib/vc_carousel/js/transition.js?ver=4.3.5'></script>
<script type='text/javascript' src='http://tour.techinasia.com/wp-content/plugins/js_composer/assets/lib/vc_carousel/js/vc_carousel.js?ver=4.3.5'></script>
         </div>
    <br /><br /><br />
         <br />

    <!------------ Section 2 Ends   ------> 
             
              <!-------------- upload9 starts   ------------> 
         <div runat="server" id="theDiv3">
                <div style="height: 26px">
             <div class="img" style="width: 229px">
         <section>
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:FileUpload ID="FileUpload9" runat="server" />

       &nbsp;&nbsp;&nbsp;

       <asp:Button ID="Button9" runat="server" Text="Upload" onclick="Button9_Click"/>

       <br />

        <br />
        <asp:Label ID="Label20" runat="server" Text=""></asp:Label>
   
</section>
                      </div>
                      <div class="img" style="width: 229px">
                      <asp:CheckBox ID="nine" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="ten" runat="server" Width="23px"/>
                      &nbsp;
                      <asp:CheckBox ID="eleven" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="twelve" runat="server" style="width:20px"/>
                      &nbsp;                                                                 
                      <asp:CheckBox ID="CheckBox21" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox22" runat="server" Width="23px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox23" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox24" runat="server" style="width:20px"/>
                     </div>
                    <div class="img" style="width: 128px">
                      <asp:CheckBox ID="cbbb1" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="cbbb2" runat="server" Width="23px"/>
                      &nbsp;
                      <asp:CheckBox ID="cbbb3" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="cbbb4" runat="server" style="width:20px"/>
                      &nbsp;                      
                      <asp:CheckBox ID="CheckBox9" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox10" runat="server" Width="23px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox11" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox12" runat="server" style="width:20px"/>
                     <label>PC news Heading Text</label>
                     </div>
                                        <div class="img" style="width: 128px">
                      <asp:CheckBox ID="CheckBox41" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox42" runat="server" Width="23px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox43" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox44" runat="server" style="width:20px"/>
                      &nbsp;                      
                      <asp:CheckBox ID="CheckBox45" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox46" runat="server" Width="23px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox47" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox48" runat="server" style="width:20px"/>
                     <label>PC news Small Text</label>
                     </div>
              <asp:TextBox ID="TextBox3" runat="server" Width="241px" style="opacity: 0.5;filter: alpha(opacity=50)" BorderColor="Black" BorderWidth="5" placeholder="Write Blog*"></asp:TextBox >

         <asp:Button ID="Button6" runat="server" Text="Post" OnClick="btntextpost_Click4" Width="52px" />
             </div>
        <br /><br /><br />
             </div>
         <br /><br />
         <br />         <br /><br />
         <br />
                                    <!-------------- upload9 ends   ------------>
      <!------------ Section 3 starts   ------> 
        <div style="margin-left:50px">
    <div id="one"  style="color:white; background-color:#006666">Pc News</div>
    <section>
    <div id="two"></div>
</section>
    </div>
         <div style="margin-left:90px">
 
	<div id="vc_images-carousel-1-14362134737" data-ride="vc_carousel"
			 data-wrap="true" style="width: 100%;"
			 data-interval="1000" data-auto-height="yes"
			 data-mode="horizontal" data-partial="false"
			 data-per-view="3"
			 data-hide-on-end="false" class="vc_slide vc_images_carousel">
 			<div class="vc_carousel-inner">
				<div class="vc_carousel-slideline">
					<div class="vc_carousel-slideline-inner">
						<div class="vc_item">
						   <div class="vc_inner">
                 <asp:Image  ID="Image15" runat="server" alt="mini web banner for tour - osaka-2" width="300" height="300"  class="attachment-full" />														
                                </div>

                                                                              <!-------- Text bar1 starts  ---->
                         							<div  >
		<a href="/topic/kickstarter" class="kicker">Kickstarter</a>		
                                <h3>
                                    <a href="/article/248140" id="A47" runat="server"></a>

                                </h3>
                                 <div class="deck">
                <a id="A48" runat="server"> 
                                       </a>
                                  </div>
					       <a class="authorhero" href="/author/catherine-clifford">
						<img alt="Catherine Clifford" class="lazy" data-original="https://assets.entrepreneur.com/content/1x1/30/20141210220039-catherine-clifford.jpeg" />
					</a>
				
				<div class="byline"><a href="/author/catherine-clifford" id="a49" runat="server">Catherine Clifford</a></div>
							
							   <a id="time17" runat="server"> </a>
						</div>   
                         <!-------- Text bar1 Ends  ---->
						</div>
						 <div class="vc_item">
							<div class="vc_inner">
     <asp:Image  ID="Image16" runat="server" alt="mini web banner for tour - jakarta-2" width="300" height="300"  class="attachment-full" />																												
                                 </div>

                                                                               <!-------- Text bar2 starts  ---->
                        							<div  >
		<a href="/topic/kickstarter" class="kicker">Kickstarter</a>		
                                <h3>
                                    <a href="/article/248140" id="A50" runat="server"></a>

                                </h3>
                                 <div class="deck">
     <a id="A51" runat="server">
                                       </a>
                                  </div>
					       <a class="authorhero" href="/author/catherine-clifford">
						<img alt="Catherine Clifford" class="lazy" data-original="https://assets.entrepreneur.com/content/1x1/30/20141210220039-catherine-clifford.jpeg" />
					</a>
				
				<div class="byline"><a href="/author/catherine-clifford" id="a52" runat="server">Catherine Clifford</a></div>
							
							   <a id="time18" runat="server"> </a>
						</div> 
                         <!-------- Text bar2 Ends  ---->
						</div>
						 <div class="vc_item">
							<div class="vc_inner">
               <asp:Image  ID="Image17" runat="server" alt="mini web banner for tour - hong kong-2" width="300" height="300"  class="attachment-full" />																												
															
                                 </div>

                                                                               <!-------- Text bar3 starts  ---->
                        							<div  >
		<a href="/topic/kickstarter" class="kicker">Kickstarter</a>		
                                <h3>
                                    <a href="/article/248140" id="A53" runat="server"></a>

                                </h3>
                                 <div class="deck">
       <a id="A54" runat="server"> 
                                       </a>
                                  </div>
					       <a class="authorhero" href="/author/catherine-clifford">
						<img alt="Catherine Clifford" class="lazy" data-original="https://assets.entrepreneur.com/content/1x1/30/20141210220039-catherine-clifford.jpeg" />
					</a>
				
				<div class="byline"><a href="/author/catherine-clifford" id="a55" runat="server">Catherine Clifford</a></div>
							
							   <a id="time19" runat="server"> </a>
						</div> 
                         <!-------- Text bar3 Ends  ---->
						</div>
						 <div class="vc_item">
							<div class="vc_inner">
         <asp:Image  ID="Image18" runat="server" alt="mini web banner for tour - bangkok" width="300" height="300"  class="attachment-full" />																												
												
                                 </div>

                                                                               <!-------- Text bar4 starts  ---->
                        							<div  >
		<a href="/topic/kickstarter" class="kicker">Kickstarter</a>		
                                <h3>
                                    <a href="/article/248140" id="A56" runat="server"></a>

                                </h3>
                                 <div class="deck">
        <a id="A57" runat="server">
                                       </a>
                                  </div>
					       <a class="authorhero" href="/author/catherine-clifford">
						<img alt="Catherine Clifford" class="lazy" data-original="https://assets.entrepreneur.com/content/1x1/30/20141210220039-catherine-clifford.jpeg" />
					</a>
				
				<div class="byline"><a href="/author/catherine-clifford" id="a58" runat="server">Catherine Clifford</a></div>
							
							   <a id="time20" runat="server"> </a>
						</div> 
                         <!-------- Text bar4 Ends  ---->
						</div>
						 <div class="vc_item">
							<div class="vc_inner">
         <asp:Image  ID="Image19" runat="server" alt="mini web banner for tour - fukuoka" width="300" height="300"  class="attachment-full" />																												
															
                                 </div>

                                                                               <!-------- Text bar5 starts  ---->
                        							<div  >
		<a href="/topic/kickstarter" class="kicker">Kickstarter</a>		
                                <h3>
                                    <a href="/article/248140" id="A59" runat="server"></a>

                                </h3>
                                 <div class="deck">
               <a id="A60" runat="server">
                                       </a>
                                  </div>
					       <a class="authorhero" href="/author/catherine-clifford">
						<img alt="Catherine Clifford" class="lazy" data-original="https://assets.entrepreneur.com/content/1x1/30/20141210220039-catherine-clifford.jpeg" />
					</a>
				
				<div class="byline"><a href="/author/catherine-clifford" id="a61" runat="server">Catherine Clifford</a></div>
							
							   <a id="time21" runat="server"> </a>
						</div> 
                         <!-------- Text bar5 Ends  ---->
						</div>
					 <div class="vc_item">
							<div class="vc_inner">
        <asp:Image  ID="Image20" runat="server" alt="mini web banner for tour - singapore" width="300" height="300"  class="attachment-full" />																												
														
                                 </div>

                                                                           <!-------- Text bar6 starts  ---->
                         							<div  >
		<a href="/topic/kickstarter" class="kicker">Kickstarter</a>		
                                <h3>
                                    <a href="/article/248140" id="A62" runat="server"></a>

                                </h3>
                                 <div class="deck">
         <a id="A63" runat="server"> 
                                       </a>
                                  </div>
					       <a class="authorhero" href="/author/catherine-clifford">
						<img alt="Catherine Clifford" class="lazy" data-original="https://assets.entrepreneur.com/content/1x1/30/20141210220039-catherine-clifford.jpeg" />
					</a>
				
				<div class="byline"><a href="/author/catherine-clifford" id="a64" runat="server">Catherine Clifford</a></div>
							
							   <a id="time22" runat="server"> </a>
						</div> 
                         <!-------- Text bar6 Ends  ---->
						</div>
					 <div class="vc_item">
							<div class="vc_inner">
        <asp:Image  ID="Image21" runat="server" alt="mini web banner for tour - taipei" width="300" height="300"  class="attachment-full" />																												
															

							</div>

                                                                           <!-------- Text bar7 starts  ---->
                        							<div  >
		<a href="/topic/kickstarter" class="kicker">Kickstarter</a>		
                                <h3>
                                    <a href="/article/248140" id="A65" runat="server"></a>

                                </h3>
                                 <div class="deck">
  <a id="A66" runat="server"> 
                                       </a>
                                  </div>
					       <a class="authorhero" href="/author/catherine-clifford">
						<img alt="Catherine Clifford" class="lazy" data-original="https://assets.entrepreneur.com/content/1x1/30/20141210220039-catherine-clifford.jpeg" />
					</a>
				
				<div class="byline"><a href="/author/catherine-clifford" id="a67" runat="server">Catherine Clifford</a></div>
							
							   <a id="time23" runat="server"> </a>
						</div> 
                         <!-------- Text bar7 Ends  ---->
						</div>
					 <div class="vc_item">
							<div class="vc_inner">
           <asp:Image  ID="Image22" runat="server" alt="mini web banner for tour - tokyo" width="300" height="300"  class="attachment-full" />																												
         														

							</div>

                                                                           <!-------- Text bar8 starts  ---->
                        							<div  >
		<a href="/topic/kickstarter" class="kicker">Kickstarter</a>		
                                <h3>
                                    <a href="/article/248140" id="A68" runat="server"></a>

                                </h3>
                                 <div class="deck">
          <a id="A69" runat="server">
                                       </a>
                                  </div>
					       <a class="authorhero" href="/author/catherine-clifford">
						<img alt="Catherine Clifford" class="lazy" data-original="https://assets.entrepreneur.com/content/1x1/30/20141210220039-catherine-clifford.jpeg" />
					</a>
				
				<div class="byline"><a href="/author/catherine-clifford" id="a70" runat="server">Catherine Clifford</a></div>
							
							   <a id="time24" runat="server"> </a>
						</div> 
                         <!-------- Text bar8 Ends  ---->
						</div>
											</div>
				</div>
			</div>
						<!-- Controls -->
			<a class="vc_left vc_carousel-control" href="#vc_images-carousel-1-14362134737" data-slide="prev">
				<span class="icon-prev"></span>
			</a>
			<a class="vc_right vc_carousel-control" href="#vc_images-carousel-1-14362134737" data-slide="next">
				<span class="icon-next"></span>
			</a>
					</div>
  
<link rel='stylesheet' id='vc_carousel_css-css'  href='http://tour.techinasia.com/wp-content/plugins/js_composer/assets/lib/vc_carousel/css/vc_carousel.css?ver=4.3.5' 
    type='text/css' media='all' />
<script type='text/javascript' src='http://tour.techinasia.com/wp-content/plugins/contact-form-7/includes/js/jquery.form.min.js?ver=3.51.0-2014.06.20'></script>
<script type='text/javascript' src='http://tour.techinasia.com/wp-content/plugins/js_composer/assets/lib/vc_carousel/js/transition.js?ver=4.3.5'></script>
<script type='text/javascript' src='http://tour.techinasia.com/wp-content/plugins/js_composer/assets/lib/vc_carousel/js/vc_carousel.js?ver=4.3.5'></script>
         </div>
    <br /><br /><br />
    <!------------ Section 3 Ends   ------>  
         <div runat="server" id="theDiv4">
                         <div style="height: 26px">
         <!-------------- upload13 starts   ------------>
             <div class="img" style="width: 229px">
         <section>
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:FileUpload ID="FileUpload13" runat="server" />

       &nbsp;&nbsp;&nbsp;

       <asp:Button ID="Button13" runat="server" Text="Upload" onclick="Button13_Click"/>

       <br />

        <br />
        <asp:Label ID="Label24" runat="server" Text=""></asp:Label>
   
</section>
                      </div>
                       <div class="img" style="width: 229px">
                      <asp:CheckBox ID="thirteen" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="fourteen" runat="server" Width="23px"/>
                      &nbsp;
                      <asp:CheckBox ID="fifteen" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="sixteen" runat="server" style="width:20px"/>
                      &nbsp; 
                      <asp:CheckBox ID="CheckBox25" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox26" runat="server" Width="23px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox27" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox28" runat="server" style="width:20px"/>
                     </div>
                              <div class="img" style="width: 128px">
                      <asp:CheckBox ID="cba1" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="cba2" runat="server" Width="23px"/>
                      &nbsp;
                      <asp:CheckBox ID="cba3" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="cba4" runat="server" style="width:20px"/>
                      &nbsp;                                 
                      <asp:CheckBox ID="CheckBox61" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox62" runat="server" Width="23px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox63" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox64" runat="server" style="width:20px"/>
                     <label>Video Heading Text</label>
                     </div>
                      <div class="img" style="width: 128px">
                      <asp:CheckBox ID="CheckBox65" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox66" runat="server" Width="23px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox67" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox68" runat="server" style="width:20px"/>
                      &nbsp;                                 
                      <asp:CheckBox ID="CheckBox69" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox70" runat="server" Width="23px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox71" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox72" runat="server" style="width:20px"/>
                     <label>Video small Text</label>
                     </div>
              <asp:TextBox ID="TextBox4" runat="server" Width="241px" style="opacity: 0.5;filter: alpha(opacity=50)" BorderColor="Black" BorderWidth="5" placeholder="Write Blog*"></asp:TextBox >

         <asp:Button ID="Button7" runat="server" Text="Post" OnClick="btntextpost_Click5" Width="52px" />
                           <!-------------- upload13 ends   ------------>

             </div>

        <br /><br /><br /><br /><br /><br /><br />
             </div>
       
      <!------------ Section 4 starts   ------> 
        <div style="margin-left:50px">
    <div id="one" style="color:white; background-color:#006666"> Videos</div>
    <section>
    <div id="two"></div>
</section>
    </div>
         <div style="margin-left:90px">
 
	<div id="vc_images-carousel-1-14362134747" data-ride="vc_carousel"
			 data-wrap="true" style="width: 100%;"
			 data-interval="1000" data-auto-height="yes"
			 data-mode="horizontal" data-partial="false"
			 data-per-view="3"
			 data-hide-on-end="false" class="vc_slide vc_images_carousel">
 			<div class="vc_carousel-inner">
				<div class="vc_carousel-slideline">
					<div class="vc_carousel-slideline-inner">
						<div class="vc_item">
						   <div class="vc_inner">
                 <asp:Image  ID="Image23" runat="server" alt="mini web banner for tour - osaka-2" width="300" height="300" class="attachment-full" />														
                                </div>

                                                                              <!-------- Text bar1 starts  ---->
                         							<div  >
		<a href="/topic/kickstarter" class="kicker">Kickstarter</a>		
                                <h3>
                                    <a href="/article/248140" id="A71" runat="server"></a>

                                </h3>
                                 <div class="deck">
      <a id="A72" runat="server">
                                       </a>
                                  </div>
					       <a class="authorhero" href="/author/catherine-clifford">
						<img alt="Catherine Clifford" class="lazy" data-original="https://assets.entrepreneur.com/content/1x1/30/20141210220039-catherine-clifford.jpeg" />
					</a>
				
				<div class="byline"><a href="/author/catherine-clifford" id="a73" runat="server">Catherine Clifford</a></div>
							
							   <a id="time25" runat="server"> </a>
						</div>   
                         <!-------- Text bar1 Ends  ---->
						</div>
						 <div class="vc_item">
							<div class="vc_inner">
     <asp:Image  ID="Image24" runat="server" alt="mini web banner for tour - jakarta-2" width="300" height="300" class="attachment-full" />																												
                                 </div>

                                                                               <!-------- Text bar2 starts  ---->
                        							<div  >
		<a href="/topic/kickstarter" class="kicker">Kickstarter</a>		
                                <h3>
        <a href="/article/248140" id="A74" runat="server"></a>

                                </h3>
                                 <div class="deck">
          <a id="A75" runat="server">
                                       </a>
                                  </div>
					       <a class="authorhero" href="/author/catherine-clifford">
						<img alt="Catherine Clifford" class="lazy" data-original="https://assets.entrepreneur.com/content/1x1/30/20141210220039-catherine-clifford.jpeg" />
					</a>
				
				<div class="byline"><a href="/author/catherine-clifford" id="a76" runat="server">Catherine Clifford</a></div>
							
							   <a id="time26" runat="server"> </a>
						</div> 
                         <!-------- Text bar2 Ends  ---->
						</div>
						 <div class="vc_item">
							<div class="vc_inner">
               <asp:Image  ID="Image25" runat="server" alt="mini web banner for tour - hong kong-2" width="300" height="300" class="attachment-full" />																												
															
                                 </div>

                                                                               <!-------- Text bar3 starts  ---->
                        							<div  >
		<a href="/topic/kickstarter" class="kicker">Kickstarter</a>		
                                <h3>
                                    <a href="/article/248140" id="A77" runat="server"></a>

                                </h3>
                                 <div class="deck">
        <a id="A78" runat="server">
                                       </a>
                                  </div>
					       <a class="authorhero" href="/author/catherine-clifford">
						<img alt="Catherine Clifford" class="lazy" data-original="https://assets.entrepreneur.com/content/1x1/30/20141210220039-catherine-clifford.jpeg" />
					</a>
				
				<div class="byline"><a href="/author/catherine-clifford" id="a79" runat="server">Catherine Clifford</a></div>
							
							   <a id="time27" runat="server"> </a>
						</div> 
                         <!-------- Text bar3 Ends  ---->
						</div>
						 <div class="vc_item">
							<div class="vc_inner">
         <asp:Image  ID="Image26" runat="server" alt="mini web banner for tour - bangkok" width="300" height="300" class="attachment-full" />																												
												
                                 </div>

                                                                               <!-------- Text bar4 starts  ---->
                        							<div  >
		<a href="/topic/kickstarter" class="kicker">Kickstarter</a>		
                                <h3>
                                    <a href="/article/248140" id="A80" runat="server"></a>

                                </h3>
                                 <div class="deck">
      <a id="A81" runat="server">
                                       </a>
                                  </div>
					       <a class="authorhero" href="/author/catherine-clifford">
						<img alt="Catherine Clifford" class="lazy" data-original="https://assets.entrepreneur.com/content/1x1/30/20141210220039-catherine-clifford.jpeg" />
					</a>
				
				<div class="byline"><a href="/author/catherine-clifford" id="a82" runat="server">Catherine Clifford</a></div>
							
							   <a id="time28" runat="server"> </a>
						</div> 
                         <!-------- Text bar4 Ends  ---->
						</div>
						 <div class="vc_item">
							<div class="vc_inner">
         <asp:Image  ID="Image27" runat="server" alt="mini web banner for tour - fukuoka" width="300" height="300" class="attachment-full" />																												
															
                                 </div>

                                                                               <!-------- Text bar5 starts  ---->
                        							<div  >
		<a href="/topic/kickstarter" class="kicker">Kickstarter</a>		
                                <h3>
                                    <a href="/article/248140" id="A83" runat="server"></a>

                                </h3>
                                 <div class="deck">
             <a id="A84" runat="server">
                                       </a>
                                  </div>
					       <a class="authorhero" href="/author/catherine-clifford">
						<img alt="Catherine Clifford" class="lazy" data-original="https://assets.entrepreneur.com/content/1x1/30/20141210220039-catherine-clifford.jpeg" />
					</a>
				
				<div class="byline"><a href="/author/catherine-clifford" id="a85" runat="server">Catherine Clifford</a></div>
							
							   <a id="time29" runat="server"> </a>
						</div> 
                         <!-------- Text bar5 Ends  ---->
						</div>
					 <div class="vc_item">
							<div class="vc_inner">
        <asp:Image  ID="Image28" runat="server" alt="mini web banner for tour - singapore" width="300" height="300"  class="attachment-full" />																												
														
                                 </div>

                                                                           <!-------- Text bar6 starts  ---->
                         							<div  >
		<a href="/topic/kickstarter" class="kicker">Kickstarter</a>		
                                <h3>
                                    <a href="/article/248140" id="A86" runat="server"></a>

                                </h3>
                                 <div class="deck">
         <a id="A87" runat="server">
                                       </a>
                                  </div>
					       <a class="authorhero" href="/author/catherine-clifford">
						<img alt="Catherine Clifford" class="lazy" data-original="https://assets.entrepreneur.com/content/1x1/30/20141210220039-catherine-clifford.jpeg" />
					</a>
				
				<div class="byline"><a href="/author/catherine-clifford" id="a88" runat="server">Catherine Clifford</a></div>
							
							   <a id="time30" runat="server"> </a>
						</div> 
                         <!-------- Text bar6 Ends  ---->
						</div>
					 <div class="vc_item">
							<div class="vc_inner">
        <asp:Image  ID="Image29" runat="server" alt="mini web banner for tour - taipei" width="300" height="300"  class="attachment-full" />																												
															

							</div>

                                                                           <!-------- Text bar7 starts  ---->
                        							<div  >
		<a href="/topic/kickstarter" class="kicker">Kickstarter</a>		
                                <h3>
                                    <a href="/article/248140" id="A89" runat="server"></a>

                                </h3>
                                 <div class="deck">
       <a id="A90" runat="server">
                                       </a>
                                  </div>
					       <a class="authorhero" href="/author/catherine-clifford">
						<img alt="Catherine Clifford" class="lazy" data-original="https://assets.entrepreneur.com/content/1x1/30/20141210220039-catherine-clifford.jpeg" />
					</a>
				
				<div class="byline"><a href="/author/catherine-clifford" id="a91" runat="server">Catherine Clifford</a></div>
							
							   <a id="time31" runat="server"> </a>
						</div> 
                         <!-------- Text bar7 Ends  ---->
						</div>
					 <div class="vc_item">
							<div class="vc_inner">
           <asp:Image  ID="Image30" runat="server" alt="mini web banner for tour - tokyo" width="300" height="300" class="attachment-full" />																												
         														

							</div>

                                                                           <!-------- Text bar8 starts  ---->
                        							<div  >
		<a href="/topic/kickstarter" class="kicker">Kickstarter</a>		
                                <h3>
                                    <a href="/article/248140" id="A92" runat="server"></a>

                                </h3>
                                 <div class="deck">
     <a id="A93" runat="server"> 
                                       </a>
                                  </div>
					       <a class="authorhero" href="/author/catherine-clifford">
						<img alt="Catherine Clifford" class="lazy" data-original="https://assets.entrepreneur.com/content/1x1/30/20141210220039-catherine-clifford.jpeg" />
					</a>
				
				<div class="byline"><a href="/author/catherine-clifford" id="a94" runat="server">Catherine Clifford</a></div>
							
							   <a id="time32" runat="server"> </a>
						</div> 
                         <!-------- Text bar8 Ends  ---->
						</div>
											</div>
				</div>
			</div>
						<!-- Controls -->
			<a class="vc_left vc_carousel-control" href="#vc_images-carousel-1-14362134747" data-slide="prev">
				<span class="icon-prev"></span>
			</a>
			<a class="vc_right vc_carousel-control" href="#vc_images-carousel-1-14362134747" data-slide="next">
				<span class="icon-next"></span>
			</a>
					</div>
  
<link rel='stylesheet' id='vc_carousel_css-css'  href='http://tour.techinasia.com/wp-content/plugins/js_composer/assets/lib/vc_carousel/css/vc_carousel.css?ver=4.3.5' 
    type='text/css' media='all' />
<script type='text/javascript' src='http://tour.techinasia.com/wp-content/plugins/contact-form-7/includes/js/jquery.form.min.js?ver=3.51.0-2014.06.20'></script>
<script type='text/javascript' src='http://tour.techinasia.com/wp-content/plugins/js_composer/assets/lib/vc_carousel/js/transition.js?ver=4.3.5'></script>
<script type='text/javascript' src='http://tour.techinasia.com/wp-content/plugins/js_composer/assets/lib/vc_carousel/js/vc_carousel.js?ver=4.3.5'></script>
         </div>
    <br /><br /><br /><br /><br /><br />




    <!------------ Section 4 Ends   ------>  
                  <div runat="server" id="Div5">
                         <div style="height: 26px">
         <!-------------- upload13 starts   ------------>
             <div class="img" style="width: 229px">
         <section>
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:FileUpload ID="FileUpload21" runat="server" />

       &nbsp;&nbsp;&nbsp;

       <asp:Button ID="Button10" runat="server" Text="Upload" onclick="Buttonstyle_Click"/>

       <br />

        <br />
        <asp:Label ID="Label14" runat="server" Text=""></asp:Label>
   
</section>
                      </div>
                       <div class="img" style="width: 229px">
                      <asp:CheckBox ID="CheckBox73" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox74" runat="server" Width="23px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox75" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox76" runat="server" style="width:20px"/>
                      &nbsp; 
                      <asp:CheckBox ID="CheckBox77" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox78" runat="server" Width="23px"/>
                      <label>top Read Pictures</label>
                     </div>
                              <div class="img" style="width: 128px">
                      <asp:CheckBox ID="CheckBox81" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox82" runat="server" Width="23px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox83" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox84" runat="server" style="width:20px"/>
                      &nbsp;                                 
                      <asp:CheckBox ID="CheckBox85" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox86" runat="server" Width="23px"/>
                      &nbsp;
                     <label>top Read Heading Text</label>
                     </div>
                      <div class="img" style="width: 128px">
                      <asp:CheckBox ID="CheckBox89" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox90" runat="server" Width="23px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox91" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox92" runat="server" style="width:20px"/>
                      &nbsp;                                 
                      <asp:CheckBox ID="CheckBox93" runat="server" style="width:20px"/>
                      &nbsp;
                      <asp:CheckBox ID="CheckBox94" runat="server" Width="23px"/>
                      &nbsp;
                     <label>top Read small Text</label>
                     </div>
              <asp:TextBox ID="TextBox5" runat="server" Width="241px" style="opacity: 0.5;filter: alpha(opacity=50)" BorderColor="Black" BorderWidth="5" placeholder="Write Blog*"></asp:TextBox >

         <asp:Button ID="Button11" runat="server" Text="Post" OnClick="btntextstylepost_Click" Width="52px" />
                           <!-------------- upload13 ends   ------------>

             </div>

        <br /><br /><br /><br /><br /><br /><br />
             </div>
             <!------------ Moving bar starts   ------> 
          <center>
        <asp:Label ID="lbtoprated" runat="server" Text="Today's Most Read"></asp:Label>
              </center>
         <br /> 
         <div style="margin-left:90px">
     <ul id="scroller2">
        <li >
    <div class="c3">
        <a href="http://sophiamirza.com.pk/pages.php?pageid=28">
      <asp:Image  ID="Image1" runat="server"  alt="class-header-device" width="285px" height="200px" class="alignnone size-full wp-image-177" /> 
        </a>
    </div>
        <a>
                                                                      <!-------- Text bar1 starts  ---->
                        							<div  >
		<a href="/topic/kickstarter" class="kicker">Kickstarter</a>		
                                <h3>
                                    <a href="/article/248140" id="A95" runat="server"></a>

                                </h3>
                                 <div class="deck">
     <a id="A96" runat="server"> 
                                       </a>
                                  </div>
					       <a class="authorhero" href="/author/catherine-clifford">
						<img alt="Catherine Clifford" class="lazy" data-original="https://assets.entrepreneur.com/content/1x1/30/20141210220039-catherine-clifford.jpeg" />
					</a>
				
				<div class="byline"><a href="/author/catherine-clifford" id="a97" runat="server">Catherine Clifford</a></div>
							
							   <a id="time33" runat="server"> </a>
						</div> 
                         <!-------- Text bar1 Ends  ---->
        </a>
        </li>
        
 <li >
    <div class="c3">
        <a href="http://sophiamirza.com.pk/pages.php?pageid=29">
      <asp:Image  ID="Image2" runat="server"  alt="class-header-device" width="285px" height="200px" class="alignnone size-full wp-image-177" /> 
</a>
                <a>
                                                                      <!-------- Text bar2 starts  ---->
                        							<div  >
		<a href="/topic/kickstarter" class="kicker">Kickstarter</a>		
                                <h3>
                                    <a href="/article/248140" id="A98" runat="server"></a>

                                </h3>
                                 <div class="deck">
     <a id="A99" runat="server"> 
                                       </a>
                                  </div>
					       <a class="authorhero" href="/author/catherine-clifford">
						<img alt="Catherine Clifford" class="lazy" data-original="https://assets.entrepreneur.com/content/1x1/30/20141210220039-catherine-clifford.jpeg" />
					</a>
				
				<div class="byline"><a href="/author/catherine-clifford" id="a100" runat="server">Catherine Clifford</a></div>
							
							   <a id="time34" runat="server"> </a>
						</div> 
                         <!-------- Text bar2 Ends  ---->
                </a>
    </div>

    </li>   
  
        <li >
    <div class="c3">
        <a href="http://sophiamirza.com.pk/pages.php?pageid=30">
      <asp:Image  ID="Image3" runat="server"  alt="class-header-device" width="285px" height="200px" class="alignnone size-full wp-image-177" /> 
</a>
                <a>
                                                                      <!-------- Text bar3 starts  ---->
                        							<div  >
		<a href="/topic/kickstarter" class="kicker">Kickstarter</a>		
                                <h3>
                                    <a href="/article/248140" id="A101" runat="server"></a>

                                </h3>
                                 <div class="deck">
     <a id="A102" runat="server"> 
                                       </a>
                                  </div>
					       <a class="authorhero" href="/author/catherine-clifford">
						<img alt="Catherine Clifford" class="lazy" data-original="https://assets.entrepreneur.com/content/1x1/30/20141210220039-catherine-clifford.jpeg" />
					</a>
				
				<div class="byline"><a href="/author/catherine-clifford" id="a103" runat="server">Catherine Clifford</a></div>
							
							   <a id="time35" runat="server"> </a>
						</div> 
                         <!-------- Text bar3 Ends  ---->
                </a>
    </div>

        </li>
    
  <li>
    <div class="c3">
        <a href="http://sophiamirza.com.pk/pages.php?pageid=31">
      <asp:Image  ID="Image4" runat="server"  alt="class-header-device" width="285px" height="200px" class="alignnone size-full wp-image-177" /> 
</a>
                <a>
                                                                                          <!-------- Text bar4 starts  ---->
                        							<div  >
		<a href="/topic/kickstarter" class="kicker">Kickstarter</a>		
                                <h3>
                                    <a href="/article/248140" id="A104" runat="server"></a>

                                </h3>
                                 <div class="deck">
     <a id="A105" runat="server"> 
                                       </a>
                                  </div>
					       <a class="authorhero" href="/author/catherine-clifford">
						<img alt="Catherine Clifford" class="lazy" data-original="https://assets.entrepreneur.com/content/1x1/30/20141210220039-catherine-clifford.jpeg" />
					</a>
				
				<div class="byline"><a href="/author/catherine-clifford" id="a106" runat="server">Catherine Clifford</a></div>
							
							   <a id="time36" runat="server"> </a>
						</div> 
                         <!-------- Text bar4 Ends  ---->
                </a>
    </div>

        </li>
          <li >
    <div class="c3">
        <a href="http://sophiamirza.com.pk/pages.php?pageid=31">
      <asp:Image  ID="Image5" runat="server"  alt="class-header-device" width="285px" height="200px" class="alignnone size-full wp-image-177" /> 

        </a>
                <a>
                                                                                          <!-------- Text bar5 starts  ---->
                        							<div  >
		<a href="/topic/kickstarter" class="kicker">Kickstarter</a>		
                                <h3>
                                    <a href="/article/248140" id="A107" runat="server"></a>

                                </h3>
                                 <div class="deck">
     <a id="A108" runat="server"> 
                                       </a>
                                  </div>
					       <a class="authorhero" href="/author/catherine-clifford">
						<img alt="Catherine Clifford" class="lazy" data-original="https://assets.entrepreneur.com/content/1x1/30/20141210220039-catherine-clifford.jpeg" />
					</a>
				
				<div class="byline"><a href="/author/catherine-clifford" id="a109" runat="server">Catherine Clifford</a></div>
							
							   <a id="time37" runat="server"> </a>
						</div> 
                         <!-------- Text bar5 Ends  ---->
                </a>
    </div>

                </li>
          <li>
    <div class="c3">
        <a href="http://sophiamirza.com.pk/pages.php?pageid=37">
      <asp:Image  ID="Image6" runat="server"  alt="class-header-device" width="285px" height="200px" class="alignnone size-full wp-image-177" /> 

        </a>
                        <a>
                                     <!-------- Text bar6 starts  ---->
                        							<div  >
		<a href="/topic/kickstarter" class="kicker">Kickstarter</a>		
                                <h3>
                                    <a href="/article/248140" id="A110" runat="server"></a>

                                </h3>
                                 <div class="deck">
     <a id="A111" runat="server"> 
                                       </a>
                                  </div>
					       <a class="authorhero" href="/author/catherine-clifford">
						<img alt="Catherine Clifford" class="lazy" data-original="https://assets.entrepreneur.com/content/1x1/30/20141210220039-catherine-clifford.jpeg" />
					</a>
				
				<div class="byline"><a href="/author/catherine-clifford" id="a112" runat="server">Catherine Clifford</a></div>
							
							   <a id="time38" runat="server"> </a>
						</div> 
                         <!-------- Text bar6 Ends  ---->
                        </a>
    </div>
                           <!------------ Moving bar Ends   ------> 

                         							<br />

        </li>
</ul>
 
          <link href="http://www.sophiamirza.com.pk/javascript/ss.css" rel="stylesheet" type="text/css"/>
             <style>
                 /* Color: Blue */

body {
    color: #535353;
}


a {
    color: #001927;
    font-weight: normal;
    text-decoration: none;
}

a:hover {
    color: #07599a;
}

h2 {
  color: #111;
}

h3 {
    color: #034285;
}


#TopMenu li a, #TopMenu li div {
    border-left: 1px solid #208db5;
    color: #fff;
}

#TopMenu li div a {
    border-left: 0;
}

#TopMenu li a:hover {
    color: #fff;
}

.Menu li a {
    color: #fff;
}





.Menu li:hover > a, .Menu li.over a{
    color:#fff;
background: #f8005f; /* Old browsers */
background: -moz-linear-gradient(top,  #f8005f 0%, #ff216b 81%, #ff999a 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#f8005f), color-stop(81%,#ff216b), color-stop(100%,#ff999a)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  #f8005f 0%,#ff216b 81%,#ff999a 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  #f8005f 0%,#ff216b 81%,#ff999a 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  #f8005f 0%,#ff216b 81%,#ff999a 100%); /* IE10+ */
background: linear-gradient(to bottom,  #f8005f 0%,#ff216b 81%,#ff999a 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#f8005f', endColorstr='#ff999a',GradientType=0 ); /* IE6-9 */

}
.Menu li ul li a:hover {
    color: #fff;
    background: #2b2727; /* Old browsers */
background: -moz-linear-gradient(top,  #2b2727 0%, #000000 84%, #8e8e8e 99%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#2b2727), color-stop(84%,#000000), color-stop(99%,#8e8e8e)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  #2b2727 0%,#000000 84%,#8e8e8e 99%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  #2b2727 0%,#000000 84%,#8e8e8e 99%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  #2b2727 0%,#000000 84%,#8e8e8e 99%); /* IE10+ */
background: linear-gradient(to bottom,  #2b2727 0%,#000000 84%,#8e8e8e 99%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#2b2727', endColorstr='#8e8e8e',GradientType=0 ); /* IE6-9 */

}
.ActivePage{
    color:#fff;
 background: #f8005f; /* Old browsers */
background: -moz-linear-gradient(top,  #f8005f 0%, #ff216b 81%, #ff999a 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#f8005f), color-stop(81%,#ff216b), color-stop(100%,#ff999a)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  #f8005f 0%,#ff216b 81%,#ff999a 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  #f8005f 0%,#ff216b 81%,#ff999a 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  #f8005f 0%,#ff216b 81%,#ff999a 100%); /* IE10+ */
background: linear-gradient(to bottom,  #f8005f 0%,#ff216b 81%,#ff999a 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#f8005f', endColorstr='#ff999a',GradientType=0 ); /* IE6-9 */
   
}
.Menu li ul li a {
    color: #fff;
    border:none;
}
#Outer {
    
}


#Header {
padding-bottom: 10px;
}

#Logo h1 {
    color: #fff;
    background: url(../../default/images/blue/Logo.png) top left no-repeat;
}

#Logo h1 a {
    color: #fff;
}

#SearchForm {
    color: #95bbd1;
}

#SearchForm label {
    color: #fff;
}

#SearchForm a {
    color: #b1ccdc;
}

#SearchForm a:hover {
    color: #fff;
}

.Left {
    background: transparent url('../../default/images/blue/LeftBg.gif') no-repeat;
}

.Left li {
    border-bottom: 1px solid #c5dde9;
}

.Left li a:hover {
    color: #07599a;
}

.Content {
   
}

.Content a {
    color: #075899;
}

.Content.Wide {
 
}

.Content.Widest {
    background-image: url('../../default/images/ContentBgWidest.gif');
}


.Right {
    background: transparent url('../../default/images/blue/RightBg.gif') no-repeat;
}

.Right a {
    color: #034285;
}

.Right a:hover, .Right a:hover strong {
    color: #001927;
}

#Footer {
   
}

#Footer p a {
 color:#fff;
}

.Content .ProductList li {
    border: 1px solid #cddee2;
}

.Content .ProductList li:hover, .Content .ProductList li.Over {
    background: #DFF2F7;
}

.ProductList .ProductImage {
    background: #fff;
}

.ProductList strong, .ProductList strong a {
    color: #075899;
}

.ProductPrice, .ProductList em {
    color: #800000;
}

.ProductList .Rating {
    color: #797979;
}

.Right .ProductList li {
    border-bottom: 1px solid #c0dae7;
}

.Content .FeaturedProducts .ProductList li {
    background: #dff2f7;
}

.Content .FeaturedProducts .ProductList li:hover, .Content .FeaturedProducts .ProductList li.Over {
    background: #D2E8EE;
}

.Left .TopSellers li .TopSellerNumber, .Right .TopSellers li .TopSellerNumber { /* Contains the number of the item */
    background: url(../../default/images/blue/TopSellerNumberBg.gif) 0 4px no-repeat;
    color: #075899;
}

.Left .TopSellers li.TopSeller1, .Right .TopSellers li.TopSeller1 { /* No1 seller box */
    border: 1px solid #c0dae7;
    background: #fff;
}

.Left .TopSellers li.TopSeller1 .TopSellerNumber, .Right .TopSellers li.TopSeller1 .TopSellerNumber {
    background: url(../../default/images/blue/TopSellerNumber1Bg.png) 0 0 no-repeat;
    color: #075899;
}

.Breadcrumb {
    border-bottom: 1px solid #DCDFE2;
}


.CompareItem { width:200px; border-left: solid 1px #CACACA; }
.CompareFieldName { font-weight:bold; border-bottom: 1px solid #EFF8FA; }
.CompareFieldTop { border-bottom:solid 1px #85BADF; }
.CompareFieldTop a:hover { color:red; }
.CompareCenter { border-left:solid 1px #85BADF; border-bottom:solid 1px #F2F2F2; }
.CompareLeft { border-left:solid 1px #85BADF; border-bottom:solid 1px #F2F2F2; }

.ViewCartLink {
    background: url('../../default/images/blue/Cart.gif') no-repeat 3px 0;
}

table.CartContents, table.General {
    border: 1px solid #c7d7db;
}

.CartContents thead tr th, table.General thead tr th {
    background: #edf2f3;
    color: #424748;
    border-bottom: 1px solid #c7d7db;
}

.CartContents tfoot .SubTotal td {
    border-top: 1px solid #c7d7db;
    color: #075899;
}

.MiniCart .SubTotal {
    color: #075899;
}

.JustAddedProduct {
    border: 1px solid #c0dae7;
    background: #fff;
}

.JustAddedProduct strong, .JustAddedProduct a {
    color: #075899;
}

.CategoryPagination {
    color: #034285;
    background: #f4fbfc;
    border: 1px solid #c0dae7;
}

.CheckoutRedeemCoupon { background: #EAFDFF; padding: 10px; width: 300px; border: 1px solid #9DD3D8; margin-bottom: 10px; }

.SubCategoryList, .SubBrandList {
    background:#EEF5F9;
}

.InfoMessage {
    background: #EFF8FA url('../../default/images/InfoMessage.gif') no-repeat 5px 8px;
    color: #555;
}

.SuccessMessage {
    background: #E8FFDF url('../../default/images/SuccessMessage.gif') no-repeat 5px 8px;
    color: #555;
}

.ErrorMessage {
    background: #FFECEC url('../../default/images/ErrorMessage.gif') no-repeat 5px 8px;
    color: #555;
}

.ComparisonTable tr:hover td, .ComparisonTable tr.Over td {
    background: #EFF8FA;
}

/* Shipping Estimation on Cart Contents Page */
.EstimateShipping {
    border: 1px solid #c7d7db;
    background: #edf2f3;
}

/* Express Checkout */
.ExpressCheckoutBlock .ExpressCheckoutTitle {
    background: #dcf0f5;
    border: 1px solid #bce0e8;
}

.ExpressCheckoutBlockCollapsed .ExpressCheckoutTitle {
    background: #f0f0f0;
    border: 1px solid #ddd;
    color: #555;
}

.ExpressCheckoutBlockCompleted .ExpressCheckoutCompletedContent {
    color: #888;
}

/* Tabbed Navigation */
.TabNav {
    border-bottom: 1px solid #3d9abe;
}

.TabNav li a {
    border: 1px solid #3d9abe;
    background: #ddf0f6;
}

.TabNav li a:hover {
    background-color: #c8e6ed;
}

.TabNav li.Active a {
    border-bottom: 1px solid #fff;
    background: #fff;
}

/* General Tables */
table.General tbody tr td {
    border-top: 1px solid #efefef;
}

/* Product Videos */

#VideoContainer {
    border: 1px solid #cccccc;
    -moz-border-radius: 5px;
    -webkit-border-radius: 5px;
    border-radius: 5px;
}

.currentVideo {
    background-color: #ddf0f6;
}

.videoRow:hover {
    background-color: #efefef;
}

/* Product Videos */

#VideoContainer {
    border: 1px solid #cccccc;
    -moz-border-radius: 5px;
    -webkit-border-radius: 5px;
    border-radius: 5px;
}

.currentVideo {
    background-color: #ddf0f6;
}

.videoRow:hover {
    background-color: #efefef;
}

#SearchResultsCategoryAndBrand {
    background-color: #EEF5F9;
}

.CartContents .ItemShipping th {
    border-bottom-color: #c7d7db;
    border-top-color: #c7d7db;
    background: #edf2f3;
}
.side-media{
 position:fixed;
-webkit-transition: all 300ms ease;
-moz-transition: all 300ms ease;
-ms-transition: all 300ms ease;
-o-transition: all 300ms ease;
transition: all 300ms ease;  
 width: 80px;
 height:270px;
background: #45484d; /* Old browsers */
background: -moz-linear-gradient(top,  #45484d 0%, #000000 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#45484d), color-stop(100%,#000000)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  #45484d 0%,#000000 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  #45484d 0%,#000000 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  #45484d 0%,#000000 100%); /* IE10+ */
background: linear-gradient(to bottom,  #45484d 0%,#000000 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#45484d', endColorstr='#000000',GradientType=0 ); /* IE6-9 */

 
 border:solid 3px #FFF;
    box-shadow:0px 0px 8px #666;
    z-index:1000;
    border-radius:0px 20px 30px 0px;
    
 left: -70px;
    
 bottom: 22%;
    
}
.side-media:hover{
 left:-5px;   
}
.side-media a{
    float:left;
    margin-left: 35px;
margin-top: 19px;
}
.slider-outer{
 width:100%;  
}
.c1{
 float:left;   
 width: 340px;
 margin-right:30px;
 padding:15px;
 height:370px;   
}
.clr1{
 
background: rgba(241,231,103,1);
background: -moz-linear-gradient(top, rgba(241,231,103,1) 0%, rgba(254,182,69,1) 100%);
background: -webkit-gradient(left top, left bottom, color-stop(0%, rgba(241,231,103,1)), color-stop(100%, rgba(254,182,69,1)));
background: -webkit-linear-gradient(top, rgba(241,231,103,1) 0%, rgba(254,182,69,1) 100%);
background: -o-linear-gradient(top, rgba(241,231,103,1) 0%, rgba(254,182,69,1) 100%);
background: -ms-linear-gradient(top, rgba(241,231,103,1) 0%, rgba(254,182,69,1) 100%);
background: linear-gradient(to bottom, rgba(241,231,103,1) 0%, rgba(254,182,69,1) 100%);
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#f1e767', endColorstr='#feb645', GradientType=0 );
   
}

.clr1 h2{
 border-bottom-color:#C2AE18;   
}
.clr1 p{
 color:#4B2B00   
}
.clr2{
 
background: rgba(147,206,222,1);
background: -moz-linear-gradient(top, rgba(147,206,222,1) 0%, rgba(73,165,191,1) 100%);
background: -webkit-gradient(left top, left bottom, color-stop(0%, rgba(147,206,222,1)), color-stop(100%, rgba(73,165,191,1)));
background: -webkit-linear-gradient(top, rgba(147,206,222,1) 0%, rgba(73,165,191,1) 100%);
background: -o-linear-gradient(top, rgba(147,206,222,1) 0%, rgba(73,165,191,1) 100%);
background: -ms-linear-gradient(top, rgba(147,206,222,1) 0%, rgba(73,165,191,1) 100%);
background: linear-gradient(to bottom, rgba(147,206,222,1) 0%, rgba(73,165,191,1) 100%);
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#93cede', endColorstr='#49a5bf', GradientType=0 );
   
}
.clr3{
 
background: rgba(179,243,245,1);
background: -moz-linear-gradient(top, rgba(179,243,245,1) 0%, rgba(72,207,185,1) 100%);
background: -webkit-gradient(left top, left bottom, color-stop(0%, rgba(179,243,245,1)), color-stop(100%, rgba(72,207,185,1)));
background: -webkit-linear-gradient(top, rgba(179,243,245,1) 0%, rgba(72,207,185,1) 100%);
background: -o-linear-gradient(top, rgba(179,243,245,1) 0%, rgba(72,207,185,1) 100%);
background: -ms-linear-gradient(top, rgba(179,243,245,1) 0%, rgba(72,207,185,1) 100%);
background: linear-gradient(to bottom, rgba(179,243,245,1) 0%, rgba(72,207,185,1) 100%);
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#b3f3f5', endColorstr='#48cfb9', GradientType=0 );
   
}
.clr3 h2{
 border-bottom-color:#35C5A1;   
}
.c2{
 float: left;
width: 1170px;
margin-right: 60px;
height: 125px;
-webkit-border-radius: 10px;
-moz-border-radius: 10px;
border-radius: 10px;  
    background: #ffc578; /* Old browsers */
background: -moz-linear-gradient(top,  #ffc578 0%, #fb9d23 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#ffc578), color-stop(100%,#fb9d23)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  #ffc578 0%,#fb9d23 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  #ffc578 0%,#fb9d23 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  #ffc578 0%,#fb9d23 100%); /* IE10+ */
background: linear-gradient(to bottom,  #ffc578 0%,#fb9d23 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffc578', endColorstr='#fb9d23',GradientType=0 ); /* IE6-9 */

}
.c2 h2{
 color:#fff;
background: #5ea2c4; /* Old browsers */
background: -moz-linear-gradient(top,  #5ea2c4 0%, #258dc8 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#5ea2c4), color-stop(100%,#258dc8)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  #5ea2c4 0%,#258dc8 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  #5ea2c4 0%,#258dc8 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  #5ea2c4 0%,#258dc8 100%); /* IE10+ */
background: linear-gradient(to bottom,  #5ea2c4 0%,#258dc8 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#5ea2c4', endColorstr='#258dc8',GradientType=0 ); /* IE6-9 */;   text-align:center;
}
.full-image{
 float:left;   
 width:100%;
 height:490px;
 margin-top:50px;
 margin-bottom:50px;   
 background: url('../../../product_images/uploaded_images/page1-bg1.jpg') no-repeat;   
    padding-top: 25px;
}
#subscribe_form{
 float: left;
margin-left: 33px;
margin-top: 20px; 
}
.more{
 font-weigt:bold;
 color:#A55C16;
    
}
.img-prev{
 float:left;
 width:590px;   
    margin-top: 30px;
}
.img-thumbs{
 float:left;
 width: 575px;   
}
.img-thumbs .more:hover{
    color:#fff;
}
.img-thumbs .more{
    font-size:18px;
    margin-left:10px;
}
.img-thumbs li{
 float:left;
 list-style:none;
 margin: 8px;
 border: 4px solid transparent;
 cursor:pointer;
 -webkit-transition: all 300ms linear;
-moz-transition: all 300ms linear;
-ms-transition: all 300ms linear;
-o-transition: all 300ms linear;
transition: all 300ms linear;   
}
.img-thumbs li:hover{
  border-color:#000;  
}
.gall1 li{
 display:none;
 list-style:none;   
}
#HomeRecentBlogs li{
 list-style:none;
 margin-bottom:10px;
     padding-bottom:10px;

    text-align:center;
    font-size:20px;
    font-weight:bold;
    color:#FFF;
}
#HomeRecentBlogs li a{
 font-size:15px;   
}
#captcha{
 padding:7px;   
}
.ContactButton{
 background: #563d7c; /* Old browsers */
background: -moz-linear-gradient(top,  #563d7c 0%, #734f99 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#563d7c), color-stop(100%,#734f99)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  #563d7c 0%,#734f99 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  #563d7c 0%,#734f99 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  #563d7c 0%,#734f99 100%); /* IE10+ */
background: linear-gradient(to bottom,  #563d7c 0%,#734f99 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#563d7c', endColorstr='#734f99',GradientType=0 ); /* IE6-9 */
color:#FFF;
font-size:14px;
border:solid 1px #B386E0;
padding:7px;
    cursor:pointer;
}
.ContactButton:hover{
 background: #b386e0; /* Old browsers */
background: -moz-linear-gradient(top,  #b386e0 0%, #563d7c 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#b386e0), color-stop(100%,#563d7c)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  #b386e0 0%,#563d7c 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  #b386e0 0%,#563d7c 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  #b386e0 0%,#563d7c 100%); /* IE10+ */
background: linear-gradient(to bottom,  #b386e0 0%,#563d7c 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#b386e0', endColorstr='#563d7c',GradientType=0 ); /* IE6-9 */
   
}
#PageContent img{
-webkit-border-radius: 10px;
-moz-border-radius: 10px;
border-radius: 10px;
  border:solid 4px #fff;
  box-shadow:0px 0px 5px #999;
  margin:35px;  
}
#PageContent li{
 font-family:Arial;
    color:#ADAEAF;
}
#toTop {
display:none;
    width: 24px;
    height: 24px;
    background: url(../../../product_images/uploaded_images/top.png) no-repeat;
    position: fixed;
    margin-right: -640px !important;
    right: 50%;
    bottom: 120px;
    z-index: 999;
}
#toTop:hover {
    opacity: 0.5;
    filter: alpha(opacity=50);
}
.c3{
 float:left;
 width:275px;
 margin-right: 23px; 
}
.c3 img{
 border-top:solid 5px transparent;
    -webkit-transition: all 300ms linear;
-moz-transition: all 300ms linear;
-ms-transition: all 300ms linear;
-o-transition: all 300ms linear;
transition: all 300ms linear;
}
.c3:hover img{
 border-top-color:#006666;   
}
.c3 h2{
text-align: center;
font-size: 30px;
color: #006666;
padding-top: 5px;
margin-bottom: 60px;
    background: #fff023; /* Old browsers */
background: -moz-linear-gradient(top,  #fff023 0%, #f1da36 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#fff023), color-stop(100%,#f1da36)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  #fff023 0%,#f1da36 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  #fff023 0%,#f1da36 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  #fff023 0%,#f1da36 100%); /* IE10+ */
background: linear-gradient(to bottom,  #fff023 0%,#f1da36 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#fff023', endColorstr='#f1da36',GradientType=0 ); /* IE6-9 */

}
.social a {
 border:none !important;   
}
.simply-scroll{
 height:500px;   
}
.simply-scroll .simply-scroll-clip {
 width:1170px;
 height:500px;   
}
.simply-scroll .simply-scroll-clip li {
 height:480px;   
 background-color:white;
}


             </style>

 <script type="text/javascript" src="http://code.jquery.com/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="http://www.sophiamirza.com.pk/javascript/ss.js"></script>
 
    <script type="text/javascript">
        //<![CDATA[
        config.ShopPath = 'http://www.sophiamirza.com.pk';
        config.AppPath = '';
        var ThumbImageWidth = 200;
        var ThumbImageHeight = 200;
        //]]>
    </script>
        <script type="text/javascript">
            (function ($) {
                $(function () { //on DOM ready
                    $("#scroller2").simplyScroll({
                    });
                });
            })(jQuery);
</script>
             </div>
    <!------------ Moving bar ends   ------>  

    <br /><br /><br /><br /><br />
             <!------------ Stylish Moving bar starts   ------>  
  
                      <!------------ Stylish Moving bar ends   ------>  

    <br /><br /><br /><br /><br />
             <div class="side-media">
    <a href=""><img src="images/fb.png" style="width:32px;height:33px"/></a>
    <a href=""><img src="images/tw.png" style="width:32px;height:33px"/></a>
    <a href=""><img src="images/linkedin_logo.png" style="width:32px;height:33px"/></a>
    <a href=""><img src="images/google.png" style="width:32px;height:33px"/></a>
    <a href=""><img src="images/Youtube-logo.png" style="width:32px;height:33px" /></a>
    
</div>
         <!--------------  Stylish Social media Bar Starts ------------------>
             <style>
nabo{ 
    padding: 0px; 
    margin: 0px; 
    border: 0px; 
    top:0px;

}

#id-nabo             
{ width: 100%;
 height: 40px;
 background-color: white;
 position: relative;
  top: 0px;
}

uiil{ float: right;
}

ul lui{ list-style-type: none;
}


lui { display: block;    
    position: relative;
    float:right;
    transition:width 2s;
    -webkit-transition:width 2s; /* Safari */
    height: 40px;
    width: 40px;
    background-color: white;
}


lui au { width: 0px;
    background:red;
    display: block;
    position: fixed;
    top: 0px;
    left: 0px;
    border: 1px solid blue;
    overflow: hidden;
    height: 40px;
    width: 90px;
    color: blue;
    z-index: 0;
    margin-left: 40px;
}

lui:hover { width: 400px;
}

lui:hover img{ float:left}


lui img { float: left;
    position: relative;
    z-index: 1;
    background-color: white;
}
       
    </style>
=  <div style="margin-top:-150px">
            <div id="id-nabo">

        <nabo>
        <uil>
                                    <lui>
                <img src="images/yahoo-logo.png" width="40">
            </lui>
                                    <lui>
                <img src="images/Whatsapp-Logo.png" width="40">
            </lui>
                                    <lui>
                <img src="images/Youtube-logo.png" width="40">
            </lui>
                                    <lui>
                <img src="images/Skype.png" width="40">
            </lui>
                                    <lui>
                <img src="images/linkedin_logo.png" width="40">
            </lui>                        
            <lui>
                <img src="images/google.png" width="40">
            </lui>
                        <lui>
                <img src="images/tw.png" width="40">
            </lui>
            <lui>
                <img src="images/fb.png" width="40">
            </lui>

        </uil>
        </nabo>

</div>
</div>

         <!--------------  Stylish Social media Bar Ends ------------------>
         <!---- Comment Section Starts --------------->
         <div style="background-color:#006666">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             &nbsp;&nbsp;&nbsp; &nbsp;
            <asp:Label ID="lbviews" runat="server" Text="Contact Us!!"></asp:Label>
            &nbsp;&nbsp;<br />
          
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <br />
        <br />
            
&nbsp;&nbsp; <asp:TextBox ID="fromemail" runat="server" Width="241px" style="opacity: 0.5;filter: alpha(opacity=50)" BorderColor="Black" BorderWidth="5" placeholder="Email ID*"></asp:TextBox >
            <br />
            <br />
            &nbsp;&nbsp;
            <asp:TextBox ID="TBNAME" runat="server" Width="241px" style="opacity: 0.5;filter: alpha(opacity=50)" BorderColor="Black" BorderWidth="5" placeholder="Name*"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;
            <asp:TextBox ID="TBNUMBER" runat="server" Width="241px" style="opacity: 0.5;filter: alpha(opacity=50)" BorderColor="Black" BorderWidth="5" placeholder="Number*"></asp:TextBox>
        <br />
            
            <br />
&nbsp;&nbsp;
        <asp:TextBox ID="fromcomments" runat="server" TextMode="MultiLine" Height="276px" Width="689px"  style="opacity: 0.5;filter: alpha(opacity=50)" BorderColor="Black" BorderWidth="5" placeholder="Comments"></asp:TextBox>
&nbsp;<br />
        <br />
            <asp:ImageButton ID="ImageButtonsend" runat="Server" 
       AlternateText="Click to lock record" ImageUrl="~/images/submit btn.png"  
       OnClick="btnimagesend_Click" Height="62px" Width="154px" onclientclick="document.forms[1].target ='_blank';"  />
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="commentdisplay" runat="server"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <br />
            <br />
        </div>
         <br /><br /><br />
         <!---- Comment Section Ends --------------->
        <div style="background-image:url(images/28.jpg)">
                    <br />
            <asp:Label ID="Label2" runat="server" style="color:white" Text="BlueChip- Technology"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" style="color:white" Text="About us"></asp:Label>
                                <asp:Label ID="Label3" runat="server" style="color:white;margin-left:890px" Text="Follow us"></asp:Label>
        <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label4" runat="server" style="color:white" Text="Contact us"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label5" runat="server" style="color:white; margin-left:500px " Text="Write for us"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
             <img src="images/Whatsapp-Logo.png" style="width:41px; height: 31px;"/>
                         <img src="images/yahoo-logo.png" style="width:41px; height: 31px;"/>

        <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label6" runat="server" style="color:white" Text="Jobs"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label7" runat="server" style="color:white" Text="Careers"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <img src="images/tw.png" style="width:41px; height: 31px;"/>
                         <img src="images/Youtube-logo.png" style="width:41px; height: 31px;"/>
&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                <asp:Label ID="Label8" runat="server" style="color:white" Text="Staff"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <img src="images/google.png" style="width:41px; height: 31px;"/>
                         <img src="images/linkedin_logo.png" style="width:41px; height: 31px;"/>

        <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label9" runat="server" style="color:white" Text="Tip us"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label10" runat="server" style="color:white" Text="Advertise"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <img src="images/Skype.png" style="width:41px; height: 31px;"/>
                         <img src="images/fb.png" style="width:41px; height: 31px;"/>
        <br />
        <br />
        <br />
        <br />


        <br />
        <br />
                                <asp:Label ID="Label11" runat="server" style="color:white" Text="Address: UET peshawar"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label12" runat="server" style="color:white" Text="Copyright © BlueChip- Technology"></asp:Label>
        <br />
        <br />
        <br />
        <br />
    </div>

         <div class="nav">
 <nav class="navbar navbar-inverse" >
  <div class="container-fluid">

    <div>
      <ul class="nav navbar-nav">

          <li> <a><font size="5" color="white">BlueChip- Technology</font></a></li>
        <li ><a href="Main Page.aspx" style="color:white">Home</a> </li>
        <li><a href="Lattest.aspx" style="color:white">Lattest</a></li>
        <li><a href="Video.aspx" style="color:white">Videos</a></li>
        <li><a href="hacknews.aspx" style="color:white">Hack News  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	</a></li>
        
        <li><a runat="server" href="" style="color:white"> Search</a>
                                                    <ul>
        <li><a>
            <div class='cse' style='color:#000000;float:right;margin:6px 10px 0 0 ;'>
                &nbsp;<input name='cx' type='hidden' value='007413123682062522013:m8ejumlvizy'/><input type='text' name='q' size='35' />
<input name='ie' type='hidden' value='ISO-8859-1'/>
<input type="submit" name="sa" value="Search" />
<script type="text/javascript" src="http://www.google.com/cse/brand?form=cse-search-box&amp;lang=en"></script>
</div>
        <script>
            (function () {
                var cx = '007413123682062522013:m8ejumlvizy';
                var gcse = document.createElement('script');
                gcse.type = 'text/javascript';
                gcse.async = true;
                gcse.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') +
                    '//cse.google.com/cse.js?cx=' + cx;
                var s = document.getElementsByTagName('script')[0];
                s.parentNode.insertBefore(gcse, s);
            })();
</script>

        </a></li>	
                            </ul>
        </li>			
                <li><a runat="server" href="Registration.aspx" style="color:white">Register</a></li>
        <li id="Loog" runat="server"><a id="logIn" runat="server" href="login.aspx" style="color:white">Log in</a></li>
                  <li id="Li1" runat="server"><a id="A1" runat="server" href="Signout.aspx" style="color:white">Log out</a></li>
		
      </ul>


    </div>
  </div>
</nav>

</div>
     </form>


</body>
</html>


