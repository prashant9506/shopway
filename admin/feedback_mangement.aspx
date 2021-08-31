<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMaster.master" AutoEventWireup="true" CodeFile="feedback_mangement.aspx.cs" Inherits="admin_feedback_mangement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link href="https://fonts.googleapis.com/css?family=Josefin+Sans|Poiret+One" rel="stylesheet"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="out">
            <h1 style="text-align:center;color:white;text-shadow:4px 4px 4px red;">feedback management</h1>
            <div style="height:400px;width:600px;border:2px solid white;margin:0px auto;margin-top:30px">
              
                    <asp:ListView runat="server" ID="feedback">
        <ItemTemplate>
              <div style="height:40px;width:600px;border-bottom:2px solid #333333">
                     <div style="height:30px;width:30px;float:left;"><i class="fa fa-check" style="color:white"></i></div>
                    <div style="height:26px;width:500px;float:left;padding-left:4px;padding-top:4px;color:white;font-family:'Berlin Sans FB';font-size:18px;"><%#Eval("message") %></div>
                    <div style="height:30px;width:60px;float:left;"><a href="feedback_delete.aspx?id=<%#Eval("id") %>"><i class="fa fa-trash" style="color:white">&nbsp;Delete</i></a></div>
              </div>
        </ItemTemplate>
                   </asp:ListView>
                    
               
            </div>
        </div>
</asp:Content>

