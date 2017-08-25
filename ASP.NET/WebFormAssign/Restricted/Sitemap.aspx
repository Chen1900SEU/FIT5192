<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Sitemap.aspx.cs" Inherits="Sitemap" %>

<%-- 在此处添加内容控件 --%>
<%-- 在此处添加内容控件 --%>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<%-- 在此处添加内容控件 --%>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div class="topic">
<div class="jumbotron" style="font-family:Arial;margin-top:15px;text-align:center">

<div class="container"> 
<div class="row">
    <div class="col-xs-6 col-md-4">    
        <asp:TreeView ID="TreeView1" runat="server"  CssClass="sitemap" DataSourceID="SiteMapDataSource1" ShowLines="true">
        </asp:TreeView>
        <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" ShowStartingNode="true" />
    </div>
    <div class="col-xs-12 col-md-8 ">
            <img src="../Images/sitemap.jpg" style="height:347px; width:524px"></img>
        </div>
        </div>
       </div>
</div>
</div>
</asp:Content>

<asp:Content ID="FooterContent" ContentPlaceHolderID="Footer" runat="server">
        <a href="http://users.monash.edu.au/~sgrose/msh/disclaimer.htm">Monash course disclaimer</a><br />
            <strong>Mail to Us: </strong> <a href="mailto:xyuu0001@student.monash.edu">YuXue</a> or <a href="mailto:jche0006@student.monash.edu">ChenJing</a><br />
            <p>&copy; <%: DateTime.Now.Year %> YuXue & ChenJing all rights reserved</p>
            <p>Acknowledgements: Detail see <a href="Documentation.aspx" style="color:darkblue">Documentation.</a></p>
            <a href="DisplayCode.aspx?filename=Sitemap.aspx" target="_blank"><strong>Sitemap.aspx:</strong>&nbsp<asp:Image ImageUrl="~/Images/sitemapcode.jpg" runat="server" Height="16px" Width="110px"/></a>
            <a href="DisplayCode.aspx?filename=~/Web.sitemap" target="_blank"><strong>web.sitemap:</strong>&nbsp<asp:Image ImageUrl="~/Images/sitemapcode.jpg" runat="server" Height="16px" Width="110px"/></a>
<div style="margin-bottom:15px"></div>
</asp:Content>


