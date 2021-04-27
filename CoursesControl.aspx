<%@ Page Title="" Language="C#" MasterPageFile="~/Admin111.Master" AutoEventWireup="true" CodeBehind="CoursesControl.aspx.cs" Inherits="User.CoursesControl" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 76%;
            height: 142px;
            margin-left: 224px;
        }
        .auto-style2 {
            height: 12px;
        }
       
        .auto-style4 {
            height: 20px;
        }
        .auto-style5 {
            margin-left: 226px;
        }
        .auto-style6 {
            height: 28px;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
   <div>  
  <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"> Course Control</a>
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
        <br />
   <!------Sidebar--->
<link href="Content/Admin.css" rel="stylesheet" />
<div class="sidenav">
  <a href="#about">About</a>
  <a href="#services">Services System</a>
  <a href="#clients"><asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" >Registration Control</asp:LinkButton></a>
  <a href="#contact"><asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" >Courses Control</asp:LinkButton></a>
</div>
            
            
</div>
&nbsp;&nbsp;&nbsp;&nbsp;
    <table class="auto-style1">
        <tr>
            <td class="auto-style4" colspan="2" style="font-family: Arial, Helvetica, sans-serif; font-size: x-large; font-weight: bold">Courses Genarator </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="CourseID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label5" runat="server" Text="CourseName"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label6" runat="server" Text="Course Description"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox3" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label7" runat="server" Text="Professor"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox4" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label8" runat="server" Text="CourseEnd"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label9" runat="server" Text="Level"></asp:Label>
            </td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>Lower </asp:ListItem>
                    <asp:ListItem>Upper</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style6">
                <asp:Button ID="Button1" runat="server" Font-Size="Medium" ForeColor="#0066FF" OnClick="Button1_Click" Text="Insert" Width="146px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
&nbsp;<asp:GridView ID="GridView1" runat="server" CssClass="auto-style5" Width="710px" AutoGenerateColumns="False" DataKeyNames="CourseID" DataSourceID="SqlDataSource1" AllowSorting="True">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="CourseID" HeaderText="CourseID" ReadOnly="True" SortExpression="CourseID" />
            <asp:BoundField DataField="CourseName" HeaderText="CourseName" SortExpression="CourseName" />
            <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
            <asp:BoundField DataField="Professor" HeaderText="Professor" SortExpression="Professor" />
            <asp:BoundField DataField="Level" HeaderText="Level" SortExpression="Level" />
            <asp:BoundField DataField="DateEnd" HeaderText="DateEnd" SortExpression="DateEnd" />
        </Columns>
        <HeaderStyle BackColor="#3366FF" ForeColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM Courses WHERE (CourseID = @CourseID)" InsertCommand="INSERT INTO Courses(CourseID, CourseName, Subject, Professor, Level, DateEnd) VALUES (@CourseID, @CourseName, @Subject, @Professor, @Level, @DateEnd)" SelectCommand="SELECT Courses.* FROM Courses" UpdateCommand="UPDATE Courses SET CourseName = @CourseName, Subject = @Subject, Professor = @Professor, Level = @Level, DateEnd = @DateEnd WHERE (CourseID = @CourseID)">
        <DeleteParameters>
            <asp:Parameter Name="CourseID" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CourseID" />
            <asp:Parameter Name="CourseName" />
            <asp:Parameter Name="Subject" />
            <asp:Parameter Name="Professor" />
            <asp:Parameter Name="Level" />
            <asp:Parameter Name="DateEnd" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CourseName" />
            <asp:Parameter Name="Subject" />
            <asp:Parameter Name="Professor" />
            <asp:Parameter Name="Level" />
            <asp:Parameter Name="DateEnd" />
            <asp:Parameter Name="CourseID" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
