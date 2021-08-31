<%@ Page Title="" Language="C#" MasterPageFile="~/customerzone/Customer_MasterPage.master" AutoEventWireup="true" CodeFile="customerfeedback.aspx.cs" Inherits="customerzone_customerfeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../css/customerfeedbacStyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="text-align:center; font-family:Segoe Print; color:#b73351;">FeedBack</h1>
        <hr />
        <table style="margin:0px auto;border:3px solid #bf4f4f;padding:70px;">
            <tr style="border:1px solid">
                    
                   <td style="font-family:Segoe Print; color:#b73351;"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Customer's Name:</td>
                   <td> <asp:TextBox ID="TxtName" runat="server" placeholder="Enter Your Name" CssClass="cfback" Height="25px" Width="230px" />
           
                       </td>
                </tr><br /><br /><br />
             <tr>
                
                    
                     <td style="font-family:Segoe Print; color:#b73351;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email ID:</td>
                    <td><asp:TextBox ID="TxtEID" runat="server" placeholder="Enter Your Email" CssClass="cfback" Height="25px" Width="230px" />
          
                        </td>
                </tr>
                         <tr>
                
                    
                    <td style="font-family:Segoe Print; color:#b73351;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Message:</td>
                    <td><asp:TextBox ID="TxtMsg" runat="server" placeholder="Enter Your Messsage" CssClass="cfback" TextMode="MultiLine" Width="230px" Height="40px" />
            </td>
                </tr>
             <tr>
                 <td colspan="3" style="text-align:center">
       <asp:Button ID="TxtBtn" runat="server" Text="SEND" CssClass="cfbtn" Width="238px" height="30px" OnClick="TxtBtn_Click" />
        </td>
                     </tr>
    </table><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
    <hr />
</asp:Content>

