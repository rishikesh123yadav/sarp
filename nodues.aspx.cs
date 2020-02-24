using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class nodues : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] != null)
        {
            conn.Open();
            string qq = "select name from manager where sid= '" + Session["New"] + "'";
            SqlCommand com1 = new SqlCommand(qq, conn);
            String temp = (com1.ExecuteScalar().ToString());
            conn.Close();

            Label.Text = "Welcome.. " + temp;
        }
        else
        {
            Response.Redirect("login.aspx");
        }
            conn.Open();
            string checkuser = "select flag from NoDues ";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp1 = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (temp1 == 1)
            {

                String sid = "((select sid from manager) EXCEPT ((select sid from co) UNION (select sid from cl) UNION (select sid from dl)))";
                //String sid = "select sid from register";
                SqlCommand cmd = new SqlCommand(sid, conn);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    String csid = dr[0].ToString();
                    Response.Write(Session[sid]);
                    if (csid.Trim().Equals(Session["New"]))
                    {
                        NoDuesB.Enabled = true;
                    }
                }
                conn.Close();
            }
            else
                NoDuesB.Enabled = false;
        }
    

    protected void NoDuesB_Click(object sender, EventArgs e)
    {
        try
        {
            conn.Open();
            string insertQuery = "insert into NoDues1 (sid) values(@sid)";
            SqlCommand com = new SqlCommand(insertQuery, conn);
            com.Parameters.AddWithValue("@sid",Session["New"]);
            com.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert('Your NoDues Form for ID Number " + Session["New"] + " is submitted successful.')</script>");

        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Your NoDues Form for ID Number " + Session["New"] + " is Already submitted')</script>");
        }
    }
    public void enableNoDues()
    {
        NoDuesB.Enabled = true;
    }

    protected void logout_Click1(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Session.RemoveAll();
        Response.Redirect("Login.aspx");
    }
}