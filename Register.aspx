<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="User.Register" %>
<!DOCTYPE html>
<link href="Content/Register.css" rel="stylesheet" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body class="bg-image" style="background-image: url('https://mdbcdn.b-cdn.net/img/new/slides/003.jpg')";>
    <h1 class="text-center text-white">Register</h1>
    <form id="form1" runat="server">
        <div> 
            <asp:Label ID="ErrLabel" runat="server" Text=" "></asp:Label>
        </div>
        <center><div class="jumbotron">
            <div class="container">
            <div class="row align-items-center">
                <div class="items-center">
            <asp:Label ID="Label1" runat="server" Text="StudentID: "></asp:Label>
            <asp:TextBox ID="IDText" runat="server"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="IDText" ErrorMessage="Please Enter StudentID"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label2" runat="server" Text="First Name: "></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Last Name: "></asp:Label>

            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>

            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Password: "></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>

            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" />
        </div>
        <div>

            Already Registered?
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Login Page.aspx">Login Page</asp:LinkButton>

        </div>
        <div>
            </div>
                </div>
                </div>
            
            <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="StudentID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="StudentID" HeaderText="StudentID" ReadOnly="True" SortExpression="StudentID" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO Register(StudentID, FirstName, LastName, Password) VALUES (@StudentID, @FirstName, @LastName, @Password)" SelectCommand="SELECT Register.* FROM Register">
                <InsertParameters>
                    <asp:Parameter Name="StudentID" />
                    <asp:Parameter Name="FirstName" />
                    <asp:Parameter Name="LastName" />
                    <asp:Parameter Name="Password" />
                </InsertParameters>
            </asp:SqlDataSource>

        </div>
            </div>
            </center>
    </form>
</body>
</html>
