<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddFees.aspx.cs" Inherits="AddFees" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
             var val5 = parseInt($("#TextBox10").val());
             if ($("#TextBox10").val().length == 0) {
                 $("#TextBox10").val("0");
             }
           
             $("#TextBox3").val(val3 - (val4+val5));
         });
     });
    </script>
</head>
    
<body>
    <form id="form1" runat="server">
    <div>
    <div class="topnav">
  <a class="active" href="TinyToy.aspx">Home</a>
  <a href="Admin.aspx">Back</a>
 
</div>
<br />
        <center>
            <h2>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Roll No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox9" runat="server" Width="128px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox9" ErrorMessage="Required*" ValidationGroup="Group1"></asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            Text="Search If Record Exists" BackColor="Black" ForeColor="White" 
                    ValidationGroup="Group1" />
        <br />
        Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        Group&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
        <br />
        Total Fees&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <br />
        Fees Paid&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 57px"></asp:TextBox>
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Installment&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox10" ErrorMessage="Required*" ValidationGroup="Group1"></asp:RequiredFieldValidator>
        <br />
        Balance Fees<br />
        <br />
        <input type="button" id="btn1" value="Show Amount" runat="server" 
                    style="background-color: #000000; color: #FFFFFF" />
        <br /><br />
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
                    BackColor="Black" ForeColor="White" ValidationGroup="Group1" />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    
        <br />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server"></asp:Label>
    
    </h2>
            <h2>
                <asp:Label ID="Label3" runat="server"></asp:Label>
    
        <br />
        <br />
        <br />
    </h2>
    </div>
    </form>
    <div class="footer">
  <p>Copyright@TinyToy20199</p>
</div>
</body>
</html>

