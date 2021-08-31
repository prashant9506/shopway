<%@ Page Language="C#" AutoEventWireup="true" CodeFile="customerhomepage.aspx.cs" Inherits="customerzone_customerhomepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
         .shop {
        height:333px;width:260px;border:3px solid #333333;float:left;margin-left:60px;
        }
        .shop_name {
        height:40px;width:260px;border-bottom:1px solid;text-align:center;background:#333333;padding-top:3px;
        }
        .shop_image{
        height:255px;width:258px;border:0px solid;
        }
        .shop_details {
        height:30px;width:260px;border-top:1px solid;text-align:center;background:#333333;cursor:pointer;
        }
        .product {
        min-height:1150px;
        height:auto;
        width:99.8%;
        border:0px solid;
        }
        .pro1 {
            min-height:333px;
        height:auto;
        width:260px;
        border:1px solid;float:left
        }
         .shop_details1 {
        height:30px;width:260px;border-top:1px solid;text-align:center;background:#333333;cursor:pointer;float:left;
        }
    </style>
    <link href="~/css/customerzonestylesheet.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
       
    <div id="outer">
    <%--------toheader section--------%>
        <div id="Topheader">

            <div id="logo">
                <a href="../genralzone/Default.aspx"><img src="../images/logo.png" style="height:130px;width:180px"/></a>
            </div>
            <div id="search">
                <asp:TextBox ID="Txtsearch" runat="server"  CssClass="searchbar" placeholder="Search any shop..."></asp:TextBox>
                <span style="margin-top:20px;"><button class="searchbutton">  <img src="../images/search-icon-png-0.png"  height="25px" width="25px" style="margin:3px"/>  </button></span>

            </div>
            <div class="memtocart">
                
                <div class="member" title="company location">
                    <a href="Location.aspx">
                    <img src="../images/if_15_2135924.png" style="height:45px;width:45px;border-radius:50%"/>
                    </a> 
                </div>
                 <div class="member" title="logout">
                     <a href="LogOut.aspx">
                     <img src="../images/logout.png" style="height:45px;width:45px;border-radius:50%"/>
                     </a>
                 </div>
            </div>
        </div>
        <%----------------End topheader section--------------%>

        <div id="menubar">
            
           
            <div class="menu" style="width:14%">Setting
                <div id="option">
                   <a href="Customer_Profile.aspx" style="text-decoration:none;color:black;">
                     <div class="text">profile</div></a>
                    <a href="ChangePassword.aspx" style="text-decoration:none"><div class="text" style="color:black">change password</div></a>
                </div>
            </div>
            <a href="customerfeedback.aspx" style="text-decoration:none;"><div class="menu">Feedback</div></a>
            <a href="Offer.aspx" style="text-decoration:none;color:white;"><div class="menu" >Offer</div></a>
            <a href="add_to_cart.aspx" style="text-decoration:none;color:white;"><div class="menu" >Cart</div></a>
            <a href="customerhomepage.aspx" style="text-decoration:none;color:white;"><div class="menu" >Home</div></a>
            <div style="float:left;margin-top:-3px;margin-left:5px;border:0px solid white;width:28%;font-family:Century Gothic;font-size:20px"><h2 style="color:white;float:left"><asp:Label runat="server" ID="LblU_Name" Text="Prasant"></asp:Label></h2></div>
        </div>
        <div id="photo" > 
            <img src="../imgae2/best.jpeg" style="height:550px ;width:99.9%"/>
            <div class="cap"><div class="capname"><h2 style="color:white;text-align:center;margin:5px;font-family:Century Gothic;">Raws grosary</h2></div>
                <div class="image">
                    <img src="../images/4441.jpg" style="height:100%;width:100%;" />
                </div>
                <div class="orderbutton"><h3 style="text-align:center;font-size:23px;color:white;font-family:Century Gothic;">Order It</h3></div>
            </div>
            <div class="cap" style="left:550px;">
                <div class="capname"><h2 style="color:white;text-align:center;margin:5px;font-family:Century Gothic;">Masala</h2></div>
                <div class="image">
                    <img src="../images/spices.png" style="height:100%; width:100%;" />
                </div>
                <div class="orderbutton"><h3 style="text-align:center;font-size:23px;color:white;font-family:Century Gothic;">Order It</h3></div>
            </div>
            <div class="cap" style="left:930px;"><div class="capname"><h2 style="color:white;text-align:center;margin:5px;font-family:Century Gothic;">Daily Product</h2></div>
                <div class="image">
                    <img src="../images/groenten-mainpage.jpg" style="height:100%; width:100%;" />
                </div>
                <div class="orderbutton"><h3 style="text-align:center;font-size:23px;color:white;font-family:Century Gothic;">Order It</h3></div>
            </div>
        </div>
          <div class="tag" > <br />
        <div class="Headding"><span style="font-family:'Century Gothic','Segoe Print';font-size:29px ;color:white;float:right;margin-top:5px;margin-right:54px;">Shop</span></div>
              <div class="hori"></div>
              </div>
        <div style="min-height:400px;height:auto;width:99.8%;border:0px solid;">
            <asp:ListView runat="server" ID="product">
        <ItemTemplate>
             <div class="shop" style="margin-top:30px;">
                    <div class="shop_name"><span style="text-align:center;color:white;font-size:18px;font-family:'Century Gothic','Berlin Sans FB';background:#333333"><%#Eval("R_ShopNo") %></span></div>
                    <div class="shop_image"><img src="../ShopPhotos/<%#Eval("R_Pic") %>" height="253px" width="256px" /></div>
                    <div class="shop_details"><span style="text-align:center;color:white;font-size:18px;font-family:'Century Gothic','Berlin Sans FB';background:#333333"><a href="../genralzone/view_details.aspx?email=<%#Eval("R_Email") %>" style="color:white;text-decoration:none">View All Product</a></span></div>
                </div>
        </ItemTemplate>
    </asp:ListView> 
        </div>
        <div style="height:30px;width:120px;background:#333333;color:white;font-family:'Berlin Sans FB';font-size:20px;float:right;padding:5px;text-align:center;"><a href="view_more_retailer.aspx" style="text-decoration:none;color:white">View More</a></div><br /><br />
        <div class="tag" > <br />
        <div class="Headding"><span style="font-family:'Century Gothic','Segoe Print';font-size:29px ;color:white;float:right;margin-top:5px;margin-right:54px;">Product</span></div>
              <div class="hori"></div>
              </div>
    <div class="product">
        <asp:ListView runat="server" ID="ListView12">
        <ItemTemplate>
            <a href="../customerzone/user_product_desc.aspx?id=<%#Eval("ID") %>" style="color:white;text-decoration:none">
             <div class="shop" style="margin-top:30px;">
                    <div class="shop_name"><span style="text-align:center;color:white;font-size:18px;font-family:'Century Gothic','Berlin Sans FB';background:#333333"><%#Eval("P_Name") %></span></div>
                    <div class="shop_image"><img src="../ProductPic/<%#Eval("P_Pic") %>" height="253px" width="256px" /></div>
                    <%--<div class="shop_details1"><span style="text-align:center;color:white;font-size:18px;font-family:'Century Gothic','Berlin Sans FB';background:#531450"><a href="../customerzone/Add_to_cart.aspx?id=<%#Eval("ID") %>" style="color:white;text-decoration:none">Add To Cart</a></span></div>
                    <div class="shop_details2"><span style="text-align:center;color:white;font-size:18px;font-family:'Century Gothic','Berlin Sans FB';background:#531450"><a href="../customerzone/view_all_product.aspx?email=<%#Eval("ID") %>" style="color:white;text-decoration:none">Buy</a></span></div>   
             --%><div class="shop_details1"><span style="text-align:center;color:white;font-size:18px;font-family:'Century Gothic','Berlin Sans FB';background:#333333">Rs.&nbsp;<%#Eval("P_Price") %></span></div>

             </div></a>
        </ItemTemplate>
    </asp:ListView> 
    </div>
        <%--<div style="height:30px;width:120px;background:#333333;color:white;font-family:'Berlin Sans FB';font-size:20px;float:right;padding:5px;text-align:center;"><a href="view_more_retailer.aspx" style="text-decoration:none;color:white">View More</a></div>--%>
        <br /><br />
        <div style="height:60px;"></div>
       <div id="footer">
            <div class="foo">
                <table>
                    <tr>
                        <td>
                   <h2>Shopway</h2><br />
                            <h3>Address&nbsp;:</h3>
                            <span style="font-size:15px;">Kamala Nehru Institute of Technology Sultanpur</span><br />
                            <span>Mobile NO&nbsp;<span style="font-size:22px;">:</span> 9839376319</span><br />
                            Email Id <span style="font-size:22px;">:</span> shopway@gmail.com
                        </td>
                    </tr>
                </table><br />
            </div>
            <div class="foo"><center>
                <table  style="text-align:center;padding-top:10px;">
                    <tr><td  style="text-align:center;padding-top:10px;"><h3>Contect My Company</h3></td></tr>
                    <tr><td  style="text-align:center;padding-top:10px;"><h3>Tear and Condistion</h3></td></tr>
                    <tr><td  style="text-align:center;padding-top:10px;"><h3>Send Email</h3></td></tr>
                    <tr><td  style="text-align:center;padding-top:10px;"><h3>About</h3></td></tr>
                </table></center>
            </div>
            <div class="foo">
                <h2 style="text-align:center;padding-top:15px">Contact us</h2><br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <img src="../images/if_facebook_313103.png" style="height:40px;width:40px;border-radius:50%"/>
                    <img src="../images/if_twitter_834708.png" style="height:33px;width:33px;border-radius:50%" />
                    <img src="../images/if_googleplus_313110.png" style="height:40px;width:40px;border-radius:50%" />
                <h4 style="text-align:center"> Home &nbsp; Login &nbsp; Feedback &nbsp; Setting</h4>
               

              </div>
            </div>
           <div class="bfooter">
            <div class="bfooterpart">
                <h4>&copy; copyright 2021 resvered by Shopway</h4>
            </div>
             <div class="bfooterpart">
                 <h4>Deploper by: Prashant Maurya</h4>
             </div>

        </div>
   
   
        </div>
    </form>
</body>
</html>
