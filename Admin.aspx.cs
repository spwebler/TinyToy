using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin : System.Web.UI.Page
{
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
    protected void click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("AdminLogin.aspx");
    }
}