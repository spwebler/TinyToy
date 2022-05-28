<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TinyToy.aspx.cs" Inherits="TinyToy" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta name="viewport" content="width=device-width, initial-scale=1">
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

.header
{
    
    background-image:url("black1.jpg");
    height:40%;
}
.glow {
  font-size: 80px;
  color: #fff;
  text-align: center;
  -webkit-animation: glow 1s ease-in-out infinite alternate;
  -moz-animation: glow 1s ease-in-out infinite alternate;
  animation: glow 1s ease-in-out infinite alternate;
}

@-webkit-keyframes glow {
  from {
    text-shadow: 0 0 10px #fff, 0 0 20px #fff, 0 0 30px #06656b, 0 0 40px #06656b, 0 0 50px #06656b, 0 0 60px #06656b, 0 0 70px #06656b;
  }
  
  to {
    text-shadow: 0 0 20px #fff, 0 0 30px #85e0e5, 0 0 40px #85e0e5, 0 0 50px #85e0e5, 0 0 60px #85e0e5, 0 0 70px #85e0e5, 0 0 80px #85e0e5;
  }
}
.flip-box {
  background-color: transparent;
  width: 400px;
  height: 300px;
  border: 1px solid #f1f1f1;
  perspective: 1000px;
}

.flip-box-inner {
  position: relative;
  width: 100%;
  height: 100%;
  text-align: center;
  transition: transform 0.8s;
  transform-style: preserve-3d;
}

.flip-box:hover .flip-box-inner {
  transform: rotateY(180deg);
}

.flip-box-front, .flip-box-back {
  position: absolute;
  width: 100%;
  height: 100%;
  backface-visibility: hidden;
}

.flip-box-front {
  background-color: #bbb;
  color: black;
}

.flip-box-back {
  background-color: #555;
  color: white;
  transform: rotateY(180deg);
}
<!-- collapsible-->
 .person {
    border: 10px dotted;
    border-color:white;
    margin-bottom: 25px;
    width: 80%;
    height: 80%;
    opacity: 0.7;
  }

  .person:hover 
  {
      border-style: dotted;
    border-color: #f1f1f1;
    opacity:0.6;
  }
  
  
  
  
 
  .bg-grey {
    background-color: #f6f6f6;
  }
 
  .carousel-control.right, .carousel-control.left {
   background-image: none;
   color: #035163;
  }
  .carousel-indicators li {
    border-color: #035163;
  }
  .carousel-indicators li.active {
    background-color: #035163;
  }
  .item h4 {
    font-size: 26px;
    line-height: 1.375em;
    font-weight: 700;
    font-style: italic;
    margin: 70px 0;
  }
  .item span {
    font-style: normal;
  }
  @media screen and (max-width: 768px) {
    .col-sm-4 {
      text-align: center;
      margin: 25px 0;
    }
  }
 
 
 .parents
 {
     border: 10px dotted black;
  padding: 15px;
 /* background: #03b5c1;*/
  background-clip: padding-box;
   background-image: linear-gradient(-90deg,#038496, #3fd5ea);
 }
 
 
 
 
 #grad4 
 {
      border: 10px dotted black;
  height: 1020px;
  background-color: red; /* For browsers that do not support gradients */
  background-image: linear-gradient(-90deg,#038496, #3fd5ea); /* Standard syntax (must be last) */
}
</style>
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
        <li><a href="AdminLogin.aspx">Admin</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="Signup.aspx"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="Login.aspx"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
       
      </ul>
    </div>
  </div>
</nav>







<div class="content">
 <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
        <img src="banner2.jpeg" alt="tinytoy" style="width:100%;">
        <div class="carousel-caption">
          <h3>Tiny Toy</h3>
          <p>Right Place for your Kid!</p>
        </div>
      </div>

      <div class="item">
        <img src="image1.jpg" alt="tinytoy" style="width:100%;height:auto" height="50">
        <div class="carousel-caption">
         <h3>Our Teachers</h3>
          <p>First Class Photo!</p>
          
        </div>
      </div>
    
      <div class="item">
        <img src="image3.jpg" alt="tinytoy" style="width:100%;height:50" height="50">
        <div class="carousel-caption">
         <h3>Our Toddlers</h3>
          <p>Some Happy Moments!</p>
         
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
  
</div>

<div class="header">
<h1 class="glow">Tiny Toy</h1><br />
<center><h3 style="color:White;">PreSchool,PlayGroup,Nursery  for Toddlers!!</h3></center>
  </div>  
  <center>
  <div class="flip-box">
  
  
  <div class="flip-box-inner">
    <div class="flip-box-front">
      <img src="award1.jpg" alt="Award" style="width:400px;height:300px;border:3px">
    </div>
    <div class="flip-box-back">
      <h3>BY KB PATIL SCHOOL</h3>
      <p>YEAR 2019</p>
    </div>
  </div>
  </center>
</div>

  <div class="parents">
   <h2 style="font-family:Kristen ITC;"><b><center>We are proud to announce that we have received<br /> "BEST CURRICULUM AWARD 2019"</center></b></h2></div>
   

<div class="container text-center">
  <br />
  <center>
  <h1 style="font-family:Kristen ITC;"> <b>Why Choose Us??</b></h1></center>
  <div class="row">
    <div class="col-sm-4">
      <p class="text-center"><strong><b><h2 style="font-family:Kristen ITC;">Total Health And Hygiene</b></strong></h2></p><br>
      <a href="#demo" data-toggle="collapse">
        <img src="clean.jpg" class="img-circle person" alt="Name" width="255" height="255">
      </a>
      <div id="demo" class="collapse">
        <p style="font-size: 26px; font-weight: bolder;font-family:Viner Hand ITC" ><b>100% Non Toxix & Safe Toys</p>
        <p style="font-size: 26px; font-weight: bolder;font-family:Viner Hand ITC">Sanitised Toilets</p>
        <p style="font-size: 26px; font-weight: bolder;font-family:Viner Hand ITC">Hygienic Classrooms</b></p>
      </div>
    </div>
    <div class="col-sm-4">
      <p class="text-center"><strong><b><h2 style="font-family:Kristen ITC;">360 learning</b></strong></p></h2><br>
      <a href="#demo2" data-toggle="collapse">
        <img src="motor.jpg" class="img-circle person" alt="Name" width="255" height="255">
      </a>
      <div id="demo2" class="collapse">
        <p style="font-size: 26px; font-weight: bold;font-family:Viner Hand ITC"><b>Developing Motor Skills</p>
        <p style="font-size: 26px; font-weight: bold;font-family:Viner Hand ITC"> <b>Building Brain Power</p>
        <p style="font-size: 26px; font-weight: bold;font-family:Viner Hand ITC"><b>Developing Good Skills</b></p>
      </div>
    </div>
    <div class="col-sm-4">
      <p class="text-center"><strong><b><h2 style="font-family:Kristen ITC;">Toddlers Safety</b></strong></h2></p><br>
      <a href="#demo3" data-toggle="collapse">
        <img src="cctv.png" class="img-circle person" alt="Name" width="255" height="255">
      </a>
      <div id="demo3" class="collapse">
        <p style="font-size: 26px; font-weight: bold;font-family:Viner Hand ITC"><b>CCTV Monitoring</b></p>
        <p style="font-size: 26px; font-weight: bold;font-family:Viner Hand ITC"><b>Child Safe Furniture</b></p>
        <p style="font-size: 26px; font-weight: bold;font-family:Viner Hand ITC"><b>First Aid Kits</b></p>
      </div>
    </div>
  </div>
</div>

<hr />
<br />
<center>
   <div>
   <video width="600" controls>
  <source src="tinytoy.mp4" type="video/mp4">
 
  Your browser does not support HTML5 video.
</video></center>
<br />

<center>
<div class="parents">
<h2 style="font-family:Kristen ITC;" ><b>What our Parents Say</b></h2></center>
  <div id="Div1" class="carousel slide text-center" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <h4>"Awesome Preschool. I am so happy with the result!"<br><span>Spruha Joshi, Engineer, 2010</span></h4>
      </div>
      <div class="item">
        <h4>"Helped my child for overall development!!"<br><span>Karan Patel, MCA, 2015</span></h4>
      </div>
      <div class="item">
        <h4>"I am happy to see my child flourishing by skills thought in preschool"<br><span>Sanket Sharma, Realek company, 2018</span></h4>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>

  </div>


  </div>

  
<div id="grad4" style="text-align:center;">
<img src="faq.png" width="600" height="500"/><br /><h2 style=" font-family: 'Kristen ITC'"><u>Contact us at</h2></u>
<br />
<h2 style="color: #FFFFFF; font-family: 'Kristen ITC'"><img src="address.png" height="50" width="50" />&nbsp;&nbsp;Insitute Address:</h2><h3 style="color: #FFFFFF; font-family: 'Kristen ITC'">Plot 510,d/6,Sector-5,Charkop,Kandiwali(West),Mumbai-67.</h3>
<br />
<h2 style="color: #FFFFFF; font-family: 'Kristen ITC'"><img src="email.png" height="50" width="50" />&nbsp;&nbsp;Email:</h2><h3 style="color: #FFFFFF; font-family: 'Kristen ITC'">shrawal99@gmail.com</h3>
<br />
<h2 style="color: #FFFFFF; font-family: 'Kristen ITC'"><img src="phone.png" height="50" width="50" />&nbsp;&nbsp;Mobile:</h2><h3 style="color: #FFFFFF; font-family: 'Kristen ITC'">9594238885</h3><br /><br />
</div>

   
    <div class="footer">
  <p>Copyright@TinyToy2019</p>
</div>
    
    
    </form>
</body>
</html>
