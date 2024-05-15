<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="username.aspx.cs" Inherits="Sharada.username" %>
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
   

        .login-container {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 750px; /* Adjust the width as needed */
    padding: 20px;
    height:400px;
    background-color: rgba(255, 255, 255, 0.8);
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 1);
    /* Center the content horizontally */
}
    </style>


</head>
<body>
    <form id="form1" runat="server">
        <div class="login-container">

            <asp:Label ID="Label1" runat="server" style="font-size:26px;" Text="A username is a unique identifier that you create to access your account on a website or application. It serves as your online identity or nickname. Your username can contain letters, numbers, and sometimes special characters."></asp:Label>
           <br /><br /><center>
            <table style="height: 199px; width: 659px">
  <tr><b>
    <td><label for="email" style="font-size:24px;">ENTER YOUR EMAIL ID:</label></td>
    <td>      <asp:TextBox ID="TextBox1" runat="server" style="width:300px;height:30px;"></asp:TextBox>
</td>
  </tr>
  <tr>
    <td><label for="username" style="font-size:24px;">ENTER DESIRED USERNAME:</label></td>
    <td>
      <asp:TextBox ID="TextBox2" runat="server" style="width:300px;height:30px;"></asp:TextBox>

    </td>
  </tr>
  <tr>
    <td><label for="confirm_username" style="font-size:24px;">CONFIRM USERNAME:</label></td>
    <td>
      <asp:TextBox ID="TextBox3" runat="server" style="width:300px;height:30px;"></asp:TextBox>

    </td>
  </tr></b>
</table> 
                <br />
<asp:Button ID="Button1" runat="server" Text="SUBMIT" Height="46px" Width="177px" style="background-color:#007bff; font-weight:bold;" OnClick="Button1_Click" />
        </div> </center>
    </form>
</body>
</html>

