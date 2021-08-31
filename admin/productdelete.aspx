<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMaster.master" AutoEventWireup="true" CodeFile="productdelete.aspx.cs" Inherits="admin_productdelete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style>
        .shop {
        height:333px;width:260px;border:3px solid #333333;float:left;margin-left:60px;
        }
        .shop_name {
        height:40px;width:260px;border-bottom:1px solid;text-align:center;background:#f6f6f6;padding-top:3px;
        }
        .shop_image{
        height:255px;width:258px;border:0px solid;
        }
        .shop_details {
        height:30px;width:260px;border-top:1px solid;text-align:center;background:#f6f6f6;cursor:pointer;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height:600px;width:98%;border:0px solid white;overflow:auto;margin:0px auto">
    <asp:ListView runat="server" ID="pro1">
        <ItemTemplate>
             <div class="shop" style="margin-top:30px;">
                    <div class="shop_name"><span style="text-align:center;color:#333333;font-size:24px;font-family:'Century Gothic','Berlin Sans FB';background:#f6f6f6"><%#Eval("P_Name") %>raju</span></div>
                    <div class="shop_image"><img src="../ProductPic/<%#Eval("P_Pic") %>" height="253px" width="256px" /></div>
                    <div class="shop_details"><span style="text-align:center;color:#333333;font-size:18px;font-family:'Century Gothic','Berlin Sans FB';background:#f6f6f6"><a href="delete.aspx?id=<%#Eval("ID") %>" style="color:#333333;text-decoration:none">Delete</a></span></div>
                </div>
        </ItemTemplate>
    </asp:ListView> </div>
</asp:Content>

