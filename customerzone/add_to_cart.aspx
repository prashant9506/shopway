<%@ Page Title="" Language="C#" MasterPageFile="~/customerzone/Customer_MasterPage.master" AutoEventWireup="true" CodeFile="add_to_cart.aspx.cs" Inherits="customerzone_add_to_cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .bor {
        height:200px;width:600px;border:2px solid #333333;
        }
        .img {
        height:200px;width:250px;border-right:2px solid #333333;float:left;
        }
        .desc {
        height:200px;width:345px;border:0px solid;float:left;
        }
        .item {
        height:170px;width:345px;border:0px solid;
        }
        .name {
        height:24px;width:340px;border:0px solid;font-family:'Berlin Sans FB';font-size:18px;padding-top:4px;padding-left:4px;color:#333333;
        }
        .rem {
        height:25px;width:80px;border:0px solid;float:right;font-family:'Bauhaus 93';font-size:16px;text-align:center;color:white;background:#333333;margin-left:10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin-left:370px;margin-top:10px;margin-bottom:10px;">
        
    <asp:ListView runat="server" ID="AddListView"> 
        <ItemTemplate>
            <div class="bor" style="margin-top:10px;margin-bottom:10px;">
           <div class="img"><img src="../ProductPic/<%#Eval("p_pic") %>" height="200px" width="200px" /></div>
            <div class="desc">
                <div class="item">
                    <div class="name" style="font-size:24px"><%#Eval("p_name") %></div>
                    <div class="name"><span style="color:#fa3535">Rs&nbsp.&nbsp;</span><%#Eval("p_price") %></div>
                    <div class="name"><span style="color:#fa3535">Quantity&nbsp;:&nbsp;</span><%#Eval("p_quantity") %></div>
                    <div class="name"><span style="color:#fa3535">Weight&nbsp;:&nbsp;</span><%#Eval("p_weight") %></div>
                    <div class="name" style="height:30px;border:0px solid"><span style="color:#fa3535">Description&nbsp;:&nbsp;</span><%#Eval("p_desc") %></div>
                    <span style="font-family:'Century Gothic';float:right"><%#Eval("p_date") %></span>
                </div>
                <div class="item" style="height:27px">
                    <div class="rem"><a style="text-decoration:none;color:white" href="remove.aspx?id=<%#Eval("product_id") %>">Remove</a></div>
                    <div class="rem"><a style="text-decoration:none;color:white" href="Thanks_page.aspx?id=<%#Eval("product_id") %>">Buy</a></div>
                </div>
            </div></div>
        </ItemTemplate>
    </asp:ListView></div>
</asp:Content>

