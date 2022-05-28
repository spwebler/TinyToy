using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;
using System.Data;
using System.IO;
using System.Configuration;
public partial class searchrecord : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Admin"] == null)
        {
            Response.Redirect("AdminLogin.aspx");

        }
        else
        {

        }
    }
    protected void button(object sender, EventArgs e)
    {

        string mainconn = ConfigurationManager.ConnectionStrings["ConnectionString1"].ConnectionString;
        SqlConnection sqlconn = new SqlConnection(mainconn);
        sqlconn.Open();
        SqlCommand sqlcomm = new SqlCommand();
        string sqlquery = "select*from StudentAttendance where class like '%'+@class+'%'";
        sqlcomm.CommandText = sqlquery;
        sqlcomm.Connection = sqlconn;
        sqlcomm.Parameters.AddWithValue("class", TxtSearch.Text);
        DataTable dt = new DataTable();
        SqlDataAdapter sda = new SqlDataAdapter(sqlcomm);
        sda.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
}