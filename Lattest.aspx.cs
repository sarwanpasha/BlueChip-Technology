using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class Lattest : System.Web.UI.Page
{
    string source = ConfigurationManager.ConnectionStrings["BlueChipConnectionString"].ToString();
    public static string[] lattestOrganizationName = new string[8];
    public static string[] lattestOrganizationHeading = new string[8];
    public static string[] lattestOrganizationDescription = new string[8];
    public static string[] lattestAuthoreName = new string[8];
    public static string[] lattestAuthoreImage = new string[8];
    public static string[] lattestMainImage = new string[8];
    public static string[] lattestlink = new string[8];
    public static string[] lattesttimedate = new string[8];

    #region page load
    protected void Page_Load(object sender, EventArgs e) 
    {
        if (!IsPostBack)
        {
            generateNews();
            getLattestOrganizationName();
            getLattestOrganizationHeading();
            getLattestOrganizationDescription();
            getLattestAuthoreName();
            getLattestAuthoreImage();
            getLattestMainImage();
            getLattestlink();
            getLattestTimeDate();

            initializeslideshowpics();
            initializingLinks();
        }
    }
    #endregion
    #region initialize pics
    public void initializeslideshowpics(){

        string imgName1 = lattestMainImage[0];
        string imgPath1 = imgName1;
        image1.ImageUrl = imgPath1;

        string imgName2 = lattestMainImage[1];
        string imgPath2 = imgName2;
        image2.ImageUrl = imgPath2;

        string imgName3 = lattestMainImage[2];
        string imgPath3 = imgName3;
        image3.ImageUrl = imgPath3;

        string imgName4 = lattestMainImage[3];
        string imgPath4 = imgName4;
        image4.ImageUrl = imgPath4;

        string imgName5 = lattestMainImage[4];
        string imgPath5 = imgName5;
        image5.ImageUrl = imgPath5;
    }
    #endregion
    #region initialize Links
    public void initializingLinks()
    {
        alt1.InnerHtml = lattestOrganizationHeading[0];
        alt2.InnerHtml = lattestOrganizationHeading[1];
        alt3.InnerHtml = lattestOrganizationHeading[2];
        alt4.InnerHtml = lattestOrganizationHeading[3];
        alt5.InnerHtml = lattestOrganizationHeading[4];

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
            cmd.Parameters.Add("@count", SqlDbType.VarChar).Value = 8;
            using (connection)
            {
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
            cmd.Parameters.Add("@count", SqlDbType.VarChar).Value = 8;
            using (connection)
            {
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
            cmd.Parameters.Add("@count", SqlDbType.VarChar).Value = 8;
            using (connection)
            {
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
            cmd.Parameters.Add("@count", SqlDbType.VarChar).Value = 8;
            using (connection)
            {
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
            cmd.Parameters.Add("@count", SqlDbType.VarChar).Value = 8;
            using (connection)
            {
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
            cmd.Parameters.Add("@count", SqlDbType.VarChar).Value = 8;
            using (connection)
            {
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
            cmd.Parameters.Add("@count", SqlDbType.VarChar).Value = 8;
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
            cmd.Parameters.Add("@count", SqlDbType.VarChar).Value = 8;
            using (connection)
            {
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
    public void generateNews() 
    {
        System.Web.UI.HtmlControls.HtmlGenericControl div = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
        System.Web.UI.HtmlControls.HtmlGenericControl div1 = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
        System.Web.UI.HtmlControls.HtmlGenericControl a = new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
        div.TagName = "div";
       // a.InnerHtml = "PAsha";
        a.TagName = "a";
        a.Attributes["class"] = "hero";
        div.Controls.Add(a);
        div.Attributes["class"] = "pl pl-floathero";
        div.Attributes["id"] = "someid";
        HtmlImage img = new HtmlImage();
        img.Attributes["id"] = "image1";
        img.Attributes["class"] = "lazy";
        img.Attributes["src"] = "images/7.jpg";
        a.Controls.Add(img);
        div1.TagName = "div";
        div1.Attributes["class"] = "block";
        div1.Attributes["id"] = "someid1";
        div.Controls.Add(div1);
        this.Controls.Add(div); 
    }
    protected void btnsubscribe_Click(object sender, EventArgs e)
    {

    }


}