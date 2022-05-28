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

public partial class AddMarks : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=HP\SAIFYNSQL;Initial Catalog=Storage;Persist Security Info=True;User ID=sa;Password=Shiza@arti;Pooling=False");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into MarksN values('" + TextBox1.Text + "','" + TextBox13.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Stored!!!!";
            TextBox1.Text = "";
            TextBox13.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
        }
        catch (Exception eb)
        {
            Label6.Text = "Please enter all values or contact admin";
        }

    }

    protected void Button2_Click1(object sender, EventArgs e)
    {
        try
        {

            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into MarksJ values('" + TextBox5.Text + "','" + TextBox14.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "')";
            cmd.ExecuteNonQuery();
            con.Close();
            Label2.Text = "Stored !!!!";
            TextBox5.Text = "";
            TextBox14.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
        }
        catch (Exception eby)
        {
            Label7.Text = "Please enter all values or contact admin";
        }
    }
    protected void Button3_Click1(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into MarksS values('" + TextBox9.Text + "','" + TextBox15.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "')";
            cmd.ExecuteNonQuery();
            con.Close();
            Label3.Text = "Stored!!!!";
            TextBox9.Text = "";
            TextBox15.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
            TextBox12.Text = "";
        }
        catch (Exception em)
        {
            Label8.Text = "Please enter all values or contact admin";
        }

    }

   


    protected void Button4_Click(object sender, EventArgs e)
    {
        string constr = @"Data Source=HP\SAIFYNSQL;Initial Catalog=Storage;Persist Security Info=True;User ID=sa;Password=Shiza@arti;Pooling=False";
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT studentname FROM StudentDetail WHERE rollno=" + int.Parse(TextBox1.Text)))
            {
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                con.Open();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    sdr.Read();

                    TextBox13.Text = sdr["studentname"].ToString();
                    


                }

            }
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        string constr = @"Data Source=HP\SAIFYNSQL;Initial Catalog=Storage;Persist Security Info=True;User ID=sa;Password=Shiza@arti;Pooling=False";
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT studentname FROM StudentDetail WHERE rollno=" + int.Parse(TextBox5.Text)))
            {
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                con.Open();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    sdr.Read();

                    TextBox14.Text = sdr["studentname"].ToString();



                }

            }
        }

    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        try
        {
            string constr = @"Data Source=HP\SAIFYNSQL;Initial Catalog=Storage;Persist Security Info=True;User ID=sa;Password=Shiza@arti;Pooling=False";
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT studentname FROM StudentDetail WHERE rollno=" + int.Parse(TextBox9.Text)))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con;
                    con.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        sdr.Read();

                        TextBox15.Text = sdr["studentname"].ToString();



                    }

                }
            }
        }
        catch (Exception ey)
        {
            Label5.Text = "Data Missing";
        }
    }
}