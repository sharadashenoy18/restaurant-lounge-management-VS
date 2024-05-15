<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Return.aspx.cs" Inherits="Sharada.Return" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            height: 100vh;
            position: relative;
        }

        body::before {
    content: "";
    background-image: url('Images/hotel.png');
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    z-index: -1;
    opacity: 0.6;
}           
        .form-group {
            height: 309px;
            width: 1152px;
        }

        .login-container {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 420px; /* Adjust the width as needed */
    padding: 20px;
    height:400px;
    background-color: rgba(255, 255, 255, 0.8);
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 1);
    text-align: center; /* Center the content horizontally */
}
    </style>

   <script>
       window.onload = function () {
           var count = 10;
           var countdown = setInterval(function () {
               document.getElementById('Label4').innerText = count;
               if (count === 0) {
                   clearInterval(countdown);
                   document.getElementById('secondsText').style.visibility = 'visible';
                   setTimeout(function () {
                       window.location.href = 'home.aspx'; // Redirect to the home page after displaying "0 seconds"
                   }, 1000);
               }
               count--;
           }, 1000);
       }
   </script>




</head>
<body>
    <form id="form1" runat="server">
        <div class="login-container">
        <center style="height: 249px; width: 423px">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/green.png" Height="115px" Width="137px" />
            <br />
            <br /><b>
                    <asp:Label ID="Label1" runat="server" style="font-size:28px;" Text="PAYMENT DONE SUCCESSFULLY"></asp:Label> <br />
                <br/><asp:Label ID="Label2" runat="server" style="font-size:25px;"  Text="THANK YOU"></asp:Label>
                <br /><asp:Label ID="Label3" runat="server" Text="Your payment has been successfully processed! We extend our heartfelt gratitude for your patronage. Your support means the world to us and allows us to continue providing exceptional service. Here's to many more delightful experiences together!"></asp:Label>
                <br />
                <br />

<asp:Label ID="countdownText" runat="server" Text="Redirecting to Home Page in... " style="font-size:20px; color:red"></asp:Label>
<asp:Label ID="Label4" runat="server" Text="10" style="font-size:20px; color:red"></asp:Label>
<asp:Label ID="secondsText" runat="server" Text=" seconds" style="font-size:20px; color:red; visibility:hidden;"></asp:Label>


</center>   </b>
        </div>
    </form>
</body>
</html>
