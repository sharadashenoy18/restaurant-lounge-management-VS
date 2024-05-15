﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cake.aspx.cs" Inherits="Sharada.Cake" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />

    <style>

        .navbar-dark .navbar-nav .nav-link {
            color: white;
            font-weight: bold;
            font-size: 30px;
            margin-right: 22px;
        }
        .custom-dropdown:hover .custom-dropdown-content {
            display: block;
        }

        .custom-dropdown-content {
            display: none;
            position: absolute;
            background-color: white;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
            z-index: 1;
            top: 100%;
            left: 0;
        }

        .nav-item {
            position: relative;
        }

        .logo-container {
            text-align: center;
            margin-top: 10px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .logo {
            width: 146px;
            height: 141px;
            margin-right: 10px;
        }

            @keyframes changeColor {
    0% { color: #000000; } /* Start color */
    25% { color: #333333; } /* Intermediate color 1 */
    50% { color: #666666; } /* Intermediate color 2 */
    75% { color: #999999; } /* Intermediate color 3 */
    100% { color: #cccccc; } /* End color */
}

        .hotel-name {
    font-size: 100px; /* Adjust font size */
    font-weight: bold; /* Add font weight */
    margin-top: 10px;
    font-family:'Brush Script MT';
    animation: changeColor 5s infinite; 
}
        .navbar {
            padding: 5px;
        }

        /* Highlighting styles */
        .nav-link:hover,
        .nav-link.active {
            background-color: gold;
            transition: background-color 0.3s ease; 
            color: black; /* Adjust text color for better visibility */
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">

            <!-- Logo and Name -->
            <div class="logo-container">
                <h1 class="hotel-name">
                    <img src="Images/logo.png" alt="Hotel Logo" class="logo">LodgeCuisineHub
                </h1>
            </div>

            <!-- Navbar -->
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ml-auto mr-auto">
                        <!-- Add your navigation links here -->
                      

                        <li class="nav-item active">
                <a class="nav-link " href="Home.aspx">HOME</a>
            </li>



             <li class="nav-item custom-dropdown">
     <a class="nav-link" href="#" id="bookRoomDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">BOOK ROOM</a>
     <div class="custom-dropdown-content dropdown-menu" aria-labelledby="bookRoomDropdown">
         <a class="dropdown-item" href="Standard.aspx">STANDARD ROOM</a>
         <a class="dropdown-item" href="Deluxe.aspx">DELUXE ROOM</a>
         <a class="dropdown-item" href="Suite.aspx">SUITE </a>
         <a class="dropdown-item" href="Familyoom.aspx">FAMILY ROOM</a>
         <a class="dropdown-item" href="Honeymoon.aspx">HONEYMOON ROOM</a>  </div> </li>

 <li class="nav-item custom-dropdown">
     <a class="nav-link" href="#" id="menuDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">MENU </a>
     <div class="custom-dropdown-content dropdown-menu" aria-labelledby="menuDropdown">
         <a class="dropdown-item" href="Starter.aspx">STARTER</a>
         <a class="dropdown-item" href="Soup.aspx">SOUP </a>
         <a class="dropdown-item" href="Maincourse.aspx">MAIN COURSE</a>
         <a class="dropdown-item" href="Salads.aspx">SALADS </a>
         <a class="dropdown-item" href="Icecream.aspx">ICE CREAM</a>
         <a class="dropdown-item" href="Cake.aspx">CAKE</a> </div> </li>

                       
                           <li class="nav-item"><a class="nav-link" href="Orders.aspx">ORDERS</a></li>

                        <li class="nav-item"><a class="nav-link" href="Review.aspx">REVIEWS</a></li>
                  <li class="nav-item"><a class="nav-link" href="Contact.aspx">CONTACT US</a></li>

                            <a class="nav-link " href="FAQ.aspx">FAQ</a>

        <li class="nav-item custom-dropdown">
<a class="nav-link" href="#" id="lastRoomDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">YOUR ACCOUNT</a>
<div class="custom-dropdown-content dropdown-menu" aria-labelledby="lastRoomDropdown">
     <a class="dropdown-item" href="Me.aspx">ABOUT ME</a>
     <a class="dropdown-item" href="Booked_room.aspx">MY BOOKED ROOMS</a>
     <a class="dropdown-item" href="Ordered_food.aspx">MY ORDERS</a>
     <a class="dropdown-item" href="Login.aspx">LOGOUT</a> </div> </li>


                    </ul>
                </div>
            </nav>

            <div class="container body-content">
                <!-- Your content goes here -->
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<br>
<center>
    <b>
        <asp:Label ID="Label1" runat="server" Text="~~~CAKES~~~" Font-Size="38px"></asp:Label>
    </b>
    
</center>
<center>
<center>
    <table>
        <tr>
      <td>
                <asp:Image ID="Image1" runat="server" Height="300px" Width="325px" ImageUrl="~/Images/Velvet_Dream_Cake.png" style="margin-left: 25px; margin-right: 28px" />
                <asp:Label ID="Label2" runat="server" Text="Velvet Dream Cake" style="text-align: center; display: block; margin-top: 5px;"></asp:Label>
                <asp:Label ID="LabelDescription1" runat="server" Text="A luscious red velvet cake with smooth cream cheese frosting" style="text-align: center; display: block; margin-top: 5px;"></asp:Label>
                <asp:Label ID="LabelPrice1" runat="server" Text="1200 per kg" style="text-align: center; display: block; margin-top: 5px;"></asp:Label>
                <asp:Button ID="ButtonOrderNow1" runat="server" Text="ORDER NOW" CssClass="order-button" style="margin-left: 105px; margin-right: 28px ; background-color:black ; color:white " Height="48px" Width="163px" OnClick="ButtonOrderNow1_Click"/>
            </td>

<td>
     <b><asp:Image ID="Image2" runat="server" Height="300px" Width="325px" ImageUrl="~/Images/Triple Chocolate Delight.jpg" style="margin-left: 25px;" /></b>
     <asp:Label ID="Label3" runat="server" Text="Triple Chocolate Delight" style="text-align: center; display: block; margin-top: 5px;"></asp:Label>
     <asp:Label ID="Label4" runat="server" Text="Layers of rich chocolate cake, chocolate ganache, and chocolate mousse." style="text-align: center; display: block; margin-top: 5px;"></asp:Label>
     <asp:Label ID="Label5" runat="server" Text="1300 per kg" style="text-align: center; display: block; margin-top: 5px;"></asp:Label>
     <asp:Button ID="Button1" runat="server" Text="ORDER NOW" CssClass="order-button" style="margin-left: 105px; margin-right: 28px ; background-color:black ; color:white " Height="48px" Width="163px" OnClick="Button1_Click"/>
 </td>     

                 <td>
     <asp:Image ID="Image3" runat="server" Height="300px" Width="325px" ImageUrl="~/Images/Pistachio Perfection Cake.jpg" style="margin-left: 25px; margin-right: 28px" />
     <asp:Label ID="Label6" runat="server" Text="Pistachio Perfection Cake:" style="text-align: center; display: block; margin-top: 5px;"></asp:Label>
     <asp:Label ID="Label7" runat="server" Text="Pistachio-flavored cake with layers of pistachio cream and chopped pistachios." style="text-align: center; display: block; margin-top: 5px;"></asp:Label>
     <asp:Label ID="Label8" runat="server" Text="1500 per kg" style="text-align: center; display: block; margin-top: 5px;"></asp:Label>
     <asp:Button ID="Button2" runat="server" Text="ORDER NOW" CssClass="order-button" style="margin-left: 105px; margin-right: 28px ; background-color:black ; color:white " Height="48px" Width="163px" OnClick="Button2_Click"/>
 </td>


            <td>
     <asp:Image ID="Image4" runat="server" Height="300px" Width="325px" ImageUrl="~/Images/Mango Tango Delight.jpg" style="margin-left: 25px; margin-right: 28px" />
     <asp:Label ID="Label9" runat="server" Text="Mango Tango Delight:" style="text-align: center; display: block; margin-top: 5px;"></asp:Label>
     <asp:Label ID="Label10" runat="server" Text="Moist mango-flavored cake with layers of mango mousse and fresh mango slices." style="text-align: center; display: block; margin-top: 5px;"></asp:Label>
     <asp:Label ID="Label11" runat="server" Text="1700 pr kg" style="text-align: center; display: block; margin-top: 5px;"></asp:Label>
     <asp:Button ID="Button3" runat="server" Text="ORDER NOW" CssClass="order-button" style="margin-left: 105px; margin-right: 28px ; background-color:black ; color:white " Height="48px" Width="163px" OnClick="Button3_Click"/>
 </td></tr>

        <tr>
            <td>&nbsp;</td>
        </tr>

        <tr>
            <td>&nbsp;</td>
        </tr>

               <tr>
              <td>
               <asp:Image ID="Image5" runat="server" Height="300px" Width="325px" ImageUrl="~/Images/Coffee Caramel Indulgence.png" style="margin-left: 25px; margin-right: 28px" />
               <asp:Label ID="Label12" runat="server" Text="Coffee Caramel Indulgence" style="text-align: center; display: block; margin-top: 5px;"></asp:Label>
               <asp:Label ID="Label13" runat="server" Text="Coffee-infused cake layers with caramel filling and a coffee glaze." style="text-align: center; display: block; margin-top: 5px;"></asp:Label>
               <asp:Label ID="Label14" runat="server" Text="1750 per kg" style="text-align: center; display: block; margin-top: 5px;"></asp:Label>
               <asp:Button ID="Button4" runat="server" Text="ORDER NOW" CssClass="order-button" style="margin-left: 105px; margin-right: 28px ; background-color:black ; color:white " Height="48px" Width="163px" OnClick="Button4_Click"/>
           </td>


            <td>
    <b><asp:Image ID="Image6" runat="server" Height="300px" Width="325px" ImageUrl="~/Images/Honey Lavender Love.jpg" style="margin-left: 25px;" /></b>
    <asp:Label ID="Label15" runat="server" Text="Honey Lavender Love" style="text-align: center; display: block; margin-top: 5px;"></asp:Label>
    <asp:Label ID="Label16" runat="server" Text="Lavender-infused cake with honey-flavored frosting and a touch of lavender buds." style="text-align: center; display: block; margin-top: 5px;"></asp:Label>
    <asp:Label ID="Label17" runat="server" Text="1700 per kg" style="text-align: center; display: block; margin-top: 5px;"></asp:Label>
    <asp:Button ID="Button5" runat="server" Text="ORDER NOW" CssClass="order-button" style="margin-left: 105px; margin-right: 28px ; background-color:black ; color:white " Height="48px" Width="163px" OnClick="Button5_Click"/>
</td>


            <td>
    <asp:Image ID="Image7" runat="server" Height="300px" Width="325px" ImageUrl="~/Images/Oreo.png" style="margin-left: 25px; margin-right: 28px" />
    <asp:Label ID="Label18" runat="server" Text="Oreo chocolate delight" style="text-align: center; display: block; margin-top: 5px;"></asp:Label>
    <asp:Label ID="Label19" runat="server" Text="Lavender-infused cake with honey-flavored frosting and a touch of lavender buds." style="text-align: center; display: block; margin-top: 5px;"></asp:Label>
    <asp:Label ID="Label20" runat="server" Text="1600 per kg" style="text-align: center; display: block; margin-top: 5px;"></asp:Label>
    <asp:Button ID="Button6" runat="server" Text="ORDER NOW" CssClass="order-button" style="margin-left: 105px; margin-right: 28px ; background-color:black ; color:white " Height="48px" Width="163px" OnClick="Button6_Click"/>
</td>


            <td>
    <asp:Image ID="Image8" runat="server" Height="300px" Width="325px" ImageUrl="~/Images/Butterscotch.png" style="margin-left: 25px; margin-right: 28px" />
    <asp:Label ID="Label21" runat="server" Text="Butterscotch Delight" style="text-align: center; display: block; margin-top: 5px;"></asp:Label>
    <asp:Label ID="Label22" runat="server" Text="Lavender-infused cake with honey-flavored frosting and a touch of lavender buds." style="text-align: center; display: block; margin-top: 5px;"></asp:Label>
    <asp:Label ID="Label23" runat="server" Text="1500 per kg" style="text-align: center; display: block; margin-top: 5px;" EnableTheming="False"></asp:Label>
    <asp:Button ID="Button7" runat="server" Text="ORDER NOW" CssClass="order-button" style="margin-left: 105px; margin-right: 28px ; background-color:black ; color:white " Height="48px" Width="163px" OnClick="Button7_Click"/>
</td></tr>

        <tr>  &nbsp   </tr>  <tr>   &nbsp  </tr>   <tr>   <td>&nbsp;</td>   </tr>   <tr>  <td>&nbsp;</td>  </tr>
    </table>
</center>
    </form>
</body>
</html>