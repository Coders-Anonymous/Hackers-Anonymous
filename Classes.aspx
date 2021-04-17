<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Classes.aspx.cs" Inherits="User.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Classes</title>
    <center><h1>Current Classes</h1></center>
</head>
<body>
    <center><ul>
        <li>Math 267</li>
        <li>CS 364</li>
        <li>CIS 213</li>
        <li>ENG 301</li>
        <li>BCOM 320</li>
    </ul></center>
</body>
    <footer>
       <center><h1>Assignments</h1>
        <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="StudentID" DataSourceID="classesDB" Height="217px" Width="574px">
            <Columns>
                <asp:BoundField DataField="StudentID" HeaderText="StudentID" ReadOnly="True" SortExpression="StudentID" />
                <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
                <asp:BoundField DataField="Assignment" HeaderText="Assignment" SortExpression="Assignment" />
                <asp:BoundField DataField="DueDate" HeaderText="DueDate" SortExpression="DueDate" />
                <asp:BoundField DataField="Done" HeaderText="Done" SortExpression="Done" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="classesDB" runat="server" ConnectionString="<%$ ConnectionStrings:classesConnection %>" SelectCommand="SELECT * FROM [Classes]"></asp:SqlDataSource>
    </form></center>
    </footer>
</html>
