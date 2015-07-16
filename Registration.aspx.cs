using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; 
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Security;
using System.Net.Mail;
using System.Security.Policy;
using System.Configuration;
using System.Net; 

public partial class Registration : System.Web.UI.Page
{
    String userName;
    String lastName;
    String password;
    String repeatpassword;
    String email;
    String city;
    bool status = false;
    bool q = true;   
    string display = "Pop-up!";
   // string source = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\USERS\PASHA\DOCUMENTS\WEBSITE.MDF;Integrated Security=True";
    string source = ConfigurationManager.ConnectionStrings["BlueChipConnectionString"].ToString();

 
    protected void Page_Load(object sender, EventArgs e)
    {
        Lb5.Font.Size = FontUnit.XLarge;
        Lb6.Font.Size = FontUnit.XLarge;
        Lb7.Font.Size = FontUnit.XLarge;

        secondstrip.Visible = false;

    }

    private void SendActivationEmail(int userId)
    {
       string ActivationUrl;
       string emailId;
       string passwordd;
      emailId = txtEmail.Text.Trim();
      passwordd = txtPassword.Text.Trim();
     // ActivationUrl = Server.HtmlEncode("http://localhost:1485/Emailconfermation.aspx?UserID=" + emailId + "/Password=" + passwordd);
      ActivationUrl = Server.HtmlEncode("http://localhost:1485/Emailconfermation.aspx?UserID=" + emailId);
        try
        {
            //  string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            string activationCode = Guid.NewGuid().ToString();
            using (SqlConnection con = new SqlConnection(source))
            {

                System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = ("UPDATE website1 SET status='false' WHERE EmailAdress=" + "'" + txtEmail.Text + "'and Password='" + txtPassword.Text + "'");
                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
 
            }
            using (MailMessage mm = new MailMessage("sarwanpasha@gmail.com", txtEmail.Text))
            {
                mm.Subject = "Account Activation";
              string body = "Hello " + txtEmail.Text.Trim() + ",";
              body += "<br /><br />Please <a href='" + ActivationUrl + "'>click here to activate</a>  your account and enjoy our services. \nThanks!";
               mm.Body = body;
                mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                NetworkCredential NetworkCred = new NetworkCredential("sarwanpasha@gmail.com", "incorrect123@");
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = NetworkCred;
                smtp.Port = 587;
                smtp.Send(mm);
             }
        }
        catch(Exception q){
            lbemail.Text = "Wrong!! "+q.Message;
         }

    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {

    }
    private string FetchUserId(string emailId)
    {

        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection(source);
        cmd = new SqlCommand("SELECT status FROM website1 WHERE EmailAdress=" + "'" + txtEmail.Text + "'", con);
        cmd.Parameters.AddWithValue(txtEmail.Text, emailId);
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        string UserID = Convert.ToString(cmd.ExecuteNonQuery());
        con.Close();
        cmd.Dispose();
        return UserID;
    }
    #region Check Email ID Exist or not
    public bool check()
    {
        String wq = "true";
        SqlConnection myConnection = new SqlConnection(source);
        myConnection.Open();
        SqlCommand st = new SqlCommand("select EmailAdress from website1 where EmailAdress='" + txtEmail.Text + "'", myConnection);
        SqlDataAdapter aad = new SqlDataAdapter(st);
        DataTable td = new DataTable();
        aad.Fill(td);
        if (td.Rows.Count > 0)
        {
            return false;

        }
        else
        {
            myConnection.Close();
            return true;
        }
    }
    #endregion
    protected void btnre_Click(object sender, ImageClickEventArgs e)
    {
       // Label1.Text = "Please wait...";
        int id = 1;
        userName = txtName.Text;
        lastName = txtLastName.Text;
        email = txtEmail.Text;
        city = txtCity.Text;
        password = txtPassword.Text;
        repeatpassword = txtRepeatPassword.Text;
        bool emailcheck = false;
        emailcheck = check();
        if (userName == String.Empty || lastName == String.Empty || password == String.Empty || repeatpassword == String.Empty || email == String.Empty || city == String.Empty)
        {
            Label1.ForeColor = System.Drawing.Color.Red;
            Label1.Text = "Please Fill All Fields";

            secondstrip.Visible = true;
        }


       else if (emailcheck==false)
        {

                Label1.ForeColor = System.Drawing.Color.Red;////COLOUR
                Label1.Text = "Sorry, Account with this email is already been created";
        }

        else
        {
            if (password != repeatpassword)
            {
                Label1.ForeColor = System.Drawing.Color.Red;////COLOUR
                Label1.Text = "Password Doesnot Match!";
            }

            else
            {
                SqlConnection myConnection = new SqlConnection(source);
                try
                {
                    System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
                    cmd.CommandType = System.Data.CommandType.Text;
                    cmd.CommandText = ("insert into website1 values('" + id + "','" + userName + "','" + lastName + "','" + email + "','" + city + "','" + password + "','" + repeatpassword + "','" + status + "');");
                    cmd.Connection = myConnection;
                    myConnection.Open();
                    cmd.ExecuteNonQuery();
                    myConnection.Close();
                    SendActivationEmail(1);
                 //   confermation();

                }
                catch (SqlException ex)
                {
                    Label1.ForeColor = System.Drawing.Color.Red;
                    Label1.Text = "You failed! " + ex.Message;
                }
                if(lbemail.Text=="Wrong!! The specified string is not in the form required for an e-mail address."){

                }
                else{
                    Label1.ForeColor = System.Drawing.Color.Green;////COLOUR
                    Label1.Text = "Records are Submitted Successfully!" + " \n  Confermation Email has been sended to you!";
                }
            }
        }
    }
}