using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class create_checking : System.Web.UI.Page
{
    string title, detail,name,organizationname,currentTime,myname;
    string source = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\USERS\PASHA\DOCUMENTS\WEBSITE.MDF;Integrated Security=True";
    string a;
    string requiredNumber = string.Empty;
    int defaultNumber;
    protected void Page_Load(object sender, EventArgs e)
    {
        currentTime = System.DateTime.Now.ToString();
    //   a=  gettingArticleNumber();
    // lbch.Text = "The number is = " + a;
      //  updateDatabase();
    }
    public string gettingArticleNumber()
    {
        try
        {
            myname = "sarwan";
            SqlConnection myConnection = new SqlConnection(source);
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
            cmd.CommandType = System.Data.CommandType.Text;
          //  cmd.CommandText = ("insert into recordholder values('" + myname + "','" + 1 + "');");
            cmd.CommandText = ("select number from recordholder where name=('" + myname + "');");
            cmd.Connection = myConnection;
            myConnection.Open();
         // requiredNumber= cmd.ExecuteNonQuery();
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                requiredNumber = reader[0].ToString();
            }
            myConnection.Close();
            return requiredNumber;
        }
        catch(Exception ex){
            lbch.Text = ex.Message;
            return "Wrong!!!!!!!!!!!";
        }
    }
    public void updateDatabase()
    {
       string all= gettingArticleNumber();
        SqlConnection myConnection = new SqlConnection(source);
        int num = Convert.ToInt32(all);
        num = num+1 ;
        try
        {
            
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = ("update recordholder set number=" + num + "where name = 'sarwan';");
            cmd.Connection = myConnection;
            myConnection.Open();
            cmd.ExecuteNonQuery();
            myConnection.Close();
            lbch.Text = "Update success";
            //   confermation();

        }
        catch (SqlException ex)
        {
            lbch.Text = ex.Message;
           // return "Wrong!!!!!!!!!!!";
        }
    }
    protected void btncreatenewarticle_click(object sender, EventArgs e)
    {
        a = gettingArticleNumber();
        string filetemporaryname = "article"+a;
        title = titleText.InnerText;
        detail = detailText.InnerText;
        name = nameText.InnerText; 
        organizationname = organizationNameText.InnerText;
        try
        {
            string fielName = Server.MapPath("~/articles/" + filetemporaryname + ".aspx");
            //File.Create(fielName);
            //File.AppendText(fielName);


            // create a writer and open the file
            TextWriter tw = new StreamWriter(fielName);

            // write a line of text to the file
            tw.WriteLine(@"<%@ Page Language=""C#"" AutoEventWireup=""true"" CodeFile=""" + filetemporaryname + @".aspx.cs"" Inherits="""+filetemporaryname+@""" %>

<!DOCTYPE html PUBLIC ""-//W3C//DTD XHTML 1.0 Transitional//EN"" ""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"">

<html xmlns=""http://www.w3.org/1999/xhtml"">
<head runat=""server"">
    <title>" + filetemporaryname + @"</title>
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
  height: 2px;
  padding: 20px;
  color:#fff;
  width:728px;
  margin:150px auto;
}
.content p {
  margin: 20px 0;
}
</style>
      <meta charset=""utf-8"">
  <meta name=""viewport"" content=""width=device-width, initial-scale=1"">
  <link rel=""stylesheet"" href=""http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"">
  <script src=""https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js""></script>
  <script src=""http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js""></script>
</head>
<body>
    <form id=""form1"" runat=""server"">
    <!----------  Section Code Starts    --------------->  
        
        	<div id=""page-scroller"">
		<div id=""page-holder"" >
							<div class=""adbox"" id=""skin"" data-key=""sad1""></div>			
										<div class=""top-banner-ad adbox  "" data-key=""had1.top""></div>
			
			<div class=""holder"">

<div class=""island-ad adbox  rs-ad section-large "" data-key=""vad"" ></div>
<div class=""feat"">
	<div class=""row"">
		<div class=""col-md-12"">
			<div class=""homestream latest"" id=""latest"">
				<h2 class=""sectiontitle"">Detail!</h2>
				<div class=""list"">
                    <!------------- Section1 Starts     --------->
             <div class=""pl pl-floathero"">
 					<img class=""lazy"" src=""images/8.jpg"" data-original="" alt="" />
				 
                 <br />
							<div class=""block"">
		<a href=""/topic/sleep"" class=""kicker"">"+organizationname+@"</a>		
                                <h3><a href=""/article/247728"">"+title+@"</a></h3>

									<div class=""deck"">"+detail+@"</div>
					
									
				<div class=""byline""><a href=""/author/david-robson"">"+name+@"</a></div>
							
														<time class=""readtime""><i>" + currentTime + @"</i> </time>
										</div>
</div>
                                        <!------------- Section1 Ends     --------->
                </div></div></div></div></div></div></div></div>
<script src=""https://assets.entrepreneur.com/js/lib.min-9cf5e331.js.gz""></script>   <!-- For pics-->
<script src=""https://assets.entrepreneur.com/js/ent.min-47d119a7.js.gz""></script>   <!-- For pics-->
                     		<script>
                     		    var edition = ""us"";
                     		    var dataLayer = [{ 'edition': edition }];
	</script>
        <link rel=""stylesheet"" type=""text/css"" href=""https://assets.entrepreneur.com/css/global.2.0.34.css"" />

    <!----------  Section Code ends    --------------->           

    <!----------  Navigation Bar Starts    --------------->  
    <div>
<div class=""nav"">
 <nav class=""navbar navbar-inverse"" >
  <div class=""container-fluid"">

    <div>
      <ul class=""nav navbar-nav"">
          <li> <a><font size=""5"" color=""white"">BlueChip- Technology</font></a></li>
        <li ><a href=""http://localhost:2904/Main Page.aspx"" style=""color:white"">Home</a></li>
        <li><a href=""http://localhost:2904/Lattest.aspx"" style=""color:white"">Lattest</a></li>
        <li><a href=""http://localhost:2904/Video.aspx"" style=""color:white"">Videos</a></li>
 <li><a href=""hacknews.aspx"" style=""color:white"">Hack News  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	</a></li>
        
        <li><a runat=""server""  style=""color:white""> Search</a></li>			
                <li><a runat=""server"" href=""http://localhost:2904/Registration.aspx"" style=""color:white"">Register</a></li>
		        <li ><a id=""logIn"" runat=""server"" href=""http://localhost:2904/login.aspx"" style=""color:white"">Log in</a></li>        
				 
      </ul>
    </div>
  </div>
</nav>
</div>
<div class=""content"">
  
  <div class=""jquery-script-ads""><script type=""text/javascript""><!--
    google_ad_client = ""ca-pub-2783044520727903"";
    /* jQuery_demo */
    google_ad_slot = ""2780937993"";
    google_ad_width = 728;
    google_ad_height = 90;
    //-->
</script>
<script type=""text/javascript""
src=""http://pagead2.googlesyndication.com/pagead/show_ads.js"">
</script>

  </div>
 </div>
<script src=""http://code.jquery.com/jquery-1.11.1.min.js""></script>
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
<script type=""text/javascript"">

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
    </div>
    </form>
</body>
</html>
");

            // close the stream
            tw.Close();


            tw = new StreamWriter(fielName + ".cs");

            // write a line of text to the file
            tw.WriteLine(@"using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class" +" " + filetemporaryname +"" + @" : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       Response.Write(""new File "");

    }
}
");

            // close the stream
            tw.Close();
         //   Response.Redirect("file.aspx");
            updateDatabase();
            Server.Transfer("~/articles/"+filetemporaryname+".aspx", true);
           // lbch.Text = "~/articles/" + filetemporaryname + ".aspx";

        } 
        catch(Exception abb){
            lbch.Text = abb.Message;
        }
    }
    
}