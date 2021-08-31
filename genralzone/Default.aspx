<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link href="https://fonts.googleapis.com/css?family=Josefin+Sans|Poiret+One" rel="stylesheet"/>
    <link href="../css/genralzonestylesheet.css" rel="stylesheet" />
    <script src="../js/v1.12.4.js"></script>
    <script> $(document).ready(function () {
     $(".regis").click(function () { $("#box1").slideToggle("slow"); });
    $(".btnlog").click(function () { $("#log").slideToggle("slow"); });
     $("#Button2").click(function () { $("#for").slideToggle("slow"); });
 });
    </script>
    <title></title>
    <style>
        .member {
    width: 45px;
    height: 45px;
    float: right;
    border-radius: 50%;
    border: 2px dashed;
    margin-left: 10px;
    margin-top: 30px;
    padding: 3px;
    cursor:pointer;
}
    .member:hover {
        -webkit-transform:rotate(-360deg);
        -webkit-transition:-webkit-transform 2s;
    }
        .reg {
        height:380px;width:400px;background:#531450;z-index:2;position:absolute;top:180px;left:260px;border:3px solid #333333;
        }
        .reg1 {
        height:378px;width:245px;border-right:3px solid #333333;float:left;
        }
         .reg2 {
        height:378px;width:400px;border:1px solid white;float:left;
        }
        .regneme {
        height:55px;width:245px;border:0px solid white;cursor:pointer;
        }
        .login {
        height:35px;width:400px;border:0px solid;
        }
        .tex {
        height:27px;
        width:250px;
        margin-top:8px;
        color:#531450;
        font-family:'Century Gothic','Berlin Sans FB';
        font-size:17px;padding-left:6px;
        margin-left:40px;
        }
        .shop {
        height:333px;width:260px;border:3px solid #333333;float:left;margin-left:60px;
        }
        .shop_name {
        height:40px;width:260px;border-bottom:1px solid;text-align:center;background:#531450;padding-top:3px;
        }
        .shop_image{
        height:255px;width:258px;border:0px solid;
        }
        .shop_details {
        height:30px;width:260px;border-top:1px solid;text-align:center;background:#531450;cursor:pointer;
        }
        .shop_details1 {
        height:30px;width:260px;border-top:1px solid;text-align:center;background:#531450;cursor:pointer;float:left;
        }
        #offer:hover {
        background: #f3e5f5 purple;
        box-shadow: 5px inset;
       background:lightgray;
       border-top:3px solid gray;
        border-bottom:3px solid gray;
       
    }
    </style>
    
</head>
<body style="font-family:'Josefin Sans', sans-serif;" >
    <form id="form1" runat="server">
        <div class="reg"  style="display:none" id="log">
            
            <div class="reg2">
                <div class="login" style="color:white;text-align:center;font-size:30px;padding-top:8px">Login</div>
                <div class="login" style="color:white;font-size:20px;height:330px;">
                    <h3 style="margin-left:40px;margin-top:40px;">Email</h3>
                    <asp:TextBox ID="TxtEmail" runat="server" style="height:30px;width:300px;margin-left:40px;font-family:'Century Gothic';font-size:20px;"></asp:TextBox>
                    <h3 style="margin-left:40px;margin-top:20px;">Password</h3>
                    <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password" style="height:30px;width:300px;margin-left:40px;font-family:'Century Gothic';font-size:20px;"></asp:TextBox><br />
                    <asp:Button ID="BtnLogin" runat="server" Text="LOGIN" style="cursor:pointer;height:30px;margin-top:20px;background-color:#531450;color:white;border:2px solid white;font-size:16px;float:right;margin-right:55px;font-family:Comic Sans MS;padding:10px 10px 25px 10px" OnClick="BtnLogin_Click"/>
              <%-- <asp:Button ID="Button2" runat="server" Text="FORGET" style="cursor:pointer;height:30px;margin-top:20px;background-color:#531450;color:white;border:2px solid white;font-size:16px;float:left;margin-left:40px;font-family:Comic Sans MS;padding:10px 10px 25px 10px"/>
                     --%>
                    <div id="Button2" style="cursor:pointer;margin-top:20px;background-color:#531450;color:white;border:2px solid white;font-size:16px;float:left;margin-left:40px;font-family:Comic Sans MS;padding:7px 10px">Forget</div>
                </div>
            </div></div>
        <div class="reg"  style="display:none;left:730px;z-index:4" id="for">
            
            <div class="reg2">
                <div class="login" style="color:white;text-align:center;font-size:30px;padding-top:8px">Forget Password</div>
                <div class="login" style="color:white;font-size:20px;height:330px;">
                    <h3 style="margin-left:40px;margin-top:40px;">Email</h3>
                    <asp:TextBox ID="TxtF_Email" runat="server" style="height:30px;width:300px;margin-left:40px;font-family:'Century Gothic';font-size:20px;"></asp:TextBox>
                    <h3 style="margin-left:40px;margin-top:20px;">Mobile No.</h3>
                    <asp:TextBox ID="TxtF_Mobile" runat="server"  style="height:30px;width:300px;margin-left:40px;font-family:'Century Gothic';font-size:20px;"></asp:TextBox><br />
                    <asp:Button ID="Btn_Forget" runat="server" Text="Send Password" style="cursor:pointer;height:30px;margin-top:20px;background-color:#531450;color:white;border:2px solid white;font-size:16px;float:right;margin-right:55px;font-family:Comic Sans MS;padding:10px 10px 25px 10px" OnClick="Btn_Forget_Click"/>
              </div>
            </div></div>
            <div class="reg2" style="border:1px solid white;position:absolute;top:180px;left:730px;background:#531450;display:none;z-index:2" id="box1">
                <div class="login" style="color:white;text-align:center;font-size:30px;padding-top:8px">Registration</div>
           <asp:TextBox ID="U_Name" runat="server" class="tex" placeholder="Enter Your Full Name"></asp:TextBox><br />
             <asp:TextBox ID="U_Email" runat="server" class="tex" placeholder="Enter Your Email"></asp:TextBox>   <br />
                <asp:TextBox ID="U_Password" runat="server" TextMode="Password" class="tex" placeholder="Enter Your Password"></asp:TextBox><br />
                <asp:TextBox ID="U_Address"  runat="server" class="tex" placeholder="Enter Your Full Adress"></asp:TextBox><br />
                <asp:TextBox ID="U_State" runat="server" class="tex" placeholder="Enter Your State"></asp:TextBox><br />
                <asp:TextBox ID="U_Pin" runat="server" class="tex" placeholder="Pin Number"></asp:TextBox><br />
                <asp:TextBox ID="U_Mobile" runat="server" class="tex" placeholder="Enter Your Mobile Number"></asp:TextBox><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:CheckBox ID="U_CheckBox1" runat="server" /> <span style="color:white;font-family:'Century Gothic','Berlin Sans FB';">I accept all <a href="termscondition.aspx">Term and Condition</a></span>     
             <asp:Button ID="BtnRegistor" runat="server" OnClick="BtnRegistor_Click" Text="Registration" style="height:30px;margin-top:10px;background-color:#531450;color:white;border:2px solid white;font-size:16px;float:right;margin-right:55px;font-family:Comic Sans MS;padding:10px 10px 25px 10px"/>
          
            </div>
        
    <div id="outer">
        
        <div style="float:left; background-color:maroon; height:auto" title="login user">
                     <a href="../customerzone/customerhomepage.aspx"><asp:Label ID="user_profile" runat="server" ForeColor="White" Font-Bold="true" Font-Size="Larger" Height="30px"></asp:Label></a>
                 </div>
         <div id="notification" style="width:auto;margin-left:80px">
             <marquee onmouseover="stop()" onmouseout="start()">
                 <h3>
                 <asp:ListView runat="server" ID="Lsti2">
        <ItemTemplate>
                    <tr><td><%#Eval("offer") %></td></tr>&nbsp;&nbsp;&nbsp;||
        </ItemTemplate>
    </asp:ListView>
                 </h3></marquee>          
        </div>
          
        <div id="Topheader" >
            <div id="logo">
               <a href="Default.aspx"> <img src="../images/logo.png" style="height:100px;width:180px;margin-top:30px"/></a>
            </div>
            <div id="search">
                <asp:TextBox ID="Txtsearch" runat="server"  CssClass="searchbar" placeholder="Search any shop..."></asp:TextBox>
                <span style="margin-top:20px;"><button class="searchbutton"><img src="../images/search-icon-png-0.png" style="height:25px;width:25px;margin:3px"/></button></span>

            </div>
     
            <div class="memtocart">
                
                <div class="member regis">
                  <abbr title="Customer Registration"> <img src="../images/registernav.png" style="height:45px;width:45px;border-radius:50%" /></abbr>
                </div>
                <div class="member btnlog">
                   <abbr title="Customer Login"> <img src="../images/register-secure-security-user-login-icon--7.png" style="height:45px;width:45px;border-radius:50%" /></abbr>
                </div>
                <div class="member">
                   <abbr title="Contact Company"> <a href="../genralzone/Location.aspx"><img src="../images/if_15_2135924.png" style="height:45px;width:45px;border-radius:50%"/></a></abbr>
                </div>
                
                 
            </div>
                
               
        </div>
        
        
       
        <div id="slider">
           <div class="slideshow-container" style="width:100%">
<div class="mySlides fade">
  <img src="../slider image/sliderimg7.png" style="width:99.9%;height:445px"/>
</div>
<div class="mySlides fade">
  <img src="../slider image/sliderimg5.jpg" style="width:100%; height:445px"/>
</div>
<div class="mySlides fade">
  <img src="../slider image/sliderimg10.jpg" style="width:99.9%; height:445px"/>
</div>
</div>
        </div>
        <div class="menu">
            <abbr title="Retailor Registration"><div class="menuoption" style="width:150px;"><a href="../Retailorzone/Retailer_Registraion.aspx" style="text-decoration:none;color:black;"><i class="fa fa-user-plus" aria-hidden="true"></i>&nbsp;Be a member</a></div></abbr>
           <abbr title="Any Login"> <div class="menuoption"><span style="text-decoration:none;color:black;cursor:pointer;" class="btnlog"><i class="fa fa-user-circle-o"></i>&nbsp;Login</span></div></abbr>
           <abbr title="Customer Registration"> <div class="menuoption" style="width:150px;"><span style="text-decoration:none;color:black;cursor:pointer;" class="regis"><i class="fa fa-group"></i>&nbsp;Registration</span></div></abbr>
            <%--<div class="menuoption"><a href="../customerzone/Customer_add_to_cart.aspx" style="text-decoration:none;color:black">Add to cart</a></div>--%>
           <asp:Button ID="add" runat="server" Text="Add to Cart" style="height:45px;width:160px;background:#f3f3fc;padding-top:0px;font-family:'Josefin Sans', sans-serif;" class="menuoption" OnClick="add_Click" />
            <i class="fa fa-cart-plus" style="position:absolute;left:795px;top:610px"></i><a href="Location.aspx" style="color:#333333"><div class="menuoption"><i class="fa fa-map-marker" aria-hidden="true"></i>&nbsp;Location</div></a>
            <%--<div class="menuoption"><a href="../customerzone/Offer.aspx" style="text-decoration:none;color:black"> Offers</a></div>--%>
           <i class="fa fa-gift"  style="position:absolute;left:583px;top:612px"></i> <asp:Button ID="offer" runat="server" Text="Offer" style="height:45px;background:#f3f3fc;padding-top:0px;font-family:'Josefin Sans', sans-serif;" class=" menuoption" OnClick="offer_Click" />
            <div class="menuoption"><a href="Default.aspx" style="text-decoration:none;color:black"><i class="fa fa-home"></i>Home</a></div>
            

       
          </div>
        <div id="Otherportion" >
            <div style="height:41px;width:92%;border-bottom:5px solid #531450;margin-left:60px;margin-top:20px">
                <div style="height:34px;width:220px;border:0px solid;border-radius:0px 75px 0px 0px;background:#531450;color:white;font-family:'Century Gothic';font-size:24px;text-align:center;padding-top:6px">Retailer</div>
            </div>
            
        
          <asp:ListView runat="server" ID="retail">
        <ItemTemplate>
             <div class="shop" style="margin-top:30px;">
                    <div class="shop_name"><span style="text-align:center;color:white;font-size:18px;font-family:'Century Gothic','Berlin Sans FB';background:#531450"><%#Eval("R_ShopNo") %></span></div>
                    <div class="shop_image"><img src="../ShopPhotos/<%#Eval("R_Pic") %>" style="height:253px; width:256px" /></div>
                    <div class="shop_details">
                        <span style="text-align:center;color:white;font-size:18px;font-family:'Century Gothic','Berlin Sans FB';background:#531450">
                            <a href="view_details.aspx?email=<%#Eval("R_Email") %>" style="color:white;text-decoration:none">View All Product</a>

                        </span>
                    </div>
                
             </div>
        </ItemTemplate>
    </asp:ListView> 


        </div>
        <div style="height:41px;width:92%;border-bottom:5px solid #531450;margin-left:60px;margin-top:0px">
                <div style="height:34px;width:220px;border:0px solid;border-radius:0px 75px 0px 0px;background:#531450;color:white;font-family:'Century Gothic';font-size:24px;text-align:center;padding-top:6px">Products</div>
            </div>
        <div id="Feedback" style="border:0px solid red">
           <asp:ListView runat="server" ID="ListView12">
        <ItemTemplate>
            <a href="../customerzone/user_product_desc.aspx?id=<%#Eval("ID") %>" style="color:white;text-decoration:none">
             <div class="shop" style="margin-top:30px;">
                    <div class="shop_name"><span style="text-align:center;color:white;font-size:18px;font-family:'Century Gothic','Berlin Sans FB';background:#531450"><%#Eval("P_Name") %></span></div>
                    <div class="shop_image"><img src="../ProductPic/<%#Eval("P_Pic") %>" style="height:253px; width:256px" /></div>
                   <div class="shop_details1"><span style="text-align:center;color:white;font-size:18px;font-family:'Century Gothic','Berlin Sans FB';background:#531450">Rs.&nbsp;<%#Eval("P_Price") %></span></div>

             </div></a>
        </ItemTemplate>
    </asp:ListView> 
        </div>
        <div id="footer">
            <div class="foo" style="background:#232f3e">
                <table style="color:white;margin-left:20px;margin-top:20px" >
                    <tr>
                        <td>
                   <h2>ShopWay</h2><br />
                            <h3>Address&nbsp;:</h3>
                            <span style="font-size:15px;">Kamla Nehru Institute Of Technology Sultanpur</span><br />
                            <span>Mobile NO&nbsp;<span style="font-size:22px;">:</span> 9839376319</span><br />
                            Email Id <span style="font-size:22px;">:</span> shopway@gmail.com
                        </td>
                    </tr>
                </table><br />
            </div>
            <div class="foo" style="background:#232f3e"><center>
                <table  style="text-align:center;padding-top:10px;">
                    <tr><td  style="text-align:center;padding-top:10px;"><a href="Location.aspx" style="text-decoration:none;color:white"><h3>Contect My Company</h3></a></td></tr>
                    <tr><td  style="text-align:center;padding-top:10px;"><a href="termscondition.aspx" style="text-decoration:none;color:white"><h3>Terms and Condition</h3></a></td></tr>
                    <tr><td  style="text-align:center;padding-top:10px;"><h3>Send Email</h3></td></tr>
                    <tr><td  style="text-align:center;padding-top:10px;"><h3>About</h3></td></tr>
                </table></center>
            </div>
            <div class="foo" style="background:#232f3e">
                <h2 style="text-align:center;padding-top:15px">Contact us<br />
                    <img src="../images/if_facebook_313103.png" style="height:40px;width:40px;border-radius:50%"/>
                    <img src="../images/if_googleplus_313110.png" style="height:40px;width:40px;border-radius:50%" />
                    <img src="../images/if_twitter_834708.png" style="height:33px;width:30px;border-radius:50%"/></h2><br />
                   
              <h4><a href="Default.aspx"  style="text-decoration:none;color:white;margin-left:100px">shopway@gmail.com,</a> <a href="../customerzone/customerfeedback.aspx"  style="text-decoration:none;color:white">9839376319</a></h4>
               


            </div>
             <div class="bfooter">
            <div class="bfooterpart" style="font-family:'Josefin Sans', sans-serif;">
                <h4>&copy; copyright 2021 resvered by Shopway</h4>
            </div>
             <div class="bfooterpart" style="font-family:'Josefin Sans', sans-serif;">
                 <h4>Deploper by: Prashant Maurya</h4>
             </div>
        </div>
        </div>
       
 </div>
        
    </form>

   <%--slider --%>
    <script>
        var slideIndex = 0;
        showSlides();

        function showSlides() {
            var i;
            var slides = document.getElementsByClassName("mySlides");

            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            slideIndex++;
            if (slideIndex > slides.length) { slideIndex = 1 }

            slides[slideIndex - 1].style.display = "block";

            setTimeout(showSlides, 2000);
        }
</script>
</body>
</html>
