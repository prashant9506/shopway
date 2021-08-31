<%@ Page Title="" Language="C#" MasterPageFile="~/customerzone/Customer_MasterPage.master" AutoEventWireup="true" CodeFile="Thanks_page.aspx.cs" Inherits="customerzone_Thanks_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   <image src="../images/thanksgreentick.gif" style="margin-left:450px"></image></br>
  <div align="center" style="margin-bottom:50px"> 
       <asp:Button runat="server" ID="continue_shopping" BackColor="Maroon" Text="continue shopping" ForeColor="White" Width="300px" Height="50px" Font-Size="Large" OnClick="continue_shopping_Click" />
    </div>
</asp:Content>

