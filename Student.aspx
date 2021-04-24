<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="User.Student" %>
<!DOCTYPE html>
<link href="Content/Navbar.css" rel="stylesheet" />
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

    <form id="form1" runat="server">

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Student Page</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><asp:LinkButton ID="LinkButton5" runat="server" text-align = "center" OnClick="LinkButton5_Click1">Home</asp:LinkButton></li>
      <li><asp:LinkButton ID="LinkButton2" runat="server" text-align = "center" OnClick="LinkButton2_Click">Calendar</asp:LinkButton></li>
      <li><asp:LinkButton ID="LinkButton3" runat="server" text-align = "center" OnClick="LinkButton3_Click">Study Buddy</asp:LinkButton></li>
      <li><asp:LinkButton ID="LinkButton4" runat="server" text-align = "center" OnClick="LinkButton4_Click">Classes</asp:LinkButton></li>
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
            <div>

                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Width="379px">
                    <Columns>
                        <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
                        <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Notifications.Class, Notifications.Notes, Notifications.Date FROM Register INNER JOIN Notifications ON Register.StudentID = Notifications.StudentID WHERE(Register.StudentID = @StudentID) ORDER BY Notifications.Date">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Label3" Name="StudentID" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>

                <br />

    </div>

    </form>
</body>
</html>
