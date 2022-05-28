<%@ Page Language="C#" AutoEventWireup="true" CodeFile="chatty.aspx.cs" Inherits="chatty" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>

  <script type="text/javascript" language="javascript">
      know = {
          "hello": "FG: hi",
          "hi": "FG: Hi Welcome to our site",
          "how are you?": "FG: good",
          "ok": "FG: Have any Queries",
          "how to choose career?": "FG: Access through our various quiz provide!!",
          "how to choose career": "FG: Go through the various quiz provided!!",
          "exams guidance": "FG: Well there are many exams held refer the page",
          "do i need to pay to access quiz?": "FG:There are some free as well as paid you can go through",
          "how would i appear for exams": "FG: Well complete help would be provided to you in our plan."
      };
      function talk() {
          var user = document.getElementById("userBox").value;
          document.getElementById("userBox").value = "";
          document.getElementById("chatLog").innerHTML += user + "<br>";
          if (user in know) {
              document.getElementById("chatLog").innerHTML += know[user] + "<br>";
          } else {
              document.getElementById("chatLog").innerHTML += "I don't understand...<br>";
          }
      } 
        </script>



    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h2><u>Have any Queries talk with us!!</u> </h2>
<img src="chatty.jpg" height="200" width="200">
<div class="w3-container">
   <script type="text/javascript" language="javascript">
       know = {
           "hello": "FG: hi",
           "hi": "FG: Hi Welcome to our site",
           "how are you?": "FG: good",
           "ok": "FG: Have any Queries",
           "how to choose career?": "FG: Access through our various quiz provide!!",
           "how to choose career": "FG: Go through the various quiz provided!!",
           "exams guidance": "FG: Well there are many exams held refer the page",
           "do i need to pay to access quiz?": "FG:There are some free as well as paid you can go through",
           "how would i appear for exams": "FG: Well complete help would be provided to you in our plan."
       };
       function talk() {
           var user = document.getElementById("userBox").value;
           document.getElementById("userBox").value = "";
           document.getElementById("chatLog").innerHTML += user + "<br>";
           if (user in know) {
               document.getElementById("chatLog").innerHTML += know[user] + "<br>";
           } else {
               document.getElementById("chatLog").innerHTML += "I don't understand...<br>";
           }
       } 
        </script>
  <button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-black" ><i class="fa fa-spinner w3-spin"></i>Chatty</button>

  <div id="id01" class="w3-modal">
    <div class="w3-modal-content">
      <div class="w3-container">
        <span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-display-topright">&times;</span>
        <div class="w3-container">
  <h2 style="font-family:chiller;font-size:80;">Future Guider</h2>
  <p>Feel free to talk with us:</p>

  <div class="w3-card-4" style="width:80%;">
    <header class="w3-container w3-blue">
      <h1 style="font-family:chiller;">Chatty</h1>
    </header>

    <div class="w3-container">
 <p id="chatLog">- - C H A T - -<br></p>
        <input id="userBox" type="text" onkeydown="if (event.keyCode == 13) {talk()}">
     
    </div>

    <footer class="w3-container w3-blue">
      <h5>Ready to help</h5>
    </footer>
  </div>
</div>
      </div>
    </div>
  </div>
</div>

    </div>
    </form>
</body>
</html>
