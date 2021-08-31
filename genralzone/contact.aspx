<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="genralzone_contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <div class="info" style="margin-top:200px">
                <table align="center" >
                    <h3 style="text-align:center;color:maroon;font-family:Algerian;font-size:25px">Contact to Shopway Team</h3>
                    <tr>
                        <br />
                        <td style="font-size:20px">Name</td><td>&nbsp;&nbsp; <asp:TextBox ID="TxtName" runat="server" class="txtbox" Width="240px" Height="22px" style="font-family:Comic Sans MS"></asp:TextBox></td>
                        </tr>
                    <tr>
                        <td style="font-size:20px">Email</td><td>&nbsp;&nbsp; <asp:TextBox ID="TxtEmail" runat="server" class="txtbox" Width="240px" Height="22px"></asp:TextBox></td>
                        </tr>
                    <tr>
                        <td style="font-size:20px">Message</td><td>&nbsp;&nbsp; <asp:TextBox ID="TxtMessage" runat="server" TextMode="multiline" class="txtbox" Width="240px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="text-align:center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
                            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            <asp:Button ID="BtnSend" runat="server" Text="SEND" Height="33px" Width="141px" style=" font-size:15px;
    font-family:'Global Monospace';"/></td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
