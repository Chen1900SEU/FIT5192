<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Documentation.aspx.cs" Inherits="Documentation" %>

<%-- 在此处添加内容控件 --%>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<%-- 在此处添加内容控件 --%>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<div id="mainContentBox">
<div id="mainContentWrapper">
<div id="mainContent" 
    style="padding-left:200px;text-align: left;padding-right:100px">
                
    <h1>Documentation</h1>

    <h2>Contents</h2>
    <ul style="list-style-type: none;">
        <li><a href="#s1">1. Assignment Information</a></li>
        <li><a href="#s2">2. Web Site Design</a></li>
        <ul style="list-style-type: none;">
            <li><a href="#s2_1">2.1 Web Pages Hierarchy</a></li>
            <li><a href="#s2_2">2.2 Home Page</a></li>
            <li><a href="#s2_3">2.3 Registration Page</a></li>
            <li><a href="#s2_4">2.4 About Us</a></li>
            <li><a href="#s2_5">2.5 Site Map</a></li>
            <li><a href="#s2_6">2.6 Login System</a></li>
            <li><a href="#s2_7">2.7 Email</a></li>
            <li><a href="#s2_8">2.8 Shows (Calendar，Display and Search of Products/Services)</a></li>
        </ul>
        <li><a href="#s3">3. Acknowledgement</a></li>

    </ul>

    <h2 id="s1">1. Assignment Information</h2>

    <table class="doc">
        <tbody><tr>
            <td><b>Author:</b></td>
            <td>
                <strong >Yu Xue</strong> ID: 28198751, E-Mail: <a href="mailto:xyuu0001@student.monash.edu">xyuu0001@student.monash.edu</a><br>
                <strong >Chen Jing</strong> ID: 28198891, E-Mail: <a href="mailto:jche0006@student.monash.edu">jche0006@student.monash.edu</a>
            </td>
        </tr>
        <tr>
            <td>
    <b>Unit Name:</b></td>
            <td>
                Internet Applications and Web Services
            </td>
        </tr>
        <tr>
            <td>
    <b>Unit Code:</b></td>
            <td>
                FIT5192
            </td>
        </tr>
        <tr>
            <td>
    <b>Unit Provider:</b></td>
            <td>
                Monash University, The Caulfield School of Information Technology
            </td>
        </tr>
        <tr>
            <td>
    <b>Assignment Number:</b></td>
            <td>
                Assignment 2</td>
        </tr>
        <tr>
            <td>
    <b>Date of Submission:</b></td>
            <td>
                Aug. 2017
            </td>
        </tr>
        <tr>
            <td>
    <b>Lecturer/Tutor:</b></td>
            <td>
                Jue (Grace) XIE
            </td>
        </tr>
        <tr>
            <td>
                <b>Task Allcation:</b></td>
            <td>
                <b>Yu Xue :</b> Focus on the back end part, Master Page,Registration, Login System, Calendar,the search bussiness part and and Email function.<br>
                <b>Chen Jing :</b> Overall Design ,Css and Theme, Home Page, Site Map,  About Us, Documentation, part of the homepage using jquery implement the AdaRotator, and using Grid View finish part of SearchRecord.
            </td>
        </tr>
    </tbody></table>

    <p>&nbsp;</p>

    <p></p>

    <h2 id="s2">2. Web Site Design</h2>
    <h3 id="s2_1">2.1 Web Pages Hierarchy</h3>
    <p>Bellow is the Hierarchy of our website design:</p>
    <p><img class="doc" src="../Images/websturcture.png" style="height: 580px;width: 1000px"></p>
    <p>MasterPage.aspx provided via an ASP.NET menu navigation control and provide links to other pages.</p><br />

    <h3 id="s2_2">2.2 Home Page</h3>
    <p><b>Home page</b> has three parts:"header","body",and“footer". The default theme color of menu is orange.</p>
    <p><img class="doc" src="../Images/homedoc.png" style="height: 700px;width: 1024px"></p><br />
    
    <h3 id="s2_3">2.3 Registration Page</h3>
    <h4></h4>
    <p><img class="doc" src="../Images/registerdoc.png" style="height: 685px;width: 1024px"></p>

    
    <h3 id="s2_4">2.4 About Us</h3>
    <h4>Include the FAQ and History sreenshot:</h4>
    <h4>About Us: have two link to FAG and History</h4>
    <p><img class="doc" src="../Images/docaboutus.png" style="height: 700px;width: 1024px"></p>
    <h4>FAQ</h4>
    <p><img class="doc" src="../Images/docfaq.png" style="height: 600px;width: 1024px"></p>
    <h4>Our History</h4>
    <p><img class="doc" src="../Images/dochistory.png" style="height: 600px;width: 1024px"></p><br />

    <h3 id="s2_5">2.5 Site Map</h3>
    <h4>Site Map use the asp:Treeview & SiteMapDataSource:</h4>
    <p><img class="doc" src="../Images/docsitemap.png" style="height:630px;width: 1024px"></p>

    <h3 id="s2_6">2.6 Login System</h3>
    <p><img class="doc" src="../Images/doclogin.png" style="height: 600px;width: 1024px"></p>

    <h3 id="s2_7">2.7 Email</h3>
    <p><img class="doc" src="../Images/docemail.png" style="height: 600px;width: 1024px"></p>

    <h3 id="s2_8">2.8 Shows (Calendar，Display and Search of Products/Services)</h3>
    <p><img class="doc" src="../Images/docshow.png" style="height: 630px;width: 1020px"></p>
    
    <h2 id="s3">3. Acknowledgement</h2>
    <h4>Our design is inspired by these sites:</h4>
    <ul>
        <li>The Content Design: <a href="http://www.ticketmaster.com">Ticketmaster</a></li>
        <li>Color and Layout Design: <a href="http://www.damai.cn">DaMai.org</a></li>
        <li>The document Design: <a href="http://116.62.209.130/fit5192/12345678/Pages/Documentation.aspx">FIT 5192 Assignment Demo</a></li>
    </ul>
    <h4>Homepage Picture:</h4>

    <ul>
        <li><strong>Note:</strong> The website logo is designed by ourself.</li>
        <li>ColdPlay Concert: <a href="http://coldplay.com">http://coldplay.com</a></li>
        <li>Maksim Mrvica: <a href="http://slide.mn.sina.com.cn/slide_47_33174_339627.html#p=1">http://slide.mn.sina.com.cn/slide_47_33174_339627.html#p=1</a></li>
    </ul>
    <h4>Showpage Picture and information:</h4>
          <ul>
        <li>ColdPlay Concert: <a href="http://coldplay.com">http://coldplay.com</a></li>
        <li>OneRepublic Concert: <a href="https://www.onerepublic.com/">https://www.onerepublic.com/</a></li>
    </ul> 
     <h4>FAG page information:</h4>
          <ul>
        <li>The question information: <a href="http://help.ticketmaster.com/faqs/">http://help.ticketmaster.com/faqs/</a></li>
    </ul>
    <h4>AboutUspage Picture:</h4>
          <ul>
        <li>The About us picture: <a href="http://firstidea.org/wp-content/uploads/2016/12/About.jpg">http://firstidea.org/wp-content/uploads/2016/12/About.jpg</a></li>
    </ul> 
        <h4>SiteMap page Picture:</h4>
          <ul>
        <li>The SiteMap picture: <a href="https://dynomapper.com/images/xml_sitemaps_sitemap_generator_.jpg">https://dynomapper.com/images/xml_sitemaps_sitemap_generator_.jpg</a></li>
    </ul> 

            </div>
        </div>
    </div>

</asp:Content>

<asp:Content ID="FooterContent" ContentPlaceHolderID="Footer" runat="server">

        <a href="http://users.monash.edu.au/~sgrose/msh/disclaimer.htm">Monash course disclaimer</a><br />
            <strong>Mail to Us: </strong> <a href="mailto:xyuu0001@student.monash.edu">YuXue</a> or <a href="mailto:jche0006@student.monash.edu">ChenJing</a><br />
            <p>&copy; <%: DateTime.Now.Year %> YuXue & ChenJing all rights reserved</p>
            <p>Acknowledgements: Detail see <a href="Documentation.aspx" style="color:darkblue">Documentation.</a></p>
            <a href="DisplayCode.aspx?filename=~/Content/Site.css" target="_blank"><asp:Image ImageUrl="~/Images/css.jpg" runat="server"  Height="16px" Width="110px" /></a>
        &nbsp&nbsp&nbsp
            <a href="DisplayCode.aspx?filename=~/App_Themes/Black/SkinFile.skin" target="_blank"><asp:Image ImageUrl="~/Images/skin.jpg" runat="server"  Height="16px" Width="110px" /></a>  
    <br /><div style="margin-bottom:15px"></div>
</asp:Content>