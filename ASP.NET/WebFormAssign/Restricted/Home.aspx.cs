using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    void Page_PreInit(Object sender, EventArgs e)
    {
        
        if (Session["themename"]==null || Session["themename"].ToString().Equals(""))
        {
            Page.Theme = "Default";
        }
        else
        {
            Page.Theme = Session["themename"].ToString();
        }
        
       // ListItem item = ThemeDropDownList.Items.FindByValue(theme);
        //if (item != null)
        //{
        //    item.Selected = true;
        //}
    }
}