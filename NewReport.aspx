<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewReport.aspx.cs" Inherits="NewReport" %>


<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <link rel="Stylesheet" type="text/css" href="admin.css" />
       <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <br />
    <center>
    <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AddMarks.aspx" Font-Bold="True" ForeColor="Black">Back</asp:HyperLink>
    <h3>Enter RollNo</h3>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Generate" OnClick="Button1_Click" 
            BackColor="Black" ForeColor="White"/>
        <br />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Width="657px">
        </rsweb:ReportViewer>
        <br />
        
    </div>
    </form>
</body>
</html>

