<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Classes.aspx.cs" Inherits="User.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>


<body>
    <div class="topNav">
<!-- <form id="form1" runat="server">-->
        <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Classes</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><asp:LinkButton ID="LinkButton5" runat="server" text-align = "center">Home</asp:LinkButton></li>
      <li><asp:LinkButton ID="LinkButton2" runat="server" text-align = "center" PostBackUrl="~/Calender.aspx">Calendar</asp:LinkButton></li>
      <li><asp:LinkButton ID="LinkButton3" runat="server" text-align = "center">Study Buddy</asp:LinkButton></li>
      <li><asp:LinkButton ID="LinkButton4" runat="server" text-align = "center">Classes</asp:LinkButton></li>
    </ul>
<ul class="nav navbar-nav navbar-right">
            <li><a href="#">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                &nbsp;<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label> 
                <div>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </div>
                </a>
            </li>
            <li>
                <asp:LinkButton ID="LinkButton1" runat="server" text-align = "center" PostBackUrl="~/Login Page.aspx">Log Out</asp:LinkButton>
            </li>
        </ul>
  </div>
</nav>
         </div>

        <!------Sidebar--->
    <div>
<link href="Content/classes.css" rel="stylesheet" />
<div class="sidenav">
  <a href="#math">Math</a>
  <a href="#english">English</a>
  <a href="#science">Science </a>
  <a href="#softwaredev">Software Dev</a>
</div>
        </div>
    </form>
<div id="wrapper" class="grid-container">
    <div class="math" id="math">
        <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700' rel='stylesheet' type='text/css'>

<div id="make-3D-math-space">
    <div id="math-card">
        <div id="math-front">
        	<div class="shadow"></div>
            <img src="https://cdn2.iconfinder.com/data/icons/startup-butterscotch-vol-1/512/Calculator-512.png" alt="" />
            <div class="math_overlay"></div>
            <div class="stats">        	
                <div class="stats-container">
                    <span class="product_price">3/16</span>
                    <span class="product_name">Math 267</span>    
                    <p>Assignment 2 - Factorials</p>                                            
                    
                    <div class="product-options">
                    <strong>Need Studdy Buddy?</strong>
                    <span>Yes / No</span>
                    <strong>COLORS</strong>
                    <div class="colors">
                        <div class="c-blue"><span></span></div>
                        <div class="c-red"><span></span></div>
                        <div class="c-white"><span></span></div>
                        <div class="c-green"><span></span></div>
                    </div>
                </div>                       
                </div>                         
            </div>
        </div>        
        <script src="Scripts/JavaScript.js"></script>
    </div>
</div>	


	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

</div>

    <div class="science" id="english">
        <h1>Class Name</h1>
        <h3>Assignment Name</h3>
        <h5>Due Date</h5>
    </div>

    <div class="english" id="science">
        <h1>Class Name</h1>
        <h3>Assignment Name</h3>
        <h5>Due Date</h5>
    </div>

    <div class="softwaredev" id="softwaredev">
        <h1>Class Name</h1>
        <h3>Assignment Name</h3>
        <h5>Due Date</h5>
    </div>

</div>

</body>
</html>
