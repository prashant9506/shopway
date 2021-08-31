<%@ Page Title="" Language="C#" MasterPageFile="~/Retailorzone/AdminzoneMasterPage.master" AutoEventWireup="true" CodeFile="Retailer_entry_offer.aspx.cs" Inherits="Retailorzone_Retailer_entry_offer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Josefin+Sans|Poiret+One" rel="stylesheet">
    <style>
        .bor {
        height:150px;
        width:404px;
        border:0px solid white; 
        position:absolute;
        top:200px;
        left:250px;
        }
        .of {
        height:40px;
        width:400px;
        border:2px solid white;
        border-radius:0px;
        background:none;
        font-size:30px;
        color:white;
        }
        .btn {
        height:30px;
        width:120px;
        background:white;
        color:none;
        border:2px solid white;
        float:right;
        font-weight:500;
        font-family:Berlin Sans FB;
        font-size:15px;
        }
            .btn:hover {
            background:none;
            color:white;
            }
        .view {
        max-height:400px;
        width:560px;
        border:1px solid white;
        position:absolute;
        top:100px;right:40px;
        overflow-y:scroll;
        }
        td {
        border:2px solid white;
        color:white;
        width:130px;
        padding:2px 2px;
        height:30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="bor"><span style="color:white">Add Your Offer</span>
        <asp:TextBox ID="off" runat="server"  class="of"></asp:TextBox>    
        <br /><br /><span style="color:white">Status</span>
         <asp:DropDownList ID="status" runat="server" class="of">
                    <asp:ListItem style="background:#333333">1</asp:ListItem>
                    <asp:ListItem style="background:#333333">0</asp:ListItem>
                </asp:DropDownList><br /><br/>
        <asp:Button ID="offer" runat="server" Text="Send Your Offer" class="btn" OnClick="offer_Click"/>
    </div>
    <div class="view">
        <table>
        <tr style="border:1px solid white"><td>User Id</td><td>Offer</td><td>Status</td><td>Date</td><td>Delete</td></tr>
        <asp:ListView runat="server" ID="Lst2">
        <ItemTemplate>
                    <tr><td><%#Eval("Retailer_id") %></td>
                    <td><%#Eval("offer") %></td>
                    <td><%#Eval("status") %></td>
                    <td><%#Eval("data") %></td>
                     <td><a href="retailer_offer_delete.aspx?id=<%#Eval("Id") %>"><i class="fa fa-trash" style="color:white">&nbsp;Delete</i></a></td>
                    </tr>
        </ItemTemplate>
    </asp:ListView>
       </table>
    </div>
</asp:Content>

