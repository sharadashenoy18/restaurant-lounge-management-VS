<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Resetknow.aspx.cs" Inherits="Sharada.Resetknow" %>
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
    width: 850px; /* Adjust the width as needed */
    padding: 20px;
    height:400px;
    background-color: rgba(255, 255, 255, 0.8);
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 1);
    /* Center the content horizontally */
}
         
          .auto-style1 {
              height: 180px;
              width: 951px;
          }
         
      </style>
   </head>
   <body>
      <form id="form1" runat="server">
         <div class="login-container">
            <asp:Label ID="Label1" runat="server" style="font-size:26px;" Text=
                "A mobile number is a unique numerical identifier associated with a mobile device or phone.
               It is used for communication purposes, such as making calls, sending text messages, and accessing mobile services.
               Mobile numbers typically consist of a country code, area code, and subscriber number">

            </asp:Label>
            <br /><br />
            <center>
               <table class="auto-style1"">
                  <tr>
                     <b>
                        <td><label for="email" style="font-size:24px;">ENTER YOUR EMAIL ID:</label></td>
                        <td>
                           <asp:TextBox ID="TextBox1" runat="server" style="width:300px;height:30px;"></asp:TextBox>
                           
<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*invalid email id" ControlToValidate="TextBox1" ValidationGroup="g1" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RegularExpressionValidator>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*required" ControlToValidate="TextBox1" ValidationGroup="g1" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                  </tr>
                  <tr>
                  <td><label for="username" style="font-size:24px;">ENTER OLD PASSWORD:</label></td>
                  <td>
                  <asp:TextBox ID="TextBox2" runat="server" style="width:300px;height:30px;"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*required" ControlToValidate="TextBox2" ValidationGroup="g1" ForeColor="Red"></asp:RequiredFieldValidator>
                  </td>
                  </tr>
                  <tr>
                  <td><label for="confirm_username" style="font-size:24px;">ENTER NEW PASSWORD:</label></td>
                  <td>
                  <asp:TextBox ID="TextBox3" runat="server" style="width:300px;height:30px;"></asp:TextBox>
                  <asp:RegularExpressionValidator ID="regexPasswordValidator" runat="server" ControlToValidate="TextBox3" ValidationGroup="g1"
                     ErrorMessage="Password does not match requirements" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$" ForeColor="Red">
                  </asp:RegularExpressionValidator>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*required" ControlToValidate="TextBox3" ValidationGroup="g1" ForeColor="Red"></asp:RequiredFieldValidator>
                  </td>
                  </tr>
                  <tr>
                  <td><label for="confirm_username" style="font-size:24px;">CONFIRM NEW PASSWORD:</label></td>
                  <td>
                  <asp:TextBox ID="TextBox4" runat="server" style="width:300px;height:30px;"></asp:TextBox>
                  <asp:CompareValidator ID="CompareValidator1" runat="server" ValidationGroup="g1" ControlToValidate="TextBox3" ControlToCompare="TextBox4"  ErrorMessage="password does not match" ForeColor="Red"></asp:CompareValidator>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*required" ControlToValidate="TextBox4" ValidationGroup="g1" ForeColor="Red"></asp:RequiredFieldValidator>
                  </td>
                  </tr></b>
               </table>
               <br />
               <asp:Button ID="Button1" runat="server" Text="SUBMIT" Height="46px" Width="177px" ValidationGroup="g1" style="background-color:#007bff; font-weight:bold;" OnClick="Button1_Click" />
         </div>
          </div>
         </center>
      </form>
   </body>
</html>