<%@ Page  Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"  CodeFile="Home.aspx.cs" Inherits="Home" %>



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
 
<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
 
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <script>
         $(document).ready(function () {
             $('#LBbox').carousel({ interval: 2000 });
         });
    </script>

    
  <%--  <div class="topic">
        <center>
     <!-- 轮播广告 -->
        <div id="LBbox" class="carousel slide" data-ride="carousel" style="width:1150px">
            <!-- 圆点按钮 -->
           <ol class="carousel-indicators">
              <li data-target="#LBbox" data-slide-to="0"></li>
              <li data-target="#LBbox" data-slide-to="1"></li>
              <li data-target="#LBbox" data-slide-to="2"></li>
            </ol>
            <!-- 轮播内容 -->
            <div class="carousel-inner" role="listbox">
              <div class="item active">
                <img src="../Images/slide1.png" alt="1 slide">
                <div class="carousel-caption" style="background-color:InfoText">
                  <h3>Concert of ColdPlay</h3>
                  <p>Location: Houston, TX,USA</p>
                  <p>Date: Fri, 25 Aug 2017</p>
                </div>
              </div>
              <div class="item">
                <img src="../Images/slide2.png" alt="2 slide">
                <div class="carousel-caption" style="background-color:InfoText">
                  <h3>Concert of Maksim Mrvica</h3>
                  <p>Location: Suzhou,China</p>
                  <p>Date: Fri, 30 Aug 2017</p>
                </div>
              </div>
              <div class="item">
                <img src="../Images/slide3.png" alt="3 slide">
                <div class="carousel-caption"  style="background-color:InfoText">
                  <h3>Show of Berlin Philharmonic</h3>
                  <p>Location: BeiJing, China</p>
                    <p>Date: Fri, 30 Jan 2018</p>
                </div>
              </div>
            </div>
            <!-- 左按钮 -->
            <a href="#LBbox" class="left carousel-control" role="button" data-slide="prev">
              <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
              <span class="sr-only">Prev</span>
            </a>
            <!-- 右按钮 -->
            <a href="#LBbox" class="right carousel-control" role="button" data-slide="next">
              <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
        </div>

        <div>
                       <asp:Label runat="server" Text="Welcome,You can find any show information from here!" Font-Bold="True" Font-Names="Aharoni" Font-Size="X-Large" ForeColor="#FF6600"></asp:Label>
            <p style="font-size:medium">This Showtime.net is a website for people who likes watching shows.You can find many performance information here for free.</p>
            </div>
        </center>
    </div>--%>
    <div class="topic">
   
     <!-- 轮播广告 -->
        <div id="LBbox" class="carousel slide" data-ride="carousel" style="width:1000px;align-content:center;margin:0 auto;text-align:center">
            <!-- 圆点按钮 -->
           <ol class="carousel-indicators">
              <li data-target="#LBbox" data-slide-to="0"></li>
              <li data-target="#LBbox" data-slide-to="1"></li>
              <li data-target="#LBbox" data-slide-to="2"></li>
            </ol>
            <!-- 轮播内容 -->
            <div class="carousel-inner" role="listbox">
              <div class="item active">
                <img src="../Images/Coldplayposter.jpg" style="width:1000px" alt="1 slide">
                <div class="carousel-caption" style="background-color:InfoText;opacity: 0.6;color:white">
                  <h3>Concert of ColdPlay</h3>
                  <p>Location: Houston, TX,USA</p>
                  <p>Date: Fri, 25 Aug 2017</p>
                </div>
              </div>
              <div class="item">
                <img src="../Images/slide2.png" style="width:1000px" alt="2 slide">
                <div class="carousel-caption" style="background-color:InfoText;opacity: 0.6;color:white">
                  <h3>Concert of Maksim Mrvica</h3>
                  <p>Location: Suzhou,China</p>
                  <p>Date: Fri, 30 Aug 2017</p>
                </div>
              </div>
              <div class="item">
                <img src="../Images/slide3.png"style="width:1000px"  alt="3 slide" >
                <div class="carousel-caption" style="background-color:InfoText;opacity: 0.6;color:white">
                  <h3>Show of Berlin Philharmonic</h3>
                  <p>Location: BeiJing, China</p>
                    <p>Date: Fri, 30 Jan 2018</p>
                </div>
              </div>
            </div>
            <!-- 左按钮 -->
            <a href="#LBbox" class="left carousel-control" role="button" data-slide="prev">
              <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
              <span class="sr-only">Prev</span>
            </a>
            <!-- 右按钮 -->
            <a href="#LBbox" class="right carousel-control" role="button" data-slide="next">
              <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
        </div>

        <div>
            <asp:Label runat="server" Text="Welcome,You can find any show information from here!" Font-Bold="True" Font-Names="Aharoni" Font-Size="X-Large" ForeColor="#FF6600"></asp:Label>
            <p style="font-size:medium">This Showtime.net is a website for people who likes watching shows.You can find many performance information here for free.</p>
        </div>
   
    </div>
</asp:Content>

<asp:Content ID="FooterContent" ContentPlaceHolderID="Footer" runat="server">
    <center>
        <a href="http://users.monash.edu.au/~sgrose/msh/disclaimer.htm">Monash course disclaimer</a><br />
            <strong>Mail to Us: </strong> <a href="mailto:xyuu0001@student.monash.edu">YuXue</a> or <a href="mailto:jche0006@student.monash.edu">ChenJing</a><br />
            <p>&copy; <%: DateTime.Now.Year %> YuXue & ChenJing all rights reserved</p>
            <p>Acknowledgements: some of the images are from internet.</p>
            <a href="DisplayCode.aspx?filename=~/Home.aspx" target="_blank"><asp:Image ImageUrl="~/Images/AdRotator.png" runat="server"/></a>
            &nbsp&nbsp&nbsp
            <a href="DisplayCode.aspx?filename=~/MasterPage.master" target="_blank"><asp:Image ImageUrl="~/Images/MasterPage.png" runat="server" /></a>
   </center>
</asp:Content>


