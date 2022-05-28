<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Step2.aspx.cs" Inherits="Step2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" type="text/css" href="Parent.css" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <title></title>
     
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="TinyToy.aspx">TinyToy</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="TinyToy.aspx"><b>Home</b></a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#"><b>Know Us</b> <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/faq.aspx">FAQ</asp:HyperLink></li>
            
          </ul>
        </li>
        <li><a href="Rough3.aspx">Gallery</a></li>
        <li><a href="AdminLogin.aspx">Admin</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="Signup.aspx"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
         <li><a href="ParentLogin.aspx">Back</a></li>
      </ul>
    </div>
  </div>
</nav>
<br />
<br />

    <asp:Image ID="Image1" runat="server" Height="190px" ImageUrl="~/banner1.jpeg" 
            Width="1389px" style="border: thick groove #000000" />
        <br />
    <div class="container">
  <h2><center>ADMISSION FORM</center></h2>
  <ul class="nav nav-tabs">
    <li> <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/admission.aspx" BackColor="Black" ForeColor="White">STEP-1</asp:HyperLink></li>
    <li class="active">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Step2.aspx">STEP-2</asp:HyperLink></li>
   
  </ul>
  <br>
    
        <h1>Attach<br />
        Birth Certificate</h1><asp:FileUpload ID="FileUpload1" runat="server" />
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit"  BackColor="#011224" BorderColor="White" 
        BorderStyle="Dotted" BorderWidth="2px" ForeColor="White" Width="90" Height="50" />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    
    </div>
    </form>
     <div class="footer">
  <p>Copyright@TinyToy2019</p>
</div>

</body>
</html>
