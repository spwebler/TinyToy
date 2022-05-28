<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Rough1.aspx.cs" Inherits="Rough1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style type="text/css">
body
{
    margin:0;
    padding:0;
}
section
{
    height:100vh;
    background:#000;
}
section:before
{
    content:'';
    position:absolute;
    top:0;
    left:0;
    width:100%;
    height:100%;
    background:linear-gradient(to right,#f00,#f00,#0f0,#0ff,#ff0,#0ff);
    mix-blend-mode:color;
    pointer-events:none;
}
h1
{
    margin:0;
    padding:0;
    position:absolute;
    top:50%;
    transform:translateY(-50%);
    width:100%;
    text-align:center;
    color:#ddd;
    font-size:5em;
    font-family:Sans-Serif;
    letter-spacing:0.2em;
}
h1 span
{
    display:inline-block;
    animation:animate 1s linear forwards;
}
video
{
    object-fit:cover;
}
@keyframes animate
{
    0%
    {
    opacity:0;
    transform:rotateY(90deg);
    filter:blur(10px);
}
100%
{
    opacity:1;
    transform:rotateY(0deg);
    filter:blur(0px);
}
}
h1 span:nth-child(1)
{
    animation-delay:0.5s;
}
h1 span:nth-child(2)
{
    animation-delay:1s;
}
h1 span:nth-child(3)
{
    animation-delay:2.5s;
}
h1 span:nth-child(4)
{
    animation-delay:3s;
}
h1 span:nth-child(5)
{
    animation-delay:3.5s;
}
h1 span:nth-child(6)
{
    animation-delay:4s;
}
h1 span:nth-child(7)
{
    animation-delay:4.5s;
}
h1 span:nth-child(8)
{
    animation-delay:5s;
}
h1 span:nth-child(9)
{
    animation-delay:5.5s;
}



.button {
  display: inline-block;
 

  border-radius: 10px;
  border-style:dashed;
  border: 5px;
  color: #FFFFFF;
  border-color:White;
  text-align: center;
  font-size: 28px;
  padding: 20px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
  background-image: linear-gradient(0deg, #035f6d, #0bc8e5);
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}


a
{
    text-decoration: none;
    color:White;
}




    
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    
    <br />
    <div>
   
   
    <section>
    <video src="smoke.mp4" autoplay muted></video>
    <h1>
    <center>     
     <span><img src="children.jpg" height="200" width="500" /> <br /><br />   </span>                                   
    </center>
    <span>T</span>
    <span>I</span>
    <span>N</span>
    <span>Y</span>
    <span>T</span>
    <span>O</span>
    <span>Y</span>
    <br />
    <br />
    <span>
    
    
    <button class="button" style="vertical-align:middle" ><span><a href="TinyToy.aspx">Visit Here </a></span></button></span>
    </h1></section>
    
    </div>
    </form>
</body>
</html>
