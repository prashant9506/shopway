<%@ Page Title="" Language="C#" MasterPageFile="~/customerzone/Customer_MasterPage.master" AutoEventWireup="true" CodeFile="view_more_retailer.aspx.cs" Inherits="customerzone_view_more_retailer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .abc {
        min-height:800px;height:auto;width:99.8%;border:0px solid;
        }
        .shop {
        height:333px;width:260px;border:3px solid #333333;float:left;margin-left:60px;
        }
        .shop_name {
        height:40px;width:260px;border-bottom:1px solid;text-align:center;background:#232f3e;padding-top:3px;
        }
        .shop_image{
        height:255px;width:258px;border:0px solid;
        }
        .shop_details {
        height:30px;width:260px;border-top:1px solid;text-align:center;background:#232f3e;cursor:pointer;
        }
        .tit {
        font-family:'Bauhaus 93';color:#333333;font-size:50px;margin-left:30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <span  class="tit">All Retailer</span>
    <div class="abc">
    <asp:ListView runat="server" ID="retailer">
        <ItemTemplate>
            <div class="shop" style="margin-top:30px;">
                    <div class="shop_name"><span style="text-align:center;color:white;font-size:18px;font-family:'Century Gothic','Berlin Sans FB';background:#232f3e"><%#Eval("R_ShopNo") %></span></div>
                    <div class="shop_image"><img src="../ShopPhotos/<%#Eval("R_Pic") %>" height="253px" width="256px" /></div>
                    <div class="shop_details"><span style="text-align:center;color:white;font-size:18px;font-family:'Century Gothic','Berlin Sans FB';background:#232f3e"><a href="../customerzone/view_all_product.aspx?email=<%#Eval("ID") %>" style="color:white;text-decoration:none">View All Product</a></span></div>
                </div>

        </ItemTemplate>
    </asp:ListView></div>
</asp:Content>

