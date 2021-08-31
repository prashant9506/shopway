<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProductEntry.aspx.cs" Inherits="ProductEntry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/ProductEntryStyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="outer">
        <div id="header">
            <div id="logo">
                <a href="../genralzone/Default.aspx"><img src="../images/logo.pngg" style="height:100px;width:200px"/></a>
            </div>
            <div id="title" style="text-align:center; font-size:70px;font-family:Algerian"><an style="font-family:Algerian;font-size:85px;color:maroon">M</an>an<span style="color:maroon">C</span>hahe</div>
            <div id="logout">
                <a href="logOut.aspx" style="color:black"><img src="../images/logout.png" style="height:45px;width:45px;" /></a>
            </div>
        </div>
        <div id="menu">
            <a href="logOut.aspx" style="color:black"><div class="option">Logout</div></a>
           <a href="../customerzone/Offer.aspx" style="text-decoration:none;color:black"> <div class="option">Offers</div></a>
             <a href="Dashboard.aspx" style="text-decoration:none;color:black"><div class="option">Dashboard</div></a>
        </div>
        <div id="main">
            <img src="../images/best.jpeg" style="height:700px;width:100%;" />
            <div id="box"><br /><br />
            <div id="productform">
                <h1 style="text-align:center;color:silver;font-size:45px">Product</h1>
                <hr style="width:50%;margin:0px auto;"/><br />
                <table style="margin:0px auto; font-size:20px;color:gray ;border-style:none ">
                    <tr>
                        <td>
                            Product Name<br />
             
                            <asp:TextBox ID="TxtPname" runat="server" Width="250px" Height="24px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td><br />
                            Product Quantity<br />
                            <asp:TextBox ID="TxtPquantity" runat="server" Width="250px" Height="24px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td><br />
                            Product Price<br />
                            <asp:TextBox ID="TxtPprice" runat="server" Width="250px" Height="24px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td><br />
                            Product Decription<br />
                            <asp:TextBox ID="TxtDecription" runat="server" Width="250px" Height="24px" />
                        </td>
                    </tr>
                       <tr>
                        <td><br />
                            Product weight<br />
                            <asp:DropDownList ID="DdlPweight" runat="server" Width="254px" Height="24px">
                                 <asp:ListItem>--select weight---</asp:ListItem>
                                 <asp:ListItem>10gm</asp:ListItem>
                                 <asp:ListItem>25gm</asp:ListItem>
                                 <asp:ListItem>50gm</asp:ListItem>
                                 <asp:ListItem>100gm</asp:ListItem>
                                 <asp:ListItem>200gm</asp:ListItem>
                                 <asp:ListItem>250gm</asp:ListItem>
                                 <asp:ListItem>500gm</asp:ListItem>
                                 <asp:ListItem>1kg</asp:ListItem>
                                 <asp:ListItem>1.5kg</asp:ListItem>
                                 <asp:ListItem>2kg</asp:ListItem>
                                 <asp:ListItem>2.5kg</asp:ListItem>
                                 <asp:ListItem>3kg</asp:ListItem>
                                 <asp:ListItem>4kg</asp:ListItem>
                                 <asp:ListItem>5kg</asp:ListItem>
                                 <asp:ListItem>6kg</asp:ListItem>
                                 <asp:ListItem>7kg</asp:ListItem>
                                 <asp:ListItem>8kg</asp:ListItem>
                                 <asp:ListItem>9kg</asp:ListItem>
                                 <asp:ListItem>10kg</asp:ListItem>
                                <asp:ListItem>none</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td><br />
                            Product pic<br />
                            <asp:FileUpload ID="FuPpic" runat="server" Width="150px" />
                           
                            <asp:Button ID="BtnSubmit" runat="server" Text="Submit" Width="100px" Height="30px" CssClass="Btn" OnClick="BtnSubmit_Click"  />
                        </td>
                    </tr>
                </table>
            </div>
            <div id="ProductText">
                <h1>Product Entry</h1>
            </div>
                </div>
        </div>
        <div id="footer">
            <div class="afooter">&copy copyright Shopway</div>
            <div class="afooter">Devloped by: Prashant Maurya</div>
        </div>

    
    </div>
    </form>
</body>
</html>
