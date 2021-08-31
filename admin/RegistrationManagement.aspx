<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegistrationManagement.aspx.cs" Inherits="admin_RegistrationManagement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="head">SHOPWAY &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ADMIN PENAL</div>
    <h1 style="text-align:center;color:#999999;text-decoration:underline ">SEND OFFER</h1>
    <div class="body">
       
        <table class="auto-style1">
            <tr>
                <td class="auto-style3"><h2>Write offer</h2></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="40px" style="font-size:30px;" Width="218px"></asp:TextBox>
                </td>
            </tr>
            <tr><td><h2>Status</h2></td>
                <td class="auto-style2" colspan="3">
                    <asp:DropDownList ID="status" runat="server" Height="40px" Width="50px">
                    
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>0</asp:ListItem>
                </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="Send offer" Width="140px" />
                </td>
            </tr>
        </table>
       <hr />
        <h1 style="text-align:center;color:#999999;text-decoration:underline ">SHOW OFFER</h1>
        <center>

        </center>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="740px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="offer" HeaderText="offer" SortExpression="offer" />
                <asp:CheckBoxField DataField="status" HeaderText="status" SortExpression="status" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"  SelectCommand="SELECT * FROM [TblR_Registration]" DeleteCommand="DELETE FROM [TblR_Registration] WHERE [ID] = @ID" UpdateCommand="UPDATE [TblR_Registration] SET [UserType] = @UserType WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            
            <UpdateParameters>
                <asp:Parameter Name="UserType" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
