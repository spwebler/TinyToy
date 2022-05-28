<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <style type="text/css">
        .style1
        {
            width: 100%;
            border-style: solid;
            border-width: 1px;
        }
        .style2
        {
            width: 228px;
        }
        .style3
        {
            width: 295px;
        }
        .style4
        {
            width: 228px;
            height: 14px;
        }
        .style5
        {
            width: 295px;
            height: 14px;
        }
        .style6
        {
            height: 14px;
        }
        .footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color: black;
   color: white;
   text-align: center;
}


    </style>
</head>
<body style="background-image: linear-gradient(-90deg,#3fd5ea,#038496);" >
    <form id="form1" runat="server">
    <div align="center">
     <nav class="navbar navbar-inverse">
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
        <li class="active"><a href="TinyToy.aspx">Home</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Know Us <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/faq.aspx">FAQ</asp:HyperLink></li>
            
          </ul>
        </li>
        
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="SignUp.aspx"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="Login.aspx"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>
    <center><img src="login.png" width="70" height="70" /></center>
        <h2 syle="text-decoration: underline; font-family: 'Californian FB'; font-size: 26px; font-weight: bolder">Login Here</h2><br />
        <table cellpadding="2" class="style1">
            <tr>
                <td class="style4" style=" font-family: 'Californian FB'; font-size: 26px; font-weight: bolder; color: #FFFFFF;">
                    Email</td>
                <td class="style5">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td class="style6" style=" font-family: 'Californian FB'; font-size: 22px; font-weight: bolder; ">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Please enter email"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2" style="font-family: 'Californian FB'; font-size: 26px; font-weight: bolder;color: #FFFFFF">
                    Password</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td style=" font-family: 'Californian FB'; font-size: 22px; font-weight: bolder">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Please enter password"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Login" 
                        Width="69px" BackColor="#011224" BorderColor="White" BorderStyle="Dotted" BorderWidth="2px" 
            ForeColor="White"/>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    <asp:Label ID="Label1" runat="server" Font-Size="Large" ForeColor="White"></asp:Label>
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink2" runat="server" CssClass="alert-info" 
                        ForeColor="#000066" NavigateUrl="~/Forget.aspx">Forget Password</asp:HyperLink>
                </td>
            </tr>
        </table>
    
    </div>
    <div class="footer">
  <p>Copyright@TinyToy2019</p>
</div>
    </form>
</body>
</html>
