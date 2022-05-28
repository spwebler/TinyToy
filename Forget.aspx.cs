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
public partial class Forget : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=HP\SAIFYNSQL;Initial Catalog=Storage;Persist Security Info=True;User ID=sa;Password=Shiza@arti;Pooling=False");
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void button(object sender, EventArgs e)
    {
    

        try
        {
            string name, pw;
            name = TextBox1.Text;
            pw = TextBox2.Text;
            string q = "update[Signup1]set[Password]='" + pw + "'where Email='" + name + "'";
            cmd = new SqlCommand(q, con);
            con.Open();
            cmd.ExecuteNonQuery();
            Label2.Text = "Your Password has reset";
        }
        catch
        {


        }
    }
}