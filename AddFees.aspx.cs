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


public partial class AddFees : System.Web.UI.Page
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
            cmd.CommandText = "UPDATE Balance3 SET RollNo=@RollNo,Name = @Name,TotalFees=@TotalFees,[FeesPaid] = @FeesPai,[BalanceFees] = @BalanceFee where RollNo = @RollNo ";
            cmd.Parameters.AddWithValue("@RollNo", TextBox9.Text);
            cmd.Parameters.AddWithValue("@Name", TextBox4.Text);
            cmd.Parameters.AddWithValue("@TotalFees", TextBox7.Text);
            cmd.Parameters.AddWithValue("@FeesPai", TextBox1.Text);
            cmd.Parameters.AddWithValue("@BalanceFee", TextBox3.Text);

           
                cmd.ExecuteNonQuery();
            
            

            con.Close();
            Label1.Text = "Stored Sucessfully !!!!";
            TextBox9.Text = "";
            TextBox4.Text = "";
            TextBox7.Text = "";
            TextBox1.Text = "";
            TextBox3.Text = "";
            TextBox5.Text = "";
            TextBox10.Text = "";

        }
        catch (Exception en)
        {
            Label3.Text = "Please enter all values or contact admin";
            throw new Exception("Error " + en.Message);
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string constr = @"Data Source=HP\SAIFYNSQL;Initial Catalog=Storage;Persist Security Info=True;User ID=sa;Password=Shiza@arti;Pooling=False";
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT * FROM Balance3 WHERE RollNo=" + int.Parse(TextBox9.Text)))
            {
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                con.Open();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    sdr.Read();

                    TextBox4.Text = sdr["Name"].ToString();
                    TextBox7.Text = sdr["TotalFees"].ToString();
                    TextBox1.Text = sdr["FeesPaid"].ToString();
                    TextBox3.Text = sdr["BalanceFees"].ToString();
                    TextBox5.Text = sdr["Group"].ToString();


                }

            }
        }
    }
}