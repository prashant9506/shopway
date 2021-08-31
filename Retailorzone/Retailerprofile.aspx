<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Retailerprofile.aspx.cs" Inherits="Retailorzone_Retailerprofile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/retailerprofile.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
   <div id="outer" style="background-color:#232f3e;">
        <h1 style="color:white">&nbsp; Your Profile</h1>

        <asp:DetailsView ID="DetailsView1" CssClass="text" runat="server" AutoGenerateRows="False" BackColor="#232f3e" BorderColor="#232f3e" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="R_Email" DataSourceID="SqlDataSource1" GridLines="Horizontal" Height="50px" Width="100%" Font-Size= "X-Large">
        <AlternatingRowStyle BackColor="#232f3e" />
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7"/>
        <Fields >
            <asp:BoundField DataField="R_Name" HeaderText="Your_Name" SortExpression="Your_Name"/>
            <asp:BoundField DataField="R_Mobile" HeaderText="Your_Mobile"  SortExpression="Your_Email" />
            
            <asp:BoundField DataField="R_Gender" HeaderText="Gender" ReadOnly="true" SortExpression="Gender" />
            <asp:BoundField DataField="R_Adhar" HeaderText="Your_Adhar" ReadOnly="true" SortExpression="Your_Adhar" />
            <asp:BoundField DataField="R_ShopType" HeaderText="Shop_Type" SortExpression="Shop_Type" />
            <asp:BoundField DataField="R_ShopNo" HeaderText="ShopNo" SortExpression="ShopNo" />
            <asp:BoundField DataField="R_Email" HeaderText="Your_Email" SortExpression="Your_Email" ReadOnly="true" />
            
             <asp:CommandField ShowEditButton="True" />
        </Fields>
        <FooterStyle BackColor="#232f3e" ForeColor="#232f3e" />
        <HeaderStyle BackColor="#232f3e" Font-Bold="True" ForeColor="#232f3e" />
        <PagerStyle BackColor="#232f3e" ForeColor="#232f3e" HorizontalAlign="Right" />
        <RowStyle BackColor="#232f3e" ForeColor="White" />
    </asp:DetailsView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [TblR_Registration] WHERE [R_Email] = @R_Email" InsertCommand="INSERT INTO [TblR_Registration] ([R_Name],[R_Mobile],  [R_Gender], [R_Adhar], [R_ShopType],[R_ShopNo],[R_Email]) VALUES (@R_Name, @R_Mobile, @R_Gender, @R_Adhar, @R_ShopType,@R_Email)"  SelectCommand="SELECT [R_Name], [R_Mobile],[R_Gender], [R_Adhar], [R_ShopType], [R_ShopNo], [R_Email]  FROM [TblR_Registration] WHERE ([R_Email] = @R_Email)" UpdateCommand="UPDATE [TblR_Registration] SET [R_Name] = @R_Name,[R_Mobile] = @R_Mobile,  [R_Gender] = @R_Gender, [R_ShopType] = @R_ShopType, [R_ShopNo] = @R_ShopNo WHERE [R_Email] = @R_Email">
        <DeleteParameters>
            <asp:Parameter Name="R_Email" Type="String" />
        </DeleteParameters>

        <InsertParameters>
            <asp:Parameter Name="R_Name" Type="String" />
            <asp:Parameter Name="R_Mobile" Type="Int32" />
           
            <asp:Parameter Name="R_Gender" Type="String" />
            <asp:Parameter Name="R_Adhar" Type="String" />
            <asp:Parameter Name="R_ShopType" Type="String" />
            <asp:Parameter Name="R_ShopNo" Type="String" />
            <asp:Parameter Name="R_Email" Type="String" />  
        </InsertParameters>

        <SelectParameters>
            <asp:SessionParameter Name="R_Email" SessionField="Retailerid" Type="String" />
        </SelectParameters>

        <UpdateParameters>
            <asp:Parameter Name="R_Name" Type="String" />
            <asp:Parameter Name="R_Mobile" Type="Int32" />
           
            <asp:Parameter Name="R_Gender" Type="String" />
            <asp:Parameter Name="R_Adhar" Type="String" />
            <asp:Parameter Name="R_ShopType" Type="String" />
            <asp:Parameter Name="R_ShopNo" Type="String" />
            <asp:Parameter Name="R_Email" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

    </div>
    </form>
</body>
</html>
