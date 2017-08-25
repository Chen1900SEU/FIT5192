using System;
using System.Collections.Generic;
using System.Security.Claims;
using System.Security.Principal;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Unnamed_LoggingOut(object sender, LoginCancelEventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["themename"] = this.ThemeDropDownList.SelectedItem.Text;
        Response.Redirect("~/Home.aspx");

    }
}
