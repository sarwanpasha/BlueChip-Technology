using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class login : System.Web.UI.Page
{

    String username, password,firstname;
    String NAME;
    string source = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\USERS\PASHA\DOCUMENTS\WEBSITE.MDF;Integrated Security=True";
    protected void Page_Load(object sender, EventArgs e)
    {
        Lb6.Font.Size = FontUnit.XLarge;
        Lb5.Font.Size = FontUnit.XLarge;
        Lb7.Font.Size = FontUnit.XLarge;


    }
    protected void btnsignup_Click(object sender, EventArgs e)
    {
        Server.Transfer("Registration.aspx", true);
    }
    public bool check()
    {
        String wq = "true";
        SqlConnection myConnection = new SqlConnection(source);
        myConnection.Open();
        SqlCommand st = new SqlCommand("select EmailAdress,Password from website1 where EmailAdress='" + tbusername.Text + "'and status='" + wq + "'", myConnection);
        SqlDataAdapter aad = new SqlDataAdapter(st);
        DataTable td = new DataTable();
        aad.Fill(td);
        if (td.Rows.Count > 0)
        {
            return true;

        }
        else
        {
            //lbstatus.Text = "Please Activate Your account to login!";

            myConnection.Close();
            return false; 
        }
    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        username = tbusername.Text;
        password = tbpassword.Text;
        SqlConnection myConnection = new SqlConnection(source);
        try
        {
            myConnection.Open();
        //   String Fname = "select FirstName from website1 where EmailAddress='" + tbusername.Text + "'and Password='" + tbpassword.Text + "'";
            SqlCommand cmd = new SqlCommand("select EmailAdress,Password from website1 where EmailAdress='" + tbusername.Text + "'and Password='" + tbpassword.Text + "'", myConnection);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            
            if (dt.Rows.Count > 0)
            {
                NAME = tbusername.Text;
                lbstatus.Text = "Login sucess";

                bool databasecheck = check();
                if(databasecheck==true){
                    Session["name"] = tbusername.Text;
                    Server.Transfer("Main Page.aspx", true);
                }
                else{
                    lbstatus.ForeColor = System.Drawing.Color.Red;////COLOUR
                    lbstatus.Text = "Please Activate Your account to login!";
                }

            }
            else
            {
                lbstatus.Text = "Invalid Login please check username and password";
            }

            myConnection.Close();
        }
        catch (SqlException ex)
        {
            lbstatus.Text = "You failed!" + ex.Message;
        }

    }
    protected void tbpassword_TextChanged(object sender, EventArgs e)
    {

    }
}