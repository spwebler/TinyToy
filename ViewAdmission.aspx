<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewAdmission.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
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
    width: 100px;
    height: 100px;
     

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
        <br />
         <br />
        <br />

    
        <br />
        <br />
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="id" DataSourceID="SqlDataSource1" CellPadding="4" 
            ForeColor="#333333">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="id" />
                <asp:ImageField DataImageUrlField="Image">
                    <ControlStyle CssClass="zoom" Height="50px" Width="50px" />
                </asp:ImageField>
                <asp:BoundField DataField="StudentName" HeaderText="StudentName" 
                    SortExpression="StudentName" />
                <asp:BoundField DataField="Address" HeaderText="Address" 
                    SortExpression="Address" />
                <asp:BoundField DataField="ResidenceNumber" HeaderText="ResidenceNumber" 
                    SortExpression="ResidenceNumber" />
                <asp:BoundField DataField="BirthPlace" HeaderText="BirthPlace" 
                    SortExpression="BirthPlace" />
                <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" 
                    SortExpression="BirthDate" />
                <asp:BoundField DataField="AgeCompleted" HeaderText="AgeCompleted" 
                    SortExpression="AgeCompleted" />
                <asp:BoundField DataField="Religion" HeaderText="Religion" 
                    SortExpression="Religion" />
                <asp:BoundField DataField="Caste" HeaderText="Caste" SortExpression="Caste" />
                <asp:BoundField DataField="FatherName" HeaderText="FatherName" 
                    SortExpression="FatherName" />
                <asp:BoundField DataField="Education" HeaderText="Education" 
                    SortExpression="Education" />
                <asp:BoundField DataField="Occupation" HeaderText="Occupation" 
                    SortExpression="Occupation" />
                <asp:BoundField DataField="column1" HeaderText="Address(office)" 
                    SortExpression="column1" />
                <asp:BoundField DataField="MotherName" HeaderText="MotherName" 
                    SortExpression="MotherName" />
                <asp:BoundField DataField="EducationM" HeaderText="EducationM" 
                    SortExpression="EducationM" />
                <asp:BoundField DataField="OccupationM" HeaderText="OccupationM" 
                    SortExpression="OccupationM" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:StorageConnectionString %>" 
            DeleteCommand="DELETE FROM [Form1] WHERE [id] = @id" 
            InsertCommand="INSERT INTO [Form1] ([StudentName], [Address], [ResidenceNumber], [BirthPlace], [BirthDate], [AgeCompleted], [Religion], [Caste], [FatherName], [Education], [Occupation], [Address(Office)], [MotherName], [EducationM], [OccupationM], [Image]) VALUES (@StudentName, @Address, @ResidenceNumber, @BirthPlace, @BirthDate, @AgeCompleted, @Religion, @Caste, @FatherName, @Education, @Occupation, @column1, @MotherName, @EducationM, @OccupationM, @Image)" 
            SelectCommand="SELECT [id], [StudentName], [Address], [ResidenceNumber], [BirthPlace], [BirthDate], [AgeCompleted], [Religion], [Caste], [FatherName], [Education], [Occupation], [Address(Office)] AS column1, [MotherName], [EducationM], [OccupationM], [Image] FROM [Form1]" 
            UpdateCommand="UPDATE [Form1] SET [StudentName] = @StudentName, [Address] = @Address, [ResidenceNumber] = @ResidenceNumber, [BirthPlace] = @BirthPlace, [BirthDate] = @BirthDate, [AgeCompleted] = @AgeCompleted, [Religion] = @Religion, [Caste] = @Caste, [FatherName] = @FatherName, [Education] = @Education, [Occupation] = @Occupation, [Address(Office)] = @column1, [MotherName] = @MotherName, [EducationM] = @EducationM, [OccupationM] = @OccupationM, [Image] = @Image WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="StudentName" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="ResidenceNumber" Type="String" />
                <asp:Parameter Name="BirthPlace" Type="String" />
                <asp:Parameter Name="BirthDate" Type="String" />
                <asp:Parameter Name="AgeCompleted" Type="String" />
                <asp:Parameter Name="Religion" Type="String" />
                <asp:Parameter Name="Caste" Type="String" />
                <asp:Parameter Name="FatherName" Type="String" />
                <asp:Parameter Name="Education" Type="String" />
                <asp:Parameter Name="Occupation" Type="String" />
                <asp:Parameter Name="column1" Type="String" />
                <asp:Parameter Name="MotherName" Type="String" />
                <asp:Parameter Name="EducationM" Type="String" />
                <asp:Parameter Name="OccupationM" Type="String" />
                <asp:Parameter Name="Image" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="StudentName" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="ResidenceNumber" Type="String" />
                <asp:Parameter Name="BirthPlace" Type="String" />
                <asp:Parameter Name="BirthDate" Type="String" />
                <asp:Parameter Name="AgeCompleted" Type="String" />
                <asp:Parameter Name="Religion" Type="String" />
                <asp:Parameter Name="Caste" Type="String" />
                <asp:Parameter Name="FatherName" Type="String" />
                <asp:Parameter Name="Education" Type="String" />
                <asp:Parameter Name="Occupation" Type="String" />
                <asp:Parameter Name="column1" Type="String" />
                <asp:Parameter Name="MotherName" Type="String" />
                <asp:Parameter Name="EducationM" Type="String" />
                <asp:Parameter Name="OccupationM" Type="String" />
                <asp:Parameter Name="Image" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
    
    </div>





      <div class="footer">
  <p>Copyright@TinyToy2019</p>
</div>
    
    </form>
</body>
</html>
