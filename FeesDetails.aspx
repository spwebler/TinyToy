<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FeesDetails.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">
<link rel="Stylesheet" type="text/css" href="admin.css" />
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
 <script type="text/javascript" language="javascript">
     $(document).ready(function () {
         $("#btn2").click(function () {
             var val1 = parseInt($("#TextBox6").val());
             var val2 = parseInt($("#TextBox8").val());

             $("#TextBox7").val(val1 + (val1 * val2) / 100);
         });
     });
     $(document).ready(function () {
         $("#btn1").click(function () {
             var val3 = parseInt($("#TextBox7").val());
             var val4 = parseInt($("#TextBox1").val());

             $("#TextBox3").val(val3 - val4);
         });
     });
     

 </script>
    <style type="text/css">
        .style1
        {
            width: 100%;
            border: 4px solid #000000;
        }
        .style2
        {
            width: 382px;
        }
        .style3
        {
            width: 302px;
        }
        .style4
        {
            width: 382px;
            height: 11px;
        }
        .style5
        {
            width: 302px;
            height: 11px;
        }
        .style6
        {
            height: 11px;
        }
        .style7
        {
            width: 382px;
            height: 34px;
        }
        .style8
        {
            width: 302px;
            height: 34px;
        }
        .style9
        {
            height: 34px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="topnav">
        <a class="active" href="TinyToy.aspx">Home</a>
  <a href="Admin.aspx">Back</a>
 
</div>
<br />
<br />
<br />
<br />
<center>
    <div>
        <br />
        &nbsp;<br />
        <b>
        <asp:Label ID="Label3" runat="server" BackColor="#CCCCCC" BorderColor="Black" 
            BorderStyle="Groove" BorderWidth="2px" ForeColor="Black" Height="21px" 
            Text="INSERT RECORD" Width="300px"></asp:Label></b>
        <br />
    
        <br />
    
        <br />
        <br />
        <br />
        <br />
        <br />
        <table align="center" cellpadding="2" cellspacing="4" class="style1" border="4" 
            rules="none" 
            style="font-family: 'Arial Black'; background-color: #CCCCCC; font-size: large;" 
            title="INSERT  RECORD">
            <tr>
                <td class="style4">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Roll No</td>
                <td class="style5">
        <asp:TextBox ID="TextBox9" runat="server" Width="137px"></asp:TextBox>
                    </td>
                <td class="style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox9" ErrorMessage="Required*" ValidationGroup="Group1"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="style3">
                    <asp:Button ID="Button2" runat="server" BackColor="Black" ForeColor="White" 
                        onclick="Button2_Click" Text="Check" ValidationGroup="Group1" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Name&nbsp;&nbsp;</td>
                <td class="style3">
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Group</td>
                <td class="style3">
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Total Fees</td>
                <td class="style3">
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="Required*" ValidationGroup="Group1"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        G.S.T</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox8" ErrorMessage="Required*" ValidationGroup="Group1"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
        <input type="button" id="btn2" value="Add G.S.T" runat="server" 
                        
                        style="border-style: 2; background-color: #000000; color: #FFFFFF; border-spacing: inherit; font-size: medium; font-weight: bold;" 
                        validationgroup="Group2" /></td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        With Gst</td>
                <td class="style3">
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Fees Paid</td>
                <td class="style8">
                    <asp:TextBox ID="TextBox1" runat="server" 
                        Height="22px"></asp:TextBox>
                </td>
                <td class="style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Required*" ValidationGroup="Group1"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Balance Fees</td>
                <td class="style3">
        <input type="button" id="btn1" value="Show Amount" runat="server" 
                        style="border-style: 2; background-color: #000000; color: #FFFFFF; border-spacing: inherit; font-size: medium; font-weight: bold;" /></td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
                        style="border-style: 2; background-color: #000000; color: #FFFFFF; border-spacing: inherit; font-size: medium; font-weight: bold;" 
                        ValidationGroup="Group1" />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
        <asp:Label ID="Label2" runat="server"></asp:Label>
    
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
        <br />
        <br />
        <br />
    
    </div>
    <div class="footer">
  <p>Copyright@TinyToy2019</p>
</div>
    </form>
</body>
</html>
