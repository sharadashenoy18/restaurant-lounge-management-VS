﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reset.aspx.cs" Inherits="Sharada.Reset" %>
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
         width: 400px; /* Adjust the width as needed */
         padding: 20px;
         background-color: rgba(255, 255, 255, 0.4);
         border-radius: 10px;
         box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
         text-align: center; /* Center the content horizontally */
         }
         #Label1 {
         display: block;
         font-size: 24px;
         font-weight: bold;
         color: rgba(255, 255, 255, 0.5); /* Transparent white text color */
         background-color: #007bff; /* Blue color for the background */
         padding: 10px;
         border-radius: 5px;
         margin: 0 auto 20px; /* Center the label horizontally and add some space at the bottom */
         }
         .form-group {
         margin-bottom: 15px;
         }
         /* Added styles for buttons */
         .button {
         background-color: rgba(255, 255, 255, 0);
         border: 1px solid rgba(255, 255, 255, 0);
         color: black;
         padding: 10px;
         border-radius: 5px;
         }
         .button:hover {
         background-color: #ccc; /* Change the background color on hover */
         }
          input[type=checkbox] {
width: 20px; /* Adjust width as needed */
height: 20px; /* Adjust height as needed */
    }
      </style>
   </head>
   <body>
      <form id="form1" runat="server">
         <div class="login-container">
    <asp:Label ID="Label1" runat="server" Text="RESET PASSWORD" ForeColor="Black"></asp:Label><b>
    <p style="font-size:20px;">Passwords must contain:</p>
    <ul style="list-style-type: none; font-size:18px; padding-left: 0;">
        <li>- At least one lowercase letter</li>
        <li>- At least one uppercase letter</li>
        <li>- At least one number</li>
        <li>- At least one special character</li>
        <li>- Be at least 8 characters long</li>
    </ul></b>

            <div class="form-group">
             <b>  <label for="txtUsername " style="font-size:21px;">PASSWORD:</label> </b>
               <asp:TextBox ID="txtUsername" runat="server" Height="31px" Width="239px" ></asp:TextBox>

                <asp:RegularExpressionValidator ID="regexPasswordValidator" runat="server"
    ControlToValidate="txtUsername"
    ErrorMessage="Password does not match requirements"
    ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$" ForeColor="Red"></asp:RegularExpressionValidator>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="g1" runat="server" ControlToValidate="txtUsername" ErrorMessage="* required" ForeColor="Red"></asp:RequiredFieldValidator>
               
            </div>
           enter password again
            <div class="form-group">
            <b><label for="txtPassword" style="padding-right:15px; font-size:21px;">PASSWORD:</label></b>

                  <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Height="31px" Width="239px" ></asp:TextBox>
                <asp:CheckBox ID="CheckBox1" runat="server" Text="Show Password" style="font-size:22px;" onclick="togglePasswordVisibility()" />

                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="g1" ControlToValidate="txtPassword" runat="server" ErrorMessage="* required" ForeColor="Red"></asp:RequiredFieldValidator>
                   
                <asp:CompareValidator ID="CompareValidator1"  ValidationGroup="g1" ControlToCompare="txtUsername" ControlToValidate="txtPassword" runat="server" ErrorMessage="password does not match" ForeColor="Red"></asp:CompareValidator>

               &nbsp;<br /> <br />
               <asp:Button ID="Button2" runat="server" Text="RESET" ValidationGroup="g1" OnClick="btnLogin_Click" CssClass="button" Height="35px" Width="212px" style="background-color:#007bff; font-weight:bolder" />
               <b>
               <br />  

                         <script type="text/javascript">
function togglePasswordVisibility() {
    var passwordField = document.getElementById('<%= txtPassword.ClientID %>');
    var confirmPasswordField = document.getElementById('<%= txtUsername.ClientID %>');
    var checkBox = document.getElementById('<%= CheckBox1.ClientID %>');
    
    // Toggle password field visibility based on checkbox state
    if (checkBox.checked) {
        passwordField.type = "text"; // Show password
    } else {
        passwordField.type = "password"; // Hide password
    }
}
                         </script>

            </div>
         </div>
      </form>
   </body>
</html>