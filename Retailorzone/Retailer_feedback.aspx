<%@ Page Title="" Language="C#" MasterPageFile="~/Retailorzone/AdminzoneMasterPage.master" AutoEventWireup="true" CodeFile="Retailer_feedback.aspx.cs" Inherits="Retailorzone_Retailer_feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="/css/ContectWithAdminStyleSheet.css" rel="stylesheet"  type="text/css"/>
    <style>
        body {
        color:black;
        }
        .txt {
        height:30px;
        width:300px;
        font-family:'Century Gothic';
        font-size:17px;
        padding-left:6px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="outer" style="margin-left:0px;margin-top:80px">
            <h1 style="text-align:center;font-family:Algerian;color:white">Contect With admin</h1>
            <hr style="width:96%;margin-bottom:100px;" />
            <div id="details"><center>
            <table style="color:white">
                <tr>
                    <td>
                        Name<br />
                        <asp:TextBox ID="TxtName" runat="server" placeholdar="enter name" CssClass="txt"></asp:TextBox><br /><br />
                    </td>
                </tr>
                <tr>
                    <td>
                    Email<br />
                        <asp:TextBox ID="TxtEmail" runat="server" placeholdar="Enter Email" CssClass="txt"></asp:TextBox>
                     </td>
                </tr>

                 <tr>
                    <td>
                        Mobile No<br />
                        <asp:TextBox ID="TxtMobNp" IDt="TxtName" runat="server" placeholdar="Enter Mobile Number" CssClass="txt"></asp:TextBox><br /><br />
                    </td>
                </tr>
                <tr>
                    <td>
                    Message<br />
                        <asp:TextBox ID="TxtMsg" runat="server" placeholdar="Enter Message" CssClass="txt"></asp:TextBox>
                     </td>
                </tr>

            </table>
            
                <br />
            
                <asp:Button ID="BtnSend" runat="server" Text="Send" Height="36px" Width="250px" /></center>
                </div>

            
        </div>
</asp:Content>

