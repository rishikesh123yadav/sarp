using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default3 : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            Label1.Visible = false;
            Label2.Visible = false;
            DropDownList1.Visible = false;
            DropDownList2.Visible = false;
            Calendar1.Visible = false;
            DataSet years = new DataSet();
            years.ReadXml(Server.MapPath("~/year.xml"));
            DropDownList1.DataTextField = "number";
            DropDownList1.DataValueField = "number";
            DropDownList1.DataSource = years;
            DropDownList1.DataBind();

            DataSet months = new DataSet();
            months.ReadXml(Server.MapPath("~/month.xml"));
            DropDownList2.DataTextField = "Name";
            DropDownList2.DataValueField = "number";
            DropDownList2.DataSource = months;
            DropDownList2.DataBind();
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (Calendar1.Visible)
        {
            Label1.Visible = false;
            Label2.Visible = false;
            DropDownList1.Visible = false;
            DropDownList2.Visible = false;
            Calendar1.Visible = false;

        }
        else
        {
            TextBox1.Visible = true;
            Label1.Visible = true;
            Label2.Visible = true;
            DropDownList1.Visible = true;
            DropDownList2.Visible = true;
            Calendar1.Visible = true;
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int year = Convert.ToInt16(DropDownList1.SelectedValue);
        int month = Convert.ToInt16(DropDownList2.SelectedValue);
        Calendar1.VisibleDate = new DateTime(year,month, 1);
        Calendar1.SelectedDate = new DateTime(year, month, 1);
          
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        int year = Convert.ToInt16(DropDownList1.SelectedValue);
        int month = Convert.ToInt16(DropDownList2.SelectedValue);
        Calendar1.VisibleDate = new DateTime(year, month, 1);
        Calendar1.SelectedDate = new DateTime(year, month, 1);
          
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox1.Text = Calendar1.SelectedDate.ToShortDateString();
        Label1.Visible = false;
        Label2.Visible = false;
        DropDownList1.Visible = false;
        DropDownList2.Visible = false;
        Calendar1.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into DOB values('" + TextBox1.Text + "')";
        cmd.ExecuteNonQuery();
        conn.Close();
    }
}