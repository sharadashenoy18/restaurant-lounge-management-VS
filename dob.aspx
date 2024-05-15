<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dob.aspx.cs" Inherits="Sharada.dob" %>

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
      
    </style>


</head>
<body>
    <form id="form1" runat="server">
        <div class="login-container">

           <br /><br /><center>
            <table style="height: 199px; width: 659px">
  <tr><b>
    <td><label for="email" style="font-size:24px;">ENTER YOUR EMAIL ID:</label></td>
    <td>      <asp:TextBox ID="TextBox1" runat="server" style="width:300px;height:30px;"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*required" ControlToValidate="TextBox1" ValidationGroup="g1" ForeColor="Red"></asp:RequiredFieldValidator>
  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*invalid email id" ControlToValidate="TextBox1" ValidationGroup="g1" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RegularExpressionValidator>
</div>
</td>
  </tr>



                 <tr>
   <td><label for="confirm_username" style="font-size:24px;">ENTER YOUR DOB (yyyy-mm-dd):</label></td>

   <td>
       
    <asp:TextBox ID="txtDate" runat="server" CssClass="datepicker" style="width:300px;height:30px;"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*required" ControlToValidate="txtDate" ValidationGroup="g1" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtDate" ValidationGroup="g1"></asp:RequiredFieldValidator>


   </td>
 </tr>


 
                </b>
</table> 
                <br />
<asp:Button ID="Button1" runat="server" Text="SUBMIT" Height="46px" Width="177px" style="background-color:#007bff; font-weight:bold;" ValidationGroup="g1"  OnClick="Button1_Click"  />
        </div> </center>

        <script>
    $(function () {
        $(".datepicker").datepicker({
            dateFormat: 'yy-mm-dd' // Set desired date format
        });
    });
        </script>

    </form>
</body>
</html>



