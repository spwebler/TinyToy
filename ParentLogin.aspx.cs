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

public partial class ParentLogin : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection();
    SqlDataAdapter sda = new SqlDataAdapter();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = (@"Data Source=HP\SAIFYNSQL;Initial Catalog=Storage;Persist Security Info=True;User ID=sa;Password=Shiza@arti;Pooling=False");
        con.Open();
        if (Session["Email"] == null)
        {
            Response.Redirect("Login.aspx");

        }
        else
        {
            Label1.Text = Session["Email"].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("Login.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        cmd.CommandText = "select* from StudentDetail where rollno='" + TextBox1.Text + "'and class='" + TextBox2.Text + "'";
        cmd.Connection = con;
        sda.SelectCommand = cmd;
        sda.Fill(ds, "StudentDetail");
        Session["rollno"] = TextBox1.Text;
        if (ds.Tables[0].Rows.Count > 0)
        {
            Label1.Text = "Welcome User";
            Response.Redirect("ChildRecord.aspx");


        }
        else
        {
            Label1.Text = "Please Try Again Enter Both  Fields!!";
        }
    }
   
}