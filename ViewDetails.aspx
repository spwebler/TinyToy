<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewDetails.aspx.cs" Inherits="ViewDetails" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
<link rel="Stylesheet" type="text/css" href="admin.css" />

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
    .zoom {


    transition: transform .3s;
    width: 80px;
    height: 80px;
     

}

.zoom:hover {
    -ms-transform: scale(1.5); /* IE 9 */
    -webkit-transform: scale(1.5); /* Safari 3-8 */
    transform: scale(3.1); 

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
<center>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" DataKeyNames="id" 
            DataSourceID="SqlDataSource1" BorderColor="Black" BorderStyle="Ridge" 
            BorderWidth="5px" CellPadding="4" ForeColor="#333333">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="id" />
                <asp:ImageField DataImageUrlField="image" HeaderText="Birth Certificate">
                    <ControlStyle Height="150px" Width="150px" />
                    <ItemStyle CssClass="zoom" />
                </asp:ImageField>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" 
                HorizontalAlign="Center" VerticalAlign="Middle" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3"  ForeColor="#333333" 
                HorizontalAlign="Center" VerticalAlign="Middle" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
            DeleteCommand="DELETE FROM [Birth] WHERE [id] = @id" 
            InsertCommand="INSERT INTO [Birth] ([image]) VALUES (@image)" 
            SelectCommand="SELECT * FROM [Birth]" 
            UpdateCommand="UPDATE [Birth] SET [image] = @image WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="image" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="image" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
    <div class="footer">
  <p>Copyright@TinyToy2019</p>
</div>
</body>
</html>
