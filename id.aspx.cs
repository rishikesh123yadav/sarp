using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class id : System.Web.UI.Page
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
        //End of cheching porson

    }


    protected void logout_Click1(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Session.RemoveAll();
        Response.Redirect("Login.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        conn.Open();
        string checkuser = "select count (*) from otp where sid = '" + sid.Text + "'";
        SqlCommand com = new SqlCommand(checkuser, conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        conn.Close();
        if (temp == 1)
        {
            conn.Open();
            string checkPasswordQuery = "select otp from otp where  sid = '" +sid.Text + "'";
            SqlCommand passComm = new SqlCommand(checkPasswordQuery, conn);
            string password = passComm.ExecuteScalar().ToString().Replace(" ", "");
            if (password == otp.Text)
            {
                Response.Write("<script>alert('OTP matched for given ID number.')</script>");
            }
            else
            {
                Response.Write("<script>alert('OTP not matched for given ID number.')</script>");
            }
        }
    }
}