<%@ Page Title="" Language="C#" MasterPageFile="~/Admin111.Master" AutoEventWireup="true" CodeBehind="RegistrationControl.aspx.cs" Inherits="User.RegistrationControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"> <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style type="text/css">
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
            <center>
       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style1" TabIndex="1" DataKeyNames="StudentID"  Height="166px" Width="673px" DataSourceID="SqlDataSource1">
           <AlternatingRowStyle BackColor="White" />
                   <Columns>
                       <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                       <asp:BoundField DataField="StudentID" HeaderText="StudentID" ReadOnly="True" SortExpression="StudentID" />
                       <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                       <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                       <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                   </Columns>

        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />

       </asp:GridView>
                               </center>
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Register]" DeleteCommand="DELETE FROM Register WHERE (StudentID = @StudentID)" InsertCommand="INSERT INTO Register(StudentID, FirstName, LastName, Password) VALUES (@StudentID, @FirstName, @LastName, @Password)" UpdateCommand="UPDATE Register SET FirstName = @FirstName, LastName = @LastName, Password = @Password WHERE (StudentID = @StudentID)">
           <DeleteParameters>
               <asp:Parameter Name="StudentID" />
           </DeleteParameters>
           <InsertParameters>
               <asp:Parameter Name="StudentID" />
               <asp:Parameter Name="FirstName" />
               <asp:Parameter Name="LastName" />
               <asp:Parameter Name="Password" />
           </InsertParameters>
           <UpdateParameters>
               <asp:Parameter Name="FirstName" />
               <asp:Parameter Name="LastName" />
               <asp:Parameter Name="Password" />
               <asp:Parameter Name="StudentID" />
           </UpdateParameters>
       </asp:SqlDataSource>
            
</div>
   
        
   
        <div class="auto-style2">
            <center>
             <style type="text/css">
        .auto-style2 {
            height: 156px;
        }
    </style>
            &nbsp;<asp:Label ID="ErrLabel" runat="server"></asp:Label>
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
                </center>
        </div>

        
   
    <br />
   
   
</body>
    
</asp:Content>
