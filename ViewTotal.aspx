<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewTotal.aspx.cs" Inherits="ViewTotal" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="Stylesheet" type="text/css" href="admin.css" />
    <title></title>
</head>
<body style="background-image: url('grey1.jpg');">
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

        <div style="width:500px">
        
        <asp:GridView ID="grd" runat="server" Width="100%" 
            AutoGenerateColumns="False"
            AlternatingRowStyle-BackColor="#E9ECF1" 
            HeaderStyle-BackColor="white" 
            Font-Names="Arial" 
            RowStyle-HorizontalAlign="Center" 
            RowStyle-Height="22" 
            HeaderStyle-Height="25"
            FooterStyle-HorizontalAlign="Center" 
            FooterStyle-Font-Bold="true" 
            FooterStyle-ForeColor="#555555"
            ShowFooter="True" AllowPaging="True" PageSize="5" 
            OnPageIndexChanging="grd_PageIndexChanging" 
            OnRowDataBound="grd_RowDataBound" BackColor="#CCCCCC" BorderColor="#999999" 
                BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
                ForeColor="Black">
                
            <Columns>
                <asp:TemplateField HeaderText="RollNO">
                    <ItemTemplate><%#Eval("RollNO")%></ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Name">
                    <ItemTemplate><%#Eval("Name")%></ItemTemplate>
               
               
                    <FooterTemplate>
                        <div style="padding:0 0 5px 0"><asp:Label ID="Label1" Text="Page Total" runat="server" /></div>
                        <div><asp:Label ID="Label2" Text="Grand Total" runat="server" /></div>
                    </FooterTemplate>

                </asp:TemplateField>
                    
                <asp:TemplateField HeaderText="Total Fees">
                    <ItemTemplate><asp:Label ID="lblTotalPrice" runat="server" Text='<%#Eval("TotalFees")%>'>
                        </asp:Label></ItemTemplate>

                    <FooterTemplate>
                        <div style="padding:0 0 5px 0"><asp:Label ID="lblPageTotal" runat="server" /></div>
                        <div><asp:Label ID="lblGrandTotal" runat="server" /></div>
                    </FooterTemplate>

                </asp:TemplateField>
                 <asp:TemplateField HeaderText="Fees Paid">
                    <ItemTemplate><%#Eval("FeesPaid")%></ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="Balance Fees">
                    <ItemTemplate><%#Eval("BalanceFees")%></ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="Group">
                    <ItemTemplate><%#Eval("Group")%></ItemTemplate>
                     </asp:TemplateField>
            </Columns>

<FooterStyle HorizontalAlign="Center" BackColor="#CCCCCC"></FooterStyle>

<HeaderStyle BackColor="Black" Height="25px" Font-Bold="True" ForeColor="White"></HeaderStyle>

            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />

<RowStyle HorizontalAlign="Center" Height="22px" BackColor="White"></RowStyle>
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    </div>
    <div class="footer">
  <p>Copyright@TinyToy2019</p>
</div>
    </form>
    </body>
</html>
