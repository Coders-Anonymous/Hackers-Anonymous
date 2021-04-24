<%@ Page Title="" Language="C#" MasterPageFile="~/Admin111.Master" AutoEventWireup="true" CodeBehind="RegistrationControl.aspx.cs" Inherits="User.RegistrationControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"> <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            margin-left: 222px;
            margin-top: 0px;
        }
        .auto-style2 {
            height: 156px;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"><body>
  
   <div>  
  <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Registration Control</a>
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
        <br />
   <!------Sidebar--->
<link href="Content/Admin.css" rel="stylesheet" />
<div class="sidenav">
  <a href="#about">About</a>
  <a href="#services">Services System</a>
  <a href="RegistrationControl.aspx">Registration Control</a>
  <a href="CoursesControl.aspx">Courses Control</a>
</div>
            
</div>
   
        
   
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style1" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None" Height="166px" Width="673px" DataKeyNames="Id" TabIndex="1">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:BoundField DataField="StudentID" HeaderText="StudentID" ReadOnly="True" SortExpression="StudentID" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetAllUsers" TypeName="User.Models.DBAccess" DataObjectTypeName="User.User" DeleteMethod="DeleteUser" InsertMethod="InsertUser" UpdateMethod="UpdateUser"></asp:ObjectDataSource>
   
        
   
    <br />
   
   
        <div class="auto-style2">
             <style type="text/css">
        .auto-style2 {
            margin-left: 222px;
            margin-top: 0px;
        }
        .auto-style2 {
            height: 156px;
        }
    </style>
            &nbsp;<asp:Label ID="Label5" runat="server"></asp:Label>
             <br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="StudentID"></asp:Label>
&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label7" runat="server" Text="FirstName"></asp:Label>
&nbsp;
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label8" runat="server" Text="LastName"></asp:Label>
&nbsp;
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
             Password
&nbsp;
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
             <br />
             <br />
             <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert" />
             <br />
        </div>
   
</body>
    
</asp:Content>
