<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Rough3.aspx.cs" Inherits="Rough3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="Stylesheet" type="text/css" href="swiper.min.css" />
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
    <style type="text/css">
    body {
      background:black;
      font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
      font-size: 14px;
      color:#000;
      margin: 0;
      padding: 0;
    }
    .swiper-container {
      width: 100%;
      padding-top: 50px;
      padding-bottom: 50px;
    }
    .swiper-slide {
      background-position: center;
      background-size: cover;
      width: 400px;
      height: 580px;
      background:#fff;
    }
    .details
    {
        text-align:center;
    }
    img:hover
    {
        opacity:0.4;
    }
    
    
    
    
    .neon {
    position: relative;
    overflow: hidden;
    filter: brightness(200%);
    background-color:Black;
}

.text {
    background-color: black;
    color: white;
    font-size: 140px;
    font-weight: bold;
    font-family: sans-serif;
    text-transform: uppercase;
    position: relative;
    user-select: none;
}

.text::before {
    content: attr(data-text);
    position: absolute;
    color: white;
    filter: blur(0.02em);
    mix-blend-mode: difference;
}

.gradient {
    position: absolute;
    background: linear-gradient(45deg, red, gold, lightgreen, gold, red);
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    mix-blend-mode: multiply;
}

.spotlight {
    position: absolute;
    top: -100%;
    left: -100%;
    right: 0;
    bottom: 0;
    background: 
        radial-gradient(
            circle,
            white,
            transparent 25%
        ) center / 25% 25%,
        radial-gradient(
            circle,
            white,
            black 25%
        ) center / 12.5% 12.5%;
    animation: light 5s linear infinite;
    mix-blend-mode: color-dodge;
}

@keyframes light {
    to {
        transform: translate(50%, 50%);
    }
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
        <li ><a href="TinyToy.aspx">Home</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="Rough3.aspx">Know More <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/faq.aspx">FAQ</asp:HyperLink></li>
            
          </ul>
        </li>
        <li class="active"><asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Rough3.aspx">Gallery</asp:HyperLink></li>
        <li><asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Admin.aspx">Admin</asp:HyperLink></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="Signup.aspx"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="Login.aspx"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>
<br />
    <center>
    <div class="neon">
  <span class="text" data-text="Gallery">Gallery</span>
  <span class="gradient"></span>
  <span class="spotlight"></span>
</div></center>
<hr style="background-image: url('back.jpg');height="50";"/>
    <!-- Swiper -->
  <div class="swiper-container">
    <div class="swiper-wrapper">
      <div class="swiper-slide">
      <div class="imgBx">
      <img src="first.jpg" style="width: 400px; height: 500px"  />
      </div>
      <div class="details">
      <h3>Moments<br /><span>Firt Day to School</span></h3>
      </div>
      
      
      </div>
       <div class="swiper-slide">
      <div class="imgBx">
      <img src="gallery/img8.jpg" style="width: 400px; height: 500px" />
      </div>
      <div class="details">
      <h3>Teachers Day<br /><span>Celebrating 15 years</span></h3>
      </div>
      
      
      </div>
      <div class="swiper-slide">
      <div class="imgBx">
      <img src="gallery/img2.jpg" style="width: 400px; height: 500px" />
      </div>
      <div class="details">
      <h3>Festivals<br /><span>Daahi Handi</span></h3>
      </div>
      
      
      </div>
      <div class="swiper-slide">
      <div class="imgBx">
      <img src="gallery/img3.jpg" style="width: 400px; height: 500px" />
      </div>
      <div class="details">
      <h3>Activities<br /><span>Group Activities</span></h3>
      </div>
      
      
      </div>
      <div class="swiper-slide">
      <div class="imgBx">
      <img src="gallery/img7.jpg" style="width: 400px; height: 500px" />
      </div>
      <div class="details">
      <h3>Activities<br /><span>Singing</span></h3>
      </div>
      
      
      </div>
      <div class="swiper-slide">
      <div class="imgBx">
      <img src="gallery/img4.jpg" style="width: 400px; height: 500px" />
      </div>
      <div class="details">
      <h3>Festivals<br /><span>Independence Day</span></h3>
      </div>
      
      
      </div>
      <div class="swiper-slide">
      <div class="imgBx">
      <img src="gallery/img5.jpg" style="width: 400px; height: 500px" />
      </div>
      <div class="details">
      <h3>Group Activities<br /><span>Fancy Dress</span></h3>
      </div>
      
      
      </div>
      <div class="swiper-slide">
      <div class="imgBx">
      <img src="gallery/img6.jpg" style="width: 400px; height: 500px" />
      </div>
      <div class="details">
      <h3>Moments<br /><span>With our Teacher</span></h3>
      </div>
      
      
      </div>
     
    </div>

    <!-- Add Pagination -->
    <div class="swiper-pagination"></div>
  </div>
    <script type="text/javascript" src="swiper.min.js""></script>
     <script>
    var swiper = new Swiper('.swiper-container', {
      effect: 'coverflow',
      grabCursor: true,
      centeredSlides: true,
      slidesPerView: 'auto',
      coverflowEffect: {
        rotate: 50,
        stretch: 0,
        depth: 100,
        modifier: 1,
        slideShadows : true,
      },
      pagination: {
        el: '.swiper-pagination',
      },
    });
  </script>
    </div>
       <div class="footer">
  <p>Copyright@TinyToy2019</p>
</div>
    </form>
</body>
</html>
