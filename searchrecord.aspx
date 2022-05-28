<%@ Page Language="C#" AutoEventWireup="true" CodeFile="searchrecord.aspx.cs" Inherits="searchrecord" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="Stylesheet" type="text/css" href="admin.css" />

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="topnav">
  <a class="active" href="TinyToy">Home</a>
  <a href="Admin.aspx">Back</a>
 
</div>
<br />
    <center>
    <h1><b style="font-size: large">Search Record</h1></b>
    <hr />
    Search<asp:TextBox ID="TxtSearch" runat="server"></asp:TextBox>
        <asp:Button ID="ButSearch" runat="server" Text="check" OnClick="button" 
            BackColor="Black" ForeColor="White" />
        <hr />
        <asp:GridView ID="GridView1" runat="server" ShowHeaderWhenEmpty="True" 
            EmptyDataText="No records found" BackColor="White" BorderColor="#999999" 
            BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" 
            GridLines="Vertical" >
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        </center>
    </div>
    </form>
    <div class="footer">
  <p>Copyright@TinyToy2019</p>
</div>
</body>
</html>