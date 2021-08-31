<%@ Page Title="" Language="C#" MasterPageFile="~/customerzone/Customer_MasterPage.master" AutoEventWireup="true" CodeFile="Customer_Profile.aspx.cs" Inherits="customerzone_Customer_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <%--------toheader section--------%>
       <br /><br /><br /><br /><br /><br />
    <div style="background-color:#fff;"><center>
        <h1 style="color:#333333">&nbsp; Your Profile</h1>
        <asp:DetailsView ID="DetailsView1" CssClass="text" runat="server" AutoGenerateRows="False" BackColor="#232f3e" BorderColor="#232f3e" BorderStyle="None" BorderWidth="1px" CellPadding="5" DataKeyNames="U_Email" DataSourceID="SqlDataSource1" GridLines="Horizontal" Height="50px" Width="70%" Font-Size= "X-Large">
        <AlternatingRowStyle BackColor="#232f3e" />
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7"/>
        <Fields >
            <asp:BoundField DataField="U_Name" HeaderText="Your_Name" SortExpression="Your_Name"/>
            <asp:BoundField DataField="U_Email" HeaderText="Your_Email" ReadOnly="true" SortExpression="Your_Email" />
            <asp:BoundField DataField="U_Address" HeaderText="Your_Address"  SortExpression="Your_Address" />
            <asp:BoundField DataField="U_State" HeaderText="State" SortExpression="State" />
            <asp:BoundField DataField="U_Pin" HeaderText="State_Pin" SortExpression="State_Pin" />
            <asp:BoundField DataField="U_MobileNo" HeaderText="Your_MobileNo" SortExpression="Your_MobileNo" />
            <asp:CommandField ShowEditButton="True" />
        </Fields>
        <FooterStyle BackColor="#fff" ForeColor="#232f3e" />
        <HeaderStyle BackColor="#232f3e" Font-Bold="True" ForeColor="#232f3e" />
        <PagerStyle BackColor="#232f3e" ForeColor="#232f3e" HorizontalAlign="Right" />
        <RowStyle BackColor="#232f3e" ForeColor="White" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [TblU_Registration] WHERE [U_Email] = @U_Email" InsertCommand="INSERT INTO [TblU_Registration] ([U_Name],[U_Email], [U_Address], [U_State], [U_Pin], [U_MobileNo]) VALUES (@U_Name, @U_Email, @U_Address, @U_State, @U_Pin, @U_MobileNo)"  SelectCommand="SELECT [U_Name], [U_Email], [U_Address], [U_State], [U_Pin], [U_MobileNo] FROM [TblU_Registration] WHERE ([U_Email] = @U_Email)" UpdateCommand="UPDATE [TblU_Registration] SET [U_Name] = @U_Name, [U_Address] = @U_Address, [U_State] = @U_State, [U_Pin] = @U_Pin, [U_MobileNo] = @U_MobileNo WHERE [U_Email] = @U_Email">
        <DeleteParameters>
            <asp:Parameter Name="U_Email" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="U_Name" Type="String" />
            <asp:Parameter Name="U_Email" Type="String" />
            <asp:Parameter Name="U_Address" Type="String" />
            <asp:Parameter Name="U_State" Type="String" />
            <asp:Parameter Name="U_Pin" Type="String" />
            <asp:Parameter Name="U_MobileNo" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="U_Email" SessionField="Userid" Type="String" />
        </SelectParameters> 
        <UpdateParameters>
             <asp:Parameter Name="U_Name" Type="String" />
            <asp:Parameter Name="U_Email" Type="String" />
            <asp:Parameter Name="U_Address" Type="String" />
            <asp:Parameter Name="U_State" Type="String" />
            <asp:Parameter Name="U_Pin" Type="String" />
            <asp:Parameter Name="U_MobileNo" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource></center>
    </div><div style="height:300px;width:99.8%"></div>
        
</asp:Content>

