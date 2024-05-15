<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mob.aspx.cs" Inherits="Sharada.mob" %>
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
     width: 700px; /* Adjust the width as needed */
     height: 420px;
     transform: translate(-50%, -50%);
     background-color: rgba(255, 255, 255, 0.4);
     padding: 20px;
     border-radius: 10px;
     box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
     z-index: 1;
     text-align: center; /* Center the content horizontally */
  }

      </style>
   </head>
   <body>
      <form id="form1" runat="server">
         <div class="login-container">
            <asp:Label ID="Label1" runat="server" style="font-size:26px;" Text="A mobile number is a unique numerical identifier associated with a mobile device or phone. It is used for communication purposes, such as making calls, sending text messages, and accessing mobile services. Mobile numbers typically consist of a country code, area code, and subscriber number"></asp:Label>
            <br /><br />
            <center>
               <table style="height: 199px; width: 659px">
                  <tr>
                     <b>
                        <td><label for="email" style="font-size:24px;">ENTER YOUR EMAIL ID:</label></td>
                        <td>
                           <asp:TextBox ID="TextBox1" runat="server" style="width:300px;height:30px;"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="* invalid email id" ControlToValidate="TextBox1" ValidationGroup="g1" ForeColor="Red"></asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*required" ControlToValidate="TextBox1" ValidationGroup="g1" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                  </tr>
                  <tr>
                  <td><label for="username" style="font-size:24px;">ENTER MOBILE NUMBER:</label></td>
                  <td>
                  <asp:TextBox ID="TextBox2" runat="server" style="width:300px;height:30px;"></asp:TextBox>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="TextBox2" runat="server" ErrorMessage="invalid phone number" ValidationExpression="^\d{10}$" ValidationGroup="g1" ForeColor="Red"></asp:RegularExpressionValidator>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox2" runat="server" ErrorMessage="*required" ValidationGroup="g1" ForeColor="Red"></asp:RequiredFieldValidator>
                  </td>
                  </tr>
                  <tr>
                  <td><label for="confirm_username" style="font-size:24px;">CONFIRM MOBILE NUMBER:</label></td>
                  <td>
                  <asp:TextBox ID="TextBox3" runat="server" style="width:300px;height:30px;"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*required" ValidationGroup="g1" ForeColor="Red"></asp:RequiredFieldValidator>
                      <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="does not match" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ValidationGroup="g1" ForeColor="Red" ></asp:CompareValidator>
                      </td>
                  </tr></b>
               </table>
               <br />
               <asp:Button ID="Button1" runat="server" Text="SUBMIT" Height="46px" Width="177px" style="background-color:#007bff; font-weight:bold;" OnClick="Button1_Click" ValidationGroup="g1" />
         </div>
         </center>
      </form>
   </body>
</html>