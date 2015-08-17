using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class create_checking : System.Web.UI.Page
{
    string title, detail,name,organizationname,currentTime,myname;
    public static String link;
   // string source = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\USERS\PASHA\DOCUMENTS\WEBSITE.MDF;Integrated Security=True";
    string source = ConfigurationManager.ConnectionStrings["BlueChipConnectionString"].ToString();
    string a;
    string requiredNumber = string.Empty;
    int defaultNumber;
    public static String image,authorImage;
    protected void Page_Load(object sender, EventArgs e)
    {
        currentTime = System.DateTime.Now.ToString();
    }
    #region Get Article Number from database
    public string gettingArticleNumber()
    {
        try
        {
            myname = "sarwan";
            SqlConnection myConnection = new SqlConnection(source);
            SqlCommand cmd = new SqlCommand("SelectingArticleNumber", myConnection);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter returnParameter = cmd.Parameters.Add("@return", SqlDbType.Int);
            returnParameter.Direction = ParameterDirection.ReturnValue;
            cmd.Parameters.Add("@name", SqlDbType.VarChar).Value = myname;
            myConnection.Open();
            cmd.ExecuteNonQuery();
            int id = (int)returnParameter.Value;
            myConnection.Close();
            requiredNumber = id.ToString();
            return requiredNumber;
        }
        catch(Exception ex){
         //   lbch.Text = ex.Message;
            Utilities.LogError(ex);
            throw;
         //   return "Wrong!!!!!!!!!!!";
        }
    }
    #endregion
    #region Get Form Name From database
    public void updateDatabase()
    {
       string all= gettingArticleNumber();
        SqlConnection myConnection = new SqlConnection(source);
        int num = Convert.ToInt32(all);
        num = num+1 ;
        try
        {
            
          //  System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
          //  cmd.CommandType = System.Data.CommandType.Text;
          //  cmd.CommandText = ("update recordholder set number=" + num + "where name = 'sarwan';");
          //  cmd.Connection = myConnection;
           // myConnection.Open();
           // cmd.ExecuteNonQuery();
            //myConnection.Close();

            SqlCommand cmd = new SqlCommand("UpdatingArticleNumber", myConnection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@number", SqlDbType.VarChar).Value = num;
            myConnection.Open();
            cmd.ExecuteNonQuery();
            myConnection.Close();
            lbch.Text = "Update success";
            //   confermation();

        }
        catch (SqlException ex)
        {
         //   lbch.Text = ex.Message;
            Utilities.LogError(ex);
            throw;
        }
    }
    #endregion
    #region Create New Article
    protected void btncreatenewarticle_click(object sender, EventArgs e)
    {
        a = gettingArticleNumber();
        string filetemporaryname = "article"+a;
        title = titleText.InnerText;
        detail = detailText.InnerText;
        name = nameText.InnerText; 
        organizationname = organizationNameText.InnerText;
        link = "http://localhost:2904/articles/" + filetemporaryname + ".aspx";
        try
        {
            string fielName = Server.MapPath("~/articles/" + filetemporaryname + ".aspx");
            //File.Create(fielName);
            //File.AppendText(fielName);


            // create a writer and open the file
            TextWriter tw = new StreamWriter(fielName);

            // write a line of text to the file
            tw.WriteLine(@"<%@ Page Language=""C#"" MasterPageFile=""~/MasterPage.master"" AutoEventWireup=""true"" CodeFile=""" + filetemporaryname + @".aspx.cs"" Inherits="""+filetemporaryname+ @""" Theme=""LogTheme"" StyleSheetTheme=""LogTheme"" %>
<asp:Content ID=""Content1"" ContentPlaceHolderID=""head"" Runat=""Server"">
 <title>" + filetemporaryname + @"</title>
</asp:Content>
<asp:Content ID=""Content2"" ContentPlaceHolderID=""ContentPlaceHolder1"" Runat=""Server"">
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
 					<img class=""lazy"" src=""" + image + @""" data-original="" alt="" />
				 
                 <br />
							<div class=""block"">
		<a href=""/topic/sleep"" class=""kicker"">" + organizationname+@"</a>	
        <asp:Image id=""authorImage"" runat=""server"" src=""" + authorImage + @""" data-original="" alt="" style=""width: 47px; height: 27px"" />
        <a href=""/topic/sleep"" class=""kicker"" style=""position: absolute; left: 5.4em; top: 31.4em; width: 9.8em; height: 1.8em;"">" +name+@"</a>	
                                <h3><a href=""/article/247728"">"+title+@"</a></h3>

									<div class=""deck"">"+detail+@"</div>
			<time class=""readtime"" style=""position: absolute; left: 39.6em; top: 28.4em; width: 12em; height: 1.8em;""><i>" + currentTime + @"</i> </time>

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

 
    </form>
</body>
</asp:Content>
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
    protected void btnsubscribe_Click(object sender, EventArgs e)
    {

    }
}
");

            // close the stream
            tw.Close();
         //   Response.Redirect("file.aspx");
            updateDatabase();
            saveIntoDataBase(organizationNameText.InnerText, titleText.InnerText, shortDetailText.InnerText, nameText.InnerText, authorImage, image, currentTime,link);
            Server.Transfer("~/articles/"+filetemporaryname+".aspx", true);
           // lbch.Text = "~/articles/" + filetemporaryname + ".aspx";

        } 
        catch(Exception ex){
         //  lbch.Text = ex.Message;
          Utilities.LogError(ex);
          throw; 
        }
    }
    #endregion
    #region imagesUpload
    protected void Button1_Click(object sender, EventArgs e)
    {
        StartUpLoad();
    }
    private void StartUpLoad()
    {
        try
        {

            //get the file name of the posted image

            string imgName = FileUpload1.FileName;

            //sets the image path

            string imgPath = "images/" + imgName;

            //get the size in bytes that



            int imgSize = FileUpload1.PostedFile.ContentLength;



            //validates the posted file before saving

            if (FileUpload1.PostedFile != null && FileUpload1.PostedFile.FileName != "")
            {
                if (slide1.Checked == true)
                {
                       // 10240 KB means 10MB, You can change the value based on your requirement
                         FileUpload1.SaveAs(Server.MapPath(imgPath));
                         image = imgPath;
                         check1.ImageUrl = "~/" + imgPath;
                         slide1.Checked = false;
                }
                else if (slide2.Checked == true)
                    {
                         FileUpload1.SaveAs(Server.MapPath(imgPath));
                         authorImage = imgPath;
                         check2.ImageUrl = "~/" + imgPath;
                         slide2.Checked = false;
                    }
            }
        }
        catch (Exception ex)
        {
           // l1.Text = ex.Message;
            Utilities.LogError(ex);
            throw;
        }

    }
    #endregion
    #region Saving Form in Database
    public void saveIntoDataBase(string OrganizationName,string OrganizationHeading,string OrganizationDescription,string AuthoreName,string AuthoreImage,
        string MainImage,string TimeDate,string link1)
    {
        SqlConnection myConnection = new SqlConnection(source);
        SqlCommand cmd = new SqlCommand("insertFormData", myConnection);
        cmd.CommandType = CommandType.StoredProcedure;
        myConnection.Open();
        // create a new parameter
        DbParameter param = cmd.CreateParameter();
        param.ParameterName = "@OrganizationName";
        param.Value = OrganizationName;
        param.DbType = DbType.String;
        cmd.Parameters.Add(param);
        // create a new parameter
        param = cmd.CreateParameter();
        param.ParameterName = "@OrganizationHeading";
        param.Value = OrganizationHeading;
        param.DbType = DbType.String;
        param.Size = 50;
        cmd.Parameters.Add(param);
        // create a new parameter
        param = cmd.CreateParameter();
        param.ParameterName = "@OrganizationDescription";
        param.Value = OrganizationDescription;
        param.DbType = DbType.String;
        cmd.Parameters.Add(param);
        // create a new parameter
        param = cmd.CreateParameter();
        param.ParameterName = "@AuthoreName";
        param.Value = AuthoreName;
        param.DbType = DbType.String;
        cmd.Parameters.Add(param);
        // create a new parameter
        param = cmd.CreateParameter();
        param.ParameterName = "@AuthoreImage";
        param.Value = AuthoreImage;
        param.DbType = DbType.String;
        cmd.Parameters.Add(param);
        // create a new parameter
        param = cmd.CreateParameter();
        param.ParameterName = "@MainImage";
        param.Value = MainImage;
        param.DbType = DbType.String;
        cmd.Parameters.Add(param);
        // create a new parameter
        param = cmd.CreateParameter();
        param.ParameterName = "@TimeDate";
        param.Value = TimeDate;
        param.DbType = DbType.String;
        cmd.Parameters.Add(param);
        // create a new parameter
        param = cmd.CreateParameter();
        param.ParameterName = "@link";
        param.Value = link1;
        param.DbType = DbType.String;
        cmd.Parameters.Add(param);
        // result will represent the number of changed rows
        try
        {
            // execute the stored procedure
            cmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
              //   lbch.Text = ex.Message;
            Utilities.LogError(ex);
            throw;
        }
        finally
        {
            myConnection.Close();
        }
    }
    #endregion
}