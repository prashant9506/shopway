<%@ Page Title="" Language="C#" MasterPageFile="~/Retailorzone/AdminzoneMasterPage.master" AutoEventWireup="true" CodeFile="retailer_view_product.aspx.cs" Inherits="Retailorzone_retailer_view_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Josefin+Sans|Poiret+One" rel="stylesheet">
    <style>
        .out {
        height:200px;width:400px;border:2px solid white;float:left;margin-left:19px;margin-top:30px;
        }
        .img {
        height:200px;width:170px;border-right:2px solid white;float:left
        }
        .con {
        height:198px;width:225px;border:0px solid;float:left;
        }
        .des {
        height:23px;width:200px;border:0px solid white;color:white;padding:3px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <span style="color:white;font-family:'Century Gothic';font-size:30px;">Product management</span>
    <div style="height:500px;width:96%;border:1px solid white;margin-top:20px;margin-left:20px;overflow:auto">
        <asp:ListView runat="server" ID="rpro">
        <ItemTemplate>
             <div class="out">
        <div class="img">
            <img src="../ProductPic/<%#Eval("P_Pic") %>" height="200" width="170px"/>
        </div>
        <div class="con">
            <div class="des" style="font-size:27px;height:40px"><%#Eval("P_Name") %></div>
            <div class="des">Rs&nbsp;.&nbsp;<%#Eval("P_Price") %></div>
            <div class="des">Weight:<%#Eval("P_Weight") %></div>
            <div class="des" style="overflow:hidden">Discription&nbsp;:&nbsp;<%#Eval("P_Discription") %></div>
            <div class="des">Time&nbsp;:&nbsp;<%#Eval("ID") %></div>
            <div class="des" style="width:100px;float:left">Quantity&nbsp;:<%#Eval("P_Quantity") %></div>
            <div class="des" style="width:50px;float:left;font-size:14px;background:#333333;border:1px solid;"><a style="text-decoration:none;color:white" href="delete_product.aspx?id=<%#Eval("ID") %>"><i class="fa fa-trash">&nbsp;Delete</i></a></div>
            <%--<div class="des" style="width:53px;float:left;font-size:13px;background:#333333;margin-left:3px;"><a style="text-decoration:none;color:white" href="update_product.aspx?id=<%#Eval("ID") %>"><i class="fa fa-pencil">&nbsp;Update</i></a></div>
      --%>  </div>
    </div> 
        </ItemTemplate>
    </asp:ListView>
    </div>
</asp:Content>

