<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style type="text/css">
.container {
  position: relative;
  width: 100%;
}

.image {
  opacity: 1;
  display: block;
  width: 60%;
  height: auto;
  transition: .5s ease;
  backface-visibility: hidden;
}

.middle {
  transition: .5s ease;
  opacity: 0;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  text-align: center;
}

.container:hover .image {
  opacity: 0.3;
}

.container:hover .middle {
  opacity: 1;
}

.text {
  background-color: #000000;
  color: white;
  font-size: 16px;
  padding: 16px 32px;
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
        <li ><a href="TinyToy.aspx"><b>Home</b></a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#"><b>Know Us</b> <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/SignUp.aspx">FAQ</asp:HyperLink></li>
           
          </ul>
        </li>
        <li><a href="Rough3.aspx">Gallery</a></li>
        <li class="active"><a href="Gallery.aspx">Admin</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
       
        <li><asp:Button ID="Button1" runat="server"  OnClick="click" 
                 ForeColor="#CCCCCC" BorderColor="Black"  
                Font-Bold="True"  Text="Logout" BackColor="Black"></asp:Button></li>
       
      </ul>
    </div>
  </div>
</nav>
<center>
<br />
<br />
<h1><b>Welcome Admin!!<br /><h1>Admin Roles</h1></h1></b></center>
   
<table cellspacing="100" cellpadding="40" style="border-spacing: 3px;">
<tr>
<td>
<div class="container">
  <img src="admin1.JPG" alt="Avatar" class="image" style="width:100%;padding-left: 40px; ">
  <div class="middle">
    <div class="text">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ViewAdmission.aspx" ForeColor="White" >View Admission Record</asp:HyperLink></div>
  </div>
</div>
</td>
<td>
<div class="container">
  <img src="adminpics/search.png" alt="Avatar" class="image" style="width:80%;padding-left: 150px; ">
  <div class="middle">
    <div class="text"><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/searchrecord.aspx" ForeColor="White">Search Attendance Record</asp:HyperLink></div>
  </div>
</div>
  </td>
  </tr>
  
  <tr>
  <td>
  <hr />
  </td>
  <td>
  <hr /></td></tr>
  <tr>
<td>
<div class="container">
 <center> <img src="adminpics/fees2.png" alt="Avatar" class="image" style="width:100%; padding-left: 40px;" border="5" ></center>
  <div class="middle">
    <div class="text"><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/ViewTotal.aspx" ForeColor="White">View Fees Record</asp:HyperLink></div>
  </div>
</div>
</td>
<td>
<div class="container">
  <img src="adminpics/fees.png" alt="Avatar" class="image" style="width:80%;padding-left: 80px; ">
  <div class="middle">
    <div class="text"><asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/FeesDetails.aspx" ForeColor="White">Insert Fees</asp:HyperLink></div>
  </div>
</div>
  </td>
  </tr>
  <tr>
  <td>
  <hr />
  </td>
  <td>
  <hr /></td>
  </tr>
   <tr>
<td>
<div class="container">
  <img src="adminpics/attend.png" alt="Avatar" class="image" style="width:90%;padding-left: 40px;">
  <div class="middle">
    <div class="text"><asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Attendance.aspx" ForeColor="White">Add Attendance</asp:HyperLink></div>
  </div>
</div>
</td>
<td>
<div class="container">
  <img src="adminpics/fees3.png" alt="Avatar" class="image" style="width:80%;padding-left: 90px;">
  <div class="middle">
    <div class="text"><asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/AddFees.aspx" ForeColor="White">Manage Fees Installment</asp:HyperLink></div>
  </div>
</div>
  </td>
  </tr>
  <tr>
  <td>
  <hr />
  </td>
  <td>
  <hr /></td>
  </tr>
  <tr>
<td>
<div class="container">
  <img src="adminpics/birth.png" alt="Avatar" class="image" style="width:70%;height:60%;padding-left: 40px;">
  <div class="middle">
    <div class="text"><asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/ViewDetails.aspx" ForeColor="White">Check Birth Record</asp:HyperLink></div>
  </div>
</div>
</td>
<td>
<div class="container">
  <img src="adminpics/detail.png" alt="Avatar" class="image" style="width:80%;padding-left: 150px;">
  <div class="middle">
    <div class="text"><asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/FinalStudentDetails.aspx" ForeColor="White">FinalStudentList</asp:HyperLink></div>
  </div>
</div>
  </td>
  </tr>





   <tr>
<td>
<div class="container">
  <img src="adminpics/marks.png" alt="Avatar" class="image" style="width:90%;padding-left: 40px;">
  <div class="middle">
    <div class="text"><asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/AddMarks.aspx" ForeColor="White">Mark Record</asp:HyperLink></div>
  </div>
</div>
</td>
<td>
<div class="container">
  <img src="adminpics/appointment.png" alt="Avatar" class="image" style="width:80%;padding-left: 90px;">
  <div class="middle">
    <div class="text"><asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/ViewAppoint.aspx" ForeColor="White">Appointment </asp:HyperLink></div>
  </div>
</div>
  </td>
  </tr>

  </table>
  




  
    </div>
    </form>
     <div class="footer">
  <p>Copyright@TinyToy2019</p>
</div>
</body>
</html>
