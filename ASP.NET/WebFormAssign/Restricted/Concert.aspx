<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Concert.aspx.cs" Inherits="Concert" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">


<div class="container">

    <div class="row">
    <div class="col-xs-6 col-md-3">        
        <div style="float: left;" class="calender">
            <asp:SqlDataSource ID="dsEvent" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [EventDate], [EventDescription] FROM [Events]" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"></asp:SqlDataSource>
            <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px"
                DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px"
                OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged" OnInit="Calendar1_Init">
                <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                <OtherMonthDayStyle ForeColor="#CC9966" />
                <SelectedDayStyle BackColor="#66ccff" Font-Bold="True" />
                <SelectorStyle BackColor="#FF9900" />
                <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
            </asp:Calendar>
            <asp:Literal runat="server" ID="displayEvent"/>
        </div>

    </div>
  <div class="col-xs-12 col-md-8 ">
        <asp:SqlDataSource ID="ConcertData" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Concert]" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"></asp:SqlDataSource>
        <h3><strong>The Show Information</strong> </h3>
        <div class="concert_content">
            <a href="Concert.aspx">Click here to see all the show information</a><br />
            <label>Keyword:</label><asp:TextBox ID="keyword" runat="server" />&nbsp&nbsp
            <label>Search By</label>
            <asp:DropDownList runat="server" ID="NationDropDownList">
                <asp:ListItem>name</asp:ListItem>
                <asp:ListItem>type</asp:ListItem>
                <asp:ListItem>site</asp:ListItem>
            </asp:DropDownList>
            <asp:Button Text="Search" OnClick="Search_Record" runat="server" />
            <br />

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ConcertData" CellPadding="3"
                Font-Names="arial"
                Font-Size="10pt"
                Width="80%"
                HeaderStyle-Font-Size="10"
                HeaderStyle-BackColor="Bisque"
             
                 
                HeaderStyle-ForeColor="Black"
                AlternatingRowStyle-BackColor="Cornsilk"
                OnRowCommand="Display_Data" DataKeyNames="ID" >
                <AlternatingRowStyle BackColor="Cornsilk"></AlternatingRowStyle>
                <Columns>
                    <asp:BoundField DataField="show_name" HeaderText="Name" SortExpression="show_name" />
                    <asp:BoundField DataField="type" HeaderText="Type" SortExpression="type" />
                    <asp:ImageField DataImageUrlField="img" HeaderText="Image" SortExpression="image" ItemStyle-Width="100px"/>
                    <asp:BoundField DataField="site" HeaderText="Site" SortExpression="site" />
                    <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
                    <asp:BoundField DataField="show_date" HeaderText="Date" SortExpression="show_date" />
                    <asp:HyperLinkField DataNavigateUrlFields="url" DataTextField="url" SortExpression="url" HeaderText="Official Website" />
                    <asp:ButtonField Text="detail" HeaderText="Description" />
                </Columns>


                <HeaderStyle BackColor="Bisque" Font-Size="10pt" ForeColor="Black"></HeaderStyle>
                <RowStyle Wrap="True" />
            </asp:GridView>

            <asp:Panel ID="DetailPanel" runat="server" CssClass="detailshow">
                <strong> Show Title: </strong><br /> &nbsp&nbsp&nbsp<asp:Label ID="DetailLabel" runat="server" /><br />
                <strong> Show Description: </strong><br /> &nbsp&nbsp&nbsp<asp:Literal ID="showDescription" runat="server" />
            </asp:Panel>
        </div>
  </div>
</div>
</div>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Footer" runat="Server">
    <div >
               <a href="http://users.monash.edu.au/~sgrose/msh/disclaimer.htm">Monash course disclaimer</a><br />
            <strong>Mail to Us: </strong> <a href="mailto:xyuu0001@student.monash.edu">YuXue</a> or <a href="mailto:jche0006@student.monash.edu">ChenJing</a><br />
            <p>&copy; <%: DateTime.Now.Year %> YuXue & ChenJing all rights reserved</p>
            <p>Acknowledgements: Detail see <a href="Documentation.aspx" style="color:darkblue">Documentation.</a></p>
        <a href="DisplayCode.aspx?filename=Concert.aspx" target="_blank"><strong>Shows.aspx:</strong>&nbsp<asp:Image ImageUrl="~/Images/DisplayRecords.jpg" runat="server"  Height="16px" Width="110px"/></a>
            &nbsp&nbsp&nbsp
        <a href="DisplayCode.aspx?filename=Concert.aspx.cs" target="_blank"><strong>Shows.aspx.cs:</strong>&nbsp<asp:Image ImageUrl="~/Images/DisplayRecords.jpg" runat="server"  Height="16px" Width="110px"/></a>
            &nbsp&nbsp&nbsp
        <a href="DisplayCode.aspx?filename=Concert.aspx" target="_blank"><strong>SearchRecord.aspx:</strong>&nbsp<asp:Image ImageUrl="~/Images/SearchRecords.jpg" runat="server"  Height="16px" Width="110px"/></a>
        
    </div>
</asp:Content>

