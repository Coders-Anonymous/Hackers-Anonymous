<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calender.aspx.cs" Inherits="User.Calander" %>
<link href="Content/Navbar.css" rel="stylesheet" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    </head>
<body>
    <h1>Calendar</h1>
    <form id="form1" runat="server">
        <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Student Page</a>
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
        <div>
            <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" OnDayRender="Calendar1_DayRender"></asp:Calendar>
            <br />
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Class"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Notes"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label6" runat="server" Text="Date"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click" />
            <br />
            <asp:Label ID="ErrLabel" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="StudentID">
                <Columns>
                    <asp:BoundField DataField="StudentID" HeaderText="StudentID" SortExpression="StudentID" />
                    <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
                    <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Notifications]" InsertCommand="INSERT INTO Notifications(StudentID, Class, Date, Notes) VALUES (@StudentID, @Class, @Date, @Notes)">
                <InsertParameters>
                    <asp:Parameter Name="StudentID" />
                    <asp:Parameter Name="Class" />
                    <asp:Parameter Name="Date" />
                    <asp:Parameter Name="Notes" />
                </InsertParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <asp:TextBox ID="TextBox5" runat="server" Visible="False"></asp:TextBox>
        </div>
    </form>
</body>
</html>
