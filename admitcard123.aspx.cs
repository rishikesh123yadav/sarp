using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class admitcard123 : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] == null)
        {
            Response.Redirect("login.aspx");
        }
        conn.Open();
        string checkuser = "select count(*) from NoDues1 where sid ='" + Session["New"] + "'";
        SqlCommand com = new SqlCommand(checkuser, conn);
        int temp1 = Convert.ToInt32(com.ExecuteScalar().ToString());
        conn.Close();
        if (temp1 == 1)
        {
            Response.Redirect("admitcard.aspx");
        }
        else
        {
            Response.Redirect("ad.aspx");
        }
     

       
          
    }
}