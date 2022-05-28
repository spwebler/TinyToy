<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddMarks.aspx.cs" Inherits="AddMarks" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="Stylesheet" type="text/css" href="admin.css" />
    <style type="text/css">
    .button {
  background-color: Black;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 14px;
  margin: 4px 2px;
  cursor: pointer;
}</style>

    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
 <script type="text/javascript" language="javascript">
     $(document).ready(function () {
         $("#btn1").click(function () {
             var val1 = parseInt($("#TextBox2").val());
             var val2 = parseInt($("#TextBox3").val());
             var res = val1 + val2;
             if (res >= 70) {
                 $("#TextBox4").val("O Grade");
             }
             else if (res>=50 && res< 70) {
                 $("#TextBox4").val("A Grade");
             }
             else {
                 $("#TextBox4").val("B Grade");
             }


         });
     });

     $(document).ready(function () {
         $("#btn2").click(function () {
             var val1 = parseInt($("#TextBox6").val());
             var val2 = parseInt($("#TextBox7").val());
             var res = val1 + val2;
             if (res >= 70) {
                 $("#TextBox8").val("O Grade");
             }
             else if (res >= 50 && res < 70) {
                 $("#TextBox8").val("A Grade");
             }
             else {
                 $("#TextBox8").val("B Grade");
             }


         });
     });

     $(document).ready(function () {
         $("#btn3").click(function () {
             var val1 = parseInt($("#TextBox10").val());
             var val2 = parseInt($("#TextBox11").val());
             var res = val1 + val2;
             if (res >= 70) {
                 $("#TextBox12").val("O Grade");
             }
             else if (res >= 50 && res < 70) {
                 $("#TextBox12").val("A Grade");
             }
             else {
                 $("#TextBox12").val("B Grade");
             }


         });
     });
     
    </script>
    <style type="text/css">
        .style1
        {
            width: 100%;
            border: 2px solid #000000;
        }
        .style4
        {
            width: 232px;
        }
        .style5
        {
            width: 233px;
        }
        .style6
        {
            font-family: "Times New Roman", Times, serif;
            font-size: x-large;
        }
        .style7
        {
            width: 230px;
            height: 23px;
        }
        .style8
        {
            width: 232px;
            height: 23px;
        }
        .style9
        {
            height: 23px;
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

    <center><b>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
       
  
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><span class="style6"> </span>
        <asp:Label ID="Label4" runat="server" CssClass="style6" 
            Text="Marks Summative Corner"></asp:Label>
        </strong>
        <br />
        <asp:Label ID="Label5" runat="server"></asp:Label>
        <br />
        <table class="style1">
            <tr>
                <td class="style7">
                    </td>
                <td class="style7">
                    PlayGroup</td>
                <td class="style8">
                    Nursery</td>
                <td class="style9">
                    Junior</td>
            </tr>
            <tr>
                <td class="style5">
                    RollNo&nbsp; </td>
                <td class="style5">
    
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    
                    <asp:Button ID="Button4" runat="server" BackColor="Black" ForeColor="White" 
                        onclick="Button4_Click" Text="Check" ValidationGroup="grp4" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Required*" ValidationGroup="grp4"></asp:RequiredFieldValidator>
                </td>
                <td class="style4">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    <asp:Button ID="Button5" runat="server" BackColor="Black" ForeColor="White" 
                        onclick="Button5_Click" Text="Check" ValidationGroup="grp5" />
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="Required*" ValidationGroup="grp5"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                    <asp:Button ID="Button6" runat="server" BackColor="Black" ForeColor="White" 
                        onclick="Button6_Click" Text="Check" ValidationGroup="grp6" />
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="TextBox9" ErrorMessage="Required*" ValidationGroup="grp6"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    Name&nbsp;&nbsp; </td>
                <td class="style5">
    
                    <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                </td>
                <td class="style4">
                    <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    Oral Marks(50)</td>
                <td class="style5">
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <b>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Required*" ValidationGroup="grp1"></asp:RequiredFieldValidator>
                </td>
                <td class="style4">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="Required*" ValidationGroup="grp2"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="TextBox10" ErrorMessage="Required*" ValidationGroup="grp3"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    Written Marks(50)</td>
                <td class="style5">
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Required*" ValidationGroup="grp1"></asp:RequiredFieldValidator>
                </td>
                <td class="style4">
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="TextBox7" ErrorMessage="Required*" ValidationGroup="grp2"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="TextBox11" ErrorMessage="Required*" ValidationGroup="grp3"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style5">
        <asp:Button ID="btn1" runat="server" Text="Click"  BackColor="Black" ForeColor="White" />
                </td>
                <td class="style4">
                    <asp:Button ID="btn2" runat="server"  Text="Click" BackColor="Black" 
                        ForeColor="White" />
                </td>
                <td>
                    <asp:Button ID="btn3" runat="server"  Text="Click" BackColor="Black" ForeColor="White" />
                </td>
            </tr>
            <tr>
                <td class="style5">
                    Grade</td>
                <td class="style5">
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
                <td class="style4">
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style5">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td class="style4">
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style5">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
                        Text="Submit" BackColor="Black" ForeColor="White" ValidationGroup="grp1" />
                    <br />
                    <asp:Label ID="Label6" runat="server"></asp:Label>
                </td>
                <td class="style4">
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click1" 
                        Text="Submit"  BackColor="Black" ForeColor="White" ValidationGroup="grp2"/>
                    <br />
                    <asp:Label ID="Label7" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" onclick="Button3_Click1" Text="Submit" 
                        BackColor="Black" ForeColor="White" ValidationGroup="grp3" />
                    <br />
                    <asp:Label ID="Label8" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style5">
                    <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Black" 
                        NavigateUrl="~/NewReport.aspx">Certificate</asp:HyperLink>
                </td>
                <td class="style4">
                    <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="Black" 
                        NavigateUrl="~/NewReport1.aspx">Certificate</asp:HyperLink>
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink3" runat="server" ForeColor="Black" 
                        NavigateUrl="~/NewReport2.aspx">Certificate</asp:HyperLink>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        Generate Summative&nbsp; Report<br />
        <br />
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="Default.aspx" class="button" 
            shape="circle">Report</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <br />
    </form>
    <div class="footer">
  <p>Copyright@TinyToy2019</p>
</div>
</body>
</html>
