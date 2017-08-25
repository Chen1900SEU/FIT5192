<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="about" %>

<%-- 在此处添加内容控件 --%>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="topic">
<div class="jumbotron" style="font-family:Arial;margin-top:15px;text-align:center">
<img src="../Images/About.jpg" style="height:530px;width:930px"></img><br />
<address style="align-items:flex-start;text-align:center;font-size:large;margin-top:10px">
    
   <strong> Our Address:</strong> Monash-SEU JRI Building,SuZhou, JiangSu,China<br />
  
</address>
    <p>Go to：&nbsp<a href="FAQ.aspx" style="color:darkblue;text-underline-position:below"><strong>FAQ</strong></a>&nbsp or &nbsp<a href="History.aspx" style="color:darkblue"><strong>Our History</strong></a>&nbsp for more detail!</p>

</div>
</div>
</asp:Content>

<asp:Content ID="FooterContent" ContentPlaceHolderID="Footer" runat="server">

        <a href="http://users.monash.edu.au/~sgrose/msh/disclaimer.htm">Monash course disclaimer</a><br />
            <strong>Mail to Us: </strong> <a href="mailto:xyuu0001@student.monash.edu">YuXue</a> or <a href="mailto:jche0006@student.monash.edu">ChenJing</a><br />
            <p>&copy; <%: DateTime.Now.Year %> YuXue & ChenJing all rights reserved</p>
            <p>Acknowledgements: Detail see <a href="Documentation.aspx" style="color:darkblue">Documentation.</a></p>
            <a href="DisplayCode.aspx?filename=About.aspx" target="_blank"><strong>AboutUs.aspx:</strong>&nbsp<asp:Image ImageUrl="~/Images/aboutus.jpg" runat="server" Height="16px" Width="110px"/></a>
<div style="margin-bottom:15px"></div>
</asp:Content>

