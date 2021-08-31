<%@ Page Title="" Language="C#" MasterPageFile="~/customerzone/Customer_MasterPage.master" AutoEventWireup="true" CodeFile="user_product_desc.aspx.cs" Inherits="customerzone_user_product_desc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style>
        .out {
        height:400px;width:800px;border:0px solid;margin:0px auto;margin-top:60px;
        }
        #bor {
        height:400px;width:800px;border:2px solid #333333;
        }
        .img {
        height:400px;width:350px;border-right:2px solid #333333;float:left;
        }
        .desc {
            height:350px;width:445px;border:0px solid;float:left;
        }
        .name {
        height:50px;
        width:280px;
        border:0px solid;
        font-size:30px;
        color:#333333;
        font-family:'Century Gothic';
        padding-top:10px;
        padding-left:5px;
        float:left;
       
        }
        .name1 {
        height:40px;
        width:280px;
        border:0px solid;
        font-size:25px;
        color:#333333;
        font-family:'Century Gothic';
        padding-top:10px;
        padding-left:5px;
        float:left;
        }
        .add {
        margin-top:-50px;cursor:pointer;height:35px;width:160px;border:0px solid;float:right;color:white;background:#333333;font-family:'Berlin Sans FB';font-size:22px;text-align:center;padding-top:5px;margin-right:20px;
        }
         .product {
         height:50px; 
         width:92%;
         border-bottom:5px solid#333333;
         margin-left:50px;
         margin-top:40px;
         }
         .tag {
         height:40px;width:150px;border:0px solid;margin-left:40px;border-radius:30px 30px 0px 0px;background:#333333;color:white;text-align:center;
         font-family:'Century Gothic';font-size:27px;padding-top:10px;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <div class="out">
            <div id="bor">
        <asp:ListView runat="server" ID="product" >
        <ItemTemplate>
             
    <div class="img"><img src="../ProductPic/<%#Eval("P_Pic") %>" height="400px" width="350px" /></div>
        <div class="desc">
            <div class="name"><span style="color:#9d6f5b"><%#Eval("P_Name") %>&nbsp;:&nbsp;</span></div>
            <div class="name" style="width:150px"><span style="color:#9d6f5b">Rs&nbsp;.&nbsp;</span><%#Eval("P_Price") %></div><br />
            <div class="name1"><span style="color:#9d6f5b">Quantity&nbsp;:&nbsp;</span><%#Eval("P_Quantity") %></div>
            <div class="name1"><span style="color:#9d6f5b">Weight&nbsp;:&nbsp;</span><%#Eval("P_Weight") %></div>
            <div class="name1" style="height:160px;width:440px"><span style="color:#9d6f5b">Discription&nbsp;:&nbsp;</span><br /><%#Eval("P_Discription") %></div>
            
        </div>
        <%--<div class="add"><a style="text-decoration:none;color:white" href="Add_to_cart.aspx?id=<%#Eval("ID") %>">Add To Cart</a>--%>
       
             
    </div>
        </ItemTemplate>
    </asp:ListView>
   <asp:Button ID="addtocart" runat="server" Text="Add To Cart" CssClass="add" OnClick="addtocart_Click"  /></div></div>
   <div class="product">
       <div class="tag">Related</div>
   </div>
    <div></div>
</asp:Content>

