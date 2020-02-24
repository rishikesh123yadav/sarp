using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class id1 : System.Web.UI.Page
{
     SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        conn.Open();
        string checkuser = "select session from session ";
        SqlCommand com = new SqlCommand(checkuser, conn);
        int temp1 = Convert.ToInt32(com.ExecuteScalar().ToString());
        conn.Close();
        if (temp1 == 1)
        {
            Response.Redirect("idcard.aspx");
        }
        else
        {
            Response.Redirect("noidcard.aspx");
        }
     

       
          
    }
    }
