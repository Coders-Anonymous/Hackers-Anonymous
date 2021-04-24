<%@ Page Title="" Language="C#" MasterPageFile="~/Admin111.Master" AutoEventWireup="true" CodeBehind="AdminDashBoard.aspx.cs" Inherits="User.AdminDashBoard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"> <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
          
  <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Admin DashBoard</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="#">Page 1</a></li>
      <li><a href="#">Page 2</a></li>
      <li><a href="#">Page 3</a></li>
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

                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/AdminLogin.aspx">Log Out</asp:LinkButton>

                </a>
            </li>
        </ul>
  </div>
</nav>
   <!------Sidebar--->
<link href="Content/Admin.css" rel="stylesheet" />
<div class="sidenav">
  <a href="#about">About</a>
  <a href="#services">Services System</a>
  <a href="RegistrationControl.aspx">Registration Control</a>
  <a href="CoursesControl.aspx">Courses Control</a>
</div>
            
        </div>
   

</asp:Content>

