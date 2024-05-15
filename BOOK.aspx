<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BOOK.aspx.cs" Inherits="Sharada.BOOK" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .login-container {
            align-content: center;
            position: absolute;
            top: 50%;
            left: 50%;
            width: 800px; /* Adjust the width as needed */
            height: 550px;
            transform: translate(-50%, -50%);
            background-color: rgba(255, 255, 255, 1);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.9);
            z-index: 1;
            text-align: center; /* Center the content horizontally */
        }

        body {
            background-image: url('Images/hotel.png');
            background-size: cover;
            background-repeat: no-repeat;
            opacity: 0.7; /* Adjust the opacity to make it semi-transparent */
            margin: 0; /* Reset default body margin */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Ensure full height */
        }

        .input-group {
            margin-bottom: 20px;
        }

        .input-group label {
            display: inline-block;
            width: 150px;
            text-align: right;
            margin-right: 10px;
        }

        .input-group input[type="text"],
        .input-group input[type="date"] {
            width: 300px;
            padding: 5px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        .input-group input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <center>
            <div class="login-container">
                <b>
                    <asp:Label ID="Label1" runat="server" Text="CHECK AVAILABILITY" style="font-size: 36px;"></asp:Label>
                </b><b><br /><br /><br />
                <div class="input-group">
                    <label for="roomtype_txtbox" style="font-size:25px;">Room Type:</label>
                    <asp:TextBox ID="roomtype_txtbox" runat="server" style="font-size:25px;" BorderColor="#333300" BorderWidth="2px" Enabled="False"></asp:TextBox>
                </div>
                <div class="input-group">
                    <label for="room_name_txtbox" style="font-size:25px;">Room Name:</label>
                    <asp:TextBox ID="room_name_txtbox" runat="server" style="font-size:25px;" BorderColor="#333300" BorderWidth="2px" Enabled="false"></asp:TextBox>
                </div>
                <div class="input-group">
                    <label for="price_txtbox"style="font-size:25px;">Price:</label>
                    <asp:TextBox ID="price_txtbox" runat="server" style="font-size:25px;" BorderColor="#333300" BorderWidth="2px" Enabled="false"></asp:TextBox>
                </div>
                
              <div class="input-group">
    <label for="from_date" style="font-size:25px;">From Date:</label>
    <asp:TextBox ID="from_date" runat="server" TextMode="Date" style="font-size:25px;" />
</div>
<div class="input-group">
    <label for="to_date" style="font-size:25px;">To Date:</label>
    <asp:TextBox ID="to_date" runat="server" TextMode="Date" style="font-size:25px;" />
</div>


                    <div class="input-group">
    <label for="total_txtbox"style="font-size:25px;">Total Price:</label>
    <asp:TextBox ID="total" runat="server" style="font-size:25px;" BorderColor="#333300" BorderWidth="2px" Enabled="false"></asp:TextBox>
</div>
                    <div>
                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>

                    </div>
                    </b>

                <asp:Button ID="submit" runat="server"  Text="CHECK" style="background-color: #007bff; color: #ffffff; padding: 10px; border-radius: 5px;" Height="44px" Width="163px" OnClick="submit_Click" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="boook" runat="server"  Text="BOOK" style="background-color: #007bff; color: #ffffff; padding: 10px; border-radius: 5px; " Height="44px" Width="163px" OnClick="boook_Click" />
            </div>
        </center>
    </form>
</body>
</html>
