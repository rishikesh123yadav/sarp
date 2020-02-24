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
public partial class idcard : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] != null)
        {
            conn.Open();
            string qq = "select name from manager where sid= '" + Session["New"] + "'";
            SqlCommand com1 = new SqlCommand(qq, conn);
            String temp1 = (com1.ExecuteScalar().ToString());
            conn.Close();

            Label.Text = "Welcome.. " + temp1;
        }
        else
        {
            Response.Redirect("login.aspx");
        }

        DataTable dt = new DataTable();
        conn.Open();
        SqlDataReader myReader = null;
        SqlCommand mycommand = new SqlCommand("select name,sid,fname,course,branch,semester,dob,address,phone,email,image from manager where sid='" + Session["New"] + "'", conn);
        myReader = mycommand.ExecuteReader();
        while (myReader.Read())
        {
            un.Text = (myReader["name"].ToString());
            sid.Text = (myReader["sid"].ToString());
            fname.Text = (myReader["fname"].ToString());
            course.SelectedItem.Text = (myReader["course"].ToString());
            branch.SelectedItem.Text = (myReader["branch"].ToString());
            semester.SelectedItem.Text = (myReader["semester"].ToString());
            dob.Text = (myReader["dob"].ToString());
            address.Text = (myReader["address"].ToString());
            phone.Text = (myReader["phone"].ToString());
            email.Text = (myReader["email"].ToString());
            Image1.ImageUrl = (myReader["image"].ToString());
        }
        conn.Close();

    }
    protected void logout_Click1(object sender, EventArgs e)
    {

        Session.Abandon();
        Session.Clear();
        Session.RemoveAll();
        Response.Redirect("Login.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            conn.Open();
            string insertQuery = "insert into idcard (name,sid,fname,course,branch,semester,dob,address,phone,Email,image) values(@un,@sid,@fname,@course,@branch,@semester,@dob,@address,@phone,@email,@image)";
            SqlCommand com = new SqlCommand(insertQuery, conn);
            FileUpload1.SaveAs(Server.MapPath("~/register/") + Path.GetFileName(FileUpload1.FileName));
            String link = "register/" + Path.GetFileName(FileUpload1.FileName);
            com.Parameters.AddWithValue("@un", un.Text);
            com.Parameters.AddWithValue("@sid", sid.Text);
            com.Parameters.AddWithValue("@fname", fname.Text);
            com.Parameters.AddWithValue("@branch", branch.SelectedItem.ToString());
            com.Parameters.AddWithValue("@course", course.SelectedItem.ToString());
            com.Parameters.AddWithValue("@semester", semester.SelectedItem.ToString());
            com.Parameters.AddWithValue("@dob", dob.Text);
            com.Parameters.AddWithValue("@address", address.Text);
            com.Parameters.AddWithValue("@phone", phone.Text);
            com.Parameters.AddWithValue("@email", email.Text);
            com.Parameters.AddWithValue("@image", link);
            com.ExecuteNonQuery();
            Response.Write("<script>alert('Your Request with ID Number "+Session["New"]+" Accepted.')</script>");
        }
        catch (Exception ex)
            {
                Response.Write("<script>alert('Choose a New Photo.')</script>");
            }
  
            String num = "123456789";
            int len = num.Length;
            string otp = string.Empty;
            int otpdigit = 5;
            string finaldigit;
            int getindex;
            for (int i = 0; i < otpdigit; i++)
            {
                do
                {
                    getindex = new Random().Next(0, len);
                    finaldigit = num.ToCharArray()[getindex].ToString();
                }
                while (otp.IndexOf(finaldigit) != -1);
                otp += finaldigit;
            }

            try
            {
                string insertQuery1 = "insert into otp(sid,otp) values(@sid,@otp)";
                SqlCommand com2 = new SqlCommand(insertQuery1, conn);
                com2.Parameters.AddWithValue("@sid", Session["New"]);
                com2.Parameters.AddWithValue("@otp", otp);
                com2.ExecuteNonQuery();
                conn.Close();
            }
            catch {
                Response.Write("<script>alert('Your Request with ID Number " + Session["New"] + " Already Present.')</script>");
            }
        }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
      
        {
            conn.Open();
            string insertQuery2 = "select otp from otp where sid= '" + Session["New"] + "' ";
            SqlCommand com3 = new SqlCommand(insertQuery2, conn);
            String temp1 = (com3.ExecuteScalar().ToString());
            Response.Write("<script>alert('Your OTP For ID Number " + Session["New"] + " is : "+temp1+"')</script>");
            conn.Close();
        }
    }
}
