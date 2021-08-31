<%@ Page Language="C#" AutoEventWireup="true" CodeFile="view_details.aspx.cs" Inherits="genralzone_view_details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
         .out {
        height:200px;width:400px;border:2px solid white;float:left;margin-left:19px;margin-top:30px;
        }
        .img {
        height:200px;width:170px;border-right:2px solid white;float:left
        }
        .con {
        height:198px;width:225px;border:0px solid;float:left;
        }
        .des {
        height:23px;width:200px;border:0px solid white;color:white;padding:3px;
        }
    </style>
    <title></title>
       <link href="../css/AdminmasterStyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="outer">
       
        <div id="header">
           
            <div id="logo">
                <img src="../images/logo.png" style="height:45px;width:100px"/>
            
            </div>
            <div id="menu">
                <b><span style="color:maroon;font-size:30px"> Welcome </span></b>
               
                
                <a href="Default.aspx"><div class="option" style="cursor:pointer">Go To Home</div></a>

            </div>
        </div>
         <div id="inner">
              <img src="../imgae2/best.jpeg" style="height:600px;width:100%" />
             <div id="black">
             <div style="height:600px;width:93.8%;border:2px solid white;margin:0px auto;overflow:auto">
                 <span style="color:white;font-family:'Century Gothic';font-size:30px;">Product management</span>
    <div style="height:500px;width:96%;border:1px solid white;margin-top:20px;margin-left:20px;overflow:auto">
        <asp:ListView runat="server" ID="details">
        <ItemTemplate>
             <div class="out">
        <div class="img">
            <img src="../ProductPic/<%#Eval("P_Pic") %>" height="200" width="170px"/>
        </div>
        <div class="con">
            <div class="des" style="font-size:27px;height:40px"><%#Eval("P_Name") %></div>
            <div class="des">Rs&nbsp;.&nbsp;<%#Eval("P_Price") %></div>
            <div class="des">Weight:<%#Eval("P_Weight") %></div>
            <div class="des" style="overflow:hidden">Discription&nbsp;:&nbsp;<%#Eval("P_Discription") %></div>
            <div class="des">Time&nbsp;:&nbsp;<%#Eval("ID") %></div>
            <div class="des" style="width:100px;float:left">Quantity&nbsp;:<%#Eval("P_Quantity") %></div>
            <div class="des" style="width:100px;float:left;font-size:14px;background:#333333;border:1px solid;"><a style="text-decoration:none;color:white" href="../customerzone/user_product_desc.aspx?id=<%#Eval("ID") %>"><i class="fa fa-trash">&nbsp;Add to cart</i></a></div>
            <%--<div class="des" style="width:53px;float:left;font-size:13px;background:#333333;margin-left:3px;"><a style="text-decoration:none;color:white" href="update_product.aspx?id=<%#Eval("ID") %>"><i class="fa fa-pencil">&nbsp;Update</i></a></div>
      --%>  </div>
    </div> 
        </ItemTemplate>
    </asp:ListView>
    </div>
             </div>
        
                 </div>
             </div>
             
        <div id="footer">
            <div class="footerpart">
                &copy; copyright shopway
            </div>
            <div class="footerpart">
                Devloped by: Prashant Maurya
            </div>
        </div>
    </div>
    </form>
</body>
</html>
