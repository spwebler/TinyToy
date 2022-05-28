<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <style type="text/css">
.footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color: black;
   color: white;
   text-align: center;
}





      .style1
      {
          font-size: large;
      }
      .style2
      {
          font-size: large;
          }
      .style3
      {
          width: 100%;
          border: 5px solid #000000;
          background-color: #C4E3F3;
      }
      .style4
      {
          width: 348px;
      }
      .style5
      {
          width: 199px
      }
      .style6
      {
          width: 348px;
          height: 27px;
      }
      .style7
      {
          width: 199px;
          height: 27px;
      }
      .style8
      {
          height: 27px;
      }
      .style9
      {
          text-decoration: underline;
      }
      .style10
      {
          width: 199px;
          font-size: x-large;
          text-decoration: underline;
          font-family: "Berlin Sans FB";
      }
      .style11
      {
          font-size: x-large;
          font-family: "Berlin Sans FB";
      }
      .style12
      {
          width: 348px;
          font-size: x-large;
          font-family: "Berlin Sans FB";
      }
  </style>
    <title></title>
</head>
 
<body style="background-image: url('back.jpg');" >
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
            <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/faq.aspx">FAQ</asp:HyperLink></li>
            
          </ul>
        </li>
        <li><a href="Rough3.aspx">Gallery</a></li>
        <li class="active"><a href="AdminLogin.aspx">Admin</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="Signup.aspx"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="Login.aspx"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
       
      </ul>
    </div>
  </div>
</nav>
        <div class="text-center">
            <strong>
            <span class="style2">&nbsp;<br />
            <br />
            <br />
            <br />
            <br />
            <table class="style3">
                <tr>
                    <td class="style4">
                        </td>
                    </span><span class="style9">
                    <td class="style10">
                        Admin Login</td>
                    </span><span class="style2">
                    <td>
                        &nbsp;</td>
                </tr>
                </span><span class="style1">
                <tr>
                    <td class="style12">
                        Username</td>
                    </span><span class="style2">
                    <td class="style5">
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <span class="style2"><strong>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="Required*" Font-Bold="False" 
                            Font-Underline="False" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        </strong></span>
                    </td>
                </tr>
                <tr>
                    <td class="style6">
                        <strong>
                        <span class="style1">&nbsp;</span><span class="style11">&nbsp;&nbsp;</span></strong></span></strong><span 
                            class="style1"><span class="style2">&nbsp; </span>
                        <strong style="font-family: 'Berlin Sans FB'; font-size: x-large"><span class="style11"></span>
                        Password&nbsp;&nbsp;</span>&nbsp;&nbsp;</td>
                    </strong>
                    </span><strong><span class="style2">
                    <td class="style7">
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="style8">
                        <span class="style2"><strong>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="Required*" Font-Bold="False" 
                            Font-Underline="False" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        </strong></span>
                    </td>
                </tr>
                <tr>
                    <td class="style6">
                        &nbsp;</td>
                    <td class="style7">
        <asp:Button ID="Button1" runat="server" Text="LogIn" OnClick="Button1_Click" class="mybtnstyle"  BackColor="#011224" BorderColor="White" 
        BorderStyle="Dotted" BorderWidth="2px" ForeColor="White" Width="90" Height="40" 
                            />
    
                    </td>
                    <td class="style8">
        <asp:Label ID="Label1" runat="server"></asp:Label>
    
                    </td>
                </tr>
            </table>
            &nbsp;</span></strong>&nbsp;
        <br />
        <br />
        <br />
    
        <br />
        </div>
    
    </div>
    </form>
    <div class="footer">
  <p>Copyright@TinyToy2019</p>
</div>
    
</body>
</html>
