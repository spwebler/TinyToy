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

public partial class Login : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection();
    SqlDataAdapter sda = new SqlDataAdapter();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = (@"Data Source=HP\SAIFYNSQL;Initial Catalog=Storage;Persist Security Info=True;User ID=sa;Password=Shiza@arti;Pooling=False");
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        cmd.CommandText = "select* from Signup1 where Email='" + TextBox1.Text + "'and Password='" + TextBox2.Text + "'";
        cmd.Connection = con;
        sda.SelectCommand = cmd;
        sda.Fill(ds, "Signup1");
        Session["Email"] = TextBox1.Text;
        if (ds.Tables[0].Rows.Count > 0)
        {
            Label1.Text = "Welcome User";
            Response.Redirect("ParentLogin.aspx");


        }
        else
        {
            Label1.Text = "Please Try Again!!";
        }
    }
}
