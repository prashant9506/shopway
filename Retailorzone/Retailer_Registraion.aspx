<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Retailer_Registraion.aspx.cs" Inherits="Retailorzone_Retailer_Registraion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Josefin+Sans|Poiret+One" rel="stylesheet">
    <link href="../css/genralzonestylesheet.css" rel="stylesheet" />
    <link href="../css/registrationpagestylesheeet.css" rel="stylesheet" />
     <style>
        .MarginBox {
        margin-left:150px;
        }
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
    #file{display:none;}
.label{cursor:pointer}
    </style>
</head>
<body style="font-family:'Josefin Sans', sans-serif;">
    <form id="form1" runat="server">
    <div>
    <div id="outer" style="border:0px solid;min-height:100px;">
         <div id="notification">
             <marquee><h3>Best offer :50% Free Gst offers&nbsp;(Lut LO)</h3></marquee>
        </div>
        <div id="Topheader">

        
       
            <div id="logo">
                <a href="../genralzone/Default.aspx"><img src="../images/logo.png" style="height:130px;width:180px; "/></a>
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
                <a href="Retailer_Registraion.aspx" style="text-decoration:none;"><div class="menuoption" style="width:170px;">Be a member</div></a>
                <a href="../customerzone/Customer_add_to_cart.aspx"><div class="menuoption">Add to cart</div></a>
                <a href="../customerzone/Location.aspx"><div class="menuoption">Location</div></a>
                <a href="../customerzone/Offer.aspx"><div class="menuoption">Offers</div></a>
             <a href="retailer_login.aspx"><div class="menuoption">Login</div></a>
                <a href="../genralzone/Default.aspx"><div class="menuoption">Home</div></a>
          </div>
        <div class="body_container">
            <img src="../slider%20image/Ruddys-General-Store-1-640x427.jpg" height="800px" width="100%" />
            <div id="registration">
                
                    <p style="font-family:'Century Gothic';color:#fff">Retailer Registration in ManChahe</p><hr />
    
                    <div  style="height:auto;width:auto;margin-left:33.5px;">  
                <table >
                    <tr>
                        <td class="auto-style1">
                            <span class="FColor" style="margin-left:40px;">Name</span><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TxtName" runat="server"  Class="Txtbox" ></asp:TextBox><br />
                            <asp:RequiredFieldValidator  ID="RFVName" runat="server" ErrorMessage="enter name" ControlToValidate="TxtName" ForeColor="red" Display="Dynamic" style="margin-left:50px;font-size:20px"></asp:RequiredFieldValidator><br />
                        </td>
                        <td class="auto-style1">
                            <span class="FColor" style="margin-left:140px;">Mobile No</span><br /> 
                            <asp:TextBox ID="Txtmobile" runat="server" TextMode="Number" MaxLength="10" style="margin-left:140px;" CssClass="Txtbox"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="REVMobile" runat="server" ControlToValidate="Txtmobile" ErrorMessage="plz enter 10 number" ValidationExpression="[0-9]{10}" ForeColor="red" Display="Dynamic" style="margin-left:200px;font-size:20px"></asp:RegularExpressionValidator><br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                        <br />

                        <span class="FColor" style="margin-left:40px;"> Gender</span><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="Rbdmale" runat="server" GroupName="gender" />&nbsp;<span style="color:#fff"><i class="fa fa-male"></i>&nbsp;Male</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="Rbdfemale" runat="server" GroupName="gender" />&nbsp;<span style="color:#fff"><i class="fa fa-female"></i>&nbsp;Female</span>
                        </td>
                        <td class="auto-style1">
                        <span class="FColor" style="margin-left:140px;">Email</span> <br />
                        <asp:TextBox ID="Txtemail" runat="server" TextMode="Email" Width="260px" style="margin-left:140px;"  CssClass="Txtbox"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="REVEmail" runat="server" ErrorMessage="enter valid email" ControlToValidate="Txtemail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" Display="Dynamic" style="margin-left:200px;font-size:20px"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                    <td class="auto-style1">
                
                            <span class="FColor" style="margin-left:40px;">Adhar no.</span><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="Txtadhar" runat="server" TextMode="Number" MaxLength="12"  Class="Txtbox" ></asp:TextBox>

                    </td>
                    <td class="auto-style1">
                
                        <span class="FColor" style="margin-left:140px;">Address</span><br />
                        <asp:TextBox ID="Txtaddress" runat="server"  TextMode="MultiLine" style="margin-left:140px;"  CssClass="Txtbox" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFVAddress" runat="server" ErrorMessage="enter your address" ControlToValidate="Txtaddress" ForeColor="Red" Display="Dynamic" style="margin-left:180px;font-size:20px"></asp:RequiredFieldValidator>
                
                    </td>
                    </tr>
                    <tr>
                    <td class="auto-style1">
                
                            <span class="FColor" style="margin-left:40px;"> password</span><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="Txtpass" runat="server" Class="Txtbox" TextMode="Password" ></asp:TextBox>

                    </td>
                    <td class="auto-style1">
                
                        <span class="FColor" style="margin-left:140px;">Conform Password</span><br /> 
                        <asp:TextBox ID="Txtconpass" runat="server" CssClass="Txtbox" style="margin-left:140px;" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator ID="CMPVPassword" runat="server" ErrorMessage="Password is not matching" ControlToCompare="Txtpass" ControlToValidate="Txtconpass" ForeColor="Red" Display="Dynamic" style="margin-left:170px;font-size:20px"></asp:CompareValidator> 
                    </td>
                    </tr>
                    <tr>
                    <td class="auto-style1">
                
                        <span class="FColor" style="margin-left:40px;">
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Shoptype</span>&nbsp;&nbsp; <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="shoptype" runat="server"  Class="Txtbox">
                            <asp:ListItem style="background:#333333">-select-</asp:ListItem>
                            <asp:ListItem style="background:#333333">general store</asp:ListItem>
                            <asp:ListItem style="background:#333333">sabji store</asp:ListItem>
                            <asp:ListItem style="background:#333333">grosary store</asp:ListItem>
                        </asp:DropDownList>
                      <br />

                    </td>
                    <td class="auto-style1">
                        <br />
                        &nbsp;<span class="FColor" style="margin-left:140px;">Shop Name</span><br />
                        <asp:TextBox ID="Txtshopno" runat="server" style="margin-left:140px;" CssClass="Txtbox"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFVShopname" runat="server" ErrorMessage="enter shop name" ControlToValidate="Txtshopno" ForeColor="Red" Display="Dynamic" style="margin-left:180px;font-size:20px"></asp:RequiredFieldValidator>
                    
                    </td>
                    </tr>
                    <tr>
                        <td>
                        <span class="FColor" ></span> <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <label for="R_ShopPic" class="label" style="background:#fff;color:#333333;font-size:18px;padding:5px 10px;">Select Shop Pic&nbsp;<span class="fa fa-photo" style="font-size:18px"></span>
                             <asp:FileUpload ID="R_ShopPic" style="display:none" runat="server" />
                    </label>
                            </td></tr>
                    <tr>
                    <td class="auto-style1">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="FColor">Captcha</span><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="LblCaptcha" runat="server" Font-Size="X-Large" Font-Strikeout="True" ForeColor="White" ></asp:Label><br />

                    </td>
                   <td class="auto-style1">
                        <span class="FColor" style="margin-left:140px;">Enter captcha</span><br /> 
                        <asp:TextBox ID="txtcaptcha" runat="server"  Class="Txtbox"  style="margin-left:140px;"></asp:TextBox>
                        <asp:ImageButton ID="ImagBtnRefresh" runat="server"  ImageUrl="~/images/refreshBid.png" Width="28px" Height="28px" OnClick="ImagBtnRefresh_Click"  />
                       <asp:RequiredFieldValidator ID="RFVCaptcha" runat="server" ErrorMessage="enter valid captcha" ControlToValidate="txtcaptcha" ForeColor="Red" Display="Dynamic" style="margin-left:150px;font-size:20px"></asp:RequiredFieldValidator>
                       <br />
                    </td>
                    </tr>
                    </table>
                    </div>
   
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:CheckBox ID="CheckBox1" runat="server" /> <span class="FColor">I accept all <a href="../genralzone/termscondition.aspx" style="text-decoration:none;color:white">Term and Condition</a></span>
                   
                <br/><br />
                         
                        <asp:Button ID="reg" runat="server" Text="Registration Now" width="247px"  Height="30px"  Class="buttonbox"  OnClick="reg_Click"  />
                    <br /><br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   
                    <hr  style="margin:0px auto;width:50%;margin-top:-15px;" /> 
                       
                <a href="retailer_login.aspx" style="text-decoration:none"><div Class="buttonbox" style="width:247px;height:30px;margin-top:20px">All ready have account</div></a>
                        <br />
                    <br /> 
                </div></div>
         <div id="footer">
            <div class="footerpart">
                &copy; copyright 2021 Shopway
            </div>
            <div class="footerpart">
                Devloped by: Prashant Maurya
            </div>
             
             <div class="footerpart">
                 <img src="../images/if_facebook_313103.png" style="height:30px;width:30px"/>
                 <img src="../images/if_googleplus_313110.png" style="height:30px;width:30px" />
                 <img src="../images/if_twitter_834708.png" style="height:24px;width:24px" />
             </div>
        </div>
    

    </div>
    </form>
</body>
</html>
