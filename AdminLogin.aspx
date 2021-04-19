<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="User.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1>Admin Login</h1>
    <form id="form1" runat="server">
       <div>

            <asp:Label ID="Label3" runat="server" Text=" "></asp:Label>

        </div>
        <div>

            <asp:Label ID="Label1" runat="server" Text="UserID: "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" public-data ="Test"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Password: "></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
            <br />
        </div>
    </form>
</body>
</html>
