using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class login : System.Web.UI.Page
{

    String username, password,firstname;
    String NAME;
  //  string source = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\USERS\PASHA\DOCUMENTS\WEBSITE.MDF;Integrated Security=True";
    string source = ConfigurationManager.ConnectionStrings["BlueChipConnectionString"].ToString();
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
      //  myConnection.Open();
       // SqlCommand st = new SqlCommand("select EmailAdress,Password from website1 where EmailAdress='" + tbusername.Text + "'and status='" + wq + "'", myConnection);
       // SqlDataAdapter aad = new SqlDataAdapter(st);
       // DataTable td = new DataTable();
      //  aad.Fill(td);
        SqlCommand cmd = new SqlCommand("CheckEmailActivation", myConnection);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlParameter returnParameter = cmd.Parameters.Add("@return", SqlDbType.Int);
        returnParameter.Direction = ParameterDirection.ReturnValue;
        cmd.Parameters.Add("@EmailAdress", SqlDbType.VarChar).Value = tbusername.Text;
        myConnection.Open();
        cmd.ExecuteNonQuery();
        int id = (int)returnParameter.Value;
        myConnection.Close();
        if (id > 0)
        {
            return true;

        }
        else
        {
            //lbstatus.Text = "Please Activate Your account to login!";
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
         //   myConnection.Open();
         //   SqlCommand cmd = new SqlCommand("select EmailAdress,Password from website1 where EmailAdress='" + tbusername.Text + "'and Password='" + tbpassword.Text + "'", myConnection);
           // SqlDataAdapter da = new SqlDataAdapter(cmd);
          //  DataTable dt = new DataTable();
           // da.Fill(dt);
            SqlCommand cmd = new SqlCommand("LoginCheck", myConnection);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter returnParameter = cmd.Parameters.Add("@return", SqlDbType.Int);
            returnParameter.Direction = ParameterDirection.ReturnValue;
            cmd.Parameters.Add("@EmailAdress", SqlDbType.VarChar).Value = tbusername.Text;
            cmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = tbpassword.Text;
            myConnection.Open();
            cmd.ExecuteNonQuery();
            int id = (int)returnParameter.Value;
            myConnection.Close();
            if (id > 0)
            {
                NAME = tbusername.Text;
                lbstatus.Text = "Login sucess";

                bool databasecheck = check();
                if(databasecheck==true){
                //    lbstatus.Text = "Success";
                   // Session["name"] = tbusername.Text;
                    if (tbusername.Text == "sarwanpasha@gmail.com")
                    {
                        getter_setter_for_variables.setunhide(true);
                    }
                    getter_setter_for_variables.setLabel(NAME);
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

          //  myConnection.Close();
        }
        catch (SqlException ex)
        {
          //  lbstatus.Text = "You failed!" + ex.Message;
            Utilities.LogError(ex);
            throw;
        }

    }
    protected void tbpassword_TextChanged(object sender, EventArgs e)
    {

    }
}