using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

      SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "select count (*) from manager where sid = '" + UserName.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            String username = UserName.Text;
            string tt = Password.Text;
            if (username == "cl123")
            {
                Session["New"] = UserName.Text;
                Response.Redirect("cl1.aspx");
            }
            else
                if (username == "cl123")
                {
                    Session["New"] = UserName.Text;
                    Response.Redirect("cl.aspx");
                }
                else
                    if (username == "dl123")
                    {
                        Session["New"] = UserName.Text;
                        Response.Redirect("dl.aspx");
                    }
                    else
                        if (username == "co123")
                        {
                            Session["New"] = UserName.Text;
                            Response.Redirect("co.aspx");
                        }
                        else
                            if (username == "id123")
                            {
                                Session["New"] = UserName.Text;
                                Response.Redirect("id.aspx");
                            }
                            else if (username == "man123")
                            {
                                Session["New"] = UserName.Text;
                                Response.Redirect("manager.aspx");
                            }
            conn.Close();
            if (temp == 1)
            {
                conn.Open();
                string checkPasswordQuery = "select frn from manager where  sid = '" + UserName.Text + "'";
                SqlCommand passComm = new SqlCommand(checkPasswordQuery, conn);
                string password = passComm.ExecuteScalar().ToString().Replace(" ", "");
                if (password == Password.Text)
                {
                    Session["New"] = UserName.Text;
                    Response.Redirect("Registration.aspx");
                   
                }
                else
                {
                    Response.Write("<script>alert('Wrong Username or password.')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Wrong Username or password.')</script>");
            }
}
}
