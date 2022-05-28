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

public partial class Admission : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=HP\SAIFYNSQL;Initial Catalog=Storage;Persist Security Info=True;User ID=sa;Password=Shiza@arti;Pooling=False");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Email"] == null)
        {
            Response.Redirect("Login.aspx");

        }
        else
        {
           
        }

    }
    protected void button(object sender, EventArgs e)
    {
        try
        {

            FileUpload1.SaveAs(Server.MapPath("~/pic/") + Path.GetFileName(FileUpload1.FileName));
            String link = "pic/" + Path.GetFileName(FileUpload1.FileName);
            System.Drawing.Image img = System.Drawing.Image.FromStream(FileUpload1.PostedFile.InputStream);
            int height = img.Height;
            int width = img.Width;
            if (height <= 1000 && width <= 1000)
            {

                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into Form1 values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox13.Text + "','" + TextBox14.Text + "','" + TextBox15.Text + "','" + link + "')";
                cmd.ExecuteNonQuery();
                con.Close();
                Label16.Text = "Thanks For Filling Form We Would Contact You Soon!";
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox7.Text = "";
                TextBox8.Text = "";
                TextBox9.Text = "";
                TextBox10.Text = "";
                TextBox11.Text = "";
                TextBox12.Text = "";
                TextBox13.Text = "";
                TextBox14.Text = "";
                TextBox15.Text = "";
            }
            else
            {
                Label16.Text = "Image should be in specified size";
            }
        }
    
    catch(Exception eb)
{
    Label17.Text = "some error";
}
    }

    protected void next(object sender, EventArgs e)
    {
        Response.Redirect("Step2.aspx");
    }
}
