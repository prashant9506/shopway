<%@ Page Title="" Language="C#" MasterPageFile="~/shopwaymasterpage.master" AutoEventWireup="true" CodeFile="ShowProducts.aspx.cs" Inherits="ShowProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .wow {
        border:1px solid red;
        width:300px;

        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="del">
        <h2> Delete all data from Tbl_Product</h2>
        <asp:Button runat="server" ID="Del1" Text="Delete All Data" OnClick="Del1_Click" />
    </div><br />
     <asp:ListView runat="server" ID="Lst1" GroupItemCount="4">
        <ItemTemplate>
            <div class="wow">
                 <table>
                    <tr><th >Details:</th></tr>
                    <tr><td><%#Eval("ID") %></td></tr>
                    <tr><td><%#Eval("P_Name") %></td></tr>
                    <tr><td><%#Eval("P_Discription") %></td></tr>
                    <tr><td><%#Eval("P_Quantity") %></td></tr>
                    <tr><td><%#Eval("P_Price") %></td></tr>
                    <tr><td><%#Eval("P_Weight") %></td></tr>
                   <tr > 
                       <td>
                           <img src="ProductPic/<%#Eval("P_Pic") %>" height="200px" width="200px" />
                       </td>
                   </tr>
                    <tr><td><%#Eval("Retailer_ID") %></td></tr>
                    <tr><td><%#Eval("P_Time") %></td></tr>
                </table>
            </div>
        </ItemTemplate>
    </asp:ListView>
    
</asp:Content>

