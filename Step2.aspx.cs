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
public partial class Step2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=HP\SAIFYNSQL;Initial Catalog=Storage;Persist Security Info=True;User ID=sa;Password=Shiza@arti;Pooling=False");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("~/pic/") + Path.GetFileName(FileUpload1.FileName));
        String link = "pic/" + Path.GetFileName(FileUpload1.FileName);
        System.Drawing.Image img = System.Drawing.Image.FromStream(FileUpload1.PostedFile.InputStream);
        int height = img.Height;
        int width = img.Width;
        if (height <= 1500 && width <= 1500)
        {

            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into Birth values('" + link + "')";
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Inserted Thak-You!!";
        }
        else
        {
            Label1.Text = "Image should be in specified size";
        }

    }
}