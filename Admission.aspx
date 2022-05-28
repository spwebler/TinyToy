<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admission.aspx.cs" Inherits="Admission" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="Parent.css" />
     <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <style type="text/css">
        .style1
        {
            width: 100%;
            border-style: solid;
            border-width: 1px;
        }
        .style2
        {
            width: 229px;
        }
        .style3
        {
            width: 233px;
        }
        .style4
        {
            width: 207px;
        }
        .style6
        {
            width: 229px;
            height: 28px;
        }
        .style7
        {
            width: 233px;
            height: 28px;
        }
        .style8
        {
            width: 207px;
            height: 28px;
        }
        .style9
        {
            height: 28px;
        }
        .style10
        {
            width: 229px;
            height: 44px;
        }
        .style11
        {
            width: 233px;
            height: 44px;
        }
        .style12
        {
            width: 207px;
            height: 44px;
        }
        .style13
        {
            height: 44px;
        }
        .style14
        {
            width: 229px;
            height: 72px;
        }
        .style15
        {
            width: 233px;
            height: 72px;
        }
        .style16
        {
            width: 207px;
            height: 72px;
        }
        .style17
        {
            height: 72px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
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
            <li><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/faq.aspx">FAQ</asp:HyperLink></li>
            
          </ul>
        </li>
        <li><a href="Rough3.aspx">Gallery</a></li>
        <li><a href="AdminLogin.aspx">Admin</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="Signup.aspx"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="ParentLogin.aspx">Back</a></li>
      </ul>
    </div>
  </div>
</nav>
<br />
<br />


        </span>
        <asp:Image ID="Image1" runat="server" Height="190px" ImageUrl="~/banner1.jpeg" 
            Width="1389px" style="border: thick groove #000000"/>
        <br />



        <div class="container">
  <h2><center>ADMISSION FORM</center></h2>
  <ul class="nav nav-tabs">
    <li class="active"> <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/admission.aspx"><b>STEP-1</b></asp:HyperLink></li>
    <li>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Step2.aspx" ForeColor="White" BackColor="Black"><b>STEP-2</b></asp:HyperLink></li>
   
  </ul>
  <br>



        <table class="style1" cellpadding="5" cellspacing="5" 
            style="font-family: 'Lucida Bright'; font-size: large; color: #000000">
            <tr>
                <td class="style6">
                    <ul>
                        <li>Id</li>
                    </ul>
                </td>
                <td class="style7">
                    <asp:TextBox ID="TextBox16" runat="server" Visible="False" 
                        ></asp:TextBox>
                </td>
                <td class="style8">
                </td>
                <td class="style9">
                    </td>
            </tr>
            <tr>
                <td class="style2">
                    <ul>
                        <li>
                            <asp:Label ID="Label1" runat="server" Text="Student Name"></asp:Label>
                        </li>
                    </ul>
                </td>
                <td class="style3">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td class="style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Please enter name" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                </td>
                <td>
                    </td>
            </tr>
            <tr>
                <td class="style2">
                    <ul>
                        <li>
                            <asp:Label ID="Label2" runat="server" Text="Address"></asp:Label>
                        </li>
                    </ul>
                </td>
                <td class="style3">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td class="style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="Please enter address" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <ul>
                        <li>
                            <asp:Label ID="Label3" runat="server" Text="Residence Number"></asp:Label>
                        </li>
                    </ul>
                </td>
                <td class="style3">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    
                </td>
                <td class="style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ErrorMessage="Please enter phoneno" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                </td>
                <td>
                  
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"  
ControlToValidate="TextBox3" ErrorMessage="Enter correct number"  
ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator> 
                  
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <ul>
                        <li>
                            <asp:Label ID="Label4" runat="server" Text="Birth Place"></asp:Label>
                        </li>
                    </ul>
                </td>
                <td class="style3">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
                <td class="style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ErrorMessage="Enter birth place" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <ul>
                        <li>
                            <asp:Label ID="Label5" runat="server" Text="Birth Date"></asp:Label>
                        </li>
                    </ul>
                </td>
                <td class="style3">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
                <td class="style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ErrorMessage="Enter birth date" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <ul>
                        <li>
                            <asp:Label ID="Label6" runat="server" Text="Age Completed"></asp:Label>
                        </li>
                    </ul>
                </td>
                <td class="style3">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
                <td class="style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ErrorMessage="Please enter age." ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <ul>
                        <li>
                            <asp:Label ID="Label7" runat="server" Text="Religion"></asp:Label>
                        </li>
                    </ul>
                </td>
                <td class="style3">
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </td>
                <td class="style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ErrorMessage="Please enter religion" ControlToValidate="TextBox7"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <ul>
                        <li>
                            <asp:Label ID="Label8" runat="server" Text="Caste"></asp:Label>
                        </li>
                    </ul>
                </td>
                <td class="style3">
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                </td>
                <td class="style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ErrorMessage="Please enter caste." ControlToValidate="TextBox8"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <ul>
                        <li>
                            <asp:Label ID="Label9" runat="server" Text="Father Name"></asp:Label>
                        </li>
                    </ul>
                </td>
                <td class="style3">
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                </td>
                <td class="style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ErrorMessage="Please enter name" ControlToValidate="TextBox9"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <ul>
                        <li>
                            <asp:Label ID="Label10" runat="server" Text="Education"></asp:Label>
                        </li>
                    </ul>
                </td>
                <td class="style3">
                    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                </td>
                <td class="style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ErrorMessage="Please enter education" ControlToValidate="TextBox10"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <ul>
                        <li>
                            <asp:Label ID="Label11" runat="server" Text="Occupation"></asp:Label>
                        </li>
                    </ul>
                </td>
                <td class="style3">
                    <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                </td>
                <td class="style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ErrorMessage="Please enter occupation" ControlToValidate="TextBox11"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <ul>
                        <li>
                            <asp:Label ID="Label12" runat="server" Text="Address"></asp:Label>
                            (Office)</li>
                    </ul>
                </td>
                <td class="style3">
                    <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                </td>
                <td class="style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                        ErrorMessage="Please enter address" ControlToValidate="TextBox12"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <ul>
                        <li>
                            <asp:Label ID="Label13" runat="server" Text="Mother Name"></asp:Label>
                        </li>
                    </ul>
                </td>
                <td class="style3">
                    <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                </td>
                <td class="style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                        ErrorMessage="please enter mother's name" ControlToValidate="TextBox13"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <ul>
                        <li>
                            <asp:Label ID="Label14" runat="server" Text="Education"></asp:Label>
                        </li>
                    </ul>
                </td>
                <td class="style3">
                    <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                </td>
                <td class="style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                        ErrorMessage="Please enter education" ControlToValidate="TextBox14"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style10">
                    <ul>
                        <li>
                            <asp:Label ID="Label15" runat="server" Text="Occupation"></asp:Label>
                        </li>
                    </ul>
                </td>
                <td class="style11">
                    <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                </td>
                <td class="style12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                        ControlToValidate="TextBox15" ErrorMessage="Please enter occupation"></asp:RequiredFieldValidator>
                </td>
                <td class="style13">
                    </td>
            </tr>
            <tr>
                <td class="style14">
                    <ul>
                        <li>Student PhotoGraph<br />Size:1500*1500</li>
                    </ul>
                </td>
                <td class="style15">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
                <td class="style16">
                    &nbsp;</td>
                <td class="style17">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                        ControlToValidate="FileUpload1" ErrorMessage="Attach photo"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr >
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    <asp:Button ID="Button1" runat="server" Text="Submit" onclick="button"  BackColor="#011224" BorderColor="White" 
        BorderStyle="Dotted" BorderWidth="2px" ForeColor="White" Width="90" Height="50" />
                </td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    <asp:Label ID="Label16" runat="server"></asp:Label>
                </td>
                <td class="style4">
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label17" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
    <br />
    <br />

 <div class="footer">
  <p>Copyright@TinyToy2019</p>
</div>


</body>
</html>
