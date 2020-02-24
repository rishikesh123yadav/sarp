using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class cl1 : System.Web.UI.Page
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
        if (IsPostBack)
        {
            try
            {
                conn.Open();
                string checkuser = "select count (*) from cl where sid = '" + sid.Text + "'";
                SqlCommand com = new SqlCommand(checkuser, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    Response.Write("<script>alert('ID Already present.')</script>");

                }
                conn.Close();
            }
            catch (Exception ex)
            {
                Label1.Text = ".";
            }
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            conn.Open();
            string insertQuery = "insert into cl (sid) values(@sid)";
            SqlCommand com = new SqlCommand(insertQuery, conn);
            com.Parameters.AddWithValue("@sid", sid.Text);
            com.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert('ID Added Successfully .')</script>");

        }
        catch (Exception ex)
        {
            Label1.Text = "";
        }

    }
    protected void logout_Click1(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Session.RemoveAll();
        Response.Redirect("Login.aspx");
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }
}