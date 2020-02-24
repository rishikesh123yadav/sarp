using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class ad : System.Web.UI.Page
{
     SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
     protected void Page_Load(object sender, EventArgs e)
     {
         if (Session["New"] == null)
         {
             Response.Redirect("login.aspx");
         }
         else if (Session["New"] != null)
         {
             conn.Open();

             string rr = Session["New"].ToString();
             string qq = "select name from manager where sid= '" + rr + "'";
             SqlCommand com1 = new SqlCommand(qq, conn);
             String temp = (com1.ExecuteScalar().ToString());
             conn.Close();
             Label.Text += temp;

         }
     }
    protected void logout_Click1(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Session.RemoveAll();
        Response.Redirect("Login.aspx");
    }
}