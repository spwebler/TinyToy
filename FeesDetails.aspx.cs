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

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=HP\SAIFYNSQL;Initial Catalog=Storage;Persist Security Info=True;User ID=sa;Password=Shiza@arti;Pooling=False");
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into Balance3 values('" + TextBox9.Text + "','" + TextBox4.Text + "','" + TextBox7.Text + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox5.Text + "')";
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Stored Sucessfully !!!!";
            TextBox9.Text = "";
            TextBox4.Text = "";
            TextBox7.Text = "";
            TextBox1.Text = "";
            TextBox3.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox8.Text = "";
        }
        catch (Exception eb)
        {
            Label4.Text = "Please Enter all values or contact admin";
        }
        

    }

    
    protected void Button2_Click(object sender, EventArgs e)
    {
        try{
        string constr = @"Data Source=HP\SAIFYNSQL;Initial Catalog=Storage;Persist Security Info=True;User ID=sa;Password=Shiza@arti;Pooling=False";
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT * FROM StudentDetail WHERE rollno=" + int.Parse(TextBox9.Text)))
            {
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                con.Open();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    sdr.Read();

                    TextBox4.Text = sdr["studentname"].ToString();
                    TextBox5.Text = sdr["class"].ToString();



                }

            }
        }
    }
        catch (Exception ey)
        {
        }
    }


}