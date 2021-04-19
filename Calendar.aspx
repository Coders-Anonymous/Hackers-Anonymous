<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calendar.aspx.cs" Inherits="User.Calendar" %>

<!DOCTYPE html>

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
      <li class="active"><a href="#">Home</a></li>
      <li><a href="/Calendar.aspx">Calendar</a></li>
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

                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Login Page.aspx">Log Out</asp:LinkButton>

                </a>
            </li>
        </ul>
  </div>
</nav>
        <div style="width:50%; margin: 0 auto;">   

            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="262px" Width="100%" OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged">
            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />            
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
            <TodayDayStyle BackColor="#CCCCCC" />
            </asp:Calendar>

        </div>

        <div>
            &nbsp
        </div>

        <div style="width: 50%; margin: 0 auto;">

            <asp:Label ID="Label4" runat="server" Text="Add a Notification:"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Height="34px" Width="100%"></asp:TextBox>
            
        </div>

        <div style="width: 50%; margin: 0 auto;">



            <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />



        </div>   
           
    </form>
</body>
</html>