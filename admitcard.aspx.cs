using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class admitcard : System.Web.UI.Page
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
           
        SqlCommand mycommand = new SqlCommand("select * from register where sid='" + Session["New"] + "'", conn);
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = mycommand;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Panel1.Visible = true;
            // Label3.Text = "Data Found";
            Label2.Text = ds.Tables[0].Rows[0]["UserName"].ToString();
            Label3.Text = ds.Tables[0].Rows[0]["sid"].ToString();
            Label4.Text = ds.Tables[0].Rows[0]["course"].ToString();
            Label5.Text = ds.Tables[0].Rows[0]["branch"].ToString();
            Label6.Text = ds.Tables[0].Rows[0]["semester"].ToString();
            Label7.Text = ds.Tables[0].Rows[0]["dob"].ToString();
            Image1.ImageUrl = ds.Tables[0].Rows[0]["image"].ToString();
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
}