<%@ Page Title="" Language="C#" MasterPageFile="~/customerzone/Customer_MasterPage.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="customerzone_ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #cp 
               {
            margin:0px auto;
            height:300px;
            width:33%;
            padding:5px 0px 5px 60px;
            margin-top:40px;
            margin-bottom:45px;
            background:lightblue;
        }
        .txt {
            width:90%;
            height:30px;
            text-align:center;
        }
        .btn {
            margin-left:90px;
            height:30px;
            width:40%;
            font-size:15px;
            font-weight:bold;
        }
            .btn:hover {
               color :lightblue;
               background:white;
            }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="cp" >
        <h1 style="margin-left:40px">Change Password</h1><br />
        <asp:TextBox runat="server" TextMode="Password" ID="TxtOldPass" placeholder="Your Old Password" CssClass="txt"></asp:TextBox><br /><br />
        <asp:TextBox runat="server" TextMode="Password" ID="TxtNewPass" placeholder="Your New Password" CssClass="txt"></asp:TextBox><br /><br />
        <asp:TextBox runat="server" TextMode="Password" ID="TxtConPass" placeholder="Your Conform Password" CssClass="txt"></asp:TextBox><br /><br />
        <asp:Button runat="server" ID="BtnChangePass" Text="Change Password" OnClick="BtnChangePass_Click" class="btn"/>
    </div>
</asp:Content>

