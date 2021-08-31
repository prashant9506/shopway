<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMaster.master" AutoEventWireup="true" CodeFile="user_management.aspx.cs" Inherits="admin_user_management" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin-left:162px; margin-top:100px; height: 358px;">
        <span style="font-family:'Century Gothic';font-size:36px;color:#fff">User Management</span>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="U_Email" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="U_Name" HeaderText="U_Name" SortExpression="U_Name" />
                <asp:BoundField DataField="U_Email" HeaderText="U_Email" ReadOnly="True" SortExpression="U_Email" />
                <asp:BoundField DataField="U_Password" HeaderText="U_Password" SortExpression="U_Password" />
                <asp:BoundField DataField="U_Address" HeaderText="U_Address" SortExpression="U_Address" />
                <asp:BoundField DataField="U_State" HeaderText="U_State" SortExpression="U_State" />
                <asp:BoundField DataField="U_Pin" HeaderText="U_Pin" SortExpression="U_Pin" />
                <asp:BoundField DataField="U_MobileNo" HeaderText="U_MobileNo" SortExpression="U_MobileNo" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [TblU_Registration] WHERE [U_Email] = @U_Email" InsertCommand="INSERT INTO [TblU_Registration] ([U_Name], [U_Email], [U_Password], [U_Address], [U_State], [U_Pin], [U_MobileNo]) VALUES (@U_Name, @U_Email, @U_Password, @U_Address, @U_State, @U_Pin, @U_MobileNo)" SelectCommand="SELECT * FROM [TblU_Registration]" UpdateCommand="UPDATE [TblU_Registration] SET [U_Name] = @U_Name, [U_Password] = @U_Password, [U_Address] = @U_Address, [U_State] = @U_State, [U_Pin] = @U_Pin, [U_MobileNo] = @U_MobileNo WHERE [U_Email] = @U_Email">
            <DeleteParameters>
                <asp:Parameter Name="U_Email" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="U_Name" Type="String" />
                <asp:Parameter Name="U_Email" Type="String" />
                <asp:Parameter Name="U_Password" Type="String" />
                <asp:Parameter Name="U_Address" Type="String" />
                <asp:Parameter Name="U_State" Type="String" />
                <asp:Parameter Name="U_Pin" Type="Int32" />
                <asp:Parameter Name="U_MobileNo" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="U_Name" Type="String" />
                <asp:Parameter Name="U_Password" Type="String" />
                <asp:Parameter Name="U_Address" Type="String" />
                <asp:Parameter Name="U_State" Type="String" />
                <asp:Parameter Name="U_Pin" Type="Int32" />
                <asp:Parameter Name="U_MobileNo" Type="String" />
                <asp:Parameter Name="U_Email" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

