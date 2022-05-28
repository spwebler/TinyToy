<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FinalStudentDetails.aspx.cs" Inherits="FinalStudentDetails" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <title></title>
    <link rel="Stylesheet" type="text/css" href="admin.css" />

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
         .style1
         {
             width: 100%;
             height: 220px;
             border: 5px solid #000000;
             background-color:#c4e3f3;
         }
         .style2
         {
             width: 415px;
         }
         .style3
         {
             width: 249px
         }
         .style4
         {
             font-size: x-large;
             text-decoration: underline;
         }
         .style5
         {
             font-size: x-large;
         }
         .style6
         {
             width: 415px;
             font-size: x-large;
         }
     </style>




</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="topnav">
  <a class="active" href="TinyToy.aspx">Home</a>
  <a href="Admin.aspx">Back</a>
 
</div>


<br />
<br />
<br />
<br />
        <table align="center" cellpadding="2" cellspacing="2" class="style1" 
            style="font-family: 'Berlin Sans FB'; background-color:#C4E3F3;" 
            >
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    <strong><span class="style4">Final Student Details</span></strong></td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
&nbsp;&nbsp; <span class="style5"><strong>&nbsp; RollNo&nbsp;&nbsp;</strong></span></td>
                <td class="style3">
        <asp:TextBox ID="TextBox1" runat="server" Width="222px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Please Enter RollNo" 
                        ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
&nbsp;<span class="style5"><strong>&nbsp;&nbsp; Student Name</strong></span></td>
                <td class="style3">
        <asp:TextBox ID="TextBox2" runat="server" Width="228px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Please Enter Name" 
                        ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    <strong>&nbsp;&nbsp; Class&nbsp;&nbsp;&nbsp;</strong></td>
                <td class="style3">
        <asp:TextBox ID="TextBox3" runat="server" Width="229px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Please Enter Class" 
                        ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
        <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click"  Width="69px" BackColor="#011224" BorderColor="White" BorderStyle="Dotted" BorderWidth="2px" 
            ForeColor="White" />
                </td>
                <td>
        <asp:Label ID="Label1" runat="server" ForeColor="Black"></asp:Label>
    
                </td>
            </tr>
        </table>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
    </div>
    </form>

     <div class="footer">
  <p>Copyright@TinyToy2019</p>
</div>
</body>
</html>
