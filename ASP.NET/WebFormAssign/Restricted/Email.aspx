<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Email.aspx.cs" Inherits="Restricted_Email" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="dsCustomers" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [username], [email], [ID] FROM [User]" />
    <div class="topic" style="padding-left:100px"> 
      <asp:Label ID="lblMail" CssClass="error" runat="server" />
      <p />
      <asp:GridView ID="gvCustomers" runat="server" DataSourceID="dsCustomers" DataKeyNames="id"
        AutoGenerateColumns="False" RowStyle-CssClass="customerRow" AlternatingRowStyle-CssClass="customerAlternate"
        HeaderStyle-CssClass="customerHeader" CssClass="customerGrid" CellPadding="5">
        <Columns>
          <asp:BoundField DataField="id" Visible="false" />
          <asp:BoundField DataField="username" HeaderText="Full Name" />
          <asp:BoundField DataField="email" HeaderText="Email" />
          <asp:TemplateField HeaderText="Select">
            <ItemTemplate>
              <asp:CheckBox runat="server" ID="chkEmail" />
            </ItemTemplate>
          </asp:TemplateField>
        </Columns>
      </asp:GridView>
      <br />
      <br />
      <table class="emailTable">
        <tr>
          <td class="emailHeader" width="15%">From
          </td>
          <td class="emailRow"><%:User.Identity.Name%>
          </td>
        </tr>
        <tr>
          <td class="emailHeader" width="15%">Subject
          </td>
          <td class="emailRow">
            <asp:TextBox ID="txtSubject" Width="350" runat="server" />
          </td>
        </tr>
        <tr>
          <td class="emailHeader" width="15%">Attachment
          </td>
          <td class="emailRow">
            <asp:FileUpload ID="fileUpload" runat="server" Width="430" />
          </td>
        </tr>
        <tr>
          <td class="emailHeader">Message
          </td>
          <td class="emailRow">
            <asp:TextBox runat="server" ID="txtMsg" TextMode="MultiLine" Columns="55" Rows="15" />
          </td>
        </tr>
      </table>
      <br />
      <asp:Button ID="SendMail" runat="server" OnClick="SendingEmail" Text="Send Email" />
      <br />
      <br />
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Footer" Runat="Server">

        

        <a href="http://users.monash.edu.au/~sgrose/msh/disclaimer.htm">Monash course disclaimer</a><br />
            <strong>Mail to Us: </strong> <a href="mailto:xyuu0001@student.monash.edu">YuXue</a> or <a href="mailto:jche0006@student.monash.edu">ChenJing</a><br />
            <p>&copy; <%: DateTime.Now.Year %> YuXue & ChenJing all rights reserved</p>
            <p>Acknowledgements: Detail see <a href="Documentation.aspx" style="color:darkblue">Documentation.</a></p>
            <a href="DisplayCode.aspx?filename=Email.aspx" target="_blank"><strong>Email.aspx:</strong>&nbsp<asp:Image ImageUrl="~/Images/email.jpg" runat="server" Height="16px" Width="110px"/></a>
  &nbsp&nbsp&nbsp
        <a href="DisplayCode.aspx?filename=Email.aspx.cs" target="_blank"><strong>Email.aspx.cs:</strong>&nbsp<asp:Image ImageUrl="~/Images/email.jpg" runat="server"  Height="16px" Width="110px"/></a>
<div style="margin-bottom:15px"></div>
</asp:Content>

