<%@ Page Title="" Language="C#" MasterPageFile="~/customerzone/Customer_MasterPage.master" AutoEventWireup="true" CodeFile="Offer.aspx.cs" Inherits="customerzone_Offer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Josefin+Sans|Poiret+One" rel="stylesheet">
    <style>
        .product {
        height:550px;width:99.8%;border:1px solid;z-index:1;
        }
        .out {
        height:540px;width:99.8%;border:0px solid;position:absolute;top:168px;left:0px;background:rgba(0,0,0,0.6);

        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="product">
        <img src="../images/best.jpeg" style="height:550px ;width:99.9%"/>
        <div class="out">
            <h1 style="text-align:center;color:white;text-shadow:4px 4px 4px red;">Offers Of The Days</h1>
            <div style="height:400px;width:600px;border:2px solid white;margin:0px auto;margin-top:30px">
              
                    <asp:ListView runat="server" ID="off">
        <ItemTemplate>
              <div style="height:40px;width:600px;border-bottom:2px solid #333333">
                     <div style="height:30px;width:30px;float:left;"><i class="fa fa-check" style="color:white"></i></div>
                    <div style="height:26px;width:560px;float:left;padding-left:4px;padding-top:4px;color:white;font-family:'Berlin Sans FB';font-size:18px;"><%#Eval("offer") %></div>
          </div>
        </ItemTemplate>
                   </asp:ListView>
                    
               
            </div>
        </div>
        
    </div>
    
    
</asp:Content>

