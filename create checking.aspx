<%@ Page Language="C#" AutoEventWireup="true" CodeFile="create checking.aspx.cs" Inherits="create_checking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
                    <link rel="SHORTCUT ICON" href="images/bull.png">
        <title>New Article</title>
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

</head>
<body>
    <form id="form1" runat="server">
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
                <center>
				<h2 class="sectiontitle" style="color:#006666">Create New Article</h2>
                    </center>
				<div class="list">
                    <!------------- Section1 Starts     --------->
             <div >
							<div class="block">
					<label>Title!!</label>
                          <textarea id="titleText" runat="server" style="width:1131px"></textarea>
                                <br />
                    <label>Name!!</label>
                       <textarea id="nameText" runat="server" style="width:1131px"></textarea>
                                                                <br />
                    <label>Organization Name!!</label>
                       <textarea id="organizationNameText" runat="server" style="width:1131px"></textarea>
                            </div>
</div>
                                        <!------------- Section1 Ends     --------->
                    <br /><br /><br /><br />
                                        <!------------- Section2 Starts     --------->
             <div >

							<div class="block">
                                <label>Description!!!</label>
                                <textarea id="detailText" runat="server" style="width:1131px; height: 522px;"></textarea>
                                <br /><br /><br />
                                <center>
                                <asp:Button ID="newArticle" runat="server" Text ="Save" Height="41px" Width="277px" Style="color:white; background-color:#006666" OnClick="btncreatenewarticle_click"/>
                                    &nbsp;
                                    <asp:Label ID="lbch" runat="server" Text=""></asp:Label>
                                    </center>
										</div>
</div>
                                        <!------------- Section2 Ends     --------->
                </div>

			</div>
		</div>
	</div>
</div>


	
			</div>


		</div>
	</div>
 		
 
	<script src="https://assets.entrepreneur.com/js/lib.min-9cf5e331.js.gz"></script>   <!-- For pics-->
	<script src="https://assets.entrepreneur.com/js/ent.min-47d119a7.js.gz"></script>   <!-- For pics-->
                     		<script>
                     		    var edition = "us";
                     		    var dataLayer = [{ 'edition': edition }];
	</script>
        <link rel="stylesheet" type="text/css" href="https://assets.entrepreneur.com/css/global.2.0.34.css" />

    <!----------  Section Code ends    --------------->           

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
