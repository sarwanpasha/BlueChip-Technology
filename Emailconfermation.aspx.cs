using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Threading;
using System.Threading.Tasks;

public partial class Emailconfermation : System.Web.UI.Page
{
    string source = ConfigurationManager.ConnectionStrings["BlueChipConnectionString"].ToString();
   // bool confermation = false;
    string RequestUserID, RequestUserPassword;
     
    protected void Page_Load(object sender, EventArgs e)
    {
        lbinvissible.ForeColor = System.Drawing.Color.Red;
        lbinvissible.Text="Testing that delay is working or not!!!!!!!!!!!!!!!!!!!!!!!!";
        lbinvissible.Visible = false;
        invisible();
        if (!Page.IsPostBack)
        {
            ActivateMyAccount();
            
        }
    }
    public void invisible()
    {
      Task.Delay(500000);
       lbinvissible.Visible = true;
      //  Task.Delay(100000000);
       // Thread.Sleep(30000);
       // lbinvissible.Visible = false;


    }

    private void ActivateMyAccount()
    {
           
            RequestUserID = Request.QueryString["UserID"];
            RequestUserPassword = Request.QueryString["Password"];
            lbtest.Text = "Welcome    Email id = " + RequestUserID + "  Password = " + RequestUserPassword;
        try
        {
            SqlConnection myConnection = new SqlConnection(source);
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            // cmd.CommandText = ("insert into website1 values('" + id + "','" + userName + "','" + lastName + "','" + email + "','" + city + "','" + password + "','" + repeatpassword + "','" + status + "');");
            // cmd = new SqlCommand("UPDATE website1 SET status=true WHERE EmailAdress="+ @UserID +"AND Password=@EmailId", con);
           // cmd.CommandText = ("UPDATE website1 SET status='true' WHERE EmailAdress=" + "'" + RequestUserID + "'and Password='" + RequestPassword + "'");
            cmd.CommandText = ("UPDATE website1 SET status='true' WHERE EmailAdress=" + "'" + RequestUserID + "'" + "and Password=" + "'" + RequestUserPassword + "'");
            cmd.Connection = myConnection;
            myConnection.Open();
            cmd.ExecuteNonQuery();
            myConnection.Close();
        }
        catch(Exception confermation){
          //  lbconfermation.Text = "Confermation exception!!   "+confermation.Message;  //To be sended to admin
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Server.Transfer("Main Page.aspx", true);
    }
}