<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewStudentFees.aspx.cs" Inherits="ViewStudentFees" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="Parent.css" />
</head>
<body style="background-image: linear-gradient(-90deg,#3fd5ea,#038496);" >
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
      <li><a href="ChildRecord.aspx">Back</a></li>
       
      </ul>
    </div>
  </div>
</nav>
<br />
<br />
<br />
<br />
<br />
<br />
<center>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="Black" BorderStyle="Ridge" BorderWidth="4px" 
            CellPadding="4" DataKeyNames="RollNo" DataSourceID="SqlDataSource1" 
            ForeColor="Black" Width="824px">
            <Columns>
                <asp:BoundField DataField="RollNo" HeaderText="RollNo" ReadOnly="True" 
                    SortExpression="RollNo" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="TotalFees" HeaderText="TotalFees" 
                    SortExpression="TotalFees" />
                <asp:BoundField DataField="FeesPaid" HeaderText="FeesPaid" 
                    SortExpression="FeesPaid" />
                <asp:BoundField DataField="BalanceFees" HeaderText="BalanceFees" 
                    SortExpression="Balance Fees" />
                <asp:BoundField DataField="Group" HeaderText="Group" SortExpression="Group" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" Height="40"/>
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
            SelectCommand="SELECT * FROM [Balance3] WHERE ([RollNo] = @RollNo)">
            <SelectParameters>
                <asp:SessionParameter Name="RollNo" SessionField="rollno" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
    </br><center>
    <a href="ChildRecord.aspx" 
    style="color: #FFFFFF; font-size: medium" >Back</a>
     <div class="footer">
  <p>Copyright@TinyToy2019</p>
</div>
</body>
</html>
