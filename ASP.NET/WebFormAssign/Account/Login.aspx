<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Account_Login" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="topic">

    <asp:SqlDataSource ID="DS1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [User]" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"/>
    <br />
        <h1>Login</h1>
        <center>
        <asp:Login ID="Login" runat="server"
            OnAuthenticate="Login_Authenticate"
            CssClass="login"
            TitleText="<br />Please enter your details below to login for this site.<br /><br />"
            UserNameLabelText="Username:"
            UserNameRequiredErrorMessage="Username required<p />"
            PasswordRequiredErrorMessage="Password required"
            Height="325px" Width="450px"
            LoginButtonText="Login" BackColor="#F7F6F3" BorderColor="#FF6600" BorderPadding="4" BorderStyle="Solid" 
                BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" FailureText="Login Failed, Please try again" 
                PasswordLabelText="Password" RememberMeText="Remeber me" >
            <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
            <LabelStyle CssClass="loginText" />
            <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="1.2em" ForeColor="#284775" />
            <TextBoxStyle Font-Size="0.8em" />
            <TitleTextStyle CssClass="loginText" BackColor="#FF6600" Font-Bold="True" Font-Size="1.2em" ForeColor="White" />
            <ValidatorTextStyle CssClass="loginValidator" />
        </asp:Login>
        </center>

        <p />
        &nbsp;<asp:ValidationSummary ID="vlSummary1" Font-Names="Arial"
            Visible="true" CssClass="vldSummary"
            runat="server" ValidationGroup="Login"
            HeaderText="Please correct the following errors:" />
  </div>  
</asp:Content>
<asp:Content ID="FooterContent" ContentPlaceHolderID="Footer" runat="server">

        <a href="http://users.monash.edu.au/~sgrose/msh/disclaimer.htm">Monash course disclaimer</a><br />
            <strong>Mail to Us: </strong> <a href="mailto:xyuu0001@student.monash.edu">YuXue</a> or <a href="mailto:jche0006@student.monash.edu">ChenJing</a><br />
            <p>&copy; <%: DateTime.Now.Year %> YuXue & ChenJing all rights reserved</p>
            <p>Acknowledgements: Detail see <a href="../Restricted/Documentation.aspx" style="color:darkblue">Documentation.</a></p>
            <a href="DisplayCode.aspx?filename=Login.aspx.cs" target="_blank"><strong>Login.aspx.cs:</strong>&nbsp<asp:Image ImageUrl="~/Images/login.jpg" runat="server" Height="16px" Width="110px"/></a>
            &nbsp&nbsp&nbsp
            <a href="DisplayCode.aspx?filename=Login.aspx" target="_blank"><strong>Login.aspx:</strong>&nbsp<asp:Image ImageUrl="~/Images/login.jpg" runat="server" Height="16px" Width="110px"/></a>
</asp:Content>