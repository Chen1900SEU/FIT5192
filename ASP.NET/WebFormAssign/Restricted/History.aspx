<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="History.aspx.cs" Inherits="History" %>

<%-- 在此处添加内容控件 --%>
<%-- 在此处添加内容控件 --%>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<%-- 在此处添加内容控件 --%>
<asp:Content ID="HistoryContent" ContentPlaceHolderID="MainContent" runat="server">

<div class="topic" style="width:1000px;table-layout:auto;margin-top:20px">
    <h3 style="color:darkorange"> <strong>Our History</strong></h3>
   <div class="panel panel-default"> 
      <div class="panel-heading" style="text-align:center;font-variant-position:super"><img src="../Images/logo.gif" style="height:55px;width:180px"/></div>
          <div class="panel-body" style="text-align:left">
              <p class="lead" style="font-size:medium"><strong>ShowTime </strong>&nbsp is the name of our website.The picture above is the logo of our website. This is a website for people who enjoy art and music.Our "ShowTime" website is founded in Augest, 2017. 
                  The founders: YuXue and ChenJing are both  students of SEU-Monash Joint Graduate School. 
                  The original intention of founding this website is to provide a place for fans to know the show information and book tickets.<br /></p>
              <center><h4>Wish you can find the show information you want here!</h4></center>
              
          </div>
   </div> 
    </div>
    </asp:Content>


<asp:Content ID="FooterContent" ContentPlaceHolderID="Footer" runat="server">

        <a href="http://users.monash.edu.au/~sgrose/msh/disclaimer.htm">Monash course disclaimer</a><br />
            <strong>Mail to Us: </strong> <a href="mailto:xyuu0001@student.monash.edu">YuXue</a> or <a href="mailto:jche0006@student.monash.edu">ChenJing</a><br />
            <p>&copy; <%: DateTime.Now.Year %> YuXue & ChenJing all rights reserved</p>
            <p>Acknowledgements: Detail see <a href="Documentation.aspx" style="color:darkblue">Documentation.</a></p>
            
<div style="margin-bottom:15px"></div>
</asp:Content>