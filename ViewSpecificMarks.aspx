<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewSpecificMarks.aspx.cs" Inherits="ViewSpecificMarks" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<head runat="server">
<link rel="stylesheet" type="text/css" href="Parent.css" />
    <title></title>
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
        <center>
    


    <br />
    <br />
    <br />
    <br />



        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="RollNo" DataSourceID="SqlDataSource3" BackColor="White" 
            BorderColor="#999999" BorderStyle="Ridge" BorderWidth="4px" CellPadding="3" 
            ForeColor="Black" GridLines="Vertical" Width="628px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="RollNo" HeaderText="RollNo" ReadOnly="True" 
                    SortExpression="RollNo" />
                <asp:BoundField DataField="Oral" HeaderText="Oral" SortExpression="Oral" />
                <asp:BoundField DataField="Written" HeaderText="Written" 
                    SortExpression="Written" />
                <asp:BoundField DataField="Grade" HeaderText="Grade" SortExpression="Grade" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" Height="40"/>
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        &nbsp;
            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#999999" BorderStyle="Ridge" BorderWidth="4px" 
                CellPadding="3" DataKeyNames="RollNo" DataSourceID="SqlDataSource4" 
                ForeColor="Black" GridLines="Vertical" Width="618px">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="RollNo" HeaderText="RollNo" ReadOnly="True" 
                        SortExpression="RollNo" />
                    <asp:BoundField DataField="Oral" HeaderText="Oral" SortExpression="Oral" />
                    <asp:BoundField DataField="Written" HeaderText="Written" 
                        SortExpression="Written" />
                    <asp:BoundField DataField="Grade" HeaderText="Grade" SortExpression="Grade" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" Height="40" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                ConnectionString="<%$ ConnectionStrings:StorageConnectionString %>" 
                SelectCommand="SELECT * FROM [MarksN] WHERE ([RollNo] = @RollNo)">
                <SelectParameters>
                    <asp:SessionParameter Name="RollNo" SessionField="rollno" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:StorageConnectionString %>" 
            SelectCommand="SELECT * FROM [MarksS] WHERE ([RollNo] = @RollNo)">
            <SelectParameters>
                <asp:SessionParameter Name="RollNo" SessionField="rollno" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="RollNo" DataSourceID="SqlDataSource2" BackColor="White" 
            BorderColor="#999999" BorderStyle="Ridge" BorderWidth="4px" CellPadding="3" 
            ForeColor="Black" GridLines="Vertical" Width="616px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="RollNo" HeaderText="RollNo" ReadOnly="True" 
                    SortExpression="RollNo" />
                <asp:BoundField DataField="Oral" HeaderText="Oral" SortExpression="Oral" />
                <asp:BoundField DataField="Written" HeaderText="Written" 
                    SortExpression="Written" />
                <asp:BoundField DataField="Grade" HeaderText="Grade" SortExpression="Grade" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" Height="40" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:StorageConnectionString %>" 
            SelectCommand="SELECT * FROM [MarksJ] WHERE ([RollNo] = @RollNo)">
            <SelectParameters>
                <asp:SessionParameter Name="RollNo" SessionField="rollno" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
    
    </div>
    <br /><center>  <a href="ChildRecord.aspx" 
    style="color: #FFFFFF; font-size: medium" >Back</a>
    </form>
    <div class="footer">
  <p>Copyright@TinyToy2019</p>
</div>
</body>
</html>
