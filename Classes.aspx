<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Classes.aspx.cs" Inherits="User.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="StudentID" DataSourceID="classesDB" Height="207px" Width="577px">
            <Columns>
                <asp:BoundField DataField="StudentID" HeaderText="StudentID" ReadOnly="True" SortExpression="StudentID" />
                <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
                <asp:BoundField DataField="Assignment" HeaderText="Assignment" SortExpression="Assignment" />
                <asp:BoundField DataField="DueDate" HeaderText="DueDate" SortExpression="DueDate" />
                <asp:BoundField DataField="Done" HeaderText="Done" SortExpression="Done" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="classesDB" runat="server" ConnectionString="<%$ ConnectionStrings:classesConnection %>" SelectCommand="SELECT * FROM [Classes]"></asp:SqlDataSource>
    </form>
</body>
</html>
