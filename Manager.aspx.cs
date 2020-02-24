using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using Microsoft;
public partial class Manager : System.Web.UI.Page
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

   
        
    protected void Button1_Click(object sender, EventArgs e)
    {

        conn.Open();
        int un=1;
        string deleteQuery = "Delete from NoDues";
        SqlCommand com1 = new SqlCommand(deleteQuery, conn);
        com1.ExecuteNonQuery();
        string insertQuery = "insert into NoDues (flag) values(@un)";
        SqlCommand com = new SqlCommand(insertQuery, conn);
        com.Parameters.AddWithValue("@un", un);
        com.ExecuteNonQuery();
        conn.Close();
       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        conn.Open();
        int un = 0;
        string deleteQuery = "Delete from NoDues";
        SqlCommand com1 = new SqlCommand(deleteQuery, conn);
        com1.ExecuteNonQuery();
        string insertQuery = "insert into NoDues (flag) values(@un)";
        SqlCommand com = new SqlCommand(insertQuery, conn);
        com.Parameters.AddWithValue("@un", un);
        com.ExecuteNonQuery();
        conn.Close();

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("student.aspx");
    }
    protected void logout_Click1(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Session.RemoveAll();
        Response.Redirect("Login.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        try
        {

            conn.Open();
            string insertQuery1 = "delete from session";
            SqlCommand com1 = new SqlCommand(insertQuery1, conn);
            com1.ExecuteNonQuery();
            string insertQuery = "insert into session (session,year) values(@session,@year)";
            SqlCommand com = new SqlCommand(insertQuery, conn);
            com.Parameters.AddWithValue("@session", session.SelectedValue.ToString());
            com.Parameters.AddWithValue("@year", year.SelectedValue.ToString());
            com.ExecuteNonQuery();
            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error : " + ex.ToString());
        }
     /*   try
        {

            conn.Open();
            string insertQuery = "select session from session";
            SqlCommand com = new SqlCommand(insertQuery, conn);
            String temp1 = (com.ExecuteScalar().ToString());
            com.ExecuteNonQuery();
            Response.Write(temp1);
            conn.Close();
            if (temp1 == "jd")
            {
                conn.Open();
                string create1 = " create table registration(cust varchar(20),acc varchar(20))";
                string create2 = " create table nodues(cust varchar(20),acc varchar(20))";
                string create3 = "create table idcard(cust varchar(20),acc varchar(20))";
                com1 = new OdbcCommand(create1, conn);
                SqlCommand com2 = new SqlCommand(create2, conn);
                SqlCommand com3 = new SqlCommand(create3, conn);
                com.ExecuteNonQuery();
                conn.Close();
                Response.Write("done1");
            }

            else
            {
                conn.Open();
                string create1 = " create table resitration(cust varchar(20),acc varchar(20))";
                string create2 = " create table (cust varchar(20),acc varchar(20))";
                SqlCommand com1 = new SqlCommand(create1, conn);
                SqlCommand com2 = new SqlCommand(create2, conn);
                com.ExecuteNonQuery();
                conn.Close();
                Response.Write("done");
            }
        }
        catch (Exception ex)
        {

            Response.Write("done");
        }*/
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }
    
}