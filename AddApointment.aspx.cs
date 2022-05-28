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

public partial class AddApointment : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=HP\SAIFYNSQL;Initial Catalog=Storage;Persist Security Info=True;User ID=sa;Password=Shiza@arti;Pooling=False");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox3.Text = Calendar1.SelectedDate.ToShortDateString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into Appoint2 values('" + TextBox1.Text + "','" + TextBox4.Text + "','" + TextBox3.Text + "','" + DropDownList1.Text + "','" + TextBox6.Text + "','" + TextBox5.Text + "')";
        cmd.ExecuteNonQuery();
        con.Close();
        Label1.Text = "Added success";

    }
}