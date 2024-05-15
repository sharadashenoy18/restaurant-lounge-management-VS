<%@ Page Language="C#" AutoEventWireup="false" CodeBehind="Login.aspx.cs" Inherits="Sharada.Login" %>
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

         input[type=checkbox] {
        width: 20px; /* Adjust width as needed */
        height: 20px; /* Adjust height as needed */
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
      </style>
   </head>
   <body>
      <form id="form1" runat="server">
         <div class="login-container">
            <asp:Label ID="Label1" runat="server" Text="LOGIN FORM" ForeColor="Black"></asp:Label>
            <div class="form-group">
               <label for="txtUsername"><strong>EMAIL</strong><strong>ID</strong>:</label>
               <asp:TextBox ID="txtUsername" runat="server" Height="31px" Width="239px" ></asp:TextBox> <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*required" ControlToValidate="txtUsername" ValidationGroup="g1" ForeColor="Red"></asp:RequiredFieldValidator>
              <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*invalid email id" ControlToValidate="txtUsername" ValidationGroup="g1" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RegularExpressionValidator>
            </div>
            <div class="form-group">
               <label for="txtPassword" style="padding-right:15px;">
                  <strong>PASSWORD</strong>:  
                  <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Height="31px" Width="239px" ></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*required" ControlToValidate="txtPassword" ValidationGroup="g1" ForeColor="Red"></asp:RequiredFieldValidator>
                  <asp:CheckBox ID="CheckBox1" runat="server" Text="Show Password" style="font-size:22px;" onclick="togglePasswordVisibility()" />

                   </label>
               &nbsp;<br />
                <br />
               <asp:Button ID="Button3" runat="server" Text="FORGOT PASSWORD ? " OnClick="Button3_Click" style="background-color: transparent; border: none; font-weight:bolder" />
                <br />
                <br />
                <strong>USERTYPE</strong> :
                <asp:RadioButton ID="RadioButton1" Text="EMPLOYEE" runat="server" ValidationGroup="g1" />
                <<asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="RadioButton1" runat="server" ErrorMessage="*required"></asp:RequiredFieldValidator>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton2" Text="USER" runat="server" ValidationGroup="g1" />
                                <<asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="RadioButton2" runat="server" ErrorMessage="*required"></asp:RequiredFieldValidator>

               <br /> <br />
               <asp:Button ID="Button2" runat="server" Text="LOGIN" OnClick="btnLogin_Click" CssClass="button" Height="35px" Width="212px" style="background-color:#007bff; font-weight:bolder"  ValidationGroup="g1"  />
               <b>
               <br />  
               <br />
               <asp:Button ID="Button4" runat="server" Text="NEW USER ?" OnClick="Button4_Click" style="background-color: transparent; border: none; font-weight:bolder" />
               <br />   
            </div>
         </div>

          <script type="text/javascript">
    function togglePasswordVisibility() {
        var passwordField = document.getElementById('<%= txtPassword.ClientID %>');
        var checkBox = document.getElementById('<%= CheckBox1.ClientID %>');
        
        // Toggle password field visibility based on checkbox state
        if (checkBox.checked) {
            passwordField.type = "text"; // Show password
        } else {
            passwordField.type = "password"; // Hide password
        }
    }
          </script>

      </form>
   </body>
</html>