using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using Microsoft.Reporting.WebForms;  

public partial class NewReport1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        GetData();
    }
    private void GetData()
    {
        SqlConnection con = new SqlConnection(@"Data Source=HP\SAIFYNSQL;Initial Catalog=Storage;Persist Security Info=True;User ID=sa;Password=Shiza@arti;Pooling=False");


        SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM MarksJ where RollNo= '" + Convert.ToInt32(TextBox1.Text) + "'", con);
        DataTable dt = new DataTable("table2");
        da.Fill(dt);

        ReportViewer1.ProcessingMode = ProcessingMode.Local;
        ReportViewer1.LocalReport.ReportPath = Server.MapPath("Marks2.rdlc");

        ReportViewer1.LocalReport.DataSources.Clear();
        ReportViewer1.LocalReport.DataSources.Add(new ReportDataSource("DataSet2", dt));

    }
}