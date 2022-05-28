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

using System.Net;
using System.Net.Mail;
using System.IO;

using System.Net;
using System.Net.Mail;
using System.Threading;

public partial class SignUp : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=HP\SAIFYNSQL;Initial Catalog=Storage;Persist Security Info=True;User ID=sa;Password=Shiza@arti;Pooling=False");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into Signup1 values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox5.Text + "')";
        cmd.ExecuteNonQuery();
        con.Close();
        Label1.Text = "Thankyou for Registering !!!!";

        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.Credentials = new System.Net.NetworkCredential("projectpatkar@gmail.com", "jabwemet187");
        smtp.EnableSsl = true;
        MailMessage msg = new MailMessage();
        msg.Subject = "Hello " + TextBox1.Text + "  Thanks for Registeraing at TinyToy PlayGroup";
        msg.Body = "Hi, Thanks For Your Registration at TinyToy PlayGroup and Nursery, Login to fill Admission Form and view details!!. ";
        string toaddress = TextBox2.Text;
        msg.To.Add(toaddress);
        string fromaddress = "Tiny Toy PlayGroup and Nursery <TinyToy@gmail.com>";
        msg.From = new MailAddress(fromaddress);
        try
        {
            smtp.Send(msg);
            Label2.Text = "Your Email Has Been Registered with Us";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox5.Text = "";

        }
        catch
        {
            throw;
        }

    }
    
}