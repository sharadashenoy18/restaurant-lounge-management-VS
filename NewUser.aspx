<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewUser.aspx.cs" Inherits="Sharada.NewUser" %>
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
         .nav-link:hover,
         .nav-link.active {
         background-color: gold;
         transition: background-color 0.3s ease; 
         color: black; /* Adjust text color for better visibility */
         }
         body::before {
         content: "";
         background-image: url('Images/hotel.png'); /* Replace 'Images/background.jpg' with the actual path to your image */
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
         width: 700px; /* Adjust the width as needed */
         height: 350px;
         transform: translate(-50%, -50%);
         background-color: rgba(255, 255, 255, 0.4);
         padding: 20px;
         border-radius: 10px;
         box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
         z-index: 1;
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
         /* Added styles for radio buttons */
         .radio-group {
         display: flex;
         align-items: center;
         justify-content: center;
         color: black; /* Set the text color to black */
         }
         .radio-group label {
         margin-right: 20px;
         }
         .radio-group input {
         margin-right: 5px;
         }
         input[type=checkbox] {
         width: 20px; /* Adjust width as needed */
         height: 20px; /* Adjust height as needed */
         }
         .textbox {
         display: block;
         width: 100%;
         height: 30px; /* Adjust height as needed */
         margin-bottom: 10px; /* Adjust spacing between textboxes */
         }
      </style>
   </head>
   <body>
      <b>
         <form id="form1" runat="server">
            <div class="login-container">
               <!-- Your login form content goes here -->
               <asp:Label ID="Label1" runat="server" Text="NEW USER FORM" style="font-size:25px;"></asp:Label>
               <asp:Table ID="Table1" runat="server" Height="140px" Width="641px">
                  <asp:TableRow>
                     <asp:TableCell>
                        EMAIL:
                     </asp:TableCell>
                     <asp:TableCell>
                        <asp:TextBox ID="email_txt" runat="server" CssClass="textbox"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*required" ControlToValidate="email_txt" ValidationGroup="g1" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*invalid email id" ControlToValidate="email_txt" ValidationGroup="g1" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                     </asp:TableCell>
                  </asp:TableRow>
                  <asp:TableRow>
                     <asp:TableCell>
                        PASSWORD:
                     </asp:TableCell>
                     <asp:TableCell>
                        <asp:TextBox ID="password_txt" runat="server" TextMode="Password" CssClass="textbox"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*required" ControlToValidate="password_txt" ValidationGroup="g1" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="regexPasswordValidator" runat="server" ControlToValidate="password_txt" ValidationGroup="g1" ErrorMessage="Password does not match requirements" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$" ForeColor="Red"></asp:RegularExpressionValidator>
                     </asp:TableCell>
                  </asp:TableRow>
                  <asp:TableRow>
                     <asp:TableCell>
                        CONFIRM PASSWORD:
                     </asp:TableCell>
                     <asp:TableCell>
                        <asp:TextBox ID="confirm_password_txt" runat="server" TextMode="Password" CssClass="textbox"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*required" ControlToValidate="confirm_password_txt" ValidationGroup="g1" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" ControlToCompare="password_txt" ControlToValidate="confirm_password_txt" runat="server" ErrorMessage="password does not match" ValidationGroup="g1" ForeColor="Red"></asp:CompareValidator>
                     </asp:TableCell>
                  </asp:TableRow>
               </asp:Table>
               <asp:CheckBox ID="CheckBox1" runat="server" Text="Show Password" style="font-size:22px;" onclick="togglePasswordVisibility()" />
               <br />
               <br />
               <asp:Button ID="Button2" ValidationGroup="g1" runat="server" OnClick="btnLogin_Click" Text="REGISTER" style="background-color: #007bff; color: #ffffff; padding: 10px; border-radius: 5px;" Height="44px" Width="163px" />
               <br />
               <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
               <br/>
            </div>
         </form>
      </b>
      <script type="text/javascript">
          function togglePasswordVisibility() {
              var passwordField = document.getElementById('<%= password_txt.ClientID %>');
             var confirmPasswordField = document.getElementById('<%= confirm_password_txt.ClientID %>');
            var checkBox = document.getElementById('<%= CheckBox1.ClientID %>');
              if (checkBox.checked) {
                  passwordField.type = "text"; // Show password
                  confirmPasswordField.type = "text"; // Show confirm password
              } else {
                  passwordField.type = "password"; // Hide password
                  confirmPasswordField.type = "password"; // Hide confirm password
              }
          }
      </script>
   </body>
</html>