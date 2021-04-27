<%@ Page Title="" Language="C#" MasterPageFile="~/Admin111.Master" AutoEventWireup="true" CodeBehind="AdminDashBoard.aspx.cs" Inherits="User.AdminDashBoard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"> <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body> <div>
          
  <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Admin Page</a>
    </div>
    <ul class="nav navbar-nav">
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
                <a href="#">

                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Login.aspx">Log Out</asp:LinkButton>

                </a>
            </li>
        </ul>
  </div>
</nav>
   <!------Sidebar--->
<link href="Content/Admin.css" rel="stylesheet" />
<div class="sidenav">
  <a href="#about">About</a>
  <a href="#services">Services</a>
  <a href="#clients"><asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" >Registration Control</asp:LinkButton></a>
  <a href="#contact"><asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" >Courses Control</asp:LinkButton></a>
</div>
            
        </div>
</body>
</asp:Content>

