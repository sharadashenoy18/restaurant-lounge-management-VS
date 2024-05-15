<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addr.aspx.cs" Inherits="Sharada.addr" %>

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
          .login-container {
     position: absolute;
     top: 50%;
     left: 50%;
     width: 750px; /* Adjust the width as needed */
     height: 380px;
     transform: translate(-50%, -50%);
     background-color: rgba(255, 255, 255, 0.4);
     padding: 20px;
     border-radius: 10px;
     box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
     z-index: 1;
     text-align: center; /* Center the content horizontally */
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
      
        .auto-style1 {
            height: 272px;
            width: 881px;
        }
      
    </style>


</head>
<body>
    <form id="form1" runat="server">
        <div class="login-container">

           <br /><br /><center>
            <table class="auto-style1">
  <tr><b>
    <td><label for="email" style="font-size:24px;">ENTER YOUR EMAIL ID:</label></td>
    <td>      <asp:TextBox ID="TextBox1" runat="server" style="width:300px;height:30px;"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="g1" runat="server" ErrorMessage="* required" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationGroup="g1" runat="server" ErrorMessage="*invalid email id" ControlToValidate="TextBox1"  ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RegularExpressionValidator>
</td>
  </tr>

  <tr>
    <td><label for="username" style="font-size:24px;">ENTER ADDRESS ADDRESS:</label></td>
    <td>
      <asp:TextBox ID="TextBox2" runat="server" style="width:300px;height:30px;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox2" ValidationGroup="g1" runat="server" ErrorMessage="* required" ForeColor="Red"></asp:RequiredFieldValidator>

    </td>
  </tr>

  <tr>
    <td><label for="confirm_username" style="font-size:24px;">ENTER ROAD NAME:</label></td>
    <td>
      <asp:TextBox ID="TextBox3" runat="server" style="width:300px;height:30px;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox3" ValidationGroup="g1" runat="server" ErrorMessage="* required" ForeColor="Red"></asp:RequiredFieldValidator>

    </td>
  </tr>

                 <tr>
   <td><label for="confirm_username" style="font-size:24px;">ENTER STATE:</label></td>
   <td>
     <asp:TextBox ID="TextBox4" runat="server" style="width:300px;height:30px;"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="TextBox4" ValidationGroup="g1" runat="server" ErrorMessage="* required" ForeColor="Red"></asp:RequiredFieldValidator>

   </td>
 </tr>


                 <tr>
   <td><label for="confirm_username" style="font-size:24px;">ENTER PINCODE:</label></td>
   <td>
     <asp:TextBox ID="TextBox5" runat="server" style="width:300px;height:30px;"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="TextBox5" ValidationGroup="g1" runat="server" ErrorMessage="* required" ForeColor="Red"></asp:RequiredFieldValidator>

   </td>
 </tr>

                </b>
</table> 
                <br />
<asp:Button ID="Button1" runat="server" Text="SUBMIT" Height="46px" ValidationGroup="g1" Width="177px" style="background-color:#007bff; font-weight:bold;" OnClick="Button1_Click" />
        </div> </center>
    </form>
</body>
</html>



