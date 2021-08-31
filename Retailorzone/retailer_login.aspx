<%@ Page Language="C#" AutoEventWireup="true" CodeFile="retailer_login.aspx.cs" Inherits="Retailorzone_retailer_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Josefin+Sans|Poiret+One" rel="stylesheet">
    <link href="../css/genralzonestylesheet.css" rel="stylesheet" />
    <link href="../css/loginpagestylesheet.css" rel="stylesheet" />
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
    </style>
</head>
<body style="font-family:'Josefin Sans', sans-serif;">
     <form id="form1" runat="server">
    <div id="outer" style="border:0px solid;min-height:100px;">
         <div id="notification">
             <marquee><h3>Best offer :50% Free Gst offers&nbsp;(Lut LO)</h3></marquee>
        </div>
        <div id="Topheader">

        
       
            <div id="logo">
                <a href="../genralzone/Default.aspx"><img src="../images/logo.jpeg" style="height:100px;width:180px;margin-top:20px"/></a>
            </div>
            <div id="search">
                <asp:TextBox ID="Txtsearch" runat="server"  CssClass="searchbar" placeholder="Search any shop..."></asp:TextBox>
                <span style="margin-top:20px;"><button class="searchbutton"><img src="../images/search-icon-png-0.png" height="25px" width="25px" style="margin:3px"/></button></span>

            </div>
            <div class="memtocart">
                
                <div class="member">
                    <a href="../customerzone/Location.aspx"><img src="../images/if_15_2135924.png" style="height:45px;width:45px;border-radius:50%"/></a>
                </div>
                 <div class="member">
                     <a href="../customerzone/Customer_add_to_cart.aspx"><img src="../images/if_cart-alt_353403.png" style="height:45px;width:45px;border-radius:50%" /></a>

                 </div>
            </div>
        </div>
        </div>
         <div class="menu">
                <a href="Retailer_Registraion.aspx" style="text-decoration:none;"><div class="menuoption" >Be a member</div></a>
                <a href="../customerzone/Customer_add_to_cart.aspx"><div class="menuoption">Add to cart</div></a>
                <a href="../customerzone/Location.aspx"><div class="menuoption">Location</div></a>
                <a href="../customerzone/Offer.aspx"><div class="menuoption">Offers</div></a>
             <a href="Retailer_Registraion.aspx"><div class="menuoption">Registration</div></a>
                <a href="../genralzone/Default.aspx"><div class="menuoption">Home</div></a>
          </div>
         

          <div id="login">
        <p><b>L</b>ogin <b> S</b>hop<b>W</b>ay</p>
        <hr />
       &nbsp;&nbsp;&nbsp;
        Email Id<br />
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TxtEmail" runat="server" Width="309px" Height="30px" TextMode="Email" Class="Txtbox" ></asp:TextBox>
         &nbsp;&nbsp;&nbsp;<asp:RegularExpressionValidator ID="REVEamil" runat="server" ErrorMessage="enter valid emailid" ForeColor="red" Display="Dynamic" ControlToValidate="TxtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RegularExpressionValidator>
        &nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;
        Password<br />
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TxtPassword" runat="server" Width="309px" Height="30px" TextMode="Password" Class="Txtbox" ></asp:TextBox>
               &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RFVPassword" runat="server" ErrorMessage="enter right password" ControlToValidate="TxtPassword" ForeColor="red"></asp:RequiredFieldValidator>
        <br />
       
        <br />
&nbsp;&nbsp;&nbsp;
        <asp:CheckBox ID="Chkbox" runat="server" />Keep signed In.
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="BtnLogin" runat="server"  Text="Login" Width="150px" Height="30px" style="font-size-adjust:inherit" CssClass="Btnbox" OnClick="BtnLogin_Click"/>
            &nbsp;&nbsp;<asp:Button ID="BtnForgotpassword" runat="server" Text="Forgot password"  Height="30px" Width="150px" CssClass="Btnbox"/>
              <a href="Retailer_Registraion.aspx" style="text-decoration:none"><div Class="buttonbox" style="width:247px;height:30px;margin-top:20px">All ready have account</div></a>
           

        </div>
        <div id="footer">
            <div class="foo">
                <table>
                    <tr>
                        <td>
                   <h2>ShopWay</h2><br />
                            <h3>Address&nbsp;:</h3>
                            <span style="font-size:15px;">kamla Nehru Institute Of Technology Sultanpur</span><br />
                            <span>Mobile NO&nbsp;<span style="font-size:22px;">:</span> 9839376319</span><br />
                            Email Id <span style="font-size:22px;">:</span> shopway@gmail.com
                        </td>
                    </tr>
                </table><br />
            </div>
            <div class="foo"><center>
                <table  style="text-align:center;padding-top:10px;">
                    <tr><td  style="text-align:center;padding-top:10px;"><h3>Contect My Company</h3></td></tr>
                    <tr><td  style="text-align:center;padding-top:10px;"><h3>Terms and Condition</h3></td></tr>
                    <tr><td  style="text-align:center;padding-top:10px;"><h3>Send Email</h3></td></tr>
                    <tr><td  style="text-align:center;padding-top:10px;"><h3>About</h3></td></tr>
                </table></center>
            </div>
            <div class="foo">
                <h2 style="text-align:center;padding-top:15px">Contact us<br />
                    <img src="../images/if_facebook_313103.png" style="height:40px;width:40px;border-radius:50%"/>
                    <img src="../images/if_googleplus_313110.png" style="height:40px;width:40px;border-radius:50%" />
                    <img src="../images/if_twitter_834708.png" style="height:33px;width:30px;border-radius:50%"/></h2><br />
                   
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
    </form>
</body>
</html>
