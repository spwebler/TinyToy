<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Attendance.aspx.cs" Inherits="Attendance" %>

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
<center>
    
        <h1>Attendance</h1><br />
        <b>
        Select Class<asp:DropDownList ID="DropDownList1" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="class" DataValueField="class">
        </asp:DropDownList>
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Mark Attendance" BackColor="Black" ForeColor="White" />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <br />
        <h4>Enter Date</h4>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="3" DataKeyNames="rollno" DataSourceID="SqlDataSource2" 
            ForeColor="Black" BackColor="White" BorderColor="#999999" 
            BorderStyle="Solid" BorderWidth="1px" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="rollno" HeaderText="rollno" ReadOnly="True" 
                    SortExpression="rollno" />
                <asp:BoundField DataField="studentname" HeaderText="studentname" 
                    SortExpression="studentname" />
                <asp:TemplateField HeaderText="Mark">
                    <ItemTemplate>
                        <asp:RadioButton ID="RadioButton1" runat="server" Text="Pre" 
                            GroupName="Radio" />
                        <asp:RadioButton ID="RadioButton2" runat="server" Text="Absent" 
                            GroupName="Radio" />
                    </ItemTemplate>
                </asp:TemplateField>
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
            SelectCommand="SELECT [rollno], [studentname] FROM [StudentDetail] WHERE ([class] = @class)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="class" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Save" BackColor="Black" ForeColor="White" />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server"></asp:Label>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
            SelectCommand="SELECT DISTINCT [class] FROM [StudentDetail]">
        </asp:SqlDataSource>
        <br />
    
    </div>
    </form>
    <br />
    <br />
    <div class="footer">
  <p>Copyright@TinyToy2019</p>
</div>
</body>
</html>
