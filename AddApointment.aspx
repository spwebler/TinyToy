<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddApointment.aspx.cs" Inherits="AddApointment" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="Parent.css" />
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            font-size:16px;
            font-weight:bolder;
            
        }
        .one
        {
            color:white;
            font-size:22px;
        }
    </style>
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
            <li><a href="#">Fill Admission Form</a></li>
            <li><a href="#">Take Appointment</a></li>
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
        <center>
    


    <br />
    <br />
    <br />
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="one">
                <b>Name</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Enter name"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="one">
                Child RollNo</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="Enter rollno"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="one">
                Select Date</td>
            <td>
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                    BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" 
                    Font-Size="10pt" ForeColor="Black" Height="164px" NextPrevFormat="FullMonth" 
                    onselectionchanged="Calendar1_SelectionChanged" TitleFormat="Month" 
                    Width="225px">
                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" 
                        ForeColor="#333333" Height="10pt" />
                    <DayStyle Width="14%" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                    <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" 
                        Font-Size="8pt" ForeColor="#333333" Width="1%" />
                    <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" 
                        ForeColor="White" Height="14pt" />
                    <TodayDayStyle BackColor="#CCCC99" />
                </asp:Calendar>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Select Date"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="one">
                Select Reason</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>General Meet</asp:ListItem>
                    <asp:ListItem>Regarding Child Performance</asp:ListItem>
                    <asp:ListItem>Regarding Child Fees</asp:ListItem>
                    <asp:ListItem>To Convey any messsage</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" ReadOnly="True" Visible="False"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="DropDownList1" ErrorMessage="Select Vaue"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Enabled="False" 
                    EnableViewState="False" Visible="False"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Book"  BackColor="#011224" BorderColor="White" 
        BorderStyle="Dotted" BorderWidth="2px" ForeColor="White" Width="100" Height="40" />
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <div>
    
        <br />
        <br />
        <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" 
            Font-Size="Large" ForeColor="White" NavigateUrl="~/ParentLogin.aspx">Back</asp:HyperLink>
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
    <br />
    <br />
    <br />
    <div class="footer">
  <p>Copyright@TinyToy2019</p>
</div>
</body>
</html>
