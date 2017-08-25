using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class Account_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Login_Authenticate(object sender, AuthenticateEventArgs e)
    {
        DS1.SelectCommand = "SELECT * FROM [User] WHERE username = '" + Login.UserName +
  "' AND password = '" + Login.Password + "'";
        if (DS1.Select(DataSourceSelectArguments.Empty).GetEnumerator().MoveNext())
        {
            System.Web.Security.FormsAuthentication.RedirectFromLoginPage(Login.UserName, false);
        }
        else
        {
            Login.FailureText = "Invalid Login,check your input!";
        }
    }

    protected void CheckLogin(object sender, SqlDataSourceStatusEventArgs e)
    {
        if (e.AffectedRows > 0)
        {
            FormsAuthentication.RedirectFromLoginPage(Login.UserName, false);
        }
        else
        {
            Login.FailureText = "Wrong password";
        }
    }
}