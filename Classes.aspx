<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Classes.aspx.cs" Inherits="User.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href="Content/Classes.css" rel="stylesheet" />

</head>


<body>

    <!--navbar-->
 <form id="form1" runat="server">
        <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div id="nav-header" class="navbar-header">
      <a class="navbar-brand">Classes</a>
    </div>
    <ul class="nav navbar-nav">
      <li><asp:LinkButton ID="LinkButton5" runat="server" text-align = "center" OnClick="LinkButton5_Click">Home</asp:LinkButton></li>
      <li><asp:LinkButton ID="LinkButton2" runat="server" text-align = "center" OnClick="LinkButton2_Click">Calendar</asp:LinkButton></li>
      <li class="active"><asp:LinkButton ID="LinkButton4" runat="server" text-align = "center" OnClick="LinkButton4_Click">Classes</asp:LinkButton></li>
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
                <asp:LinkButton ID="LinkButton1" runat="server" text-align = "center" PostBackUrl="~/Login.aspx">Log Out</asp:LinkButton>
            </li>
        </ul>
  </div>
</nav>

         <!--CARDS / CLASSES INFO / CONTENT -->
    <center><div class="wrapper">
    <section class="cards">
<!--   card 1 -->
  <asp:LinkButton runat="server" OnClick="LinkButton7_Click" id="LinkButton7" class="noUnderline"><article class="card">
    <picture class="thumbnail">
         <img class="category__01" src="Images/MATH267.png" alt="" />
    </picture>
    <div class="card-content">
      <p class="category category__01">MATH 267</p>
        <h5>Next Assignment</h5>
      <h2>Factorial Assignment</h2>
      <p>This assignment will be going over factorials. Please do not use a calculator on this assignment.</p>
   </div><!-- .card-content -->
    <footer>
      <div class="post-meta">
        <h4>Due Date</h4>
          <h3>5/1</h3>
        </div>
    </footer>
  </article></asp:LinkButton>
<!--   card 2 -->
  <asp:LinkButton runat="server" OnClick="LinkButton8_Click" id="LinkButton8" class="noUnderline"><article class="card">
    <picture class="thumbnail">
         <img class="category__02" src="Images/CIS306.png" alt="" />
    </picture>
    <div class="card-content">
      <p class="category category__02">CIS 306</p>
        <h5>Next Assignment</h5>
      <h2>Intro to Java</h2>
      <p>This assignment will be a generic java assignment. You must create a single project - any project- using the Java Language.</p>
   </div><!-- .card-content -->
    <footer>
      <div class="post-meta">
        <h4>Due Date</h4>
          <h3>5/5</h3>
        </div>
    </footer>
  </article></asp:LinkButton>
<!--   card 3 -->
  <asp:LinkButton runat="server" OnClick="LinkButton9_Click" id="LinkButton9" class="noUnderline"><article class="card">
    <picture class="thumbnail">
         <img class="category__03" src="Images/CS255.png" alt="" />
    </picture>
    <div class="card-content">
      <p class="category category__03">CS 255</p>
        <h5>Next Assignment</h5>
      <h2>Intro to Python</h2>
      <p>This assignment will be going over generic python syntax.</p>
   </div><!-- .card-content -->
    <footer>
      <div class="post-meta">
        <h4>Due Date</h4>
          <h3>5/4</h3>
        </div>
    </footer>
  </article></asp:LinkButton>
<!--   card 4 -->
  <asp:LinkButton runat="server" OnClick="LinkButton10_Click" id="LinkButton10" class="noUnderline"><article class="card">
    <picture class="thumbnail">
         <img class="category__04" src="Images/CS302.png" alt="" />
    </picture>
    <div class="card-content">
      <p class="category category__04">CS 302</p>
        <h5>Next Assignment</h5>
      <h2>React Page Rendering</h2>
      <p>The goal of this assignment is to render a page in react. This page can be anything you want it to be.</p>
   </div><!-- .card-content -->
    <footer>
      <div class="post-meta">
        <h4>Due Date</h4>
          <h3>5/5</h3>
        </div>
    </footer>
  </article></asp:LinkButton>
<!--   card 5 -->
  <asp:LinkButton runat="server" OnClick="LinkButton11_Click" id="LinkButton11" class="noUnderline"><article class="card">
    <picture class="thumbnail">
         <img class="category__02" src="Images/econ301.png" alt="" />
    </picture>
    <div class="card-content">
      <p class="category category__02">ECON 301</p>
        <h5>Next Assignment</h5>
      <h2>Supply and Demand Paper</h2>
      <p>This will be a paper you need to write on the Supply and Demand. This paper will need to be at least 2 pages double spaced and a minimum of 500 words.</p>
   </div><!-- .card-content -->
    <footer>
      <div class="post-meta">
        <h4>Due Date</h4>
          <h3>5/3</h3>
        </div>
    </footer>
  </article></asp:LinkButton>
  <!--   card 6 -->
  <asp:LinkButton runat="server" OnClick="LinkButton12_Click" id="LinkButton12" class="noUnderline"><article class="card">
    <picture class="thumbnail">
         <img class="category__01" src="Images/econ205.jpg" alt="" />
    </picture>
    <div class="card-content">
      <p class="category category__01">ECON 205</p>
        <h5>Next Assignment</h5>
      <h2>Fed Research Paper</h2>
      <p>This will be a research paper about the fed. Some topics you can include are how the Fed operates, who is in charge of the fed, and what they do.</p>
   </div><!-- .card-content -->
    <footer>
      <div class="post-meta">
        <h4>Due Date</h4>
          <h3>5/3</h3>
        </div>
    </footer>
  </article></asp:LinkButton>
</section>
</div></center>

    </form>
</body>
</html>
