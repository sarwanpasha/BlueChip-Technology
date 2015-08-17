using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;
using System.IO;

public partial class AdminViewNewFormData : System.Web.UI.Page
{
   public static String currentTime;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            currentTime = System.DateTime.Now.ToString();
            FillGridView();
        }
    }
    public void FillGridView()
    {
        try
        {
            string cnString = ConfigurationManager.ConnectionStrings["BlueChipConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(cnString);
            GlobalClass.adap = new SqlDataAdapter("select * from LattestNewsData", con);
            SqlCommandBuilder bui = new SqlCommandBuilder(GlobalClass.adap);
            GlobalClass.dt = new DataTable();
            GlobalClass.adap.Fill(GlobalClass.dt);
            GridView1.DataSource = GlobalClass.dt;
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
              Response.Write("<script> alert('Connection String Error...') </script>");
            
        }
    }
    protected void editRecord(object sender, GridViewEditEventArgs e)
    {
        try
        {
            // Get the image path for remove old image after update record
            Image imgEditPhoto = GridView1.Rows[e.NewEditIndex].FindControl("imgPhoto") as Image;
            GlobalClass.imgEditPath = imgEditPhoto.ImageUrl;

            Image imgEditPhoto1 = GridView1.Rows[e.NewEditIndex].FindControl("imgPhoto1") as Image;
            GlobalClass.imgEditPath1 = imgEditPhoto1.ImageUrl;
            // Get the current row index for edit record
            GridView1.EditIndex = e.NewEditIndex;
            FillGridView();
 
        }
        catch
        {
            Response.Write("<script> alert('Error...') </script>");
        }
    }
    protected void cancelRecord(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        FillGridView();
    }
    protected void AddNewRecord(object sender, EventArgs e)
    {
        try
        {
            if (GlobalClass.dt.Rows.Count > 0)
            {
                GridView1.EditIndex = -1;
                GridView1.ShowFooter = true;
                FillGridView();
            }
            else
            {
                GridView1.ShowFooter = true;
                DataRow dr = GlobalClass.dt.NewRow();
                dr["OrganizationName"] = "0";
                dr["OrganizationHeading"] = "0";
                dr["OrganizationDescription"] = "0";
                dr["AuthoreName"] = "0";
                dr["AuthoreImage"] = "0";
                dr["MainImage"] = "0";
                dr["TimeDate"] = "0";
                dr["link"] = "0";
                dr["Catagory"] = "0";
             
                GlobalClass.dt.Rows.Add(dr);
                GridView1.DataSource = GlobalClass.dt;
                GridView1.DataBind();
                GridView1.Rows[0].Visible = false;
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script> alert('Row not added in DataTable...') </script>");
         
        }
    }
    protected void AddNewCancel(object sender, EventArgs e)
    {
        GridView1.ShowFooter = false;
        FillGridView();
    }
    protected void InsertNewRecord(object sender, EventArgs e)
    {
        try
        {
            string strName = GlobalClass.dt.Rows[0]["OrganizationName"].ToString();
            if (strName == "0")
            {
                GlobalClass.dt.Rows[0].Delete();
                GlobalClass.adap.Update(GlobalClass.dt);
            }
            TextBox txtName = GridView1.FooterRow.FindControl("OrganizationnewName") as TextBox;
            TextBox txtAge = GridView1.FooterRow.FindControl("OrganizationnewHeading") as TextBox;
            TextBox txtSalary = GridView1.FooterRow.FindControl("OrganizationnewDescription") as TextBox;
            TextBox txtCountry = GridView1.FooterRow.FindControl("AuthorenewName") as TextBox;
            TextBox txtCatagory = GridView1.FooterRow.FindControl("newCatagory") as TextBox;
            FileUpload fuPhoto = GridView1.FooterRow.FindControl("fuNewPhoto") as FileUpload;
            FileUpload fuPhotoo = GridView1.FooterRow.FindControl("fuNewPhotoo") as FileUpload;
            TextBox txtlink = GridView1.FooterRow.FindControl("newLink") as TextBox; 
          //  TextBox txtTimeDate = GridView1.FooterRow.FindControl("txtNewTimeDate") as TextBox; 
            Guid FileName = Guid.NewGuid();
            Guid FileNamee = Guid.NewGuid();
            fuPhoto.SaveAs(Server.MapPath("images/" + FileName + ".jpg"));
            fuPhotoo.SaveAs(Server.MapPath("images/" + FileNamee + ".jpg"));
            DataRow dr = GlobalClass.dt.NewRow(); 
            dr["OrganizationName"] = txtName.Text.Trim();
            dr["OrganizationHeading"] = txtAge.Text.Trim();
            dr["OrganizationDescription"] = txtSalary.Text.Trim();
            dr["AuthoreName"] = txtCountry.Text.Trim();
            dr["AuthoreImage"] = "images/" + FileName + ".jpg";
            dr["MainImage"] = "images/" + FileNamee + ".jpg";
            dr["TimeDate"] = currentTime;
            dr["lblLink"] = txtlink.Text.Trim();
            dr["Catagory"] = txtCatagory.Text.Trim();
            GlobalClass.dt.Rows.Add(dr);
            GlobalClass.adap.Update(GlobalClass.dt);
            GridView1.ShowFooter = false;
            FillGridView();
        }
        catch (Exception ex)
        {
            Response.Write("<script> alert('Record not added...') </script>");
            Utilities.LogError(ex);
        }

    }
    protected void updateRecord(object sender, GridViewUpdateEventArgs e)
    {
        try
        {
            TextBox txtName = GridView1.Rows[e.RowIndex].FindControl("OrganizationName") as TextBox;
            TextBox txtAge = GridView1.Rows[e.RowIndex].FindControl("OrganizationHeading") as TextBox;
            TextBox txtSalary = GridView1.Rows[e.RowIndex].FindControl("OrganizationDescription") as TextBox;
            TextBox txtCountry = GridView1.Rows[e.RowIndex].FindControl("AuthoreName") as TextBox;
            TextBox txtlink = GridView1.Rows[e.RowIndex].FindControl("link") as TextBox;
            TextBox Catagory = GridView1.Rows[e.RowIndex].FindControl("Catagory") as TextBox;
          //  TextBox txtCity = GridView1.Rows[e.RowIndex].FindControl("TimeDate") as TextBox;
            FileUpload fuPhoto = GridView1.Rows[e.RowIndex].FindControl("fuPhoto") as FileUpload;
            FileUpload fuPhotoo = GridView1.Rows[e.RowIndex].FindControl("fuPhotoo") as FileUpload;
            Guid FileName = Guid.NewGuid();
            if (fuPhoto.FileName != "")
            {
                fuPhoto.SaveAs(Server.MapPath("images/" + FileName + ".jpg"));
                GlobalClass.dt.Rows[GridView1.Rows[e.RowIndex].RowIndex]["AuthoreImage"] = "images/" + FileName+".jpg";
                File.Delete(Server.MapPath(GlobalClass.imgEditPath));
            }
            if (fuPhotoo.FileName != "")
            {
                fuPhotoo.SaveAs(Server.MapPath("images/" + FileName + ".jpg"));
                GlobalClass.dt.Rows[GridView1.Rows[e.RowIndex].RowIndex]["MainImage"] = "images/" + FileName + ".jpg";
                File.Delete(Server.MapPath(GlobalClass.imgEditPath1));
            }
            GlobalClass.dt.Rows[GridView1.Rows[e.RowIndex].RowIndex]["OrganizationName"] = txtName.Text.Trim();
            GlobalClass.dt.Rows[GridView1.Rows[e.RowIndex].RowIndex]["OrganizationHeading"] = txtAge.Text.Trim();
            GlobalClass.dt.Rows[GridView1.Rows[e.RowIndex].RowIndex]["OrganizationDescription"] = txtSalary.Text.Trim();
            GlobalClass.dt.Rows[GridView1.Rows[e.RowIndex].RowIndex]["AuthoreName"] = txtCountry.Text.Trim();
            GlobalClass.dt.Rows[GridView1.Rows[e.RowIndex].RowIndex]["TimeDate"] = currentTime;
            GlobalClass.dt.Rows[GridView1.Rows[e.RowIndex].RowIndex]["link"] = txtlink.Text.Trim();
            GlobalClass.dt.Rows[GridView1.Rows[e.RowIndex].RowIndex]["Catagory"] = Catagory.Text.Trim();
            GlobalClass.adap.Update(GlobalClass.dt);
            GridView1.EditIndex = -1;
            FillGridView();
        }
        catch (Exception ex)
        {
            Response.Write("<script> alert('Record updation fail...') </script>");
         
        }
    }
    protected void RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            GlobalClass.dt.Rows[GridView1.Rows[e.RowIndex].RowIndex].Delete();
            GlobalClass.adap.Update(GlobalClass.dt);
            // Get the image path for removing deleted's record image from server folder
            Image imgPhoto = GridView1.Rows[e.RowIndex].FindControl("imgPhoto") as Image;
            File.Delete(Server.MapPath(imgPhoto.ImageUrl));

            Image imgPhoto1 = GridView1.Rows[e.RowIndex].FindControl("imgPhoto1") as Image;
            File.Delete(Server.MapPath(imgPhoto1.ImageUrl));
            FillGridView();
        }
        catch (Exception ex)
        {
            Response.Write("<script> alert('Record not deleted...') </script>");
            Utilities.LogError(ex);
        }
    }

} 