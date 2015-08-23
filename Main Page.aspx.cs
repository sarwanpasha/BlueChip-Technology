using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Main_Page : System.Web.UI.Page
{
    string login;
    string requiredEmailID="";
    String toAddress, fromAddress, subject, body, fromPassword, comments;
    string source = ConfigurationManager.ConnectionStrings["BlueChipConnectionString"].ToString();
    public static string OrganizationName, OrganizationHeading, OrganizationDescription, AuthoreName, AuthoreImage, MainImage, TimeDate,link,Catagory;
    public static string[] lattestOrganizationName = new string[6];         
    public static string[] lattestOrganizationHeading = new string[6];    
    public static string[] lattestOrganizationDescription = new string[6];  
    public static string[] lattestAuthoreName = new string[6];              
    public static string[] lattestAuthoreImage = new string[6];             
    public static string[] lattestMainImage = new string[6];                 
    public static string[] lattestlink = new string[6];                       
    public static string[] lattesttimedate = new string[6];                   

    public static string[] TabletOrganizationName = new string[6];              
    public static string[] TabletOrganizationHeading = new string[6];           
    public static string[] TabletOrganizationDescription = new string[6];       
    public static string[] TabletAuthoreName = new string[6];                   
    public static string[] TabletAuthoreImage = new string[6];                  
    public static string[] TabletMainImage = new string[6];                     
    public static string[] Tabletlink = new string[6];                          
    public static string[] Tablettimedate = new string[6];                       

    public static string[] pcnewsOrganizationName = new string[6];              
    public static string[] pcnewsOrganizationHeading = new string[6];            
    public static string[] pcnewsOrganizationDescription = new string[6];         
    public static string[] pcnewsAuthoreName = new string[6];                     
    public static string[] pcnewsAuthoreImage = new string[6];                    
    public static string[] pcnewsMainImage = new string[6];                      
    public static string[] pcnewslink = new string[6];                             
    public static string[] pcnewstimedate = new string[6];                    

    public static string[] videosOrganizationName = new string[6];               
    public static string[] videosOrganizationHeading = new string[6];             
    public static string[] videosOrganizationDescription = new string[6];       
    public static string[] videosAuthoreName = new string[6];                
    public static string[] videosAuthoreImage = new string[6];                
    public static string[] videosMainImage = new string[6];                   
    public static string[] videoslink = new string[6];                        
    public static string[] videostimedate = new string[6];                   

    String textField = "";
    #region page_load
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
                  getLattestOrganizationName();
                  getLattestOrganizationHeading();
                  getLattestOrganizationDescription();
                  getLattestAuthoreName();
                  getLattestAuthoreImage();
                  getLattestMainImage();
                  getLattestlink();
                  getLattestTimeDate();
              

                       getTabletOrganizationName();
                       getTabletOrganizationHeading();
                       getTabletOrganizationDescription();
                       getTabletAuthoreName();
                       getTabletAuthoreImage();
                       getTabletMainImage();
                       getTabletlink();
                       getTabletTimeDate();

                   getpcnewsOrganizationName();
                   getpcnewsOrganizationHeading();
                   getpcnewsOrganizationDescription();
                   getpcnewsAuthoreName();
                   getpcnewsAuthoreImage();
                   getpcnewsMainImage();
                   getpcnewslink();
                   getpcnewsTimeDate();

                   getvideosOrganizationName();
                   getvideosOrganizationHeading();
                   getvideosOrganizationDescription();
                   getvideosAuthoreName();
                   getvideosAuthoreImage();
                   getvideosMainImage();
                   getvideoslink();
                   getvideosTimeDate();

                   initializingLinks();

          //  getLattestNewsDataFromDatabase();
            initializepics();
            initializingBlogger();       // Initialize Text of Blogger Section
            initializeslideshow();       // Initialize Text of Slideshow Heading textSection
            smallTextinitialization();   // Initialize Text of Slideshow Small textSection
            authornameinitialization();  // Initialize Text of Author Name textSection
            initializingLattest();       // Initialize Text of Lattest tag textSection
            gettingtime();               // Time initialization of Lattest tag
            hide();
        }
        else
        {
          //  if (Page.PreviousPage == null)
          //   {
          //       LabelData.Text = "No previous page in post";
          //   }
            //  else
           //  {
           //      LabelData.Text =
           //      ((TextBox)PreviousPage.FindControl("TextBox1")).Text;
            //  }


        }
        bool st = getter_setter_for_variables.getunhide();
        if (st == true)
        {
            unhide();
        }

    }
    #endregion
    #region initializepics
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
        string imgName = lattestMainImage[0];
        string imgPath = imgName;
        blog1.ImageUrl = "~/" + imgPath;

        // blog 2 image
        string imgNamee = lattestMainImage[1];
        string imgPathh = imgNamee;
        blog2.ImageUrl =  imgPathh;

        // blog 3 image
        string imgNameee = lattestMainImage[2];
        string imgPathhh = imgNameee;
        blog3.ImageUrl = imgPathhh;

        ///////////// Author image slideshow  //////////////
        // slideshow 1 image
        string slide1a = TabletAuthoreImage[0];
        string slideimage1a = slide1a;
        Image13.ImageUrl = "~/" + slideimage1a;

        // slideshow 2 image
        string slide2a = pcnewsAuthoreImage[0];
        string slideimage2a = slide2a;
        Image14.ImageUrl = "~/" + slideimage2a;

        // slideshow 3 image
        string slide3a = videosAuthoreImage[0];
        string slideimage3a = slide3a;
        Image21.ImageUrl = "~/" + slideimage3a;

        // slideshow 4 image
        string slide4a = TabletAuthoreImage[5];
        string slideimage4a = slide4a;
        Image22.ImageUrl = "~/" + slideimage4a;

        // slideshow 5 image
        string slide5a = pcnewsAuthoreImage[5];
        string slideimage5a = slide5a;
        Image29.ImageUrl = "~/" + slideimage5a;

        // slideshow 6 image
        string slide6a = videosAuthoreImage[5];
        string slideimage6a = slide6a;
        Image30.ImageUrl = "~/" + slideimage6a;

        // slideshow 7 image
        string slide7a = TabletAuthoreImage[2];
        string slideimage7a = slide7a;
        Image31.ImageUrl = "~/" + slideimage7a;

        // slideshow 8 image
        string slide8a = pcnewsAuthoreImage[2];
        string slideimage8a = slide8a;
        Image32.ImageUrl = "~/" + slideimage8a;
        //////////// Author image slideshow  ////////////////

        // slideshow 1 image
        string slide1 = TabletMainImage[0];
        string slideimage1 = slide1;
        Imag1.ImageUrl = "~/" + slideimage1;

        // slideshow 2 image
        string slide2 = pcnewsMainImage[0];
        string slideimage2 = slide2;
        Imag2.ImageUrl = "~/" + slideimage2;

        // slideshow 3 image
        string slide3 = videosMainImage[0];
        string slideimage3 = slide3;
        Imag3.ImageUrl = "~/" + slideimage3;

        // slideshow 4 image
        string slide4 = TabletMainImage[5];
        string slideimage4 = slide4;
        img1.ImageUrl = "~/" + slideimage4;

        // slideshow 5 image
        string slide5 = pcnewsMainImage[5];
        string slideimage5 = slide5;
        img2.ImageUrl = "~/" + slideimage5;

        // slideshow 6 image
        string slide6 = videosMainImage[5];
        string slideimage6 = slide6;
        img3.ImageUrl = "~/" + slideimage6;

        // slideshow 7 image
        string slide7 = TabletMainImage[2];
        string slideimage7 = slide7;
        img4.ImageUrl = "~/" + slideimage7;

        // slideshow 8 image
        string slide8 = pcnewsMainImage[2];
        string slideimage8 = slide8;
        img5.ImageUrl = "~/" + slideimage8;

        ////////////  Lattest Main Image  //////////////////
        // section 1.1 image
        string section1 = lattestMainImage[5] ;
        string imgsection1 = section1;
        Image121.ImageUrl = "~/" + imgsection1;

        // section 1.2 image
        string section2 = lattestMainImage[4];
        string imgsection2 = section2;
        Image122.ImageUrl = "~/" + imgsection2;

        // section 1.3 image
        string section3 = lattestMainImage[3];
        string imgsection3 = section3;
        Image123.ImageUrl = "~/" + imgsection3;

        // section 1.4 image
        string section4 = lattestMainImage[2];
        string imgsection4 = section4;
        Image124.ImageUrl = "~/" + imgsection4;

        // section 1.5 image
        string section55 = lattestMainImage[1];
        string imgsection55 = section55;
        Image125.ImageUrl = "~/" + imgsection55;

        // section 1.6 image
        string section66 = lattestMainImage[0];
        string imgsection66 = section66;
        Image126.ImageUrl = "~/" + imgsection66;

        // section 1.1.1 image
        string authore1 = lattestAuthoreImage[5];
        string authorpicc1 = authore1;
        authorpic1.ImageUrl = "~/" + authorpicc1; 
        // section 1.1.2 image
        string authore2 = lattestAuthoreImage[4];
        string authorpicc2 = authore2;
        authorpic2.ImageUrl = "~/" + authorpicc2;

        // section 1.1.3 image
        string authore3 = lattestAuthoreImage[3];
        string authorpicc3 = authore3;
        authorpic3.ImageUrl = "~/" + authorpicc3;

        // section 1.1.4 image
        string authore4 = lattestAuthoreImage[2];
        string authorpicc4 = authore4;
        authorpic4.ImageUrl = "~/" + authorpicc4;

        // section 1.1.5 image
        string authore5 = lattestAuthoreImage[1];
        string authorpicc5 = authore5;
        authorpic5.ImageUrl = "~/" + authorpicc5;

        // section 1.1.6 image
        string authore6 = lattestAuthoreImage[0];
        string authorpicc6 = authore6;
        authorpic6.ImageUrl = "~/" + authorpicc6;

        ////////////  Lattest Main Image  //////////////////

        ////////////  Tablet Main Image  //////////////////
        // section 2.1 image
        string section5 = TabletMainImage[5];
        string imgsection5 = section5;
        Image7.ImageUrl = "~/" + imgsection5;

        // section 2.2 image
        string section6 = TabletMainImage[4];
        string imgsection6 = section6;
        Image8.ImageUrl = "~/" + imgsection6;

        // section 2.3 image
        string section7 = TabletMainImage[3];
        string imgsection7 = section7;
        Image9.ImageUrl = "~/" + imgsection7;

        // section 2.4 image
        string section8 = TabletMainImage[2];
        string imgsection8 = section8;
        Image10.ImageUrl = "~/" + imgsection8;

        // section 2.5 image
        string section555 = TabletMainImage[1];
        string imgsection555 = section555;
        Image11.ImageUrl = "~/" + imgsection555;

        // section 2.6 image
        string section666 = TabletMainImage[0];
        string imgsection666 = section666;
        Image12.ImageUrl = "~/" + imgsection666;

        ////////////  Tablet Main Image  //////////////////

        ////////////  Tablet Author Image  //////////////////
        // section 2.1 image
        string sectiontab1 = TabletAuthoreImage[5];
        string imgsectiontab1 = sectiontab1;
        Tabpic1.ImageUrl = "~/" + imgsectiontab1;

        // section 2.2 image
        string sectiontab2 = TabletAuthoreImage[4];
        string imgsectiontab2 = sectiontab2;
        Tabpic2.ImageUrl = "~/" + imgsectiontab2;

        // section 2.3 image
        string sectiontab3 = TabletAuthoreImage[3];
        string imgsectiontab3 = sectiontab3;
        Tabpic3.ImageUrl = "~/" + imgsectiontab3;

        // section 2.4 image
        string sectiontab4 = TabletAuthoreImage[2];
        string imgsectiontab4 = sectiontab4;
        Tabpic4.ImageUrl = "~/" + imgsectiontab4;

        // section 2.5 image
        string sectiontab5 = TabletAuthoreImage[1];
        string imgsectiontab5 = sectiontab5;
        Tabpic5.ImageUrl = "~/" + imgsectiontab5;

        // section 2.6 image
        string sectiontab6 = TabletAuthoreImage[0];
        string imgsectiontab6 = sectiontab6;
        Tabpic6.ImageUrl = "~/" + imgsectiontab6;


        ////////////  Tablet Author Image  //////////////////

        ////////////  pcnews Author Image  //////////////////
        // section 2.1 image
        string sectionpc1 = pcnewsAuthoreImage[5];
        string imgsectionpc1 = sectionpc1;
        pcnewsauthor1.ImageUrl = "~/" + imgsectionpc1;

        // section 2.2 image
        string sectionpc2 = pcnewsAuthoreImage[4];
        string imgsectionpc2 = sectionpc2;
        pcnewsauthor2.ImageUrl = "~/" + imgsectionpc2;

        // section 2.3 image
        string sectionpc3 = pcnewsAuthoreImage[3];
        string imgsectionpc3 = sectionpc3;
        pcnewsauthor3.ImageUrl = "~/" + imgsectionpc3;

        // section 2.4 image
        string sectionpc4 = pcnewsAuthoreImage[2];
        string imgsectionpc4 = sectionpc4;
        pcnewsauthor4.ImageUrl = "~/" + imgsectionpc4;

        // section 2.5 image
        string sectionpc5 = pcnewsAuthoreImage[1];
        string imgsectionpc5 = sectionpc5;
        pcnewsauthor5.ImageUrl = "~/" + imgsectionpc5;

        // section 2.6 image
        string sectionpc6 = pcnewsAuthoreImage[0];
        string imgsectionpc6 = sectionpc6;
        pcnewsauthor6.ImageUrl = "~/" + imgsectionpc6;


        ////////////  pcnews Author Image  //////////////////

        ////////////////// pc news main image  ////////////////////
        // section 3.1 image
        string section9 = pcnewsMainImage[5];
        string imgsection9 = section9;
        Image15.ImageUrl = "~/" + imgsection9;

        // section 3.2 image
        string section10 = pcnewsMainImage[4];
        string imgsection10 = section10;
        Image16.ImageUrl = "~/" + imgsection10;

        // section 3.3 image
        string section11 = pcnewsMainImage[3];
        string imgsection11 = section11;
        Image17.ImageUrl = "~/" + imgsection11;

        // section 3.4 image
        string section12 = pcnewsMainImage[2];
        string imgsection12 = section12;
        Image18.ImageUrl = "~/" + imgsection12;

        // section 3.5 image
        string section1122 = pcnewsMainImage[1];
        string imgsection1122 = section1122;
        Image19.ImageUrl = "~/" + imgsection1122;

        // section 3.6 image
        string section1123 = pcnewsMainImage[0];
        string imgsection1123 = section1123;
        Image20.ImageUrl = "~/" + imgsection1123;



        ////////////////// pc news main image  ////////////////////

        ////////////////// Videos main image  ////////////////////
        // section 4.1 image
        string section13 = videosMainImage[5];
        string imgsection13 = section13;
        Image23.ImageUrl = "~/" + imgsection13;

        // section 4.2 image
        string section14 = videosMainImage[4];
        string imgsection14 = section14;
        Image24.ImageUrl = "~/" + imgsection14;

        // section 4.3 image
        string section15 = videosMainImage[3];
        string imgsection15 = section15;
        Image25.ImageUrl = "~/" + imgsection15;

        // section 4.4 image
        string section16 = videosMainImage[2];
        string imgsection16 = section16;
        Image26.ImageUrl = "~/" + imgsection16;

        // section 4.5 image
        string sectionn13 = videosMainImage[1];
        string imgsectionn13 = sectionn13;
        Image27.ImageUrl = "~/" + imgsectionn13;

        // section 4.6 image
        string sectionn14 = videosMainImage[0];
        string imgsectionn14 = sectionn14;
        Image28.ImageUrl = "~/" + imgsectionn14;


        ////////////////// Videos main image  ////////////////////

        ////////////////// Videos author image  ////////////////////
        // section 4.1 image
        string section13v = videosAuthoreImage[5];
        string imgsection13v = section13v;
        video1.ImageUrl = "~/" + imgsection13v;

        // section 4.2 image
        string section14v = videosAuthoreImage[4];
        string imgsection14v = section14v;
        video2.ImageUrl = "~/" + imgsection14v;

        // section 4.3 image
        string section15v = videosAuthoreImage[3];
        string imgsection15v = section15v;
        video3.ImageUrl = "~/" + imgsection15v;

        // section 4.4 image
        string section16v = videosAuthoreImage[2];
        string imgsection16v = section16v;
        video4.ImageUrl = "~/" + imgsection16v;

        // section 4.5 image
        string sectionn13v = videosAuthoreImage[1];
        string imgsectionn13v = sectionn13v;
        video5.ImageUrl = "~/" + imgsectionn13v;

        // section 4.6 image
        string sectionn14v = videosAuthoreImage[0];
        string imgsectionn14v = sectionn14v;
        video6.ImageUrl = "~/" + imgsectionn14v;


        ////////////////// Videos author image  ////////////////////

        ////////////////// Most read main image  ////////////////////
        // section 5.1 image
        string ssection13 = pcnewsMainImage[5];
        string iimgsection13 = ssection13;
        Image1.ImageUrl = "~/" + iimgsection13;

        // section 5.2 image
        string ssection14 = videosMainImage[4];
        string iimgsection14 =  ssection14;
        Image2.ImageUrl = "~/" + iimgsection14;

        // section 5.3 image
        string ssection15 = TabletMainImage[3];
        string iimgsection15 =  ssection15;
        Image3.ImageUrl = "~/" + iimgsection15;

        // section 5.4 image
        string ssection16 = pcnewsMainImage[2];
        string iimgsection16 =  ssection16;
        Image4.ImageUrl = "~/" + iimgsection16;

        // section 5.5 image
        string ssectionn13 = videosMainImage[1];
        string iimgsectionn13 = ssectionn13;
        Image5.ImageUrl = "~/" + iimgsectionn13;

        // section 5.6 image
        string ssectionn14 = TabletMainImage[2];
        string iimgsectionn14 =  ssectionn14;
        Image6.ImageUrl = "~/" + iimgsectionn14;

        ////////////////// Most read main image  ////////////////////

        ////////////  most read Author Image  //////////////////
        // section 2.1 image
        string sectionpc1q = pcnewsAuthoreImage[5];
        string imgsectionpc1q = sectionpc1q;
        todaypic1.ImageUrl = "~/" + imgsectionpc1q;

        // section 2.2 image
        string sectionpc2q = videosAuthoreImage[4];
        string imgsectionpc2q = sectionpc2q;
        todaypic2.ImageUrl = "~/" + imgsectionpc2q;

        // section 2.3 image
        string sectionpc3q = TabletAuthoreImage[3];
        string imgsectionpc3q = sectionpc3q;
        todaypic3.ImageUrl = "~/" + imgsectionpc3q;

        // section 2.4 image
        string sectionpc4q = pcnewsAuthoreImage[2];
        string imgsectionpc4q = sectionpc4q;
        todaypic4.ImageUrl = "~/" + imgsectionpc4q;

        // section 2.5 image
        string sectionpc5q = videosAuthoreImage[1];
        string imgsectionpc5q = sectionpc5q;
        todaypic5.ImageUrl = "~/" + imgsectionpc5q;

        // section 2.6 image
        string sectionpc6q = TabletAuthoreImage[2];
        string imgsectionpc6q = sectionpc6q;
        todaypic6.ImageUrl = "~/" + imgsectionpc6q;
        ////////////  most read Author Image  //////////////////

    }
#endregion
    #region Hide Data
    public void hide()
    {
       }
    #endregion

    #region UN Hide Data
    public void unhide()
    {
    }
    #endregion
    #region initializingBlogger
    private void initializingBlogger()
    {
        tb0a0.InnerHtml = lattestOrganizationHeading[0];
        tb2a2.InnerHtml = lattestOrganizationHeading[1];
        tb3a3.InnerHtml = lattestOrganizationHeading[2];

    }
    #endregion
  
    #region initializingLattest
    private void initializingLattest()
    {
        /////////////////   small Text Lattest ///////////////////////
        small1.InnerHtml = lattestOrganizationDescription[5];
        A3.InnerHtml = lattestOrganizationDescription[4];
        A6.InnerHtml = lattestOrganizationDescription[3];
        A9.InnerHtml = lattestOrganizationDescription[2];
        A12.InnerHtml = lattestOrganizationDescription[1];
        A15.InnerHtml = lattestOrganizationDescription[0];
        /////////////////   small Text Lattest  ///////////////////////

        /////////////////   Heading Text Lattest  ///////////////////////
        heading1.InnerHtml = lattestOrganizationHeading[5];
        A2.InnerHtml = lattestOrganizationHeading[4];
        A5.InnerHtml = lattestOrganizationHeading[3];
        A8.InnerHtml = lattestOrganizationHeading[2];
        A11.InnerHtml = lattestOrganizationHeading[1];
        A14.InnerHtml = lattestOrganizationHeading[0];

        /////////////////   Heading Text Lattest ///////////////////////

        /////////////////   Organization Name Text Lattest  ///////////////////////
        orgName1.InnerHtml = lattestOrganizationName[5];
        orgName2.InnerHtml = lattestOrganizationName[4];
        orgName3.InnerHtml = lattestOrganizationName[3];
        orgName4.InnerHtml = lattestOrganizationName[2];
        orgName5.InnerHtml = lattestOrganizationName[1];
        orgName6.InnerHtml = lattestOrganizationName[0];

        /////////////////   Organization Name Text Lattest ///////////////////////

        /////////////////   Heading Text Tablet tag   ///////////////////////
        A23.InnerHtml = TabletOrganizationHeading[5];
        A26.InnerHtml = TabletOrganizationHeading[4];
        A29.InnerHtml = TabletOrganizationHeading[3];
        A32.InnerHtml = TabletOrganizationHeading[2];
        A35.InnerHtml = TabletOrganizationHeading[1];
        A38.InnerHtml = TabletOrganizationHeading[0];

        /////////////////   Heading Text Tablet tag  ///////////////////////

        /////////////////   small Text Tablet tag ///////////////////////
        A24.InnerHtml = TabletOrganizationDescription[5];
        A27.InnerHtml = TabletOrganizationDescription[4];
        A30.InnerHtml = TabletOrganizationDescription[3];
        A33.InnerHtml = TabletOrganizationDescription[2];
        A36.InnerHtml = TabletOrganizationDescription[1];
        A39.InnerHtml = TabletOrganizationDescription[0];
        /////////////////   small Text Tablet tag  ///////////////////////

        /////////////////   Organization Name Text Tablet tag  ///////////////////////
        tabletOrganizationName1.InnerHtml = TabletOrganizationName[5];
        tabletOrganizationName2.InnerHtml = TabletOrganizationName[4];
        tabletOrganizationName3.InnerHtml = TabletOrganizationName[3];
        tabletOrganizationName4.InnerHtml = TabletOrganizationName[2];
        tabletOrganizationName5.InnerHtml = TabletOrganizationName[1];
        tabletOrganizationName6.InnerHtml = TabletOrganizationName[0];

        /////////////////   Organization Name Text Tablet tag ///////////////////////

        /////////////////   Heading Text PCNEWS tag   ///////////////////////
        A47.InnerHtml = pcnewsOrganizationHeading[5];
        A50.InnerHtml = pcnewsOrganizationHeading[4];
        A53.InnerHtml = pcnewsOrganizationHeading[3];
        A56.InnerHtml = pcnewsOrganizationHeading[2];
        A59.InnerHtml = pcnewsOrganizationHeading[1];
        A62.InnerHtml = pcnewsOrganizationHeading[0];

        /////////////////   Heading Text PCNEWS tag  ///////////////////////

        /////////////////   small Text PCNEWS tag ///////////////////////
        A48.InnerHtml = pcnewsOrganizationDescription[5];
        A51.InnerHtml = pcnewsOrganizationDescription[4];
        A54.InnerHtml = pcnewsOrganizationDescription[3];
        A57.InnerHtml = pcnewsOrganizationDescription[2];
        A60.InnerHtml = pcnewsOrganizationDescription[1];
        A63.InnerHtml = pcnewsOrganizationDescription[0];
        /////////////////   small Text PCNEWS tag  ///////////////////////

        /////////////////   Organization Name Text PCNEWS tag   ///////////////////////
        pcnewsorganization1.InnerHtml = pcnewsOrganizationName[5];
        pcnewsorganization2.InnerHtml = pcnewsOrganizationName[4];
        pcnewsorganization3.InnerHtml = pcnewsOrganizationName[3];
        pcnewsorganization4.InnerHtml = pcnewsOrganizationName[2];
        pcnewsorganization5.InnerHtml = pcnewsOrganizationName[1];
        pcnewsorganization6.InnerHtml = pcnewsOrganizationName[0];

        /////////////////   Organization Name Text PCNEWS tag  ///////////////////////

        /////////////////   Heading Text Videos tag   ///////////////////////
        A71.InnerHtml = videosOrganizationHeading[5];
        A74.InnerHtml = videosOrganizationHeading[4];
        A77.InnerHtml = videosOrganizationHeading[3];
        A80.InnerHtml = videosOrganizationHeading[2];
        A83.InnerHtml = videosOrganizationHeading[1];
        A86.InnerHtml = videosOrganizationHeading[0];

        /////////////////   Heading Text Videos tag  ///////////////////////

        /////////////////   small Text Videos tag ///////////////////////
        A72.InnerHtml = videosOrganizationDescription[5];
        A75.InnerHtml = videosOrganizationDescription[4];
        A78.InnerHtml = videosOrganizationDescription[3];
        A81.InnerHtml = videosOrganizationDescription[2];
        A84.InnerHtml = videosOrganizationDescription[1];
        A87.InnerHtml = videosOrganizationDescription[0];
        /////////////////   small Text Videos tag  ///////////////////////

        /////////////////   Organization Name Text Video tag   ///////////////////////
        videoorganizationname1.InnerHtml = videosOrganizationName[5];
        videoorganizationname2.InnerHtml = videosOrganizationName[4];
        videoorganizationname3.InnerHtml = videosOrganizationName[3];
        videoorganizationname4.InnerHtml = videosOrganizationName[2];
        videoorganizationname5.InnerHtml = videosOrganizationName[1];
        videoorganizationname6.InnerHtml = videosOrganizationName[0];

        /////////////////   Organization Name Text Video tag  ///////////////////////


        /////////////////   Heading Text Style slideshow tag   ///////////////////////
        A95.InnerHtml = pcnewsOrganizationHeading[5];
        A98.InnerHtml = videosOrganizationHeading[4];
        A101.InnerHtml = TabletOrganizationHeading[3];
        A104.InnerHtml = pcnewsOrganizationHeading[2];
        A107.InnerHtml = videosOrganizationHeading[1];
        A110.InnerHtml = TabletOrganizationHeading[2];

        /////////////////   Heading Text Style slideshow tag  ///////////////////////

        /////////////////   small Text Style slideshow tag ///////////////////////
        A96.InnerHtml = pcnewsOrganizationDescription[5];
        A99.InnerHtml = videosOrganizationDescription[4];
        A102.InnerHtml = TabletOrganizationDescription[3];
        A105.InnerHtml = pcnewsOrganizationDescription[2];
        A108.InnerHtml = videosOrganizationDescription[1];
        A111.InnerHtml = TabletOrganizationDescription[2];
        /////////////////   small Text Style slideshow tag  ///////////////////////
     }
    #endregion


    #region initializeslideshow
    private void initializeslideshow()
    {
        slideshowa1.InnerHtml = TabletOrganizationHeading[0];
        slideshowa2.InnerHtml = pcnewsOrganizationHeading[0];
        slideshowa3.InnerHtml = videosOrganizationHeading[0];
        slideshowa4.InnerHtml = TabletOrganizationHeading[5];
        slideshowa5.InnerHtml = pcnewsOrganizationHeading[5];
        slideshowa6.InnerHtml = videosOrganizationHeading[5];
        slideshowa7.InnerHtml = TabletOrganizationHeading[2];
        slideshowa8.InnerHtml = pcnewsOrganizationHeading[2];

    }
#endregion
    #region smallTextinitialization
    private void smallTextinitialization()
    {
        tb1aa1.InnerHtml = TabletOrganizationDescription[0];
        tb1aa2.InnerHtml = pcnewsOrganizationDescription[0];
        tb1aa3.InnerHtml = videosOrganizationDescription[0];
        tb1aa4.InnerHtml = TabletOrganizationDescription[5];
        tb1aa5.InnerHtml = pcnewsOrganizationDescription[5];
        tb1aa6.InnerHtml = videosOrganizationDescription[5];
        tb1aa7.InnerHtml = TabletOrganizationDescription[2];
        tb1aa8.InnerHtml = pcnewsOrganizationDescription[2];

        /////////////// OrganizationName Slideshow  ////////////////////
        tb1a.HRef = Tabletlink[0];
        tb2a.HRef = pcnewslink[0];
        tb3a.HRef = videoslink[0];
        tb4a.HRef = Tabletlink[5];
        tb5a.HRef = pcnewslink[5];
        tb6a.HRef = videoslink[5];
        tb7a.HRef = Tabletlink[2];
        tb8a.HRef = pcnewslink[2];
        /////////////// OrganizationName Slideshow  ////////////////////


    }
#endregion
  
    #region authornameinitialization
    private void authornameinitialization()
    {
        author1.InnerHtml = TabletAuthoreName[0];
        author2.InnerHtml = pcnewsAuthoreName[0];
        author3.InnerHtml = videosAuthoreName[0];
        author4.InnerHtml = TabletAuthoreName[5];
        author5.InnerHtml = pcnewsAuthoreName[5];
        author6.InnerHtml = videosAuthoreName[5];
        author7.InnerHtml = TabletAuthoreName[2];
        author8.InnerHtml = pcnewsAuthoreName[2];

        ///////////////// Lattest Author Name //////////////////////
        authorr1.InnerHtml = lattestAuthoreName[5];
        a4.InnerHtml = lattestAuthoreName[4];
        a7.InnerHtml = lattestAuthoreName[3];
        a10.InnerHtml = lattestAuthoreName[2];
        a13.InnerHtml = lattestAuthoreName[1];
        a16.InnerHtml = lattestAuthoreName[0];

        ///////////////// Lattest Author Name //////////////////////

        ///////////////// Tablet Author Name //////////////////////
        a25.InnerHtml = TabletAuthoreName[5];
        a28.InnerHtml = TabletAuthoreName[4];
        a31.InnerHtml = TabletAuthoreName[3];
        a34.InnerHtml = TabletAuthoreName[2];
        a37.InnerHtml = TabletAuthoreName[1];
        a40.InnerHtml = TabletAuthoreName[0];

        ///////////////// Tablet Author Name //////////////////////

        ///////////////// PC news Author Name //////////////////////
        a49.InnerHtml = pcnewsAuthoreName[5];
        a52.InnerHtml = pcnewsAuthoreName[4];
        a55.InnerHtml = pcnewsAuthoreName[3];
        a58.InnerHtml = pcnewsAuthoreName[2];
        a61.InnerHtml = pcnewsAuthoreName[1];
        a64.InnerHtml = pcnewsAuthoreName[0];

        ///////////////// PC news Author Name //////////////////////

        ///////////////// Videos Author Name //////////////////////
        a73.InnerHtml = videosAuthoreName[5];
        a76.InnerHtml = videosAuthoreName[4];
        a79.InnerHtml = videosAuthoreName[3];
        a82.InnerHtml = videosAuthoreName[2];
        a85.InnerHtml = videosAuthoreName[1];
        a88.InnerHtml = videosAuthoreName[0];

        ///////////////// Videos Author Name //////////////////////


        ///////////////// Today most read author Name //////////////////////
        a97.InnerHtml = pcnewsAuthoreName[5];
        a100.InnerHtml = videosAuthoreName[4];
        a103.InnerHtml = TabletAuthoreName[3];
        a106.InnerHtml = pcnewsAuthoreName[3];
        a109.InnerHtml = videosAuthoreName[1];
        a112.InnerHtml = TabletAuthoreName[2];

        ///////////////// Today most read author Name //////////////////////

        ///////////////// Today most read organization Name //////////////////////
        todayorganization1.InnerHtml = pcnewsOrganizationName[5];
        todayorganization2.InnerHtml = videosOrganizationName[4];
        todayorganization3.InnerHtml = TabletOrganizationName[3];
        todayorganization4.InnerHtml = pcnewsOrganizationName[3];
        todayorganization5.InnerHtml = videosOrganizationName[1];
        todayorganization6.InnerHtml = TabletOrganizationName[2];

        ///////////////// Today most read organization Name //////////////////////

    }
    #endregion
    #region Initializaing All dates
    private void gettingtime()
    {
        /////////////// Slideshow tag time //////////////////////
        time39.InnerHtml = Tablettimedate[0];
        time40.InnerHtml = pcnewstimedate[0];
        time14.InnerHtml = videostimedate[0];
        time42.InnerHtml = Tablettimedate[5];
        time43.InnerHtml = pcnewstimedate[5];
        time44.InnerHtml = videostimedate[5];
        time45.InnerHtml = Tablettimedate[2];
        time46.InnerHtml = pcnewstimedate[2];
        /////////////// Slideshow tag time //////////////////////

        /////////////// lattest tag time //////////////////////
        time1.InnerHtml = lattesttimedate[5];
        time2.InnerHtml = lattesttimedate[4];
        time3.InnerHtml = lattesttimedate[3];
        time4.InnerHtml = lattesttimedate[2];
        time5.InnerHtml = lattesttimedate[1];
        time6.InnerHtml = lattesttimedate[0];
        /////////////// lattest tag time //////////////////////

        /////////////// tablet tag time //////////////////////
        time9.InnerHtml = Tablettimedate[5];
        time10.InnerHtml = Tablettimedate[4];
        time11.InnerHtml = Tablettimedate[3];
        time12.InnerHtml = Tablettimedate[2];
        time13.InnerHtml = Tablettimedate[1];
        time14.InnerHtml = Tablettimedate[0];
        /////////////// tablet tag time //////////////////////

        /////////////// PCNEWS tag time //////////////////////
        time17.InnerHtml = pcnewstimedate[5];
        time18.InnerHtml = pcnewstimedate[4];
        time19.InnerHtml = pcnewstimedate[3];
        time20.InnerHtml = pcnewstimedate[2];
        time21.InnerHtml = pcnewstimedate[1];
        time22.InnerHtml = pcnewstimedate[0];
        /////////////// PCNEWS tag time //////////////////////


        /////////////// Videos tag time //////////////////////
        time25.InnerHtml = videostimedate[5];
        time26.InnerHtml = videostimedate[4];
        time27.InnerHtml = videostimedate[3];
        time28.InnerHtml = videostimedate[2];
        time29.InnerHtml = videostimedate[1];
        time30.InnerHtml = videostimedate[0];
        /////////////// Videos tag time //////////////////////

        /////////////// Style tag time //////////////////////
        time33.InnerHtml = pcnewstimedate[5];
        time34.InnerHtml = videostimedate[4];
        time35.InnerHtml = Tablettimedate[3];
        time36.InnerHtml = pcnewstimedate[2];
        time37.InnerHtml = videostimedate[1];
        time38.InnerHtml = Tablettimedate[2];
        /////////////// Style tag time //////////////////////

    }
    #endregion
    #region create new form button
    protected void BtncreatNewForm_Click(object sender, EventArgs e)
    {
        Server.Transfer("create checking.aspx", true);
    }
    #endregion
    #region imagesend button
    protected void btnimagesend_Click(object sender, ImageClickEventArgs e)
    {
        if (fromemail.Text == String.Empty || TBNAME.Text == String.Empty || TBNUMBER.Text == String.Empty || fromcomments.Text == String.Empty)
        {
            commentdisplay.Text = "Please Fill All Fields ";
        }
        else
        {
            try
            {

                SendMail();
                commentdisplay.Text = "Your Comments after sending the mail";
                commentdisplay.Visible = true;
                subject = "";
                fromemail.Text = "";
                fromcomments.Text = "";
                TBNAME.Text = "";
                TBNUMBER.Text = "";
                commentdisplay.ForeColor = System.Drawing.Color.White;////COLOUR
                commentdisplay.Font.Size = FontUnit.XLarge;
                commentdisplay.Text = "Message Sended ";
                // abc();
            }
            catch (Exception ex)
            {
                Utilities.LogError(ex);
            }
        }
    }


    #endregion
    #region Email Sending function
    protected void SendMail()
    {
        fromAddress = fromemail.Text.ToString();
        toAddress = "sarwanpasha@gmail.com";
        fromPassword = "incorrect123@";
        subject = "User Views About The Website ";
        comments = fromcomments.Text.ToString();
        body = "From: " + fromAddress + "\n\n";
        body += "Name: " + TBNAME.Text + "\n\n";
        body += "Number: " + TBNUMBER.Text + "\n\n";
        body += "Subject: " + subject + "\n\n";
        body += "Question: \n\n" + comments + "\n";
        SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
        smtp.EnableSsl = true;
        smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
        smtp.Credentials = new System.Net.NetworkCredential(toAddress, fromPassword);
        smtp.Timeout = 20000;
        smtp.Send(fromAddress, toAddress, subject, body);
    }
        #endregion
    #region subscribe footer button
    protected void btnsubscribe_Click(object sender, EventArgs e)
    {

    }
    #endregion
    #region getLattestNewsDataFromDatabase()
    public void getLattestNewsDataFromDatabase()
    {
        try {  
        SqlConnection myConnection = new SqlConnection(source);
        SqlCommand cmd = new SqlCommand("GetLattestNewsData", myConnection);
        cmd.CommandType = CommandType.StoredProcedure;
        myConnection.Open();
        cmd.Parameters.Add(new SqlParameter("@OrganizationName", SqlDbType.VarChar, 20, ParameterDirection.Output, false, 0, 20,
            "OrganizationName", DataRowVersion.Default, null));
        cmd.Parameters.Add(new SqlParameter("@OrganizationHeading", SqlDbType.VarChar, 20, ParameterDirection.Output, false, 0, 20,
            "OrganizationHeading", DataRowVersion.Default, null));
        cmd.Parameters.Add(new SqlParameter("@OrganizationDescription", SqlDbType.VarChar, 200, ParameterDirection.Output, false, 0, 200,
            "OrganizationDescription", DataRowVersion.Default, null));
        cmd.Parameters.Add(new SqlParameter("@AuthoreName", SqlDbType.VarChar, 20, ParameterDirection.Output, false, 0, 20,
            "AuthoreName", DataRowVersion.Default, null));
        cmd.Parameters.Add(new SqlParameter("@AuthoreImage", SqlDbType.VarChar, 20, ParameterDirection.Output, false, 0, 20,
            "AuthoreImage", DataRowVersion.Default, null));
        cmd.Parameters.Add(new SqlParameter("@MainImage", SqlDbType.VarChar, 20, ParameterDirection.Output, false, 0, 20,
            "MainImage", DataRowVersion.Default, null));
        cmd.Parameters.Add(new SqlParameter("@TimeDate", SqlDbType.VarChar, 20, ParameterDirection.Output, false, 0, 20,
            "TimeDate", DataRowVersion.Default, null));
        cmd.Parameters.Add(new SqlParameter("@link", SqlDbType.VarChar, 100, ParameterDirection.Output, false, 0, 100,
            "link", DataRowVersion.Default, null));
        cmd.Parameters.Add(new SqlParameter("@Catagory", SqlDbType.VarChar, 20, ParameterDirection.Output, false, 0, 20,
            "Catagory", DataRowVersion.Default, null));

        cmd.ExecuteNonQuery();
          OrganizationName = (string)cmd.Parameters["@OrganizationName"].Value;
          OrganizationHeading = (string)cmd.Parameters["@OrganizationHeading"].Value;
          OrganizationDescription = (string)cmd.Parameters["@OrganizationDescription"].Value;
          AuthoreName = (string)cmd.Parameters["@AuthoreName"].Value;
          AuthoreImage = (string)cmd.Parameters["@AuthoreImage"].Value;
          MainImage = (string)cmd.Parameters["@MainImage"].Value;
          TimeDate = (string)cmd.Parameters["@TimeDate"].Value;
          link = (string)cmd.Parameters["@link"].Value;
          Catagory = (string)cmd.Parameters["@Catagory"].Value;
        myConnection.Close();
        commentdisplay.ForeColor = System.Drawing.Color.White;
   //     commentdisplay.Text = OrganizationName + OrganizationHeading + OrganizationDescription + AuthoreName + AuthoreImage + MainImage + TimeDate + link;
            }
        catch(Exception ex){
            Utilities.LogError(ex);
        }
    }
    #endregion
    #region Get Lattest top 8
    #region getLattestOrganizationName()
    public void getLattestOrganizationName()
    {
        int i = 0;

        try
        { 
            SqlConnection connection = new SqlConnection(source);

            SqlCommand cmd = new SqlCommand("getLattestOrganizationName", connection);
            cmd.CommandType = CommandType.StoredProcedure;
            using (connection)
            {
              //  SqlCommand command = new SqlCommand("select TimeDate from LattestNewsData where TimeDate in ( SELECT  TOP 8(TimeDate) from LattestNewsData ORDER BY TimeDate DESC);"
              //      , connection);
                connection.Open();

                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        lattestOrganizationName[i] = (String.Format("{0}", reader[0]));
                        i++;
                    }
                }
                else
                {
                    Console.WriteLine("No rows found.");
                }
                reader.Close();
           //     commentdisplay.Text = lattestOrganizationName[0] + lattestOrganizationName[1] + lattestOrganizationName[2] + lattestOrganizationName[3] +
              //      lattestOrganizationName[4] + lattestOrganizationName[5] + lattestOrganizationName[6] + lattestOrganizationName[7];
            }
        }
        catch (Exception ex)
        {
            Utilities.LogError(ex);
        }
    }
    #endregion
    #region getLattestOrganizationHeading()
    public void getLattestOrganizationHeading() 
    {
        int i = 0;
        try
        {
            SqlConnection connection = new SqlConnection(source);

            SqlCommand cmd = new SqlCommand("getLattestOrganizationHeading", connection);
            cmd.CommandType = CommandType.StoredProcedure;
            using (connection)
            {
                //  SqlCommand command = new SqlCommand("select TimeDate from LattestNewsData where TimeDate in ( SELECT  TOP 8(TimeDate) from LattestNewsData ORDER BY TimeDate DESC);"
                //      , connection);
                connection.Open();

                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        lattestOrganizationHeading[i] = (String.Format("{0}", reader[0]));
                        i++;
                    }
                }
                else
                {
                    Console.WriteLine("No rows found.");
                }
                reader.Close();
            }
        }
        catch (Exception ex)
        {
            Utilities.LogError(ex);
        }
    }
    #endregion
    #region getLattestOrganizationDescription()
    public void getLattestOrganizationDescription()
    {
        int i = 0;
        try
        {
            SqlConnection connection = new SqlConnection(source);

            SqlCommand cmd = new SqlCommand("getLattestOrganizationDescription", connection);
            cmd.CommandType = CommandType.StoredProcedure;
            using (connection)
            {
                //  SqlCommand command = new SqlCommand("select TimeDate from LattestNewsData where TimeDate in ( SELECT  TOP 8(TimeDate) from LattestNewsData ORDER BY TimeDate DESC);"
                //      , connection);
                connection.Open();

                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        lattestOrganizationDescription[i] = (String.Format("{0}", reader[0]));
                        i++;
                    }
                }
                else
                {
                    Console.WriteLine("No rows found.");
                }
                reader.Close();
            }
        }
        catch (Exception ex)
        {
            Utilities.LogError(ex);
        }
    }
    #endregion
    #region getLattestAuthoreName()
    public void getLattestAuthoreName()
    {
        int i = 0;
        try
        {
            SqlConnection connection = new SqlConnection(source);

            SqlCommand cmd = new SqlCommand("getLattestAuthoreName", connection);
            cmd.CommandType = CommandType.StoredProcedure;
            using (connection)
            {
                //  SqlCommand command = new SqlCommand("select TimeDate from LattestNewsData where TimeDate in ( SELECT  TOP 8(TimeDate) from LattestNewsData ORDER BY TimeDate DESC);"
                //      , connection);
                connection.Open();

                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        lattestAuthoreName[i] = (String.Format("{0}", reader[0]));
                        i++;
                    }
                }
                else
                {
                    Console.WriteLine("No rows found.");
                }
                reader.Close();
            }
        }
        catch (Exception ex)
        {
            Utilities.LogError(ex);
        }
    }
#endregion
    #region getLattestAuthoreImage()
    public void getLattestAuthoreImage()
    {
        int i = 0;
        try
        {
            SqlConnection connection = new SqlConnection(source);

            SqlCommand cmd = new SqlCommand("getLattestAuthoreImage", connection);
            cmd.CommandType = CommandType.StoredProcedure;
            using (connection)
            {
                //  SqlCommand command = new SqlCommand("select TimeDate from LattestNewsData where TimeDate in ( SELECT  TOP 8(TimeDate) from LattestNewsData ORDER BY TimeDate DESC);"
                //      , connection);
                connection.Open();

                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        lattestAuthoreImage[i] = (String.Format("{0}", reader[0]));
                        i++;
                    }
                }
                else
                {
                    Console.WriteLine("No rows found.");
                }
                reader.Close();
            }
        }
        catch (Exception ex)
        {
            Utilities.LogError(ex);
        }
    }
#endregion
    #region getLattestMainImage()
    public void getLattestMainImage()
    {
        int i = 0;
         try
        {
            SqlConnection connection = new SqlConnection(source);

            SqlCommand cmd = new SqlCommand("getLattestMainImage", connection);
            cmd.CommandType = CommandType.StoredProcedure;
            using (connection)
            {
                //  SqlCommand command = new SqlCommand("select TimeDate from LattestNewsData where TimeDate in ( SELECT  TOP 8(TimeDate) from LattestNewsData ORDER BY TimeDate DESC);"
                //      , connection);
                connection.Open();

                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        lattestMainImage[i] = (String.Format("{0}", reader[0]));
                        i++;
                    }
                }
                else
                {
                    Console.WriteLine("No rows found.");
                }
                reader.Close(); 
            }
        }
        catch (Exception ex)
        {
            Utilities.LogError(ex);
        }
    }
#endregion
    #region getLattestlink()
    public void getLattestlink()
    {
        int i = 0;
         try
        {
            SqlConnection connection = new SqlConnection(source);

            SqlCommand cmd = new SqlCommand("getLattestlink", connection);
            cmd.CommandType = CommandType.StoredProcedure;
            using (connection)
            {
                connection.Open();

                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        lattestlink[i] = (String.Format("{0}", reader[0]));
                        i++;
                    }
                }
                else
                {
                    Console.WriteLine("No rows found.");
                }
                reader.Close();
            }
        }
        catch (Exception ex)
        {
            Utilities.LogError(ex);
        }
    }
#endregion
    #region getLattestTimeDate()
    public void getLattestTimeDate() 
    {
        int i = 0;
        try
        {
            SqlConnection connection = new SqlConnection(source);

            SqlCommand cmd = new SqlCommand("LattestTimeDate", connection);
            cmd.CommandType = CommandType.StoredProcedure;
            using (connection)
            {
                //  SqlCommand command = new SqlCommand("select TimeDate from LattestNewsData where TimeDate in ( SELECT  TOP 8(TimeDate) from LattestNewsData ORDER BY TimeDate DESC);"
                //      , connection);
                connection.Open();

                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        lattesttimedate[i] = (String.Format("{0}", reader[0]));
                        i++;
                    }
                }
                else
                {
                    Console.WriteLine("No rows found.");
                }
                reader.Close();
            }
        }
        catch (Exception ex)
        {
            Utilities.LogError(ex);
        }
    }
    #endregion
    #endregion
    #region initializingLinks()
    public void initializingLinks()
    {
        try
        {
            ////////////Heading Slideshow link  /////////////////
            slideshowa1.HRef = lattestlink[0];
            slideshowa2.HRef = pcnewslink[0];
            slideshowa3.HRef = videoslink[0];
            slideshowa4.HRef = lattestlink[5];
            slideshowa5.HRef = pcnewslink[5];
            slideshowa6.HRef = videoslink[5];
            slideshowa7.HRef = lattestlink[2];
            slideshowa8.HRef = pcnewslink[2];
            ////////////Heading Slideshow link  /////////////////


            ////////////Author pic Slideshow link  /////////////////
            au1.HRef = lattestlink[0];
            au2.HRef = pcnewslink[0];
            au3.HRef = videoslink[0];
            au4.HRef = lattestlink[5];
            au5.HRef = pcnewslink[5];
            au6.HRef = videoslink[5];
            au7.HRef = lattestlink[2];
            au8.HRef = pcnewslink[2];
            ////////////Author pic Slideshow link  /////////////////

            ////////////Heading Lattest link  /////////////////
            heading1.HRef = lattestlink[5];
            A2.HRef = lattestlink[4];
            A5.HRef = lattestlink[3];
            A8.HRef = lattestlink[2];
            A11.HRef = lattestlink[1];
            A14.HRef = lattestlink[0];
            ////////////Heading Lattest link  /////////////////


            ////////////Author pic Lattest link  /////////////////
            authorPiclink1.HRef = lattestlink[5];
            authorPiclink2.HRef = lattestlink[4];
            authorPiclink3.HRef = lattestlink[3];
            authorPiclink4.HRef = lattestlink[2];
            authorPiclink5.HRef = lattestlink[1];
            authorPiclink6.HRef = lattestlink[0];
            ////////////Author pic Lattest link  /////////////////

            ////////////Heading Tablet link  /////////////////
            A23.HRef = Tabletlink[5];
            A26.HRef = Tabletlink[4];
            A29.HRef = Tabletlink[3];
            A32.HRef = Tabletlink[2];
            A35.HRef = Tabletlink[1];
            A38.HRef = Tabletlink[0];
            ////////////Heading Tablet link  /////////////////

            ////////////Authore Pic Tablet link  /////////////////
            Tabpiclink1.HRef = Tabletlink[5];
            Tabpiclink2.HRef = Tabletlink[4];
            Tabpiclink3.HRef = Tabletlink[3];
            Tabpiclink4.HRef = Tabletlink[2];
            Tabpiclink5.HRef = Tabletlink[1];
            Tabpiclink6.HRef = Tabletlink[0];
            ////////////Authore Pic Tablet link  /////////////////

            ////////////Heading pcnews link  /////////////////
            A47.HRef = pcnewslink[5];
            A50.HRef = pcnewslink[4];
            A53.HRef = pcnewslink[3];
            A56.HRef = pcnewslink[2];
            A59.HRef = pcnewslink[1];
            A62.HRef = pcnewslink[0];
            ////////////Heading pcnews link  /////////////////

            ////////////Authore Pic pcnews link  /////////////////
            authr1.HRef = pcnewslink[5];
            authr2.HRef = pcnewslink[4];
            authr3.HRef = pcnewslink[3];
            authr4.HRef = pcnewslink[2];
            authr5.HRef = pcnewslink[1];
            authr6.HRef = pcnewslink[0];
            ////////////Authore Pic pcnews link  /////////////////

            ////////////Heading videos link  /////////////////
               A71.HRef = videoslink[5];
                A74.HRef = videoslink[4];
                A77.HRef = videoslink[3];
                 A80.HRef = videoslink[2];
               A83.HRef = videoslink[1];
                A86.HRef = videoslink[0];
            ////////////Heading videos link  /////////////////

            ////////////Authore Pic videos link  /////////////////
               videosauthor1.HRef = videoslink[5];
                videosauthor2.HRef = videoslink[4];
                 videosauthor3.HRef = videoslink[3];
                videosauthor4.HRef = videoslink[2];
               videosauthor5.HRef = videoslink[1];
                videosauthor6.HRef = videoslink[0];
            ////////////Authore Pic videos link  /////////////////

            ////////////Heading today link  /////////////////
            A95.HRef = pcnewslink[5];
            A98.HRef = videoslink[4];
            A101.HRef = Tabletlink[3];
            A104.HRef = pcnewslink[2];
            A107.HRef = videoslink[1];
            A110.HRef = Tabletlink[2];
            ////////////Heading today link  /////////////////

            ////////////Authore Pic today link  /////////////////
            today1.HRef = pcnewslink[5];
            today2.HRef = videoslink[4];
            today3.HRef = Tabletlink[3];
            today4.HRef = pcnewslink[2];
            today5.HRef = videoslink[1];
            today6.HRef = Tabletlink[2];
            ////////////Authore Pic today link  /////////////////

            ////////////Blogger link  /////////////////
            tb0a0.HRef = lattestlink[0];
            tb2a2.HRef = lattestlink[1];
            tb3a3.HRef = lattestlink[2];

            ////////////Blogger link  /////////////////

        }
        catch(Exception ex){
            Utilities.LogError(ex);
        }

    }
    #endregion
    #region Get Tablet News top 8
    #region getTabletOrganizationName()
    public void getTabletOrganizationName()
    {
        int i = 0;

        try
        {
            SqlConnection connection = new SqlConnection(source);

            SqlCommand cmd = new SqlCommand("getTabletOrganizationName", connection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@cat", SqlDbType.VarChar).Value = "Tablets";
            using (connection)
            {
                //  SqlCommand command = new SqlCommand("select TimeDate from LattestNewsData where TimeDate in ( SELECT  TOP 8(TimeDate) from LattestNewsData ORDER BY TimeDate DESC);"
                //      , connection);
                connection.Open();

                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        TabletOrganizationName[i] = (String.Format("{0}", reader[0]));
                        i++;
                    }
                }
                else
                {
                    Console.WriteLine("No rows found.");
                }
                reader.Close(); 
            }
        }
        catch (Exception ex)
        {
            Utilities.LogError(ex);
        }
    }
    #endregion

    #region getTabletOrganizationHeading()
    public void getTabletOrganizationHeading()
    {
        int i = 0;

        try
        {
            SqlConnection connection = new SqlConnection(source);

            SqlCommand cmd = new SqlCommand("getTabletOrganizationHeading", connection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@cat", SqlDbType.VarChar).Value = "Tablets";
            using (connection)
            {
                //  SqlCommand command = new SqlCommand("select TimeDate from LattestNewsData where TimeDate in ( SELECT  TOP 8(TimeDate) from LattestNewsData ORDER BY TimeDate DESC);"
                //      , connection);
                connection.Open();

                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        TabletOrganizationHeading[i] = (String.Format("{0}", reader[0]));
                        i++;
                    }
                }
                else
                {
                    Console.WriteLine("No rows found.");
                }
                reader.Close();
            }
        }
        catch (Exception ex)
        {
            Utilities.LogError(ex);
        }
    }
    #endregion

    #region getTabletOrganizationDescription()
    public void getTabletOrganizationDescription()
    {
        int i = 0;

        try
        {
            SqlConnection connection = new SqlConnection(source);

            SqlCommand cmd = new SqlCommand("getTabletOrganizationDescription", connection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@cat", SqlDbType.VarChar).Value = "Tablets";
            using (connection)
            {
                //  SqlCommand command = new SqlCommand("select TimeDate from LattestNewsData where TimeDate in ( SELECT  TOP 8(TimeDate) from LattestNewsData ORDER BY TimeDate DESC);"
                //      , connection);
                connection.Open();

                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        TabletOrganizationDescription[i] = (String.Format("{0}", reader[0]));
                        i++;
                    }
                }
                else
                {
                    Console.WriteLine("No rows found.");
                }
                reader.Close();
            }
        }
        catch (Exception ex)
        {
            Utilities.LogError(ex);
        }
    }
    #endregion

    #region getTabletAuthoreName()
    public void getTabletAuthoreName()
    {
        int i = 0;

        try
        {
            SqlConnection connection = new SqlConnection(source);

            SqlCommand cmd = new SqlCommand("getTabletAuthoreName", connection);
            cmd.CommandType = CommandType.StoredProcedure;
           cmd.Parameters.Add("@cat", SqlDbType.VarChar).Value = "Tablets";
            using (connection)
            {
                //  SqlCommand command = new SqlCommand("select TimeDate from LattestNewsData where TimeDate in ( SELECT  TOP 8(TimeDate) from LattestNewsData ORDER BY TimeDate DESC);"
                //      , connection);
                connection.Open();

                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        TabletAuthoreName[i] = (String.Format("{0}", reader[0]));
                        i++;
                    }
                }
                else
                {
                    Console.WriteLine("No rows found.");
                }
                reader.Close();
            }
        }
        catch (Exception ex)
        {
            Utilities.LogError(ex);
        }
    }
    #endregion

    #region getTabletAuthoreImage()
    public void getTabletAuthoreImage()
    {
        int i = 0;

        try
        {
            SqlConnection connection = new SqlConnection(source);

            SqlCommand cmd = new SqlCommand("getTabletAuthoreImage", connection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@cat", SqlDbType.VarChar).Value = "Tablets";
            using (connection)
            {
                //  SqlCommand command = new SqlCommand("select TimeDate from LattestNewsData where TimeDate in ( SELECT  TOP 8(TimeDate) from LattestNewsData ORDER BY TimeDate DESC);"
                //      , connection);
                connection.Open();

                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        TabletAuthoreImage[i] = (String.Format("{0}", reader[0]));
                        i++;
                    }
                }
                else
                {
                    Console.WriteLine("No rows found.");
                }
                reader.Close();
            }
        }
        catch (Exception ex)
        {
            Utilities.LogError(ex);
        }
    }
    #endregion

    #region getTabletMainImage()
    public void getTabletMainImage()
    {
        int i = 0;

        try
        {
            SqlConnection connection = new SqlConnection(source);

            SqlCommand cmd = new SqlCommand("getTabletMainImage", connection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@cat", SqlDbType.VarChar).Value = "Tablets";
            using (connection)
            {
                //  SqlCommand command = new SqlCommand("select TimeDate from LattestNewsData where TimeDate in ( SELECT  TOP 8(TimeDate) from LattestNewsData ORDER BY TimeDate DESC);"
                //      , connection);
                connection.Open();

                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        TabletMainImage[i] = (String.Format("{0}", reader[0]));
                        i++;
                    }
                }
                else
                {
                    Console.WriteLine("No rows found.");
                }
                reader.Close();
            }
        }
        catch (Exception ex)
        {
            Utilities.LogError(ex);
        }
    }
    #endregion

    #region getTabletTimeDate()
    public void getTabletTimeDate()
    {
        int i = 0;

        try
        {
            SqlConnection connection = new SqlConnection(source);

            SqlCommand cmd = new SqlCommand("getTabletTimeDate", connection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@cat", SqlDbType.VarChar).Value = "Tablets";
            using (connection)
            {
                //  SqlCommand command = new SqlCommand("select TimeDate from LattestNewsData where TimeDate in ( SELECT  TOP 8(TimeDate) from LattestNewsData ORDER BY TimeDate DESC);"
                //      , connection);
                connection.Open();

                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        Tablettimedate[i] = (String.Format("{0}", reader[0]));
                        i++;
                    }
                }
                else
                {
                    Console.WriteLine("No rows found.");
                }
                reader.Close();
            }
        }
        catch (Exception ex)
        {
            Utilities.LogError(ex);
        }
    }
    #endregion

    #region getTabletlink()
    public void getTabletlink()
    {
        int i = 0;

        try
        {
            SqlConnection connection = new SqlConnection(source);

            SqlCommand cmd = new SqlCommand("getTabletlink", connection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@cat", SqlDbType.VarChar).Value = "Tablets";
            using (connection)
            {
                connection.Open();

                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        Tabletlink[i] = (String.Format("{0}", reader[0]));
                        i++;
                    }
                }
                else
                {
                    Console.WriteLine("No rows found.");
                }
                reader.Close();
            }
        }
        catch (Exception ex)
        {
            Utilities.LogError(ex);
        }
    }
    #endregion
    #endregion
    #region Get PC News top 8
    #region getpcnewsOrganizationName()
    public void getpcnewsOrganizationName()
    {
        int i = 0;

        try
        {
            SqlConnection connection = new SqlConnection(source);

            SqlCommand cmd = new SqlCommand("getTabletOrganizationName", connection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@cat", SqlDbType.VarChar).Value = "pcnews";
            using (connection)
            {
                //  SqlCommand command = new SqlCommand("select TimeDate from LattestNewsData where TimeDate in ( SELECT  TOP 8(TimeDate) from LattestNewsData ORDER BY TimeDate DESC);"
                //      , connection);
                connection.Open();

                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        pcnewsOrganizationName[i] = (String.Format("{0}", reader[0]));
                        i++;
                    }
                }
                else
                {
                    Console.WriteLine("No rows found.");
                }
                reader.Close();
            }
        }
        catch (Exception ex)
        {
            Utilities.LogError(ex);
        }
    }
    #endregion

    #region getpcnewsOrganizationHeading()
    public void getpcnewsOrganizationHeading()
    {
        int i = 0;

        try
        {
            SqlConnection connection = new SqlConnection(source);

            SqlCommand cmd = new SqlCommand("getTabletOrganizationHeading", connection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@cat", SqlDbType.VarChar).Value = "pcnews";
            using (connection)
            {
                //  SqlCommand command = new SqlCommand("select TimeDate from LattestNewsData where TimeDate in ( SELECT  TOP 8(TimeDate) from LattestNewsData ORDER BY TimeDate DESC);"
                //      , connection);
                connection.Open();

                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        pcnewsOrganizationHeading[i] = (String.Format("{0}", reader[0]));
                        i++;
                    }
                }
                else
                {
                    Console.WriteLine("No rows found.");
                }
                reader.Close();
            }
        }
        catch (Exception ex)
        {
            Utilities.LogError(ex);
        }
    }
    #endregion

    #region getpcnewsOrganizationDescription()
    public void getpcnewsOrganizationDescription()
    {
        int i = 0;

        try
        {
            SqlConnection connection = new SqlConnection(source);

            SqlCommand cmd = new SqlCommand("getTabletOrganizationDescription", connection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@cat", SqlDbType.VarChar).Value = "pcnews";
            using (connection)
            {
                //  SqlCommand command = new SqlCommand("select TimeDate from LattestNewsData where TimeDate in ( SELECT  TOP 8(TimeDate) from LattestNewsData ORDER BY TimeDate DESC);"
                //      , connection);
                connection.Open();

                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        pcnewsOrganizationDescription[i] = (String.Format("{0}", reader[0]));
                        i++;
                    }
                }
                else
                {
                    Console.WriteLine("No rows found.");
                }
                reader.Close();
            }
        }
        catch (Exception ex)
        {
            Utilities.LogError(ex);
        }
    }
    #endregion

    #region getpcnewsAuthoreName()
    public void getpcnewsAuthoreName()
    {
        int i = 0;

        try
        {
            SqlConnection connection = new SqlConnection(source);

            SqlCommand cmd = new SqlCommand("getTabletAuthoreName", connection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@cat", SqlDbType.VarChar).Value = "pcnews";
            using (connection)
            {
                //  SqlCommand command = new SqlCommand("select TimeDate from LattestNewsData where TimeDate in ( SELECT  TOP 8(TimeDate) from LattestNewsData ORDER BY TimeDate DESC);"
                //      , connection);
                connection.Open();

                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        pcnewsAuthoreName[i] = (String.Format("{0}", reader[0]));
                        i++;
                    }
                }
                else
                {
                    Console.WriteLine("No rows found.");
                }
                reader.Close();
            }
        }
        catch (Exception ex)
        {
            Utilities.LogError(ex);
        }
    }
    #endregion

    #region getpcnewsAuthoreImage()
    public void getpcnewsAuthoreImage()
    {
        int i = 0;

        try
        {
            SqlConnection connection = new SqlConnection(source);

            SqlCommand cmd = new SqlCommand("getTabletAuthoreImage", connection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@cat", SqlDbType.VarChar).Value = "pcnews";
            using (connection)
            {
                //  SqlCommand command = new SqlCommand("select TimeDate from LattestNewsData where TimeDate in ( SELECT  TOP 8(TimeDate) from LattestNewsData ORDER BY TimeDate DESC);"
                //      , connection);
                connection.Open();

                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        pcnewsAuthoreImage[i] = (String.Format("{0}", reader[0]));
                        i++;
                    }
                }
                else
                {
                    Console.WriteLine("No rows found.");
                }
                reader.Close();
            }
        }
        catch (Exception ex)
        {
            Utilities.LogError(ex);
        }
    }
    #endregion

    #region getpcnewsMainImage()
    public void getpcnewsMainImage()
    {
        int i = 0;

        try
        {
            SqlConnection connection = new SqlConnection(source);

            SqlCommand cmd = new SqlCommand("getTabletMainImage", connection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@cat", SqlDbType.VarChar).Value = "pcnews";
            using (connection)
            {
                //  SqlCommand command = new SqlCommand("select TimeDate from LattestNewsData where TimeDate in ( SELECT  TOP 8(TimeDate) from LattestNewsData ORDER BY TimeDate DESC);"
                //      , connection);
                connection.Open();

                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        pcnewsMainImage[i] = (String.Format("{0}", reader[0]));
                        i++;
                    }
                }
                else
                {
                    Console.WriteLine("No rows found.");
                }
                reader.Close();
            }
        }
        catch (Exception ex)
        {
            Utilities.LogError(ex);
        }
    }
    #endregion

    #region getpcnewsTimeDate()
    public void getpcnewsTimeDate()
    {
        int i = 0;

        try
        {
            SqlConnection connection = new SqlConnection(source);

            SqlCommand cmd = new SqlCommand("getTabletTimeDate", connection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@cat", SqlDbType.VarChar).Value = "pcnews";
            using (connection)
            {
                //  SqlCommand command = new SqlCommand("select TimeDate from LattestNewsData where TimeDate in ( SELECT  TOP 8(TimeDate) from LattestNewsData ORDER BY TimeDate DESC);"
                //      , connection);
                connection.Open();

                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        pcnewstimedate[i] = (String.Format("{0}", reader[0]));
                        i++;
                    }
                }
                else
                {
                    Console.WriteLine("No rows found.");
                }
                reader.Close();
            }
        }
        catch (Exception ex)
        {
            Utilities.LogError(ex);
        }
    }
    #endregion

    #region getpcnewslink()
    public void getpcnewslink()
    {
        int i = 0;

        try
        {
            SqlConnection connection = new SqlConnection(source);

            SqlCommand cmd = new SqlCommand("getTabletlink", connection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@cat", SqlDbType.VarChar).Value = "pcnews";
            using (connection)
            {
                connection.Open();

                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        pcnewslink[i] = (String.Format("{0}", reader[0]));
                        i++;
                    }
                }
                else
                {
                    Console.WriteLine("No rows found.");
                }
                reader.Close();
            }
        }
        catch (Exception ex)
        {
            Utilities.LogError(ex);
        }
    }
    #endregion
    #endregion
    #region Get videos top 8
    #region getvideosOrganizationName()
    public void getvideosOrganizationName()
    {
        int i = 0;

        try
        {
            SqlConnection connection = new SqlConnection(source);

            SqlCommand cmd = new SqlCommand("getTabletOrganizationName", connection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@cat", SqlDbType.VarChar).Value = "videos";
            using (connection)
            {
                //  SqlCommand command = new SqlCommand("select TimeDate from LattestNewsData where TimeDate in ( SELECT  TOP 8(TimeDate) from LattestNewsData ORDER BY TimeDate DESC);"
                //      , connection);
                connection.Open();

                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        videosOrganizationName[i] = (String.Format("{0}", reader[0]));
                        i++;
                    }
                }
                else
                {
                    Console.WriteLine("No rows found.");
                }
                reader.Close();
            }
        }
        catch (Exception ex)
        {
            Utilities.LogError(ex);
        }
    }
    #endregion

    #region getvideosOrganizationHeading()
    public void getvideosOrganizationHeading()
    {
        int i = 0;

        try
        {
            SqlConnection connection = new SqlConnection(source);

            SqlCommand cmd = new SqlCommand("getTabletOrganizationHeading", connection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@cat", SqlDbType.VarChar).Value = "videos";
            using (connection)
            {
                //  SqlCommand command = new SqlCommand("select TimeDate from LattestNewsData where TimeDate in ( SELECT  TOP 8(TimeDate) from LattestNewsData ORDER BY TimeDate DESC);"
                //      , connection);
                connection.Open();

                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        videosOrganizationHeading[i] = (String.Format("{0}", reader[0]));
                        i++;
                    }
                }
                else
                {
                    Console.WriteLine("No rows found.");
                }
                reader.Close();
            }
        }
        catch (Exception ex)
        {
            Utilities.LogError(ex);
        }
    }
    #endregion

    #region getvideosOrganizationDescription()
    public void getvideosOrganizationDescription()
    {
        int i = 0;

        try
        {
            SqlConnection connection = new SqlConnection(source);

            SqlCommand cmd = new SqlCommand("getTabletOrganizationDescription", connection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@cat", SqlDbType.VarChar).Value = "videos";
            using (connection)
            {
                //  SqlCommand command = new SqlCommand("select TimeDate from LattestNewsData where TimeDate in ( SELECT  TOP 8(TimeDate) from LattestNewsData ORDER BY TimeDate DESC);"
                //      , connection);
                connection.Open();

                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        videosOrganizationDescription[i] = (String.Format("{0}", reader[0]));
                        i++;
                    }
                }
                else
                {
                    Console.WriteLine("No rows found.");
                }
                reader.Close();
            }
        }
        catch (Exception ex)
        {
            Utilities.LogError(ex);
        }
    }
    #endregion

    #region getvideosAuthoreName()
    public void getvideosAuthoreName()
    {
        int i = 0;

        try
        {
            SqlConnection connection = new SqlConnection(source);

            SqlCommand cmd = new SqlCommand("getTabletAuthoreName", connection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@cat", SqlDbType.VarChar).Value = "videos";
            using (connection)
            {
                //  SqlCommand command = new SqlCommand("select TimeDate from LattestNewsData where TimeDate in ( SELECT  TOP 8(TimeDate) from LattestNewsData ORDER BY TimeDate DESC);"
                //      , connection);
                connection.Open();

                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        videosAuthoreName[i] = (String.Format("{0}", reader[0]));
                        i++;
                    }
                }
                else
                {
                    Console.WriteLine("No rows found.");
                }
                reader.Close();
            }
        }
        catch (Exception ex)
        {
            Utilities.LogError(ex);
        }
    }
    #endregion

    #region getvideosAuthoreImage()
    public void getvideosAuthoreImage()
    {
        int i = 0;

        try
        {
            SqlConnection connection = new SqlConnection(source);

            SqlCommand cmd = new SqlCommand("getTabletAuthoreImage", connection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@cat", SqlDbType.VarChar).Value = "videos";
            using (connection)
            {
                //  SqlCommand command = new SqlCommand("select TimeDate from LattestNewsData where TimeDate in ( SELECT  TOP 8(TimeDate) from LattestNewsData ORDER BY TimeDate DESC);"
                //      , connection);
                connection.Open();

                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        videosAuthoreImage[i] = (String.Format("{0}", reader[0]));
                        i++;
                    }
                }
                else
                {
                    Console.WriteLine("No rows found.");
                }
                reader.Close();
            }
        }
        catch (Exception ex)
        {
            Utilities.LogError(ex);
        }
    }
    #endregion

    #region getvideosMainImage()
    public void getvideosMainImage()
    {
        int i = 0;

        try
        {
            SqlConnection connection = new SqlConnection(source);

            SqlCommand cmd = new SqlCommand("getTabletMainImage", connection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@cat", SqlDbType.VarChar).Value = "videos";
            using (connection)
            {
                //  SqlCommand command = new SqlCommand("select TimeDate from LattestNewsData where TimeDate in ( SELECT  TOP 8(TimeDate) from LattestNewsData ORDER BY TimeDate DESC);"
                //      , connection);
                connection.Open();

                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        videosMainImage[i] = (String.Format("{0}", reader[0]));
                        i++;
                    }
                }
                else
                {
                    Console.WriteLine("No rows found.");
                }
                reader.Close();
            }
        }
        catch (Exception ex)
        {
            Utilities.LogError(ex);
        }
    }
    #endregion

    #region getvideosTimeDate()
    public void getvideosTimeDate()
    {
        int i = 0;

        try
        {
            SqlConnection connection = new SqlConnection(source);

            SqlCommand cmd = new SqlCommand("getTabletTimeDate", connection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@cat", SqlDbType.VarChar).Value = "videos";
            using (connection)
            {
                connection.Open();

                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        videostimedate[i] = (String.Format("{0}", reader[0]));
                        i++;
                    }
                }
                else
                {
                    Console.WriteLine("No rows found.");
                }
                reader.Close();
            }
        }
        catch (Exception ex)
        {
            Utilities.LogError(ex);
        }
    }
    #endregion

    #region getvideoslink()
    public void getvideoslink()
    {
        int i = 0;

        try
        {
            SqlConnection connection = new SqlConnection(source);

            SqlCommand cmd = new SqlCommand("getTabletlink", connection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@cat", SqlDbType.VarChar).Value = "videos";
            using (connection)
            {
                connection.Open();

                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        videoslink[i] = (String.Format("{0}", reader[0]));
                        i++;
                    }
                }
                else
                {
                    Console.WriteLine("No rows found.");
                }
                reader.Close();
                connection.Close();
            }
        }
        catch (Exception ex)
        {
            Utilities.LogError(ex);
        }
    }
    #endregion
    #endregion
} 