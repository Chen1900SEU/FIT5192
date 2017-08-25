<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FAQ.aspx.cs" Inherits="FAQ" %>

<%-- 在此处添加内容控件 --%>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<%-- 在此处添加内容控件 --%>
<asp:Content ID="FAQContent" ContentPlaceHolderID="MainContent" runat="server">

<div class="topic" style="width:1000px;table-layout:auto;margin-top:20px">
   <div class="panel panel-default"> 
      <div class="panel-heading" style="text-align:left;font-variant-position:super"><h4><strong>Qusetion 1： &nbsp</strong>How do I sell the show tickets?</h4></div>
          <div class="panel-body" style="text-align:left">
              <p class="lead" style="font-size:medium"><strong>Answer:</strong><br />&nbsp&nbsp Not all events or tickets are available for resale. If you don't see a Sell button, selling your tickets though Ticketmaster is not allowed.You can edit or remove your listing anytime, and you'll get paid by direct deposit or pay-by-debit within 7-10 business days after your tickets sell.</p>
              
          </div>
   </div>   
   <div class="panel panel-default"> 
      <div class="panel-heading" style="text-align:left;font-variant-position:super"><h4><strong>Qusetion 2： &nbsp</strong> Why is someone else's name on my ticket?</h4></div>
          <div class="panel-body" style="text-align:left">
              <p class="lead" style="font-size:medium"><strong>Answer:</strong><br />&nbsp&nbsp Yes,you can but beware: multiple copies mean someone else could wind up sitting in your seat. If someone gets a hold of a copy and gets there first, their ticket will work and yours won't because the system will show the ticket has already been scanned.If there's a dispute your name and last four digits of your credit card are on your tickets, but you could miss invaluable event time getting to the bottom of it.</p>
          </div>
   </div>  

   <div class="panel panel-default"> 
      <div class="panel-heading" style="text-align:left;font-variant-position:super"><h4><strong>Qusetion 3： &nbsp</strong>Can I print more than one copy of my ticket?</h4></div>
          <div class="panel-body" style="text-align:left">
              <p class="lead" style="font-size:medium"><strong>Answer:</strong> <br />&nbsp&nbsp Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
          </div>
   </div>   
</div>
</asp:Content>

<asp:Content ID="FooterContent" ContentPlaceHolderID="Footer" runat="server">

        <a href="http://users.monash.edu.au/~sgrose/msh/disclaimer.htm">Monash course disclaimer</a><br />
            <strong>Mail to Us: </strong> <a href="mailto:xyuu0001@student.monash.edu">YuXue</a> or <a href="mailto:jche0006@student.monash.edu">ChenJing</a><br />
            <p>&copy; <%: DateTime.Now.Year %> YuXue & ChenJing all rights reserved</p>
            <p>Acknowledgements: Detail see <a href="Documentation.aspx" style="color:darkblue">Documentation.</a></p>

</asp:Content>