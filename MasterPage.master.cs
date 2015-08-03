using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    String textField = "";
    String toAddress, fromPassword;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Li1.Visible = false;
        }

        name();
        hidingLog();

    }
    public void hidingLog()
    {
        if (Loog.Visible == false)
        {
            Li1.Visible = true; //////////// Logout is visible now
            lbname.Text = textField;
        }
        else if (Li1.Visible == false)
        {
            Loog.Visible = true;  //////////// Login is visible now
        }
    }
    public void name()
    {
       // getter_setter_for_variables a = new getter_setter_for_variables();
        // lbname.Text = textField ;
        try
        {
            lbname.ForeColor = System.Drawing.Color.Green;////COLOUR
            // lbname.Text = Session["name"].ToString();
            // Session.Remove("name");
            lbname.Text = getter_setter_for_variables.getLabel();
            textField = getter_setter_for_variables.getLabel();
            if (!(lbname.Text == ""))
            {
                Loog.Visible = false;
                Li1.Visible = true;
            }
            else
            {
                Loog.Visible = true;
                Li1.Visible = false;
            }
            if (lbname.Text == "sarwanpasha@gmail.com")
            {
                getter_setter_for_variables.setunhide(true);
            }
        }
        catch (Exception ex)
        {
            //lbname.Text = "";
            Utilities.LogError(ex);
            throw;
        }
    }
    protected void btnsubscribe_Click(object sender, EventArgs e)
    {

    }

}
