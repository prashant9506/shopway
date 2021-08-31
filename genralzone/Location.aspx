<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Location.aspx.cs" Inherits="genralzone_Location" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/locationStyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="outer">
        <div id="header">
            <div id="logo">
                <a href="Default.aspx"><img src="../images/logo.png" style="height:100px; width:150px"/></a>
            </div>
            <div id="tittle">
                <h1 style="font-family:Algerian;margin-left:100px"><span style="color:maroon;font-size:85px;">S</span>hop<span style="color:maroon;">W</span>ay</h1>
            </div>
            <div id="shortcut">
              
                <div class="tag" style="margin-left:200px;margin-top:5px">
                    <a href="contact.aspx"><img src="../images/contactus.png"  style="height:80px;width:79px;border-radius:50%"/></a>
                </div>
                
               </div>
            </div>
      
        <div id="map">
            <iframe style="padding: .5%; border: 1px solid white;" frameborder="0" scrolling="no" height="480px" width="100%" marginheight="0" marginwidth="0" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3577.1647637754777!2d82.08012141435147!3d26.288758193001264!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x399a7c86d691219f%3A0x99a3eb1e7c07f78f!2sKamla%20Nehru%20Institute%20of%20Technology%2C%20Sultanpur%20(U.P.)!5e0!3m2!1sen!2sin!4v1628323042124!5m2!1sen!2sin"></iframe>
        </div>

        <div id="parent">
             <div class="info" style="text-align:center;margin-left:400px" >
                <img src="../images/devloper.jpg" class="ph"/><br />
                <p>
                   <span style="color:maroon"> Prashant Maurya</span><br />
                    9839376319, 7651888128<br />
                    parashant.188606@knit.ac.in<br />
                    KNIT Sultanpur<br />
                    
                    <a href="https://www.facebook.com/photo.php?fbid=768816013269421&set=a.104225566395139.11783.100004230876166&type=3&theater"> <img src="../images/if_facebook_313103.png"  class="icon"/></a>
                    <img src="../images/if_googleplus_313110.png"  class="icon"/>
                    <img src="../images/if_twitter_834708.png"  class="icon"/>

                </p>
            </div> 
        </div>

        <div id="footer">
            <div class="ufooter">
                <h3>Contact Us</h3>
                <img src="../images/if_facebook_313103.png" style="height:30px;width:30px;border-radius:50%" />
                <img src="../images/if_googleplus_313110.png"  style="height:30px;width:30px;border-radius:50%"/>
                <img src="../images/if_twitter_834708.png" style="height:27px;width:28px;border-radius:50%"/>
            </div>
            <div class="ufooter" style="margin-left:450px">
                <h3>Shopway</h3>
                    Showay means The Goods on Way.........<br />
               
            </div>
           <!--- <div class="ufooter">
                <h3>Other website</h3>
                <a href="http//www.softpro.com" style="text-decoration:none;color:maroon;background:black">WWW.SoftPro.COM</a>
            </div> -->
        </div>
    </div>
    </form>
</body>
</html>
