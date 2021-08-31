<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="admin_Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #left {
    float: left;
    width:39%;
    height:auto;
    margin-top:100px;
    min-height:200px;
    text-align:center;
    padding-top:100px;
    border:0px solid blue;
    font-size:40px;
   
}
#text {
    text-shadow:maroon 5px 8px  10px;
}
    #text:hover {
        color: maroon;
        text-shadow: black  2px 12px 2px;
    }

#right {
    border: 0px solid white;
    float:left;
    width:50%;
    height:auto;
    margin-left:70px;
    min-height:170px;
    padding-top:30px;
}
#menupart {
    height: 125px;
    width: 100%;
    border:0px solid yellow;
   
}


.row1 {
    height: 65px;
    width: 150px;
    float: left;
    border: 0px solid;
    margin-left: 40px;
    margin-top:20px;
    text-align: center;
    padding-top:35px;
    font-size:18px;
    color:white;
    background:rgba(215, 84, 54, 0.48);
    border-radius:7px;
}
#menupart2 {
    height: 125px;
    width: 100%;
    border: 0px solid red;
}
#menupart3 {
    height: 125px;
    width: 100%;
    border: 0px solid red;
}
#menupart4 {
    height: 125px;
    width: 100%;
    border: 0px solid blue;
}
#box1:hover {
    background: #aa66cc;
    box-shadow:5px 6px 5px#9933CC;
    color:lime;
}
#box2:hover {
    background:#ffbb33;
    box-shadow:5px 6px #FF8800;
    color:red;
}
#box3:hover {
    background:wheat;
    box-shadow:5px 6px gray;
    color:blue;
}
#box4:hover {
    background:#ffbb33;
    box-shadow:5px 6px gray;
    color:blue;
}
#box5:hover {
    background:#ff6a00;
    box-shadow:5px 6px gray;
    color:blue;
}

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="left">
        <h1 id="text">DashBoard</h1>
    </div>
    <div id="right">
        <div id="menupart" >
        <a href="retailer_management.aspx"><div class="row1" id="box1">Rteailer Mgmt.</div></a>
        <a href="productdelete.aspx"><div class="row1" id="box2">Product Mgmt.</div></a>
        <a href="offer_management.aspx" style="text-decoration:none;color:black"><div class="row1" id="box3" style="padding:18px 4px;">Offer Notification Management</div></a>
       
            </div>
        <div id="menupart2">
            <a href="feedback_mangement.aspx" style="text-decoration:none;color:black"> <div class="row1"  id="box4">Feedback Management </div></a>
            <a href="user_management.aspx"><div class="row1" id="box5">Customer Mgmt.</div></a>
            
            
        </div>
        
          

    </div>
</asp:Content>

