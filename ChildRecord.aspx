<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChildRecord.aspx.cs" Inherits="ChildRecord" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <title></title>
    
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


.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
  font-family: arial;
   background-color: #D3D3D3;
}

.title {
  color: grey;
  font-size: 18px;
}

button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

.a {
  text-decoration: none;
  font-size: 20px;
  color: black;
}

button:hover, a:hover {
  opacity: 0.7;
}
body {
  display: grid;
 
  background:
    linear-gradient(to bottom right, #1E6B75   15%, transparent),
    radial-gradient(circle at 100% 0%, rgba(255,255,255,.2) 10%, transparent 20%) center center / 15px 15px,
    linear-gradient(to bottom right, #53AFB9, #57ADD8);
}

 
</style>
</head>
<body>

    <form id="form2" runat="server">
    <div>
    
<br />
<br />
<br />
<br />
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
        <br />
        <center><h1 style="font-size:30px;font-weight:bolder;background-color:#D3D3D3">Get Your Child Record here!!!<br /></h1></center>
        <br /><br /><center>
         <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/AddApointment.aspx" 
            BorderColor="#0099CC" BorderStyle="Double" BorderWidth="5px" Font-Bold="True" 
            Font-Size="X-Large" ForeColor="White">Add Appointment</asp:HyperLink></center>
        &nbsp;&nbsp;<br /><br />
        <table class="nav-justified">
            <tr>
                <td>
                    <div class="card">
  <img src="child1.jpg" alt="fees" style="width:100%">
  <h1>Fees Status</h1>
  <p class="title">Dues and Paid</p>
  <p>TinyToy</p>
  <div style="margin: 24px 0;">
    
  </div>
  <p><button><a href="ViewStudentFees.aspx" style="color:White;" class="a">Click Here</a></button></p>
</div></td>
                <td>
                    <div class="card">
  <img src="child2.png" alt="John" style="width:100%">
  <h1>Attendance Status</h1>
  <p class="title">Present and Absent Count</p>
  <p>TinyToy</p>
  <div style="margin: 24px 0;">
    
  </div>
  <p><button><a href="ViewSpecificAttendance.aspx" style="color:White;" class="a">Click Here</a></button></p>
</div></td>

<td>
  <div class="card">
  <img src="child4.jpg" alt="John" style="width:100%">
  <h1>Appointment Status</h1>
  <p class="title">Check your status</p>
  <p>TinyToy</p>
  
  <div style="margin: 24px 0;">
    
  </div>
  <p><button><a href="ViewSpecificAppoint.aspx" style="color:White;" class="a">Click Here</a></button></p>
</div></td>
</td>
            
                
                <td>
                <div class="card">
  <img src="child3.jpg" alt="John" style="width:100%">
  <h1>Result</h1>
  <p class="title">Get Your Score</p>
  <p>TinyToy</p>
  <div style="margin: 24px 0;">
    
  </div>
  <p><button><a href="ViewSpecificMarks.aspx" style="color:White;" class="a">Click Here</a></button></p>
</div>

                    </td>
            </tr>
           
        </table>

        <br />
        <center>
         <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Logout"
            BackColor="#011224" BorderColor="White" BorderStyle="Dotted" BorderWidth="2px" 
            ForeColor="White" Width="90" Height="50" />
        
        <br />
        <br />
        <br />
    </div>



  
    
    </form>


  <div class="footer">
  <p>Copyright@TinyToy2019</p>
</div>
    
</body>
</html>

