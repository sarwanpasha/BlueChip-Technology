using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Main_Page : System.Web.UI.Page
{
    string login;
    string requiredEmailID="";
    string source = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\USERS\PASHA\DOCUMENTS\WEBSITE.MDF;Integrated Security=True";
    protected void Page_Load(object sender, EventArgs e)
    {
        initializepics();
        hide();
        name();
        initializingBlogger();       // Initialize Text of Blogger Section
        initializeslideshow();       // Initialize Text of Slideshow Heading textSection
        smallTextinitialization();   // Initialize Text of Slideshow Small textSection
        authornameinitialization();  // Initialize Text of Author Name textSection
        initializingLattest();       // Initialize Text of Lattest tag textSection
        gettingtime();               // Time initialization of Lattest tag
    }
    public void initializepics()
    {
        Li1.Visible = false;
        lbviews.ForeColor = System.Drawing.Color.White;
        lbviews.Font.Size = FontUnit.XXLarge;

        seeAll1.Font.Size = FontUnit.XLarge;
        seeAll1.ForeColor = System.Drawing.Color.Green;

        bloglattest.Font.Size = FontUnit.XLarge;
        bloglattest.ForeColor = System.Drawing.Color.Black;

        seeAll2.Font.Size = FontUnit.XLarge;
        seeAll2.ForeColor = System.Drawing.Color.Green;

        seeAll3.Font.Size = FontUnit.XLarge;
        seeAll3.ForeColor = System.Drawing.Color.Green;

        seeAll4.Font.Size = FontUnit.XLarge;
        seeAll4.ForeColor = System.Drawing.Color.Green;

        lbtoprated.ForeColor = System.Drawing.Color.Black;
        lbtoprated.Font.Size = FontUnit.XLarge;

        // blog 1 image
        string imgName = "3.3.jpg";
        string imgPath = "images/" + imgName;
        blog1.ImageUrl = "~/" + imgPath;

        // blog 2 image
        string imgNamee = "2.2.jpg";
        string imgPathh = "images/" + imgNamee;
        blog2.ImageUrl = "~/" + imgPathh;

        // blog 3 image
        string imgNameee = "1.1.jpg";
        string imgPathhh = "images/" + imgNameee;
        blog3.ImageUrl = "~/" + imgPathhh;

        // slideshow 1 image
        string slide1 = "1.1.jpg";
        string slideimage1 = "images/" + slide1;
        img1.ImageUrl = "~/" + slideimage1;

        // slideshow 2 image
        string slide2 = "2.2.jpg";
        string slideimage2 = "images/" + slide2;
        img2.ImageUrl = "~/" + slideimage2;

        // slideshow 3 image
        string slide3 = "3.3.jpg";
        string slideimage3 = "images/" + slide3;
        img3.ImageUrl = "~/" + slideimage3;

        // slideshow 4 image
        string slide4 = "4.4.jpg";
        string slideimage4 = "images/" + slide4;
        img4.ImageUrl = "~/" + slideimage4;

        // slideshow 5 image
        string slide5 = "9.jpg";
        string slideimage5 = "images/" + slide5;
        img5.ImageUrl = "~/" + slideimage5;

        // slideshow 6 image
        string slide6 = "10.jpg";
        string slideimage6 = "images/" + slide6;
        Imag1.ImageUrl = "~/" + slideimage6;

        // slideshow 7 image
        string slide7 = "3.3.jpg";
        string slideimage7 = "images/" + slide7;
        Imag2.ImageUrl = "~/" + slideimage7;

        // slideshow 8 image
        string slide8 = "4.4.jpg";
        string slideimage8 = "images/" + slide8;
        Imag3.ImageUrl = "~/" + slideimage8;

        // section 1.1 image
        string section1 = "7.jpg";
        string imgsection1 = "images/" + section1;
        Image121.ImageUrl = "~/" + imgsection1;

        // section 1.2 image
        string section2 = "8.jpg";
        string imgsection2 = "images/" + section2;
        Image122.ImageUrl = "~/" + imgsection2;

        // section 1.3 image
        string section3 = "9.jpg";
        string imgsection3 = "images/" + section3;
        Image123.ImageUrl = "~/" + imgsection3;

        // section 1.4 image
        string section4 = "10.jpg";
        string imgsection4 = "images/" + section4;
        Image124.ImageUrl = "~/" + imgsection4;

        // section 1.5 image
        string section55 = "7.jpg";
        string imgsection55 = "images/" + section55;
        Image125.ImageUrl = "~/" + imgsection55;

        // section 1.6 image
        string section66 = "8.jpg";
        string imgsection66 = "images/" + section66;
        Image126.ImageUrl = "~/" + imgsection66;

        // section 1.7 image
        string section77 = "9.jpg";
        string imgsection77 = "images/" + section77;
        Image127.ImageUrl = "~/" + imgsection77;

        // section 1.8 image
        string section88 = "10.jpg";
        string imgsection88 = "images/" + section88;
        Image128.ImageUrl = "~/" + imgsection88;

        // section 2.1 image
        string section5 = "7.jpg";
        string imgsection5 = "images/" + section5;
        Image7.ImageUrl = "~/" + imgsection5;

        // section 2.2 image
        string section6 = "8.jpg";
        string imgsection6 = "images/" + section6;
        Image8.ImageUrl = "~/" + imgsection6;

        // section 2.3 image
        string section7 = "9.jpg";
        string imgsection7 = "images/" + section7;
        Image9.ImageUrl = "~/" + imgsection7;

        // section 2.4 image
        string section8 = "10.jpg";
        string imgsection8 = "images/" + section8;
        Image10.ImageUrl = "~/" + imgsection8;

        // section 2.5 image
        string section555 = "7.jpg";
        string imgsection555 = "images/" + section555;
        Image11.ImageUrl = "~/" + imgsection555;

        // section 2.6 image
        string section666 = "8.jpg";
        string imgsection666 = "images/" + section666;
        Image12.ImageUrl = "~/" + imgsection666;

        // section 2.7 image
        string section777 = "9.jpg";
        string imgsection777 = "images/" + section777;
        Image13.ImageUrl = "~/" + imgsection777;

        // section 2.8 image
        string section888 = "10.jpg";
        string imgsection888 = "images/" + section888;
        Image14.ImageUrl = "~/" + imgsection888;

        // section 3.1 image
        string section9 = "7.jpg";
        string imgsection9 = "images/" + section9;
        Image15.ImageUrl = "~/" + imgsection9;

        // section 3.2 image
        string section10 = "8.jpg";
        string imgsection10 = "images/" + section10;
        Image16.ImageUrl = "~/" + imgsection10;

        // section 3.3 image
        string section11 = "9.jpg";
        string imgsection11 = "images/" + section11;
        Image17.ImageUrl = "~/" + imgsection11;

        // section 3.4 image
        string section12 = "10.jpg";
        string imgsection12 = "images/" + section12;
        Image18.ImageUrl = "~/" + imgsection12;

        // section 3.5 image
        string section1122 = "7.jpg";
        string imgsection1122 = "images/" + section1122;
        Image19.ImageUrl = "~/" + imgsection1122;

        // section 3.6 image
        string section1123 = "8.jpg";
        string imgsection1123 = "images/" + section1123;
        Image20.ImageUrl = "~/" + imgsection1123;

        // section 3.7 image
        string section1124 = "9.jpg";
        string imgsection1124 = "images/" + section1124;
        Image21.ImageUrl = "~/" + imgsection1124;

        // section 3.8 image
        string section1125 = "10.jpg";
        string imgsection1125 = "images/" + section1125;
        Image22.ImageUrl = "~/" + imgsection1125;

        // section 4.1 image
        string section13 = "7.jpg";
        string imgsection13 = "images/" + section13;
        Image23.ImageUrl = "~/" + imgsection13;

        // section 4.2 image
        string section14 = "8.jpg";
        string imgsection14 = "images/" + section14;
        Image24.ImageUrl = "~/" + imgsection14;

        // section 4.3 image
        string section15 = "9.jpg";
        string imgsection15 = "images/" + section15;
        Image25.ImageUrl = "~/" + imgsection15;

        // section 4.4 image
        string section16 = "10.jpg";
        string imgsection16 = "images/" + section16;
        Image26.ImageUrl = "~/" + imgsection16;

        // section 4.5 image
        string sectionn13 = "7.jpg";
        string imgsectionn13 = "images/" + sectionn13;
        Image27.ImageUrl = "~/" + imgsectionn13;

        // section 4.6 image
        string sectionn14 = "8.jpg";
        string imgsectionn14 = "images/" + sectionn14;
        Image28.ImageUrl = "~/" + imgsectionn14;

        // section 4.7 image
        string sectionn15 = "9.jpg";
        string imgsectionn15 = "images/" + sectionn15;
        Image29.ImageUrl = "~/" + imgsectionn15;

        // section 4.8 image
        string sectionn16 = "10.jpg";
        string imgsectionn16 = "images/" + sectionn16;
        Image30.ImageUrl = "~/" + imgsectionn16;

        // section 5.1 image
        string ssection13 = "7.jpg";
        string iimgsection13 = "images/" + ssection13;
        Image1.ImageUrl = "~/" + iimgsection13;

        // section 5.2 image
        string ssection14 = "8.jpg";
        string iimgsection14 = "images/" + ssection14;
        Image2.ImageUrl = "~/" + iimgsection14;

        // section 5.3 image
        string ssection15 = "9.jpg";
        string iimgsection15 = "images/" + ssection15;
        Image3.ImageUrl = "~/" + iimgsection15;

        // section 5.4 image
        string ssection16 = "10.jpg";
        string iimgsection16 = "images/" + ssection16;
        Image4.ImageUrl = "~/" + iimgsection16;

        // section 5.5 image
        string ssectionn13 = "7.jpg";
        string iimgsectionn13 = "images/" + ssectionn13;
        Image5.ImageUrl = "~/" + iimgsectionn13;

        // section 5.6 image
        string ssectionn14 = "8.jpg";
        string iimgsectionn14 = "images/" + ssectionn14;
        Image6.ImageUrl = "~/" + iimgsectionn14;
    }
    public void hide()
    {
        theDiv1.Visible = false;
        theDiv2.Visible = false;
        theDiv3.Visible = false;
        theDiv4.Visible = false;
        Div5.Visible = false;

    }
    public void unhide()
    {
        theDiv1.Visible = true;
        theDiv2.Visible = true;
        theDiv3.Visible = true;
        theDiv4.Visible = true;
        Div5.Visible = false;
    }
    public void name()
    {
        lbname.Text = "";
        try
        {
            lbname.ForeColor = System.Drawing.Color.Green;////COLOUR
            lbname.Text = Session["name"].ToString();
            Session.Remove("name");
            if (!(lbname.Text == ""))
            {
                Loog.Visible = false;
                Li1.Visible = true;
            }
            if (lbname.Text == "sarwanpasha@gmail.com")
            {
                unhide();
            }
            //  btnout.Visible = true;
        }
        catch (Exception ex)
        {
            lbname.Text = "" ;
        }
    }
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

                // 10240 KB means 10MB, You can change the value based on your requirement

                if (FileUpload1.PostedFile.ContentLength > 1024000000)
                {

                    Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('File is too big.')", true);

                }

                else
                {

                    //then save it to the Folder
                    if (onne.Checked == true)
                    {
                        FileUpload1.SaveAs(Server.MapPath(imgPath));

                        Image121.ImageUrl = "~/" + imgPath;
                        onne.Checked = false;
                        // Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);
                    }
                    else if (twwo.Checked == true)
                    {
                        FileUpload1.SaveAs(Server.MapPath(imgPath));

                        Image122.ImageUrl = "~/" + imgPath;
                        twwo.Checked = false;
                        //  Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);
                    }
                    else if (three.Checked == true)
                    {
                        FileUpload1.SaveAs(Server.MapPath(imgPath));

                        Image123.ImageUrl = "~/" + imgPath;
                        three.Checked = false;
                        // Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);
                    }
                    else if (four.Checked == true)
                    {
                        FileUpload1.SaveAs(Server.MapPath(imgPath));

                        Image124.ImageUrl = "~/" + imgPath;
                        four.Checked = false;
                        // Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);
                    }
                    else if (CheckBox13.Checked == true)
                    {
                        FileUpload1.SaveAs(Server.MapPath(imgPath));

                        Image125.ImageUrl = "~/" + imgPath;
                        CheckBox13.Checked = false;
                        // Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);
                    }
                    else if (CheckBox14.Checked == true)
                    {
                        FileUpload1.SaveAs(Server.MapPath(imgPath));

                        Image126.ImageUrl = "~/" + imgPath;
                        CheckBox14.Checked = false;
                        // Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);
                    }
                    else if (CheckBox15.Checked == true)
                    {
                        FileUpload1.SaveAs(Server.MapPath(imgPath));

                        Image127.ImageUrl = "~/" + imgPath;
                        CheckBox15.Checked = false;
                        // Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);
                    }
                    else if (CheckBox16.Checked == true)
                    {
                        FileUpload1.SaveAs(Server.MapPath(imgPath));

                        Image128.ImageUrl = "~/" + imgPath;
                        CheckBox16.Checked = false;
                        // Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);
                    }

                }



            }
        }
        catch (Exception ex)
        {
            l1.Text = ex.Message;

        }

    }
    private void StartUpLoadFive()
    {
        try
        {

            //get the file name of the posted image

            string imgName = FileUpload5.FileName;

            //sets the image path

            string imgPath = "images/" + imgName;

            //get the size in bytes that



            int imgSize = FileUpload5.PostedFile.ContentLength;



            //validates the posted file before saving

            if (FileUpload5.PostedFile != null && FileUpload5.PostedFile.FileName != "")
            {

                // 10240 KB means 10MB, You can change the value based on your requirement

                if (FileUpload5.PostedFile.ContentLength > 1024000000)
                {

                    Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('File is too big.')", true);

                }

                else
                {

                    //then save it to the Folder
                    if (five.Checked == true)
                    {
                        FileUpload5.SaveAs(Server.MapPath(imgPath));

                        Image7.ImageUrl = "~/" + imgPath;
                        five.Checked = false;
                        // Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);
                    }
                    else if (six.Checked == true)
                    {
                        FileUpload5.SaveAs(Server.MapPath(imgPath));

                        Image8.ImageUrl = "~/" + imgPath;
                        six.Checked = false;
                        //  Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);
                    }
                    else if (seven.Checked == true)
                    {
                        FileUpload5.SaveAs(Server.MapPath(imgPath));

                        Image9.ImageUrl = "~/" + imgPath;
                        seven.Checked = false;
                        // Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);
                    }
                    else if (eight.Checked == true)
                    {
                        FileUpload5.SaveAs(Server.MapPath(imgPath));

                        Image10.ImageUrl = "~/" + imgPath;
                        eight.Checked = false;
                        // Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);
                    }
                    else if (CheckBox17.Checked == true)
                    {
                        FileUpload5.SaveAs(Server.MapPath(imgPath));

                        Image11.ImageUrl = "~/" + imgPath;
                        CheckBox17.Checked = false;
                        //  Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);
                    }
                    else if (CheckBox18.Checked == true)
                    {
                        FileUpload5.SaveAs(Server.MapPath(imgPath));

                        Image12.ImageUrl = "~/" + imgPath;
                        CheckBox18.Checked = false;
                        // Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);
                    }
                    else if (CheckBox19.Checked == true)
                    {
                        FileUpload5.SaveAs(Server.MapPath(imgPath));

                        Image13.ImageUrl = "~/" + imgPath;
                        CheckBox19.Checked = false;
                        // Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);
                    }
                    else if (CheckBox20.Checked == true)
                    {
                        FileUpload5.SaveAs(Server.MapPath(imgPath));

                        Image14.ImageUrl = "~/" + imgPath;
                        CheckBox20.Checked = false;
                        // Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);
                    }

                }



            }
        }
        catch (Exception ex)
        {
            l1.Text = ex.Message;

        }

    }
    private void StartUpLoadNine()
    {
        try
        {

            //get the file name of the posted image

            string imgName = FileUpload9.FileName;

            //sets the image path

            string imgPath = "images/" + imgName;

            //get the size in bytes that



            int imgSize = FileUpload9.PostedFile.ContentLength;



            //validates the posted file before saving

            if (FileUpload9.PostedFile != null && FileUpload9.PostedFile.FileName != "")
            {

                // 10240 KB means 10MB, You can change the value based on your requirement

                if (FileUpload9.PostedFile.ContentLength > 1024000000)
                {

                    Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('File is too big.')", true);

                }

                else
                {

                    //then save it to the Folder
                    if (nine.Checked == true)
                    {
                        FileUpload9.SaveAs(Server.MapPath(imgPath));

                        Image15.ImageUrl = "~/" + imgPath;
                        nine.Checked = false;
                        // Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);
                    }
                    else if (ten.Checked == true)
                    {
                        FileUpload9.SaveAs(Server.MapPath(imgPath));

                        Image16.ImageUrl = "~/" + imgPath;
                        ten.Checked = false;

                        //  Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);
                    }
                    else if (eleven.Checked == true)
                    {
                        FileUpload9.SaveAs(Server.MapPath(imgPath));

                        Image17.ImageUrl = "~/" + imgPath;
                        eleven.Checked = false;
                        // Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);
                    }
                    else if (twelve.Checked == true)
                    {
                        FileUpload9.SaveAs(Server.MapPath(imgPath));

                        Image18.ImageUrl = "~/" + imgPath;
                        twelve.Checked = false;
                        // Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);
                    }
                    else if (CheckBox21.Checked == true)
                    {
                        FileUpload9.SaveAs(Server.MapPath(imgPath));

                        Image19.ImageUrl = "~/" + imgPath;
                        CheckBox21.Checked = false;

                        //  Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);
                    }
                    else if (CheckBox22.Checked == true)
                    {
                        FileUpload9.SaveAs(Server.MapPath(imgPath));

                        Image20.ImageUrl = "~/" + imgPath;
                        CheckBox22.Checked = false;
                        // Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);
                    }
                    else if (CheckBox23.Checked == true)
                    {
                        FileUpload9.SaveAs(Server.MapPath(imgPath));

                        Image21.ImageUrl = "~/" + imgPath;
                        CheckBox23.Checked = false;
                        // Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);
                    }
                    else if (CheckBox24.Checked == true)
                    {
                        FileUpload9.SaveAs(Server.MapPath(imgPath));

                        Image22.ImageUrl = "~/" + imgPath;
                        CheckBox24.Checked = false;
                        // Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);
                    }

                }



            }
        }
        catch (Exception ex)
        {
            l1.Text = ex.Message;

        }

    }
    private void StartUpLoadThirteen()
    {
        try
        {

            //get the file name of the posted image

            string imgName = FileUpload13.FileName;

            //sets the image path

            string imgPath = "images/" + imgName;

            //get the size in bytes that



            int imgSize = FileUpload13.PostedFile.ContentLength;



            //validates the posted file before saving

            if (FileUpload13.PostedFile != null && FileUpload13.PostedFile.FileName != "")
            {

                // 10240 KB means 10MB, You can change the value based on your requirement

                if (FileUpload13.PostedFile.ContentLength > 1024000000)
                {

                    Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('File is too big.')", true);

                }

                else
                {

                    //then save it to the Folder
                    if (thirteen.Checked == true)
                    {
                        FileUpload13.SaveAs(Server.MapPath(imgPath));

                        Image23.ImageUrl = "~/" + imgPath;
                        thirteen.Checked = false;
                        // Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);
                    }
                    else if (fourteen.Checked == true)
                    {
                        FileUpload13.SaveAs(Server.MapPath(imgPath));

                        Image24.ImageUrl = "~/" + imgPath;
                        fourteen.Checked = false;
                        //  Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);
                    }
                    else if (fifteen.Checked == true)
                    {
                        FileUpload13.SaveAs(Server.MapPath(imgPath));

                        Image25.ImageUrl = "~/" + imgPath;
                        fifteen.Checked = false;
                        // Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);
                    }
                    else if (sixteen.Checked == true)
                    {
                        FileUpload13.SaveAs(Server.MapPath(imgPath));

                        Image26.ImageUrl = "~/" + imgPath;
                        sixteen.Checked = false;
                        // Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);
                    }
                    else if (CheckBox25.Checked == true)
                    {
                        FileUpload13.SaveAs(Server.MapPath(imgPath));

                        Image27.ImageUrl = "~/" + imgPath;
                        CheckBox25.Checked = false;
                        //  Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);
                    }
                    else if (CheckBox26.Checked == true)
                    {
                        FileUpload13.SaveAs(Server.MapPath(imgPath));

                        Image28.ImageUrl = "~/" + imgPath;
                        CheckBox26.Checked = false;
                        // Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);
                    }
                    else if (CheckBox27.Checked == true)
                    {
                        FileUpload13.SaveAs(Server.MapPath(imgPath));

                        Image29.ImageUrl = "~/" + imgPath;
                        CheckBox27.Checked = false;
                        // Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);
                    }
                    else if (CheckBox28.Checked == true)
                    {
                        FileUpload13.SaveAs(Server.MapPath(imgPath));

                        Image30.ImageUrl = "~/" + imgPath;
                        CheckBox28.Checked = false;
                        // Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);
                    }

                }



            }
        }
        catch (Exception ex)
        {
            l1.Text = ex.Message;

        }

    }
    private void blogger()
    {
        try
        {

            //get the file name of the posted image

            string imgName = FileBlog.FileName;

            //sets the image path

            string imgPath = "images/" + imgName;

            //get the size in bytes that



            int imgSize = FileBlog.PostedFile.ContentLength;



            //validates the posted file before saving

            if (FileBlog.PostedFile != null && FileBlog.PostedFile.FileName != "")
            {

                // 10240 KB means 10MB, You can change the value based on your requirement

                if (FileBlog.PostedFile.ContentLength > 1024000000)
                {

                    Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('File is too big.')", true);

                }

                else
                {

                    //then save it to the Folder
                    if (pic1.Checked == true)
                    {
                        FileBlog.SaveAs(Server.MapPath(imgPath));

                        blog1.ImageUrl = "~/" + imgPath;
                        pic1.Checked = false;

                        // Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);
                    }
                    else if (pic2.Checked == true)
                    {
                        FileBlog.SaveAs(Server.MapPath(imgPath));

                        blog2.ImageUrl = "~/" + imgPath;
                        pic2.Checked = false;
                        //  Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);
                    }
                    else if (pic3.Checked == true)
                    {
                        FileBlog.SaveAs(Server.MapPath(imgPath));

                        blog3.ImageUrl = "~/" + imgPath;
                        pic3.Checked = false;
                        // Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);
                    }

                }



            }
        }
        catch (Exception ex)
        {
            l1.Text = ex.Message;

        }

    }
    private void slider()
    {
        try
        {

            //get the file name of the posted image

            string imgName = FileSlideshow.FileName;

            //sets the image path

            string imgPath = "images/" + imgName;

            //get the size in bytes that



            int imgSize = FileSlideshow.PostedFile.ContentLength;



            //validates the posted file before saving

            if (FileSlideshow.PostedFile != null && FileSlideshow.PostedFile.FileName != "")
            {

                // 10240 KB means 10MB, You can change the value based on your requirement

                if (FileSlideshow.PostedFile.ContentLength > 1024000000)
                {

                    Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('File is too big.')", true);

                }

                else
                {

                    //then save it to the Folder
                    if (slide1.Checked == true)
                    {
                        FileSlideshow.SaveAs(Server.MapPath(imgPath));

                        img1.ImageUrl = "~/" + imgPath;
                        slide1.Checked = false;
                        // Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);
                    }
                    else if (slide2.Checked == true)
                    {
                        FileSlideshow.SaveAs(Server.MapPath(imgPath));

                        img2.ImageUrl = "~/" + imgPath;
                        slide2.Checked = false;
                        //  Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);
                    }
                    else if (slide3.Checked == true)
                    {
                        FileSlideshow.SaveAs(Server.MapPath(imgPath));

                        img3.ImageUrl = "~/" + imgPath;
                        slide3.Checked = false;
                        // Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);
                    }
                    else if (slide4.Checked == true)
                    {
                        FileSlideshow.SaveAs(Server.MapPath(imgPath));

                        img4.ImageUrl = "~/" + imgPath;
                        slide4.Checked = false;
                        // Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);
                    }
                    else if (slide5.Checked == true)
                    {
                        FileSlideshow.SaveAs(Server.MapPath(imgPath));

                        img5.ImageUrl = "~/" + imgPath;
                        slide5.Checked = false;
                        // Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);
                    }


                }



            }
        }
        catch (Exception ex)
        {
            l1.Text = ex.Message;

        }

    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        StartUpLoadFive();
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        StartUpLoadNine();
    }
    protected void Button13_Click(object sender, EventArgs e)
    {
        StartUpLoadThirteen();
    }
    protected void Button14_Click(object sender, EventArgs e)
    {
        slider();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        blogger();
    }
    private void initializingBlogger()
    {
        tb0a0.InnerHtml = "These 'Dressy' Sweatpants Are Killing It on Kickstarter";
        tb2a2.InnerHtml = "These 'Dressy' Sweatpants Are Killing It on Kickstarter";
        tb3a3.InnerHtml = "These 'Dressy' Sweatpants Are Killing It on Kickstarter";

    }

    protected void btntextpost_Click1(object sender, EventArgs e)
    {
        if (text1.Checked == false && text2.Checked == false && text3.Checked == false)
        {
            tb1.Text = "";
        }
        else
        {
            string a = tb1.Text;
            if (text1.Checked == true)
            {
                tb0a0.InnerHtml = a;
                // tbx1.Text = a;
                tb1.Text = "";
                text1.Checked = false;
            }
            else if (text2.Checked == true)
            {
                tb2a2.InnerHtml = a;
                // tbx2.Text = a;
                tb1.Text = "";
                text2.Checked = false;
            }
            else if (text3.Checked == true)
            {
                tb3a3.InnerHtml = a;
                tbx3.Text = a;
                tb1.Text = "";
                text3.Checked = false;
            }
        }
    }
    protected void btntextpost_Click2(object sender, EventArgs e)
    {
        string a = TextBox1.Text;
        /////////////////////////   heading text starts   /////////////////////////////
        if (cb1.Checked == true)
        {
            heading1.InnerHtml = a;
            TextBox1.Text = "";
            cb1.Checked = false;
        }
        else if (cb2.Checked == true)
        {
            A2.InnerHtml = a;
            TextBox1.Text = "";
            cb2.Checked = false;
        }
        else if (cb3.Checked == true)
        {
            A5.InnerHtml = a;
            TextBox1.Text = "";
            cb3.Checked = false;
        }
        else if (cb4.Checked == true)
        {
            A8.InnerHtml = a;
            TextBox1.Text = "";
            cb4.Checked = false;
        }
        else if (CheckBox29.Checked == true)
        {
            A11.InnerHtml = a;
            TextBox1.Text = "";
            CheckBox29.Checked = false;
        }
        else if (CheckBox30.Checked == true)
        {
            A14.InnerHtml = a;
            TextBox1.Text = "";
            CheckBox30.Checked = false;
        }
        else if (CheckBox31.Checked == true)
        {
            A17.InnerHtml = a;
            TextBox1.Text = "";
            CheckBox31.Checked = false;
        }
        else if (CheckBox32.Checked == true)
        {
            A20.InnerHtml = a;
            TextBox1.Text = "";
            CheckBox32.Checked = false;
        }

        ///////////////////////  Heading Text Ends  ///////////////////////////////

        ////////////////  Small text starts  ///////////////////////
        if (CheckBox33.Checked == true)
        {
            small1.InnerHtml = a;
            TextBox1.Text = "";
            CheckBox33.Checked = false;
        }
        else if (CheckBox34.Checked == true)
        {
            A3.InnerHtml = a;
            TextBox1.Text = "";
            CheckBox34.Checked = false;
        }
        else if (CheckBox35.Checked == true)
        {
            A6.InnerHtml = a;
            TextBox1.Text = "";
            CheckBox35.Checked = false;
        }
        else if (CheckBox36.Checked == true)
        {
            A9.InnerHtml = a;
            TextBox1.Text = "";
            CheckBox36.Checked = false;
        }
        else if (CheckBox37.Checked == true)
        {
            A12.InnerHtml = a;
            TextBox1.Text = "";
            CheckBox37.Checked = false;
        }
        else if (CheckBox38.Checked == true)
        {
            A15.InnerHtml = a;
            TextBox1.Text = "";
            CheckBox38.Checked = false;
        }
        else if (CheckBox39.Checked == true)
        {
            A18.InnerHtml = a;
            TextBox1.Text = "";
            CheckBox39.Checked = false;
        }
        else if (CheckBox40.Checked == true)
        {
            A21.InnerHtml = a;
            TextBox1.Text = "";
            CheckBox40.Checked = false;
        }
        ////////////////  Small text Ends  ///////////////////////

    }
    private void initializingLattest()
    {
        /////////////////   small Text  ///////////////////////
        small1.InnerHtml = "The menswear brand Public Rec was launched by a sweatpants aficionado on a mission to make loungewear look less like PJs.";
        A3.InnerHtml = "The menswear brand Public Rec was launched by a sweatpants aficionado on a mission to make loungewear look less like PJs.";
        A6.InnerHtml = "The menswear brand Public Rec was launched by a sweatpants aficionado on a mission to make loungewear look less like PJs.";
        A9.InnerHtml = "The menswear brand Public Rec was launched by a sweatpants aficionado on a mission to make loungewear look less like PJs.";
        A12.InnerHtml = "The menswear brand Public Rec was launched by a sweatpants aficionado on a mission to make loungewear look less like PJs.";
        A15.InnerHtml = "The menswear brand Public Rec was launched by a sweatpants aficionado on a mission to make loungewear look less like PJs.";
        A18.InnerHtml = "The menswear brand Public Rec was launched by a sweatpants aficionado on a mission to make loungewear look less like PJs.";
        A21.InnerHtml = "The menswear brand Public Rec was launched by a sweatpants aficionado on a mission to make loungewear look less like PJs.";
        /////////////////   small Text  ///////////////////////

        /////////////////   Heading Text  ///////////////////////
        heading1.InnerHtml = "These 'Dressy' Sweatpants Are Killing It on Kickstarter";
        A2.InnerHtml = "These 'Dressy' Sweatpants Are Killing It on Kickstarter";
        A5.InnerHtml = "These 'Dressy' Sweatpants Are Killing It on Kickstarter";
        A8.InnerHtml = "These 'Dressy' Sweatpants Are Killing It on Kickstarter";
        A11.InnerHtml = "These 'Dressy' Sweatpants Are Killing It on Kickstarter";
        A14.InnerHtml = "These 'Dressy' Sweatpants Are Killing It on Kickstarter";
        A17.InnerHtml = "These 'Dressy' Sweatpants Are Killing It on Kickstarter";
        A20.InnerHtml = "These 'Dressy' Sweatpants Are Killing It on Kickstarter";

        /////////////////   Heading Text  ///////////////////////

        /////////////////   Heading Text Tablet tag   ///////////////////////
        A23.InnerHtml = "These 'Dressy' Sweatpants Are Killing It on Kickstarter";
        A26.InnerHtml = "These 'Dressy' Sweatpants Are Killing It on Kickstarter";
        A29.InnerHtml = "These 'Dressy' Sweatpants Are Killing It on Kickstarter";
        A32.InnerHtml = "These 'Dressy' Sweatpants Are Killing It on Kickstarter";
        A35.InnerHtml = "These 'Dressy' Sweatpants Are Killing It on Kickstarter";
        A38.InnerHtml = "These 'Dressy' Sweatpants Are Killing It on Kickstarter";
        A41.InnerHtml = "These 'Dressy' Sweatpants Are Killing It on Kickstarter";
        A44.InnerHtml = "These 'Dressy' Sweatpants Are Killing It on Kickstarter";

        /////////////////   Heading Text Tablet tag  ///////////////////////

        /////////////////   small Text Tablet tag ///////////////////////
        A24.InnerHtml = "The menswear brand Public Rec was launched by a sweatpants aficionado on a mission to make loungewear look less like PJs.";
        A27.InnerHtml = "The menswear brand Public Rec was launched by a sweatpants aficionado on a mission to make loungewear look less like PJs.";
        A30.InnerHtml = "The menswear brand Public Rec was launched by a sweatpants aficionado on a mission to make loungewear look less like PJs.";
        A33.InnerHtml = "The menswear brand Public Rec was launched by a sweatpants aficionado on a mission to make loungewear look less like PJs.";
        A36.InnerHtml = "The menswear brand Public Rec was launched by a sweatpants aficionado on a mission to make loungewear look less like PJs.";
        A39.InnerHtml = "The menswear brand Public Rec was launched by a sweatpants aficionado on a mission to make loungewear look less like PJs.";
        A42.InnerHtml = "The menswear brand Public Rec was launched by a sweatpants aficionado on a mission to make loungewear look less like PJs.";
        A45.InnerHtml = "The menswear brand Public Rec was launched by a sweatpants aficionado on a mission to make loungewear look less like PJs.";
        /////////////////   small Text Tablet tag  ///////////////////////

        /////////////////   Heading Text PCNEWS tag   ///////////////////////
        A47.InnerHtml = "These 'Dressy' Sweatpants Are Killing It on Kickstarter";
        A50.InnerHtml = "These 'Dressy' Sweatpants Are Killing It on Kickstarter";
        A53.InnerHtml = "These 'Dressy' Sweatpants Are Killing It on Kickstarter";
        A56.InnerHtml = "These 'Dressy' Sweatpants Are Killing It on Kickstarter";
        A59.InnerHtml = "These 'Dressy' Sweatpants Are Killing It on Kickstarter";
        A62.InnerHtml = "These 'Dressy' Sweatpants Are Killing It on Kickstarter";
        A65.InnerHtml = "These 'Dressy' Sweatpants Are Killing It on Kickstarter";
        A68.InnerHtml = "These 'Dressy' Sweatpants Are Killing It on Kickstarter";

        /////////////////   Heading Text PCNEWS tag  ///////////////////////

        /////////////////   small Text PCNEWS tag ///////////////////////
        A48.InnerHtml = "The menswear brand Public Rec was launched by a sweatpants aficionado on a mission to make loungewear look less like PJs.";
        A51.InnerHtml = "The menswear brand Public Rec was launched by a sweatpants aficionado on a mission to make loungewear look less like PJs.";
        A54.InnerHtml = "The menswear brand Public Rec was launched by a sweatpants aficionado on a mission to make loungewear look less like PJs.";
        A57.InnerHtml = "The menswear brand Public Rec was launched by a sweatpants aficionado on a mission to make loungewear look less like PJs.";
        A60.InnerHtml = "The menswear brand Public Rec was launched by a sweatpants aficionado on a mission to make loungewear look less like PJs.";
        A63.InnerHtml = "The menswear brand Public Rec was launched by a sweatpants aficionado on a mission to make loungewear look less like PJs.";
        A66.InnerHtml = "The menswear brand Public Rec was launched by a sweatpants aficionado on a mission to make loungewear look less like PJs.";
        A69.InnerHtml = "The menswear brand Public Rec was launched by a sweatpants aficionado on a mission to make loungewear look less like PJs.";
        /////////////////   small Text PCNEWS tag  ///////////////////////

        /////////////////   Heading Text Videos tag   ///////////////////////
        A71.InnerHtml = "These 'Dressy' Sweatpants Are Killing It on Kickstarter";
        A74.InnerHtml = "These 'Dressy' Sweatpants Are Killing It on Kickstarter";
        A77.InnerHtml = "These 'Dressy' Sweatpants Are Killing It on Kickstarter";
        A80.InnerHtml = "These 'Dressy' Sweatpants Are Killing It on Kickstarter";
        A83.InnerHtml = "These 'Dressy' Sweatpants Are Killing It on Kickstarter";
        A86.InnerHtml = "These 'Dressy' Sweatpants Are Killing It on Kickstarter";
        A89.InnerHtml = "These 'Dressy' Sweatpants Are Killing It on Kickstarter";
        A92.InnerHtml = "These 'Dressy' Sweatpants Are Killing It on Kickstarter";

        /////////////////   Heading Text Videos tag  ///////////////////////

        /////////////////   small Text Videos tag ///////////////////////
        A72.InnerHtml = "The menswear brand Public Rec was launched by a sweatpants aficionado on a mission to make loungewear look less like PJs.";
        A75.InnerHtml = "The menswear brand Public Rec was launched by a sweatpants aficionado on a mission to make loungewear look less like PJs.";
        A78.InnerHtml = "The menswear brand Public Rec was launched by a sweatpants aficionado on a mission to make loungewear look less like PJs.";
        A81.InnerHtml = "The menswear brand Public Rec was launched by a sweatpants aficionado on a mission to make loungewear look less like PJs.";
        A84.InnerHtml = "The menswear brand Public Rec was launched by a sweatpants aficionado on a mission to make loungewear look less like PJs.";
        A87.InnerHtml = "The menswear brand Public Rec was launched by a sweatpants aficionado on a mission to make loungewear look less like PJs.";
        A90.InnerHtml = "The menswear brand Public Rec was launched by a sweatpants aficionado on a mission to make loungewear look less like PJs.";
        A93.InnerHtml = "The menswear brand Public Rec was launched by a sweatpants aficionado on a mission to make loungewear look less like PJs.";
        /////////////////   small Text Videos tag  ///////////////////////

        /////////////////   Heading Text Style slideshow tag   ///////////////////////
        A95.InnerHtml = "These 'Dressy' Sweatpants Are Killing It on Kickstarter";
        A98.InnerHtml = "These 'Dressy' Sweatpants Are Killing It on Kickstarter";
        A101.InnerHtml = "These 'Dressy' Sweatpants Are Killing It on Kickstarter";
        A104.InnerHtml = "These 'Dressy' Sweatpants Are Killing It on Kickstarter";
        A107.InnerHtml = "These 'Dressy' Sweatpants Are Killing It on Kickstarter";
        A110.InnerHtml = "These 'Dressy' Sweatpants Are Killing It on Kickstarter";

        /////////////////   Heading Text Style slideshow tag  ///////////////////////

        /////////////////   small Text Style slideshow tag ///////////////////////
        A96.InnerHtml = "The menswear brand Public Rec was launched by a sweatpants aficionado on a mission to make loungewear look less like PJs.";
        A99.InnerHtml = "The menswear brand Public Rec was launched by a sweatpants aficionado on a mission to make loungewear look less like PJs.";
        A102.InnerHtml = "The menswear brand Public Rec was launched by a sweatpants aficionado on a mission to make loungewear look less like PJs.";
        A105.InnerHtml = "The menswear brand Public Rec was launched by a sweatpants aficionado on a mission to make loungewear look less like PJs.";
        A108.InnerHtml = "The menswear brand Public Rec was launched by a sweatpants aficionado on a mission to make loungewear look less like PJs.";
        A111.InnerHtml = "The menswear brand Public Rec was launched by a sweatpants aficionado on a mission to make loungewear look less like PJs.";
        /////////////////   small Text Style slideshow tag  ///////////////////////





    }
    protected void btntextpost_Click3(object sender, EventArgs e)
    {

        string a = TextBox2.Text;
        ///////////////  heading text starts Tablet  /////////////////
        if (cbb1.Checked == true)
        {
            A23.InnerHtml = a;
            TextBox2.Text = "";
            cbb1.Checked = false;
        }
        else if (cbb2.Checked == true)
        {
            A26.InnerHtml = a;
            TextBox2.Text = "";
            cbb2.Checked = false;
        }
        else if (cbb3.Checked == true)
        {
            A29.InnerHtml = a;
            TextBox2.Text = "";
            cbb3.Checked = false;
        }
        else if (cbb4.Checked == true)
        {
            A32.InnerHtml = a;
            TextBox2.Text = "";
            cbb4.Checked = false;
        }
        else if (CheckBox49.Checked == true)
        {
            A35.InnerHtml = a;
            TextBox2.Text = "";
            CheckBox49.Checked = false;
        }
        else if (CheckBox50.Checked == true)
        {
            A38.InnerHtml = a;
            TextBox2.Text = "";
            CheckBox50.Checked = false;
        }
        else if (CheckBox51.Checked == true)
        {
            A41.InnerHtml = a;
            TextBox2.Text = "";
            CheckBox51.Checked = false;
        }
        else if (CheckBox52.Checked == true)
        {
            A44.InnerHtml = a;
            TextBox2.Text = "";
            CheckBox52.Checked = false;
        }
        ///////////////  heading text Ends  /////////////////

        ///////////////  small text starts  /////////////////
        if (CheckBox53.Checked == true)
        {
            A24.InnerHtml = a;
            TextBox2.Text = "";
            CheckBox53.Checked = false;
        }
        else if (CheckBox54.Checked == true)
        {
            A27.InnerHtml = a;
            TextBox2.Text = "";
            CheckBox54.Checked = false;
        }
        else if (CheckBox55.Checked == true)
        {
            A30.InnerHtml = a;
            TextBox2.Text = "";
            CheckBox55.Checked = false;
        }
        else if (CheckBox56.Checked == true)
        {
            A33.InnerHtml = a;
            TextBox2.Text = "";
            CheckBox56.Checked = false;
        }
        else if (CheckBox57.Checked == true)
        {
            A36.InnerHtml = a;
            TextBox2.Text = "";
            CheckBox57.Checked = false;
        }
        else if (CheckBox58.Checked == true)
        {
            A39.InnerHtml = a;
            TextBox2.Text = "";
            CheckBox58.Checked = false;
        }
        else if (CheckBox59.Checked == true)
        {
            A42.InnerHtml = a;
            TextBox2.Text = "";
            CheckBox59.Checked = false;
        }
        else if (CheckBox60.Checked == true)
        {
            A45.InnerHtml = a;
            TextBox2.Text = "";
            CheckBox60.Checked = false;
        }
        ///////////////  small text Ends  /////////////////

    }
    protected void btntextpost_Click4(object sender, EventArgs e)
    {
        string a = TextBox3.Text;
        /////////////////  Heading Text starts PC News  ///////////////////////

        if (cbbb1.Checked == true)
        {
            A47.InnerHtml = a;
            TextBox3.Text = "";
            cbbb1.Checked = false;
        }
        else if (cbbb2.Checked == true)
        {
            A50.InnerHtml = a;
            TextBox3.Text = "";
            cbbb2.Checked = false;
        }
        else if (cbbb3.Checked == true)
        {
            A53.InnerHtml = a;
            TextBox3.Text = "";
            cbbb3.Checked = false;
        }
        else if (cbbb4.Checked == true)
        {
            A56.InnerHtml = a;
            TextBox3.Text = "";
            cbbb4.Checked = false;
        }
        else if (CheckBox9.Checked == true)
        {
            A59.InnerHtml = a;
            TextBox3.Text = "";
            CheckBox9.Checked = false;
        }
        else if (CheckBox10.Checked == true)
        {
            A62.InnerHtml = a;
            TextBox3.Text = "";
            CheckBox10.Checked = false;
        }
        else if (CheckBox11.Checked == true)
        {
            A65.InnerHtml = a;
            TextBox3.Text = "";
            CheckBox11.Checked = false;
        }
        else if (CheckBox12.Checked == true)
        {
            A68.InnerHtml = a;
            TextBox3.Text = "";
            CheckBox12.Checked = false;
        }
        /////////////////  Heading Text ends   ///////////////////////


        /////////////////  Small Text starts   ///////////////////////

        if (CheckBox41.Checked == true)
        {
            A48.InnerHtml = a;
            TextBox3.Text = "";
            CheckBox41.Checked = false;
        }
        else if (CheckBox42.Checked == true)
        {
            A51.InnerHtml = a;
            TextBox3.Text = "";
            CheckBox42.Checked = false;
        }
        else if (CheckBox43.Checked == true)
        {
            A54.InnerHtml = a;
            TextBox3.Text = "";
            CheckBox43.Checked = false;
        }
        else if (CheckBox44.Checked == true)
        {
            A57.InnerHtml = a;
            TextBox3.Text = "";
            CheckBox44.Checked = false;
        }
        else if (CheckBox45.Checked == true)
        {
            A60.InnerHtml = a;
            TextBox3.Text = "";
            CheckBox45.Checked = false;
        }
        else if (CheckBox46.Checked == true)
        {
            A63.InnerHtml = a;
            TextBox3.Text = "";
            CheckBox46.Checked = false;
        }
        else if (CheckBox47.Checked == true)
        {
            A66.InnerHtml = a;
            TextBox3.Text = "";
            CheckBox47.Checked = false;
        }
        else if (CheckBox48.Checked == true)
        {
            A69.InnerHtml = a;
            TextBox3.Text = "";
            CheckBox48.Checked = false;
        }
        /////////////////  Small Text Ends   ///////////////////////
    }
    protected void btntextpost_Click5(object sender, EventArgs e)
    {
        string a = TextBox4.Text;

        ///////////////   Heading text Starts Videos TAG  ///////////////////////

        if (cba1.Checked == true)
        {
            A71.InnerHtml = a;
            TextBox4.Text = "";
            cba1.Checked = false;
        }
        else if (cba2.Checked == true)
        {
            A74.InnerHtml = a;
            TextBox4.Text = "";
            cba2.Checked = false;
        }
        else if (cba3.Checked == true)
        {
            A77.InnerHtml = a;
            TextBox4.Text = "";
            cba3.Checked = false;
        }
        else if (cba4.Checked == true)
        {
            A80.InnerHtml = a;
            TextBox4.Text = "";
            cba4.Checked = false;
        }
        else if (CheckBox61.Checked == true)
        {
            A83.InnerHtml = a;
            TextBox4.Text = "";
            CheckBox61.Checked = false;
        }
        else if (CheckBox62.Checked == true)
        {
            A86.InnerHtml = a;
            TextBox4.Text = "";
            CheckBox62.Checked = false;
        }
        else if (CheckBox63.Checked == true)
        {
            A89.InnerHtml = a;
            TextBox4.Text = "";
            CheckBox63.Checked = false;
        }
        else if (CheckBox64.Checked == true)
        {
            A92.InnerHtml = a;
            TextBox4.Text = "";
            CheckBox64.Checked = false;
        }
        ///////////////   Heading text ends   ///////////////////////

        ///////////////   Small text Starts   ///////////////////////

        if (CheckBox65.Checked == true)
        {
            A72.InnerHtml = a;
            TextBox4.Text = "";
            CheckBox65.Checked = false;
        }
        else if (CheckBox66.Checked == true)
        {
            A75.InnerHtml = a;
            TextBox4.Text = "";
            CheckBox66.Checked = false;
        }
        else if (CheckBox67.Checked == true)
        {
            A78.InnerHtml = a;
            TextBox4.Text = "";
            CheckBox67.Checked = false;
        }
        else if (CheckBox68.Checked == true)
        {
            A81.InnerHtml = a;
            TextBox4.Text = "";
            CheckBox68.Checked = false;
        }
        else if (CheckBox69.Checked == true)
        {
            A84.InnerHtml = a;
            TextBox4.Text = "";
            CheckBox69.Checked = false;
        }
        else if (CheckBox70.Checked == true)
        {
            A87.InnerHtml = a;
            TextBox4.Text = "";
            CheckBox70.Checked = false;
        }
        else if (CheckBox71.Checked == true)
        {
            A90.InnerHtml = a;
            TextBox4.Text = "";
            CheckBox71.Checked = false;
        }
        else if (CheckBox72.Checked == true)
        {
            A93.InnerHtml = a;
            TextBox4.Text = "";
            CheckBox72.Checked = false;
        }

        ///////////////   Small text ends   ///////////////////////


    }

    protected void btnimagesend_Click(object sender, ImageClickEventArgs e)
    {

    }
    private void initializeslideshow()
    {
        slideshowa1.InnerHtml = "Image1 These 'Dressy' Sweatpants Are Killing It on Kickstarter";
        slideshowa2.InnerHtml = "Image2 These 'Dressy' Sweatpants Are Killing It on Kickstarter";
        slideshowa3.InnerHtml = "Image3 These 'Dressy' Sweatpants Are Killing It on Kickstarter";
        slideshowa4.InnerHtml = "Image4 These 'Dressy' Sweatpants Are Killing It on Kickstarter";
        slideshowa5.InnerHtml = "Image5 These 'Dressy' Sweatpants Are Killing It on Kickstarter";
        slideshowa6.InnerHtml = "Image6 These 'Dressy' Sweatpants Are Killing It on Kickstarter";
        slideshowa7.InnerHtml = "Image7 These 'Dressy' Sweatpants Are Killing It on Kickstarter";
        slideshowa8.InnerHtml = "Image8 These 'Dressy' Sweatpants Are Killing It on Kickstarter";

    }
    private void smallTextinitialization()
    {
        tb1aa1.InnerHtml = "The menswear brand Public Rec was launched by a sweatpants aficionado on a mission to make loungewear look less like PJs.";
        tb1aa2.InnerHtml = "The menswear brand Public Rec was launched by a sweatpants aficionado on a mission to make loungewear look less like PJs.";
        tb1aa3.InnerHtml = "The menswear brand Public Rec was launched by a sweatpants aficionado on a mission to make loungewear look less like PJs.";
        tb1aa4.InnerHtml = "The menswear brand Public Rec was launched by a sweatpants aficionado on a mission to make loungewear look less like PJs.";
        tb1aa5.InnerHtml = "The menswear brand Public Rec was launched by a sweatpants aficionado on a mission to make loungewear look less like PJs.";
        tb1aa6.InnerHtml = "The menswear brand Public Rec was launched by a sweatpants aficionado on a mission to make loungewear look less like PJs.";
        tb1aa7.InnerHtml = "The menswear brand Public Rec was launched by a sweatpants aficionado on a mission to make loungewear look less like PJs.";
        tb1aa8.InnerHtml = "The menswear brand Public Rec was launched by a sweatpants aficionado on a mission to make loungewear look less like PJs.";

    }
    protected void btnslidepost_Click(object sender, EventArgs e)
    {
        String a;
        a = tbslideshow.Text;
        //////////////////// Heading Text Starts /////////////////////
        if (text4.Checked == true)
        {
            slideshowa1.InnerHtml = a;
            //  vidddd4.Text = a;
            tbslideshow.Text = "";
            text4.Checked = false;
        }
        else if (text5.Checked == true)
        {
            slideshowa2.InnerHtml = a;
            tbslideshow.Text = "";
            text5.Checked = false;
        }
        else if (text6.Checked == true)
        {
            slideshowa3.InnerHtml = a;
            tbslideshow.Text = "";
            text6.Checked = false;
        }
        else if (text7.Checked == true)
        {
            slideshowa4.InnerHtml = a;
            tbslideshow.Text = "";
            text7.Checked = false;
        }
        else if (CheckBox1.Checked == true)
        {
            slideshowa5.InnerHtml = a;
            tbslideshow.Text = "";
            CheckBox1.Checked = false;
        }
        else if (CheckBox2.Checked == true)
        {
            slideshowa6.InnerHtml = a;
            tbslideshow.Text = "";
            CheckBox2.Checked = false;
        }
        else if (CheckBox3.Checked == true)
        {
            slideshowa7.InnerHtml = a;
            tbslideshow.Text = "";
            CheckBox3.Checked = false;
        }
        else if (CheckBox4.Checked == true)
        {
            slideshowa8.InnerHtml = a;
            tbslideshow.Text = "";
            CheckBox4.Checked = false;
        }
        //////////////////// Heading Text Starts /////////////////////

        ////////////////////Small text Starts //////////////////////

        if (text8.Checked == true)
        {
            tb1aa1.InnerHtml = a;
            tbslideshow.Text = "";
            text8.Checked = false;
        }
        else if (text9.Checked == true)
        {
            tb1aa2.InnerHtml = a;
            tbslideshow.Text = "";
            text9.Checked = false;
        }
        else if (text10.Checked == true)
        {
            tb1aa3.InnerHtml = a;
            tbslideshow.Text = "";
            text10.Checked = false;
        }
        else if (text11.Checked == true)
        {
            tb1aa4.InnerHtml = a;
            tbslideshow.Text = "";
            text11.Checked = false;
        }
        else if (CheckBox5.Checked == true)
        {
            tb1aa5.InnerHtml = a;
            tbslideshow.Text = "";
            CheckBox5.Checked = false;
        }
        else if (CheckBox6.Checked == true)
        {
            tb1aa6.InnerHtml = a;
            tbslideshow.Text = "";
            CheckBox6.Checked = false;
        }
        else if (CheckBox7.Checked == true)
        {
            tb1aa7.InnerHtml = a;
            tbslideshow.Text = "";
            CheckBox7.Checked = false;
        }
        else if (CheckBox8.Checked == true)
        {
            tb1aa8.InnerHtml = a;
            tbslideshow.Text = "";
            CheckBox8.Checked = false;
        }
        ////////////////////Small text Ends //////////////////////




    }
    private void authornameinitialization()
    {
        author1.InnerHtml = "Catherine Clifford";
        author2.InnerHtml = "Catherine Clifford";
        author3.InnerHtml = "Catherine Clifford";
        author4.InnerHtml = "Catherine Clifford";
        author5.InnerHtml = "Catherine Clifford";
        author6.InnerHtml = "Catherine Clifford";
        author7.InnerHtml = "Catherine Clifford";
        author8.InnerHtml = "Catherine Clifford";


    }
    protected void Buttonstyle_Click(object sender, EventArgs e)
    {
        StartUpLoadstyle();
    }
    private void StartUpLoadstyle()
    {
        try
        {

            //get the file name of the posted image

            string imgName = FileUpload21.FileName;

            //sets the image path

            string imgPath = "images/" + imgName;

            //get the size in bytes that



            int imgSize = FileUpload21.PostedFile.ContentLength;



            //validates the posted file before saving

            if (FileUpload21.PostedFile != null && FileUpload21.PostedFile.FileName != "")
            {

                // 10240 KB means 10MB, You can change the value based on your requirement

                if (FileUpload21.PostedFile.ContentLength > 1024000000)
                {

                    Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('File is too big.')", true);

                }

                else
                {

                    //then save it to the Folder
                    if (CheckBox73.Checked == true)
                    {
                        FileUpload21.SaveAs(Server.MapPath(imgPath));

                        Image1.ImageUrl = "~/" + imgPath;
                        CheckBox73.Checked = false;
                        // Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);
                    }
                    else if (CheckBox74.Checked == true)
                    {
                        FileUpload21.SaveAs(Server.MapPath(imgPath));

                        Image2.ImageUrl = "~/" + imgPath;
                        CheckBox74.Checked = false;
                        //  Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);
                    }
                    else if (CheckBox75.Checked == true)
                    {
                        FileUpload21.SaveAs(Server.MapPath(imgPath));

                        Image3.ImageUrl = "~/" + imgPath;
                        CheckBox75.Checked = false;
                        // Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);
                    }
                    else if (CheckBox76.Checked == true)
                    {
                        FileUpload21.SaveAs(Server.MapPath(imgPath));

                        Image4.ImageUrl = "~/" + imgPath;
                        CheckBox76.Checked = false;
                        // Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);
                    }
                    else if (CheckBox77.Checked == true)
                    {
                        FileUpload21.SaveAs(Server.MapPath(imgPath));

                        Image5.ImageUrl = "~/" + imgPath;
                        CheckBox77.Checked = false;
                        //  Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);
                    }
                    else if (CheckBox78.Checked == true)
                    {
                        FileUpload21.SaveAs(Server.MapPath(imgPath));

                        Image6.ImageUrl = "~/" + imgPath;
                        CheckBox78.Checked = false;
                        // Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);
                    }


                }



            }
        }
        catch (Exception ex)
        {
            l1.Text = ex.Message;

        }

    }
    protected void btntextstylepost_Click(object sender, EventArgs e)
    {
        string a = TextBox5.Text;

        ///////////////   Heading text Starts Videos TAG  ///////////////////////

        if (CheckBox81.Checked == true)
        {
            A95.InnerHtml = a;
            TextBox5.Text = "";
            CheckBox81.Checked = false;
        }
        else if (CheckBox82.Checked == true)
        {
            A98.InnerHtml = a;
            TextBox5.Text = "";
            CheckBox82.Checked = false;
        }
        else if (CheckBox83.Checked == true)
        {
            A101.InnerHtml = a;
            TextBox5.Text = "";
            CheckBox83.Checked = false;
        }
        else if (CheckBox84.Checked == true)
        {
            A104.InnerHtml = a;
            TextBox5.Text = "";
            CheckBox84.Checked = false;
        }
        else if (CheckBox85.Checked == true)
        {
            A107.InnerHtml = a;
            TextBox5.Text = "";
            CheckBox85.Checked = false;
        }
        else if (CheckBox86.Checked == true)
        {
            A110.InnerHtml = a;
            TextBox5.Text = "";
            CheckBox86.Checked = false;
        }
        ///////////////   Heading text ends   ///////////////////////

        ///////////////   Small text Starts   ///////////////////////

        if (CheckBox89.Checked == true)
        {
            A96.InnerHtml = a;
            TextBox5.Text = "";
            CheckBox89.Checked = false;
        }
        else if (CheckBox90.Checked == true)
        {
            A99.InnerHtml = a;
            TextBox5.Text = "";
            CheckBox90.Checked = false;
        }
        else if (CheckBox91.Checked == true)
        {
            A102.InnerHtml = a;
            TextBox5.Text = "";
            CheckBox91.Checked = false;
        }
        else if (CheckBox92.Checked == true)
        {
            A105.InnerHtml = a;
            TextBox5.Text = "";
            CheckBox92.Checked = false;
        }
        else if (CheckBox93.Checked == true)
        {
            A108.InnerHtml = a;
            TextBox5.Text = "";
            CheckBox93.Checked = false;
        }
        else if (CheckBox94.Checked == true)
        {
            A111.InnerHtml = a;
            TextBox5.Text = "";
            CheckBox94.Checked = false;
        }

        ///////////////   Small text ends   ///////////////////////
    }
    private void gettingtime()
    {
        /////////////// Slideshow tag time //////////////////////
        time39.InnerHtml = System.DateTime.Now.ToString();
        time40.InnerHtml = System.DateTime.Now.ToString();
        time14.InnerHtml = System.DateTime.Now.ToString();
        time42.InnerHtml = System.DateTime.Now.ToString();
        time43.InnerHtml = System.DateTime.Now.ToString();
        time44.InnerHtml = System.DateTime.Now.ToString();
        time45.InnerHtml = System.DateTime.Now.ToString();
        time46.InnerHtml = System.DateTime.Now.ToString();
        /////////////// Slideshow tag time //////////////////////

        /////////////// lattest tag time //////////////////////
        time1.InnerHtml = System.DateTime.Now.ToString();
        time2.InnerHtml = System.DateTime.Now.ToString();
        time3.InnerHtml = System.DateTime.Now.ToString();
        time4.InnerHtml = System.DateTime.Now.ToString();
        time5.InnerHtml = System.DateTime.Now.ToString();
        time6.InnerHtml = System.DateTime.Now.ToString();
        time7.InnerHtml = System.DateTime.Now.ToString();
        time8.InnerHtml = System.DateTime.Now.ToString();
        /////////////// lattest tag time //////////////////////

        /////////////// tablet tag time //////////////////////
        time9.InnerHtml = System.DateTime.Now.ToString();
        time10.InnerHtml = System.DateTime.Now.ToString();
        time11.InnerHtml = System.DateTime.Now.ToString();
        time12.InnerHtml = System.DateTime.Now.ToString();
        time13.InnerHtml = System.DateTime.Now.ToString();
        time14.InnerHtml = System.DateTime.Now.ToString();
        time15.InnerHtml = System.DateTime.Now.ToString();
        time16.InnerHtml = System.DateTime.Now.ToString();
        /////////////// tablet tag time //////////////////////

        /////////////// PCNEWS tag time //////////////////////
        time17.InnerHtml = System.DateTime.Now.ToString();
        time18.InnerHtml = System.DateTime.Now.ToString();
        time19.InnerHtml = System.DateTime.Now.ToString();
        time20.InnerHtml = System.DateTime.Now.ToString();
        time21.InnerHtml = System.DateTime.Now.ToString();
        time22.InnerHtml = System.DateTime.Now.ToString();
        time23.InnerHtml = System.DateTime.Now.ToString();
        time24.InnerHtml = System.DateTime.Now.ToString();
        /////////////// PCNEWS tag time //////////////////////


        /////////////// Videos tag time //////////////////////
        time25.InnerHtml = System.DateTime.Now.ToString();
        time26.InnerHtml = System.DateTime.Now.ToString();
        time27.InnerHtml = System.DateTime.Now.ToString();
        time28.InnerHtml = System.DateTime.Now.ToString();
        time29.InnerHtml = System.DateTime.Now.ToString();
        time30.InnerHtml = System.DateTime.Now.ToString();
        time31.InnerHtml = System.DateTime.Now.ToString();
        time32.InnerHtml = System.DateTime.Now.ToString();
        /////////////// Videos tag time //////////////////////

        /////////////// Style tag time //////////////////////
        time33.InnerHtml = System.DateTime.Now.ToString();
        time34.InnerHtml = System.DateTime.Now.ToString();
        time35.InnerHtml = System.DateTime.Now.ToString();
        time36.InnerHtml = System.DateTime.Now.ToString();
        time37.InnerHtml = System.DateTime.Now.ToString();
        time38.InnerHtml = System.DateTime.Now.ToString();
        /////////////// Style tag time //////////////////////

    }
    protected void BtncreatNewForm_Click(object sender, EventArgs e)
    {
        Server.Transfer("create checking.aspx", true);
    }
    protected void btnsubscribe_Click(object sender, EventArgs e)
    {

    }
}