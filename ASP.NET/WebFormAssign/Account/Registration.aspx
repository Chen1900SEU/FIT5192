<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Account_Registration" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
<%--    <div class="mainContentBox">--%>
 
    <div class="form-horizontal" >
      <%--<div class="mainContentWrapper">--%>
        <h3 style="text-align:center;color:darkorange">Create an account</h3>
        <hr />

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [User]" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>">
        </asp:SqlDataSource>
       <div class="container">
            <div class="form-group" >
                <asp:Label runat="server" AssociatedControlID="UserName" CssClass="col-md-5 control-label">Username</asp:Label>
                <div class="col-md-3">
                    <asp:TextBox runat="server" ID="UserName" CssClass="form-control" />
                    <asp:RequiredFieldValidator ControlToValidate="UserName" Text="The name field is required!" runat="server" CssClass="text-danger" />
                </div>
            </div>
            <div class="form-group" >
                <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-5 control-label">Password</asp:Label>
                <div class="col-md-3">
                    <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" /> <%----%>
                   <asp:CustomValidator ControlToValidate="Password" Text="A password must more than 6 characters!"  runat="server" Display="Dynamic" CssClass="text-danger" OnServerValidate="Password_Validate" /><br />
                    <asp:RequiredFieldValidator ControlToValidate="Password" Text="The password field is required!" runat="server" CssClass="text-danger" />
                    
                </div>
            </div>
            <div class="form-group" >
                <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-5 control-label">Confirm password</asp:Label>
                <div class="col-md-3">
                    <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                        CssClass="text-danger" Display="Dynamic" ErrorMessage="Please confirm your password" />
                    <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                        CssClass="text-danger" Display="Dynamic" ErrorMessage="Password is not matched" />
                </div>
            </div>
            <div class="form-group" >
                <asp:Label runat="server" AssociatedControlID="Gender" CssClass="col-md-5 control-label">Gender</asp:Label>
                <div class="col-md-3">
                    <div style="margin-top: 7px">
                        <asp:RadioButtonList ID="Gender" RepeatDirection="Horizontal" runat="server">
                            <asp:ListItem Selected="True">Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
            </div>
            <div class="form-group" >
                <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-5 control-label">Email</asp:Label>
                <div class="col-md-3">
                    <asp:TextBox runat="server" ID="Email" CssClass="form-control" />
                    <asp:RequiredFieldValidator ControlToValidate="Email" Text="The email field is required!" runat="server" CssClass="text-danger" /><br />
                    <asp:RegularExpressionValidator ControlToValidate="Email" ValidationExpression="^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$"
                        ErrorMessage="Invalid email format!" runat="server" CssClass="text-danger" Display="Dynamic" />
                </div>
            </div>
            <div class="form-group" >
                <asp:Label runat="server" AssociatedControlID="Age" CssClass="col-md-5 control-label">Age</asp:Label>
                <div class="col-md-3">
                    <asp:TextBox runat="server" ID="Age" CssClass="form-control" />
                    <asp:RangeValidator runat="server" MinimumValue="1" MaximumValue="200" ErrorMessage="Invalid age" CssClass="text-danger"
                        ControlToValidate="Age" Display="Dynamic" Type="Integer" />
                </div>
            </div>
            <div class="form-group" >
                <asp:Label runat="server" AssociatedControlID="NationDropDownList" CssClass="col-md-5 control-label">Nation</asp:Label>
                <div style="margin-top: 7px">
                    <div class="col-md-3">
                        <asp:DropDownList runat="server" ID="NationDropDownList" />
                    </div>
                </div>
            </div>
            <div class="form-group" >
                <asp:Label runat="server" AssociatedControlID="FreeDate" CssClass="col-md-5 control-label">Free Date</asp:Label>
                <div style="margin-top: 7px">
                    <div class="col-md-1" style="float: left">
                        <asp:ListBox ID="FreeDate" runat="server" SelectionMode="Multiple" Width="100px" Height="120px" />
                    </div>
                    <div style="float: left; padding: 20px 20px">
                        <asp:Button OnClick="Add_Item" runat="server" Text="<" /><br />
                        <br />
                        <asp:Button OnClick="Remove_Item" runat="server" Text=">" />
                    </div>
                    <div class="col-md-1" style="float: left">
                        <asp:ListBox ID="DateList" runat="server" SelectionMode="Multiple" Width="100px" Height="120px">
                            <asp:ListItem>Monday</asp:ListItem>
                            <asp:ListItem>Tuesday</asp:ListItem>
                            <asp:ListItem>Wednesday</asp:ListItem>
                            <asp:ListItem>Thursday</asp:ListItem>
                            <asp:ListItem>Friday</asp:ListItem>
                            <asp:ListItem>Saturday</asp:ListItem>
                            <asp:ListItem>Sunday</asp:ListItem>
                        </asp:ListBox>
                    </div>
                </div>
            </div>
            <div class="form-group" >
                <asp:Label runat="server" AssociatedControlID="Favour" CssClass="col-md-5 control-label">Favour</asp:Label>
                <div style="margin-top: 7px">
                    <div class="col-md-5">
                        <asp:CheckBoxList ID="Favour" runat="server" RepeatDirection="Horizontal" >
                            <asp:ListItem Text="Opeara" Value="Opera" />
                            <asp:ListItem Text="Drama" Value="Drama" />
                            <asp:ListItem Text="Concert" Value="Concert" />
                        </asp:CheckBoxList>
                    </div>
                </div>
            </div>

            <div class="form-group" style="padding-left:300px">
                <div class="col-md-8">
                    <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-default" />
                </div>
            </div>
        </div>
 </div>
   
      
</asp:Content>

<asp:Content ID="FooterContent" ContentPlaceHolderID="Footer" runat="server">
    <a href="http://users.monash.edu.au/~sgrose/msh/disclaimer.htm">Monash course disclaimer</a><br />
            <strong>Mail to Us: </strong> <a href="mailto:xyuu0001@student.monash.edu">YuXue</a> or <a href="mailto:jche0006@student.monash.edu">ChenJing</a><br />
            <p>&copy; <%: DateTime.Now.Year %> YuXue & ChenJing all rights reserved</p>
            <p>Acknowledgements: Detail see <a href="../Restricted/Documentation.aspx" style="color:darkblue">Documentation.</a></p>
            <a href="DisplayCode.aspx?filename=Registration.aspx" target="_blank"><strong>Registration.aspx:</strong>&nbsp<asp:Image ImageUrl="~/Images/AddRecords.jpg" runat="server" Height="16px" Width="110px"/></a>
  &nbsp&nbsp&nbsp
            <a href="DisplayCode.aspx?filename=Registration.aspx.cs" target="_blank"><strong>Registration.aspx.as:</strong>&nbsp<asp:Image ImageUrl="~/Images/AddRecords.jpg" runat="server" Height="16px" Width="110px"/></a>
<div style="margin-bottom:15px"></div>
    
   
</asp:Content>
    
