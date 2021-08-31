<%@ Page Language="C#" AutoEventWireup="true" CodeFile="customerprofilepage.aspx.cs" Inherits="customerzone_customerprofilepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/customerprofilepage.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
         <div id="Topheader">

        
       
            <div id="logo">
                <a href="../genralzone/Default.aspx"><img src="../images/logo.png" style="height:130px;width:180px"/></a>
            </div>
            <div id="search">
                <asp:TextBox ID="Txtsearch" runat="server"  CssClass="searchbar" placeholder="Search any shop..."></asp:TextBox>
                <span style="margin-top:20px;"><button class="searchbutton">  <img src="../images/search-icon-png-0.png"  height="25px" width="25px" style="margin:3px"/>  </button></span>

            </div>
            <div class="memtocart">
                <div class="member"><a href="Customer_add_to_cart.aspx">
                    <img src="../images/if_cart-alt_353403.png" style="height:45px;width:45px;border-radius:50%;" />
               </a>
                     </div>
                <div class="member">
                    <a href="Location.aspx">
                    <img src="../images/if_15_2135924.png" style="height:45px;width:45px;border-radius:50%"/>
                        </a>
                </div>
                <div class="member" style="cursor:pointer">
                     <a href="LogOut.aspx"> 
                         <img src="../images/logout.png" style="cursor:pointer;height:45px;width:45px;border-radius:50%"/>
                         </a>
                    
                 </div> 
            </div>
        </div>
       
        <div id="menubar">
            
           <a href="LogOut.aspx"><div class="menu">Logout</div></a> 
            <div class="menu" style="width:14%">Setting
                <div id="option">
                   <a href="customerprofilepage.aspx" style="text-decoration:none;color:black;"> <div class="text">profile</div></a>
                    <div class="text">change password</div>
                </div>
            </div>
            <a href="customerfeedback.aspx"><div class="menu">Feedback</div></a>
            <a href="Offer.aspx" style="text-decoration:none;color:white;"><div class="menu" >Offer</div></a>
            <a href="customerhomepage.aspx"  style="text-decoration:none;color:white"><div class="menu" >Home</div></a>
            <div style="float:left;margin-top:-3px;margin-left:5px;border:0px solid red;width:28%;font-family:Century Gothic;font-size:20px;padding-top:2px;"><h2><asp:Label runat="server" ID="LblU_Name" Text="Prasant" ForeColor="White" ></asp:Label></h2> </div>
                                                                                                                                               
        </div>

    <div id="outer" style="background-color:#232f3e;">
        <h1 style="color:white">&nbsp; Your Profile</h1>
        <asp:DetailsView ID="DetailsView1" CssClass="text" runat="server" AutoGenerateRows="False" BackColor="#232f3e" BorderColor="#232f3e" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="U_Email" DataSourceID="SqlDataSource1" GridLines="Horizontal" Height="50px" Width="100%" Font-Size= "X-Large">
        <AlternatingRowStyle BackColor="#232f3e" />
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7"/>
        <Fields >
            <asp:BoundField DataField="U_Name" HeaderText="Your_Name" SortExpression="Your_Name"/>
            <asp:BoundField DataField="U_Email" HeaderText="Your_Email" ReadOnly="true" SortExpression="Your_Email" />
            <asp:BoundField DataField="U_Address" HeaderText="Your_Address"  SortExpression="Your_Address" />
            <asp:BoundField DataField="U_State" HeaderText="State" SortExpression="State" />
            <asp:BoundField DataField="U_Pin" HeaderText="State_Pin" SortExpression="State_Pin" />
            <asp:BoundField DataField="U_MobileNo" HeaderText="Your_MobileNo" SortExpression="Your_MobileNo" />
            <asp:CommandField ShowEditButton="True" />
        </Fields>
        <FooterStyle BackColor="#232f3e" ForeColor="#232f3e" />
        <HeaderStyle BackColor="#232f3e" Font-Bold="True" ForeColor="#232f3e" />
        <PagerStyle BackColor="#232f3e" ForeColor="#232f3e" HorizontalAlign="Right" />
        <RowStyle BackColor="#232f3e" ForeColor="White" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [TblU_Registration] WHERE [U_Email] = @U_Email" InsertCommand="INSERT INTO [TblU_Registration] ([U_Name],[U_Email], [U_Address], [U_State], [U_Pin], [U_MobileNo]) VALUES (@U_Name, @U_Email, @U_Address, @U_State, @U_Pin, @U_MobileNo)"  SelectCommand="SELECT [U_Name], [U_Email], [U_Address], [U_State], [U_Pin], [U_MobileNo] FROM [TblU_Registration] WHERE ([U_Email] = @U_Email)" UpdateCommand="UPDATE [TblU_Registration] SET [U_Name] = @U_Name, [U_Address] = @U_Address, [U_State] = @U_State, [U_Pin] = @U_Pin, [U_MobileNo] = @U_MobileNo WHERE [U_Email] = @U_Email">
        <DeleteParameters>
            <asp:Parameter Name="U_Email" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="U_Name" Type="String" />
            <asp:Parameter Name="U_Email" Type="String" />
            <asp:Parameter Name="U_Address" Type="String" />
            <asp:Parameter Name="U_State" Type="String" />
            <asp:Parameter Name="U_Pin" Type="String" />
            <asp:Parameter Name="U_MobileNo" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="U_Email" SessionField="Userid" Type="String" />
        </SelectParameters>
        <UpdateParameters>
             <asp:Parameter Name="U_Name" Type="String" />
            <asp:Parameter Name="U_Email" Type="String" />
            <asp:Parameter Name="U_Address" Type="String" />
            <asp:Parameter Name="U_State" Type="String" />
            <asp:Parameter Name="U_Pin" Type="String" />
            <asp:Parameter Name="U_MobileNo" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </div>
                <div id="footer">
            <div class="foo">
                <table>
                    <tr>
                        <td>
                   <h2>Shopway</h2>
                            <h3>Address&nbsp;:</h3>
                            <span style="font-size:15px;">Kamla Nehru Institute of Technology Sultanpur</span><br />
                            <span>Mobile NO&nbsp;<span style="font-size:22px;">:</span> 9839376319</span><br />
                            Email Id <span style="font-size:22px;">:</span> shopway@gmail.com
                        </td>
                    </tr>
                </table><br />
            </div>
            <div class="foo" style="text-align:center">
              
                <h3>Terms & Condition</h3>
                 <h3>Contact Company</h3>
                <h3>Send Feedback</h3>
                
                <h3>About us</h3>
            </div>
            <div class="foo">
                <h2 style="text-align:center;padding-top:15px">Contact us<br />
                    <img src="../images/if_facebook_313103.png" style="height:40px;width:40px;border-radius:50%"/>
                    <img src="../images/if_twitter_834708.png" style="height:33px;width:33px;border-radius:50%" />
                    <img src="../images/if_googleplus_313110.png" style="height:40px;width:40px;border-radius:50%" />
                <h4 style="text-align:center"> Home &nbsp; Login &nbsp; Feedback &nbsp; Setting</h4>
               

 </div>
            </div>
           <div class="bfooter">
            <div class="bfooterpart">
                <h4>&copy; copyright resvered by ShopWay</h4>
            </div>
             <div class="bfooterpart">
                 <h4>Deploper by::Prashant Maurya</h4>
             </div>
               </div>
    </form>
</body>
</html>
