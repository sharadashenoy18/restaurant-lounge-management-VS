<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="Sharada.ForgotPassword" %>

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
            width: 400px; /* Adjust the width as needed */
            height: 200px;
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
    </style>
</head>
<body><b>
    <form id="form1" runat="server">
        <div class="login-container">
            <!-- Your login form content goes here -->
            <asp:Label ID="Label1" runat="server" Text="FORGOT PASSWORD FORM"></asp:Label>

            <div class="form-group">
                <label for="txtUsername">EMAIL &nbsp; ID:</label>
                <asp:TextBox ID="txtUsername" runat="server" Height="31px" Width="239px"></asp:TextBox>
            </div>

            <div class="form-group">
                &nbsp;<!-- Replace the HyperLink control with a Button control --><asp:Button ID="Button2" runat="server" Text="OK" style="background-color: #007bff; color: #ffffff; padding: 10px; border-radius: 5px;" Height="44px" Width="163px" OnClick="Button2_Click" />
            </div>
            

            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>

            </b>
            </div>
        </div>
    </form>
</body>
</html>

