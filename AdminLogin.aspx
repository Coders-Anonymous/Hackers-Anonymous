﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="User.AdminLogin" %>
<!DOCTYPE html>
<link href="Content/Login%20Page.css" rel="stylesheet" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body class="bg">
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label3" runat="server" Text=" "></asp:Label>
        </div>
        <center><div class="admin-jumb">
            <h1>Admin Login</h1>
            <div class="container">
            <div class="row align-items-center">
                <div class="items-center">
                <div>
                <asp:Label CssClass="label" class="text-left" ID="Label1" runat="server" Text="UserID: "></asp:Label>
                    <br />
                <asp:TextBox CssClass="tb" ID="TextBox1" runat="server" public-data ="Test"></asp:TextBox>
                </div>
                <br />
                <br />
                <asp:Label CssClass="label" ID="Label2" runat="server" Text="Password: "></asp:Label>
                    <br />
                <asp:TextBox CssClass="tb" ID="TextBox2" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button CssClass="login-btn" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                <br />
                <asp:LinkButton CssClass="register-btn" ID="LinkButton1" runat="server" PostBackUrl="~/Register.aspx">Register</asp:LinkButton>
                <br />
            </div>
            </div>
        </div>
        </div>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="AdminID" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="AdminID" HeaderText="AdminID" ReadOnly="True" SortExpression="AdminID" />
                        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    </Columns>
                </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [AdminID], [FirstName], [Password] FROM [Admin]"></asp:SqlDataSource>
            </center>
    </form>
</body>
</html>
