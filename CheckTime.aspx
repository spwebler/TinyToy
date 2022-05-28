<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CheckTime.aspx.cs" Inherits="CheckTime" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="Parent.css" />
</head>
<body>
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
        <center style="font-size: large; font-weight: bold">
        <br />
        <br />
    <br />
    <br />
    <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="Name" DataSourceID="SqlDataSource1" BackColor="White" 
                BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
                ForeColor="Black" GridLines="Vertical" Width="590px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" 
                    SortExpression="Name" />
                <asp:BoundField DataField="RollNo" HeaderText="RollNo" 
                    SortExpression="RollNo" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                <asp:BoundField DataField="Reason" HeaderText="Reason" 
                    SortExpression="Reason" />
                <asp:CheckBoxField DataField="Status" HeaderText="Status" 
                    SortExpression="Status" />
                <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:StorageConnectionString %>" 
            SelectCommand="SELECT * FROM [Appoint2] WHERE ([Name] = @Name)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="Name" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        Enter name of child and press:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    
            <br />
            <br />

            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ParentLogin.aspx" ForeColor="White">Back</asp:HyperLink>
    </div>
    </form>
     <div class="footer">
  <p>Copyright@TinyToy2019</p>
</div>
</body>
</html>
