<%@ Page Language="C#" AutoEventWireup="true" CodeFile="logout.aspx.cs" Inherits="admin_logout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script>
         function logout() {
             window.history.forward();
             window.setTimeout("window.location.href='../genralzone/Default.aspx';", 300);
         }
    </script>
</head>
<body onload="logout()" style="background-color:tomato">
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
