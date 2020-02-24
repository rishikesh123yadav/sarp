using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.IO;
public partial class student : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] != null)
        {
            conn.Open();
            string qq = "select UserName from login where sid= '" + Session["New"] + "'";
            SqlCommand com1 = new SqlCommand(qq, conn);
            String temp1 = (com1.ExecuteScalar().ToString());
            conn.Close();

            Label.Text = "Welcome.. " + temp1;
        }
        else
        {
            Response.Redirect("login.aspx");
        }

    }
   
    protected void logout_Click1(object sender, EventArgs e)
    {
        Response.Redirect("manager.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         try
        {
            conn.Open();
            string insertQuery = "insert into manager (name,sid,frn,fname,course,branch,semester,dob,address,phone,Email,image) values(@name,@sid,@frn,@fname,@course,@branch,@semester,@dob,@address,@phone,@email,@image)";
            SqlCommand com = new SqlCommand(insertQuery, conn);
            FileUpload1.SaveAs(Server.MapPath("~/pic/") + Path.GetFileName(FileUpload1.FileName));
            String link = "pic/" + Path.GetFileName(FileUpload1.FileName);
            com.Parameters.AddWithValue("@name", un.Text);
            com.Parameters.AddWithValue("@sid", sid.Text);
            com.Parameters.AddWithValue("@frn", frn.Text);
            com.Parameters.AddWithValue("@fname", fname.Text);
            com.Parameters.AddWithValue("@course", course.SelectedItem.ToString());
            com.Parameters.AddWithValue("@branch", branch.SelectedItem.ToString());
            com.Parameters.AddWithValue("@semester", semester.SelectedItem.ToString());
            com.Parameters.AddWithValue("@dob", dob.Text);
            com.Parameters.AddWithValue("@address", address.Text);
            com.Parameters.AddWithValue("@phone", phone.Text);
            com.Parameters.AddWithValue("@email", email.Text);
            com.Parameters.AddWithValue("@image", link);
            com.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert('Student  Added Successfully ')</script>");
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Student  already present.')</script>");
        }
    }
    }