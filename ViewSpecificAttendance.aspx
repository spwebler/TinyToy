<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewSpecificAttendance.aspx.cs" Inherits="ViewSpecificAttendance" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<head runat="server">
    <title></title>
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
</style>
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
        <br />
        <br />
        <br />
        <center>
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#999999" BorderStyle="Ridge" BorderWidth="4px" 
            CellPadding="3" DataSourceID="SqlDataSource3" ForeColor="Black" Width="986px" Height="60">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="rollno" HeaderText="rollno" 
                    SortExpression="rollno" />
                <asp:BoundField DataField="studentname" HeaderText="studentname" 
                    SortExpression="studentname" />
                <asp:BoundField DataField="dateofclass" HeaderText="dateofclass" 
                    SortExpression="dateofclass" />
                <asp:BoundField DataField="attendancestatus" HeaderText="attendancestatus" 
                    SortExpression="attendancestatus" />
                <asp:BoundField DataField="class" HeaderText="class" SortExpression="class" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" Height="40" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center"  Height="60"/>
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
            SelectCommand="SELECT * FROM [StudentAttendance] WHERE ([rollno] = @rollno)">
            <SelectParameters>
                <asp:SessionParameter Name="rollno" SessionField="rollno" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
    
    </div>
    <br /><center>
    <a href="ChildRecord.aspx" 
    style="color: #FFFFFF; font-size: medium" >Back</a>
    </form>
    <div class="footer">
  <p>Copyright@TinyToy2019</p>
</div>
</body>
</html>
