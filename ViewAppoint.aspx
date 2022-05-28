<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewAppoint.aspx.cs" Inherits="ViewAppoint" %>

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
  <a class="active" href="TinyToy.aspx">Home</a>
  <a href="Admin.aspx">Back</a>
 
</div>
    
        <br />
        <center>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="Name" DataSourceID="SqlDataSource1" BackColor="White" 
                BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
                ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
            DeleteCommand="DELETE FROM [Appoint2] WHERE [Name] = @Name" 
            InsertCommand="INSERT INTO [Appoint2] ([Name], [RollNo], [Date], [Reason], [Status], [Time]) VALUES (@Name, @RollNo, @Date, @Reason, @Status, @Time)" 
            SelectCommand="SELECT * FROM [Appoint2]" 
            UpdateCommand="UPDATE [Appoint2] SET [RollNo] = @RollNo, [Date] = @Date, [Reason] = @Reason, [Status] = @Status, [Time] = @Time WHERE [Name] = @Name">
            <DeleteParameters>
                <asp:Parameter Name="Name" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="RollNo" Type="Int32" />
                <asp:Parameter Name="Date" Type="String" />
                <asp:Parameter Name="Reason" Type="String" />
                <asp:Parameter Name="Status" Type="Boolean" />
                <asp:Parameter Name="Time" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="RollNo" Type="Int32" />
                <asp:Parameter Name="Date" Type="String" />
                <asp:Parameter Name="Reason" Type="String" />
                <asp:Parameter Name="Status" Type="Boolean" />
                <asp:Parameter Name="Time" Type="String" />
                <asp:Parameter Name="Name" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
    
    </div>
    </form>
    <div class="footer">
  <p>Copyright@TinyToy2019</p>
</div>
</body>
</html>
