<%@ Page Language="C#" AutoEventWireup="true" CodeFile="faq.aspx.cs" Inherits="faq" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
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
body {
  display: grid;
  place-items: center;
  background:
    linear-gradient(to bottom right, #1E6B75   15%, transparent),
    radial-gradient(circle at 100% 0%, rgba(255,255,255,.2) 10%, transparent 20%) center center / 15px 15px,
    linear-gradient(to bottom right, #53AFB9, #57ADD8);
}

   

   

  

  
      </style>
  
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
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
        <li><a href="Login.aspx"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
       
      </ul>
    </div>
  </div>
</nav>

<br />
<br /><br /><br /><center>
<img src="faq3.png" height="300" width="600" /></center>

    <div id="tom" align="center" font-size="20px" style="color: #FFFFFF; font-size: medium;">
    
    
    <br />
   
        <a href="#demo" class="btn  btn-lg btn-block" data-toggle="collapse" style="background-color: #000000">What Would my child learn being part of your playgoup</a>
  <div id="demo" class="collapse">
    <img src="kid.png" width="200" height="150" align="right" />Your child's first years of school are filled with many wondrous moments. It's a time of tremendous social, emotional, physical, and intellectual development, and it can come and go before you know it. The skills learned at this stage -- knowing what sounds the letter A makes or adding 2 + 2 -- may seem simple but they will set your child up for a lifetime of learning.
  </div>
  <br />
  <br />
  
  <a href="#Div2"class="btn  btn-lg btn-block" data-toggle="collapse" style="background-color: #000000" >Why does Playgroup offer five days rather than two or three days?</a>
  <div id="Div2" class="collapse">
    <img src="kids/kids3.jpg" width="200" height="150" align="left" />Consistency and predictability is crucial for young children. Children thrive when they know what each day brings, attending a few days a week may seem like “enough” to parents, but it is confusing for children.
  </div><br /><br />
  
  <a href="#Div3" class="btn  btn-lg btn-block" data-toggle="collapse" style="background-color: #000000" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;From what age my child can attend TinyToy?</a>
  <div id="Div3" class="collapse">
   <img src="kids/kids3.jpg" width="200" height="150" align="right" />We accept children from the age of 2, FEET funding is available (see details on www.surreycc.gov.in and page 1 of prospectus) 
   <br /><ul><li><b>PlayGroup(2 years completed)</b></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<li><b>Nursery(3 years completed)</b></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<li><b>Junior(4 years completed)</b></li></ul>
  </div>
  <br /><br />
  
  <a href="#Div4" class="btn  btn-lg btn-block" data-toggle="collapse" style="background-color: #000000" >Can i come to have a look around and can i stay and settle my child in the session?</a>
  <div id="Div4" class="collapse"><img src="clean.jpg" width="200" height="150" align="left" />
  Prospective Parents are welcome to visit TinyToy without prior arrangement, but it's helpful if you arrive after 9.30 so that the regular children can settle in with the full attention of staff. Parents are more than welcome to stay in the session for as long as it takes for their child to settle in and feel comfortable.
  </div>
  <br /><br />
  
  <a href="#Div5" class="btn  btn-lg btn-block" data-toggle="collapse" style="background-color: #000000" >Is there are a snack time in session&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
  <div id="Div5" class="collapse">
   <img src="kids/kids4.jpg" width="200" height="150" align="right" />Yes we have a snack-bar every day for the children to socialise and choose and serve their own food and drinks from a healthy selection. Milk and water are provided, but we ask for each child to bring a piece of fruit / a vegetable in every day to share. There is no extra charge for this.
  </div>
  <br /><br />
  
  <a href="#Div6" class="btn  btn-lg btn-block" data-toggle="collapse" style="background-color: #000000" >Does school provides any notes?</a>
  <div id="Div6" class="collapse">
  <img src="kids/kids5.jfif" width="200" height="200" align="left" /> Yes We provide notes worksheets that would be conducted by us in school also some practise sheets are provided for extra study. 
  </div>
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    </form>
    <div class="footer">
  

  <p>Copyright@TinyToy2019</p>
</div>
</body>
</html>
