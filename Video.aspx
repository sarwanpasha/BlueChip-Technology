<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Video.aspx.cs" Inherits="Video" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
                    <link rel="SHORTCUT ICON" href="images/bull.png">
        <title>Videos</title>
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
  height: 0px;
  padding: 20px;
  color:#fff;
  width:728px;
  margin:150px auto;
}
.content p {
  margin: 20px 0;
}
</style>
      <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

    <!------------------- Moving social Media starts     ----------------------->
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
    background:white;
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
        <!------------------- Moving social Media ends     ----------------------->
                    <!----------  Footer bar starts    ---------------> 
    <link href="//dmypbau5frl9g.cloudfront.net/assets/market/core/index-733c840037287d8983784a1909b6d1be.css" media="all" rel="stylesheet" type="text/css" /> 
            <!----------  Footer bar ends    ---------------> 
                        <!----------  SlideShow bar Starts    ---------------> 
        <link href="themes/3/js-image-slider.css" rel="stylesheet" type="text/css" />
    <script src="themes/3/js-image-slider.js" type="text/javascript"></script>
    <link href="generic.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .cap  {width:190px;height:240px;display:inline-block;background:white url(images/caption1.gif) no-repeat 0 0;border-radius:4px;}
        .cap2 {background-image:url(images/caption2.gif)}
        .cap3 {background-image:url(images/caption3.gif)}
        .cap4 {background-image:url(images/caption4.gif)}
    </style>
                    <!----------  SlideShow bar ends    ---------------> 

</head>
<body>
    <form id="form1" runat="server">
                    <!----------  SlideShow bar Starts    ---------------> 
        <br /><br /><br /><br /><br />
 <div id="sliderFrame">
        <div id="slider">
            <a href="http://www.menucool.com/"><img src="images/slider-1.jpg" alt="#htmlcaption1" /></a>
            <a class="lazyImage" href="images/slider-2.jpg" title="#htmlcaption2">slide 2</a>
            <a href="http://www.menucool.com/javascript-image-slider">
                <b data-src="images/slider-3.jpg" data-alt="#htmlcaption3">Image Slider</b>
            </a>
            <a class="lazyImage" href="images/slider-4.jpg" title="#htmlcaption4">slide 4</a>
        </div>
        <!--thumbnails-->
        <div id="thumbs">
            <div class="thumb"><img src="images/thumb-1.gif" /></div>
            <div class="thumb"><img src="images/thumb-2.gif" /></div>
            <div class="thumb"><img src="images/thumb-3.gif" /></div>
            <div class="thumb"><img src="images/thumb-4.gif" /></div>
        </div>
        <!--captions-->
        <div style="display: none;">
            <div id="htmlcaption1">
                <div class="cap"></div>
            </div>
            <div id="htmlcaption2">
                <div class="cap cap2"></div>
            </div>
            <div id="htmlcaption3">
                <div class="cap cap3"></div>
            </div>
            <div id="htmlcaption4">
                <div class="cap cap4"></div>
            </div>
        </div>
    </div>
                    <!----------  SlideShow bar ends    ---------------> 

    <!----------  Section Code Starts    --------------->  
        
        	<div id="page-scroller">
		<div id="page-holder" >
							<div class="adbox" id="skin" data-key="sad1"></div>			 
										<div class="top-banner-ad adbox  " data-key="had1.top"></div>
			
			<div class="holder">

<div class="island-ad adbox  rs-ad section-large " data-key="vad" ></div>
<div class="feat">
	<div class="row">
		<div class="col-md-12">
			<div class="homestream latest" id="latest">
				<h2 class="sectiontitle">Videos</h2>
				<div class="list">
                    <!------------- Section1 Starts     --------->
             <div class="pl pl-floathero">
										<a href="/article/247728" class="hero">
					<img class="lazy" src="images/8.jpg" data-original="https://assets.entrepreneur.com/content/3x2/274/20150625150229-learn-sleep-woman-grass-book.jpeg" alt="Can You Learn in Your Sleep?" />
				</a>
							<div class="block">
		<a href="/topic/sleep" class="kicker">Sleep</a>		<h3><a href="/article/247728">Can You Learn in Your Sleep?</a></h3>

									<div class="deck">Sleep learning used to be a pipe dream. Now neuroscientists say they have found ways to enhance your memory with your eyes closed.</div>
					
									
				<div class="byline"><a href="/author/david-robson">David Robson</a></div>
							
														<time class="readtime"><i class="fa fa-clock-o"></i> 11 min read</time>
										</div>
</div>
                                        <!------------- Section1 Ends     --------->
                                        <!------------- Section2 Starts     --------->
             <div class="pl pl-floathero">
										<a href="/article/247728" class="hero">
					<img class="lazy" src="images/7.jpg" data-original="https://assets.entrepreneur.com/content/3x2/274/20150625150229-learn-sleep-woman-grass-book.jpeg" alt="Can You Learn in Your Sleep?" />
				</a>
							<div class="block">
		<a href="/topic/sleep" class="kicker">Sleep</a>		
                                <h3><a href="/article/247728">Can You Learn in Your Sleep?</a></h3>

									<div class="deck">Sleep learning used to be a pipe dream. Now neuroscientists say they have found ways to enhance your memory with your eyes closed.</div>
					
									
				<div class="byline"><a href="/author/david-robson">David Robson</a></div>
							
														<time class="readtime"><i class="fa fa-clock-o"></i> 11 min read</time>
										</div>
</div>
                                        <!------------- Section2 Ends     --------->
                                                            <!------------- Section3 Starts     --------->
             <div class="pl pl-floathero">
										<a href="/article/247728" class="hero">
					<img class="lazy" src="images/8.jpg" data-original="https://assets.entrepreneur.com/content/3x2/274/20150625150229-learn-sleep-woman-grass-book.jpeg" alt="Can You Learn in Your Sleep?" />
				</a>
							<div class="block">
		<a href="/topic/sleep" class="kicker">Sleep</a>		<h3><a href="/article/247728">Can You Learn in Your Sleep?</a></h3>

									<div class="deck">Sleep learning used to be a pipe dream. Now neuroscientists say they have found ways to enhance your memory with your eyes closed.</div>
					
									
				<div class="byline"><a href="/author/david-robson">David Robson</a></div>
							
														<time class="readtime"><i class="fa fa-clock-o"></i> 11 min read</time>
										</div>
</div>
                                        <!------------- Section3 Ends     --------->
                                        <!------------- Section4 Starts     --------->
             <div class="pl pl-floathero">
										<a href="/article/247728" class="hero">
					<img class="lazy" src="images/7.jpg" data-original="https://assets.entrepreneur.com/content/3x2/274/20150625150229-learn-sleep-woman-grass-book.jpeg" alt="Can You Learn in Your Sleep?" />
				</a>
							<div class="block">
		<a href="/topic/sleep" class="kicker">Sleep</a>		
                                <h3><a href="/article/247728">Can You Learn in Your Sleep?</a></h3>

									<div class="deck">Sleep learning used to be a pipe dream. Now neuroscientists say they have found ways to enhance your memory 
                                        with your eyes closed.</div>
					
									
				<div class="byline"><a href="/author/david-robson">David Robson</a></div>
							
														<time class="readtime"><i class="fa fa-clock-o"></i> 11 min read</time>
										</div>
</div>
                                        <!------------- Section4 Ends     --------->
                                        <!------------- Section5 Starts     --------->
             <div class="pl pl-floathero">
										<a href="/article/247728" class="hero">
					<img class="lazy" src="images/8.jpg" data-original="https://assets.entrepreneur.com/content/3x2/274/20150625150229-learn-sleep-woman-grass-book.jpeg" alt="Can You Learn in Your Sleep?" />
				</a>
							<div class="block">
		<a href="/topic/sleep" class="kicker">Sleep</a>		<h3><a href="/article/247728">Can You Learn in Your Sleep?</a></h3>

									<div class="deck">Sleep learning used to be a pipe dream. Now neuroscientists say they have found ways to enhance your memory with your eyes closed.</div>
					
									
				<div class="byline"><a href="/author/david-robson">David Robson</a></div>
							
														<time class="readtime"><i class="fa fa-clock-o"></i> 11 min read</time>
										</div>
</div>
                                        <!------------- Section5 Ends     --------->
                                        <!------------- Section6 Starts     --------->
             <div class="pl pl-floathero">
										<a href="/article/247728" class="hero">
					<img class="lazy" src="images/7.jpg" data-original="https://assets.entrepreneur.com/content/3x2/274/20150625150229-learn-sleep-woman-grass-book.jpeg" alt="Can You Learn in Your Sleep?" />
				</a>
							<div class="block">
		<a href="/topic/sleep" class="kicker">Sleep</a>		
                                <h3><a href="/article/247728">Can You Learn in Your Sleep?</a></h3>

									<div class="deck">Sleep learning used to be a pipe dream. Now neuroscientists say they have found ways to enhance your memory 
                                        with your eyes closed.</div>
					
									
				<div class="byline"><a href="/author/david-robson">David Robson</a></div>
							
														<time class="readtime"><i class="fa fa-clock-o"></i> 11 min read</time>
										</div>
</div>
                                        <!------------- Section6 Ends     --------->

                          <!------------- Moving social media starts     --------->
                            <div>
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
            <!------------- Moving social media ends     --------->
                </div>

			</div>
		</div>
	</div>
</div>


	
			</div>


		</div>
	</div>
 		
  <br /><br /><br /><br />
	<script src="https://assets.entrepreneur.com/js/lib.min-9cf5e331.js.gz"></script>   <!-- For pics-->
	<script src="https://assets.entrepreneur.com/js/ent.min-47d119a7.js.gz"></script>   <!-- For pics-->
                     		<script>
                     		    var edition = "us";
                     		    var dataLayer = [{ 'edition': edition }];
	</script>
        <link rel="stylesheet" type="text/css" href="https://assets.entrepreneur.com/css/global.2.0.34.css" />

    <!----------  Section Code ends    --------------->  
        
                                        <!---- Footer Section starts --------------->
    <div class="page">
        <div class="page__canvas">
            <div class="canvas">
                <div class="canvas__header">
                    <footer class="site-footer">
                        <div class="site-footer__primary">
                            <div class="footer-primary">
                                <div class="grid-container">
                                    <div class="footer-top">
                                        <div class="footer-top__left">
                                            <a class="footer-top__market-logo" href="https://market.envato.com">Envato Market</a>
                                        </div>
                                        <div class="footer-top__right is-hidden-tablet-and-below">
                                            <div class="market-stats">
                                                <div class="market-stats__stat">
                                                    <p class="t-body -color-light h-remove-margin">
                                                        0
        <span>community members</span></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="footer-primary__columns">
                                        <div class="footer-primary__group--first">
                                            <div class="footer-box">
                                                <div class="footer-box__header js-footer-expand-toggle" data-target="#footer-social">
                                                    <h4>Follow us</h4>
                                                </div>
                                                <div id="footer-social" class="footer-box__content">
                                                    <ul class="social-links">
                                                        <li><a><img src="images/fb.png" width="40"></a></li>
                                                        <li><a><img src="images/tw.png" width="40"></a></li>
                                                        <li><a><img src="images/google.png" width="40"></a></li>
                                                        <li><a><img src="images/linkedin_logo.png" width="40"></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="footer-box">
                                                <div class="footer-box__header js-footer-expand-toggle" data-target="#footer-meet">
                                                    <h4>Meet Us</h4>
                                                </div>
                                                <div id="footer-meet" class="footer-box__content">
                                                    <div class="footer-box__list">
                                                        <ul class="t-list -style-none">
                                                            <li class="t-body h-remove-margin"><a href="http://envato.com">About </a>Us</li>
                                                            <li class="t-body h-remove-margin"><a href="http://www.envato.com/sites">Explore our Ecosystem</a></li>
                                                            <li class="t-body h-remove-margin"><a href="http://envato.com/careers">Careers</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="footer-box">
                                                <div class="footer-box__header js-footer-expand-toggle" data-target="#footer-help">
                                                    <h4>Need Help?</h4>
                                                </div>
                                                <div id="footer-help" class="footer-box__content">
                                                    <div class="footer-box__list">
                                                        <ul class="t-list -style-none">
                                                            <li class="t-body h-remove-margin"><a href="https://help.market.envato.com" class="footer-box__link">Help Center</a></li>
                                                            <li class="t-body h-remove-margin"><a href="/legal/market" rel="nofollow"> Our Market Terms</a></li>
                                                            <li class="t-body h-remove-margin"><a href="/legal/author" rel="nofollow">Author Terms</a></li>
                                                            <li class="t-body h-remove-margin"><a href="/licenses" rel="nofollow">Envato Market Licenses</a></li>
                                                            <li class="t-body h-remove-margin"><a href="http://www.envato.com/contact" rel="nofollow">Contact </a>Us</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="footer-primary__group--second">
                                            <div class="footer-box">
                                                <div class="footer-box__header js-footer-expand-toggle" data-target="#footer-community">
                                                    <h4><span class="is-hidden-tablet-and-below">Join our</span> Community
            </h4>
                                                </div>
                                                <div id="footer-community" class="footer-box__content">
                                                    <div class="footer-box__list">
                                                        <ul class="t-list -style-none">
                                                            <li class="t-body h-remove-margin"><a href="/forums" rel="nofollow">Forums</a></li>
                                                            <li class="t-body h-remove-margin">Our<a href="http://marketblog.envato.com/"> Market Blog</a></li>
                                                            <li class="t-body h-remove-margin"><a href="http://envato.com/community/meetups">Community Meetups</a></li>
                                                            <li class="t-body h-remove-margin"><a href="/affiliate_program" rel="nofollow">Become an Affiliate</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="footer-box">
                                                <div class="footer-box__header js-footer-expand-toggle" data-target="#footer-subscribe">
                                                    <h4><span class="is-hidden-tablet-and-below">Email</span> Newsletters
            </h4>
                                                </div>
                                                <div id="footer-subscribe" class="footer-box__content">
                                                    <p class="t-body h-remove-margin is-hidden-desktop">
                                                        Subscribe to receive updates</p>
                                                    <p class="t-body is-hidden-tablet-and-below">
  Subscribe to receive inspiration, ideas, and news in your inbox.
                                                    </p>
                                                    </div>
                                                <input type="text" placeholder="Email Address" name="EMAIL" class="footer-subscribe__input" id="tbemailsubscribe" />
                                                <asp:Button ID="btnsubscribe" runat="server" Text="Subscribe" OnClick="btnsubscribe_Click" />
     </form>
                                                    <a href="" class="footer-box__external-link is-hidden-tablet-and-below">Privacy Policy</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="footer-primary__group--third">
                                            <div class="footer-box">
                                                <div class="footer-box__content is-hidden-tablet-and-below">
                                                    <div class="media h-spacing-below">
                                                        <div class="media__item">
                                                            <a href="Lattest.aspx" target="_blank">
                                                            <img alt="Open. New services!" height="112" src="images/7.jpg" width="140" /> </a>
                                                        </div>
                                                        <div class="media__body">
                                                            <p class="t-body">
                                                                Checkout The lattest Technology News Here.</p>
                                                            <p class="t-body h-remove-margin">
                                                                <a href="Lattest.aspx" class="t-link -color-light" target="_blank">Lattest Technology News</a>
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="footer-box__content is-hidden-tablet-and-below">
                                                    <div class="media">
                                                        <div class="media__item">
                                                            <a href="hacknews.aspx" target="_blank">
                                                            <img alt="Tuts+" height="112" src="images/8.jpg" width="140" /> </a>
                                                        </div>
                                                        <div class="media__body">
                                                            <p class="t-body">
                                                                Here You can check The lattest news About Hacking from All over the World.</p>
                                                            <p class="t-body h-remove-margin">
                                                                <a href="hacknews.aspx" class="t-link -color-light" target="_blank">Lattest Hacking News</a>
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="footer-bottom">
                                        <center>
                                        <p class="t-body h-remove-margin">
                                            <small>&copy; 2015 BlueChip- Technology Ltd.</small></p>
                                        </center>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </footer>
    <style>
        footer{
    height: 100px; 
    width:100%;
    position: absolute;
    left: 0;
    bottom: 0; 
}
    </style>
          </div>

        </div>
      </div>
    </div>
                           <!---- Footer Section ends --------------->             

    <!----------  Navigation Bar Starts    --------------->           
<div class="nav">
 <nav class="navbar navbar-inverse" >
  <div class="container-fluid">

    <div>
      <ul class="nav navbar-nav">
          <li> <a><font size="5" color="white">BlueChip- Technology</font></a></li>
        <li ><a href="Main Page.aspx" style="color:white">Home</a></li>
        <li><a href="Lattest.aspx" style="color:white">Lattest</a></li>
        <li><a href="Video.aspx" style="color:white">Videos</a></li>
 <li><a href="hacknews.aspx" style="color:white">Hack News  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	</a></li>
        
        <li><a runat="server" href="" style="color:white"> Search</a></li>			
                <li><a runat="server" href="Registration.aspx" style="color:white">Register</a></li>
		        <li ><a id="logIn" runat="server" href="login.aspx" style="color:white">Log in</a></li>        
				 
      </ul>
    </div>
  </div>
</nav>
 
				
 </div>

<div class="content">
  
  <div class="jquery-script-ads"><script type="text/javascript"><!--
    google_ad_client = "ca-pub-2783044520727903";
    /* jQuery_demo */
    google_ad_slot = "2780937993";
    google_ad_width = 728;
    google_ad_height = 90;
    //-->
</script>
<script type="text/javascript"
src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script>

  </div>
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
    </form>
</body>
</html>

