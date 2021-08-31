<%@ Page Title="" Language="C#" MasterPageFile="~/Retailorzone/AdminzoneMasterPage.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Retailorzone_Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <link href="../css/adminStyleSheetogin.css" rel="stylesheet" />
   
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
     <div id="left">
        <h1 id="text">DashBoard</h1>
    </div>
    <div id="right">
        <div id="menupart" >
       
        <a href="Retailer_entry_offer.aspx" style="text-decoration:none;color:black"><div class="row1" id="box2">Send Offer.</div></a>
        <a href="ProductEntry.aspx" style="text-decoration:none;color:black"><div class="row1" id="box3">Product Entry</div></a>
       
            </div>
        <div id="menupart2">
            <a href="Retailer_feedback.aspx" style="text-decoration:none;color:black"> <div class="row1"  id="Div1">Admin Send Feedback </div></a>
           
            <a href="retailer_view_product.aspx"><div class="row1"  id="Div3">product management</div></a>
            
        </div>
        <div id="menupart3">
            <a href="../customerzone/ChangePassword.aspx"><div class="row1"  id="Div4">Change Password</div></a>
            <a href="Retailerprofile.aspx"><div class="row1"  id="Div5">Profile</div></a>
        
            
        </div>

    </div>
    
</asp:Content>

