<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ParentLogin.aspx.cs" Inherits="ParentLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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


.wrapper {
  position: relative;
  perspective: 40em;
  display: grid;
  transform-style: preserve-3d;
}

.card {
  grid-area: 1 / 1;
  height: 200px;
  width: 400px;
  transform: translateX(10px) rotateY(25deg) rotateX(10deg);
  background: rgba(249, 198, 26, 0.88);
  display: flex;
  justify-content: flex-start;
  align-items: center;
  padding: 30px;
  color: #000;
  text-transform: uppercase;
  font-size: 60px;
  font-weight: 900;
  backface-visibility: hidden;
  box-shadow: 0 10px 30px -3px rgba(0,0,0,.1);
}

h1 {
  font-size: 60px;
  font-weight: 900;
}

.card .enclosed {
  background: #000;
  line-height: 1;
  color: rgba(249, 198, 26, 1);
  padding: 0 5px;
  display: inline-block;
  transform: translate(-1px, 1px) scale(0.75);
  transform-origin: right center;
}

.wrapper:before {
  --bw: 9px;
  grid-area: 1 / 1;
  content: '';
  backface-visibility: hidden;
  height: 100%;
  width: 100%;
         background: ;
         transform: translateX(-60px) rotateY(-30deg) rotateX(15deg) scale(1.03);
         pointer-events: none;
         box-sizing: content-box;
         margin-top: calc(-1 * var(--bw));
     }


.wrapper:hover > div,
.wrapper:hover:before {
  transform: none;
}


.wrapper > div,
.wrapper:before {
  will-change: transform;
  transition: .3s transform cubic-bezier(.25,.46,.45,1);
}



html,
body {
  height: 100%;
}

body {
  display: grid;
  place-items: center;
  background:
    linear-gradient(to bottom right, #1E6B75   15%, transparent),
    radial-gradient(circle at 100% 0%, rgba(255,255,255,.2) 10%, transparent 20%) center center / 15px 15px,
    linear-gradient(to bottom right, #53AFB9, #57ADD8);
}

#info
{
    font-size:large;
    color:White;
}
</style>
  
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
            <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/faq.aspx">FAQ</asp:HyperLink></li>
            
          </ul>
        </li>
        <li><a href="Rough3.aspx">Gallery</a></li>
        <li><a href="AdminLogin.aspx">Admin</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="Signup.aspx"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
       
       
      </ul>
    </div>
  </div>
</nav>

<br />
<br /><br /><br />

    <center >
    
    <br />
    <br />
   <div class="wrapper">
  <div class="card">
    <h1>
      <span class="enclosed">Welcome</span>Parent
    </h1>
  </div>
</div>
<br />

<br />
<br />
<asp:Label ID="Label1" runat="server" Font-Size="Large" ForeColor="White" /><br />
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Admission.aspx" 
            BorderColor="#0099CC" BorderStyle="Double" BorderWidth="5px" Font-Bold="True" 
            Font-Size="X-Large" ForeColor="White">Fill Admision Form</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/FreashAppointment.aspx" 
            BorderColor="#0099CC" BorderStyle="Double" BorderWidth="5px" Font-Bold="True" 
            Font-Size="X-Large" ForeColor="White">Add Appointment</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/CheckTime.aspx" 
            BorderColor="#0099CC" BorderStyle="Double" BorderWidth="5px" Font-Bold="True" 
            Font-Size="X-Large" ForeColor="White">Check Time of Appointment</asp:HyperLink>
            
            </center>
      
      <center>
        
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Logout"
            BackColor="#011224" BorderColor="White" BorderStyle="Dotted" BorderWidth="2px" 
            ForeColor="White" Width="90" Height="50" /></center>
        </div>
    <br  />
    <center>
        <div id="info">
            
        Know your child record!!  <img src="kid.png" height="100" width="150" /><br />
        
        Enter the following details.<br />
        Enter Roll No:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><div id="info">Enter Class:</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" Text="Submit" 
        onclick="Button2_Click" BackColor="#011224" BorderColor="White" 
        BorderStyle="Dotted" BorderWidth="2px" ForeColor="White" Width="90" Height="50" />
        <br />
        <br />
        <br />
      </center>
    </center>
     <div class="footer">
  

  <p>Copyright@TinyToy2019</p>
</div>
    </form>
</body>
</html>
