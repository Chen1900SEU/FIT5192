using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_Registration : System.Web.UI.Page
{
    int reValue;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ArrayList arrList = new ArrayList();
            arrList.Add("China");
            arrList.Add("America");
            arrList.Add("England");
            arrList.Add("Japan");
            arrList.Add("Austrialia");
            arrList.Add("France");
            arrList.Add("German");
            arrList.Add("Russia");
            arrList.Add("Korea");
            arrList.Add("Canada");
            NationDropDownList.DataSource = arrList;
            NationDropDownList.DataBind();
        }
    }

    protected void Add_Item(object sender, EventArgs e)
    {
        int count = DateList.Items.Count;
        int index = 0;
        for (int i = 0; i < count; i++)
        {
            ListItem item = DateList.Items[index];
            if (DateList.Items[index].Selected == true)
            {
                DateList.Items.Remove(item);
                FreeDate.Items.Add(item);
                index--;
            }
            index++;
        }
    }

    protected void Remove_Item(object sender, EventArgs e)
    {
        int count = FreeDate.Items.Count;
        int index = 0;
        for (int i = 0; i < count; i++)
        {
            ListItem item = FreeDate.Items[index];
            if (FreeDate.Items[index].Selected == true)
            {
                FreeDate.Items.Remove(item);
                DateList.Items.Add(item);
                index--;
            }
            index++;
        }
    }

    protected void Password_Validate(object source, ServerValidateEventArgs args)
    {
        if (args.Value.Length >= 6)
        {
            args.IsValid = true;
        }
        else
        {
            args.IsValid = false;
        }
    }

    public int CheckName()
    {
        SqlDataSource1.SelectCommand = "SELECT * FROM [User] WHERE username = '" + this.UserName.Text + "'";
        try
        {
            if (SqlDataSource1.Select(DataSourceSelectArguments.Empty).GetEnumerator().MoveNext())
            {
                return -1;//该用户已经存在
            }
            else
            {
                return 2;//尚未注册
            }
        }
        catch (Exception e)
        {
            return 0;
        }
    }

    protected void CreateUser_Click(object sender, EventArgs e)
    {
        reValue = CheckName();
        if (reValue == -1)
        {
            Response.Write("<script>alert('The user is exist!')</script>");
        }
        else
        {
            string UserName = this.UserName.Text;
            string Password = this.Password.Text;
            string Gender = this.Gender.SelectedValue;
            string Email = this.Email.Text;
            int Age = int.Parse(this.Age.Text);
            string Nation = this.NationDropDownList.SelectedValue;
            string FreeData = this.FreeDate.SelectedValue;
            string Favour = this.Favour.SelectedValue;

            SqlDataSource1.InsertCommand = "INSERT INTO [User] (username, [password], gender, nation, favour, free_date, age, email) VALUES " +
                "('" + UserName + "','" + Password + "','" + Gender + "','" + Nation + "','" + Favour + "','" + FreeData + "','" + Age + "','" + Email + "')";
            reValue = SqlDataSource1.Insert();
            if (reValue == 1)
            {
                Response.Redirect("~/Account/Login.aspx");
                Response.Write("<script>alert('Successfully registered, Please login!')</script>");

            }
            else if (reValue == 0)
            {
                Response.Write("<script>alert('Registered failed!')</script>");
            }

        }

    }
}