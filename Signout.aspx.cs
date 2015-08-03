using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Signout : System.Web.UI.Page
{
    string source = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\USERS\PASHA\DOCUMENTS\WEBSITE.MDF;Integrated Security=True";
    bool status = true;
    string gettingemail;
    protected void Page_Load(object sender, EventArgs e)
    {
      //  loginstatusAsFalse();
       gettingemail= getemailID();
       loginstatusAsFalse();
       //lb1.Text = "Email ID = " + gettingemail;
       getter_setter_for_variables.setLabel("");
       getter_setter_for_variables.setunhide(false);
       Session.Abandon();
        Response.Redirect("Main Page.aspx");
    }
    private void loginstatusAsFalse()
    {
        SqlConnection myConnection = new SqlConnection(source);
        try
        {
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
            cmd.CommandType = System.Data.CommandType.Text;
         //   cmd.CommandText = ("insert into emailVerification values('" + userName + "','" + status + "');");
            //cmd.CommandText = ("update emailVerification set status=" + status + "where email=sarwanpasha@gmail.com;");
            cmd.CommandText = ("update emailVerification set status='false' where email='" + gettingemail + "';");
            cmd.Connection = myConnection;
            myConnection.Open();
            cmd.ExecuteNonQuery();
            myConnection.Close();
            //   confermation();
            lb1.Text = "Success!! ";

        }
        catch (SqlException ex)
        {
            lb1.Text = "Wrong!! " + ex.Message;
        }
    }
    public string getemailID() 
    {
        string requiredNumber="";
        try
        {
         //   myname = "sarwan";
            SqlConnection myConnection = new SqlConnection(source);
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = ("select email from emailVerification where status=('" + status + "');");
            cmd.Connection = myConnection;
            myConnection.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                requiredNumber = reader[0].ToString();
            }
            myConnection.Close();
            return requiredNumber;
        }
        catch (Exception ex)
        {
            lb1.Text = ex.Message;
            return "Wrong!!!!!!!!!!!";
        }
    }
}