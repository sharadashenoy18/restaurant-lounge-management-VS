﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Icecream.aspx.cs" Inherits="Sharada.Icecream" %>


<!DOCTYPE html><html xmlns="http://www.w3.org/1999/xhtml"><head runat="server"><title></title><meta charset="utf-8" /><meta name="viewport" content="width=device-width, initial-scale=1.0" /><!-- Bootstrap CSS --><link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" /><style>

        .navbar-dark .navbar-nav .nav-link {
            color: white;
            font-weight: bold;
            font-size: 30px;
            margin-right: 22px;
        }
        .custom-dropdown:hover .custom-dropdown-content {
            display: block;
        }

          .nav-link:hover,
  .nav-link.active {
      background-color: gold;
      transition: background-color 0.3s ease; 
      color: black; /* Adjust text color for better visibility */
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
            padding: 10px;
        }



        .auto-style1 {
            width: 384px;
        }



        .auto-style2 {
            height: 485px;
        }
        .auto-style3 {
            width: 384px;
            height: 485px;
        }



    </style></head><body><form id="form1" runat="server">
        <div class="container-fluid">

            <!-- Logo and Name -->
            <div class="logo-container">
                <h1 class="hotel-name">
                  <b>  <img src="Images/logo.png" alt="Hotel Logo" class="logo">LodgeCuisineHub
                </h1>
            </div> </b>

            <!-- Navbar -->
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ml-auto mr-auto">
                        <!-- Add your navigation links here -->
                        <li class="nav-item active">
                            <a class="nav-link" href="Home.aspx">HOME</a>
                        </li>
                        <li class="nav-item custom-dropdown">
     <a class="nav-link" href="#" id="bookRoomDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         BOOK ROOM
     </a>
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
                                                <li class="nav-item"><a class="nav-link" href="#">FAQs</a></li>

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
        <asp:Label ID="Label1" runat="server" Text="~~~ICE CREAM~~~" Font-Size="38px"></asp:Label>
    </b>
    
</center>
<center>
<center>
    <table>
        <tr>
            <td><asp:Image ID="Image1" runat="server" Height="300px" Width="325px" ImageUrl="~/Images/Chai Spiced Latte.png" style="margin-left: 25px; margin-right: 28px" />
                
                <asp:Label ID="Label2" runat="server" Text="Chai Spiced Latte Ice Cream" style="text-align: center; display: block; margin-top: 5px;"></asp:Label>
                <asp:Label ID="LabelDescription1" runat="server" Text="Creamy chai tea-infused ice cream with warm spices like cinnamon, cardamom, and ginger, offering a comforting and aromatic twist on the beloved Indian beverage." style="text-align: center; display: block; margin-top: 5px;"></asp:Label>
                <asp:Label ID="LabelPrice1" runat="server" Text="98 per cup" style="text-align: center; display: block; margin-top: 5px;"></asp:Label>
                <asp:Button ID="ButtonOrderNow1" runat="server" Text="ORDER NOW" CssClass="order-button" style="margin-left: 105px; margin-right: 28px ; background-color:black ; color:white " Height="48px" Width="163px" OnClick="ButtonOrderNow1_Click"/>
            </td>


             <td>
     <b><asp:Image ID="Image2" runat="server" Height="300px" Width="325px" ImageUrl="~/Images/Gulkand Almond.png" style="margin-left: 25px;" /></b>
     <asp:Label ID="Label3" runat="server" Text="Gulkand Almond ice cream" style="text-align: center; display: block; margin-top: 5px;"></asp:Label>
     <asp:Label ID="Label4" runat="server" Text="Indulgent almond ice cream swirled with sweet gulkand (rose petal jam) and garnished with crunchy almond flakes, creating a delightful fusion of floral and nutty flavors." style="text-align: center; display: block; margin-top: 5px;"></asp:Label>
     <asp:Label ID="Label5" runat="server" Text="100 per cup" style="text-align: center; display: block; margin-top: 5px;"></asp:Label>
     <asp:Button ID="Button1" runat="server" Text="ORDER NOW" CssClass="order-button" style="margin-left: 105px; margin-right: 28px ; background-color:black ; color:white " Height="48px" Width="163px" OnClick="Button1_Click"/>
 </td>


             <td class="auto-style1">
     <asp:Image ID="Image3" runat="server" Height="300px" Width="325px" ImageUrl="~/Images/Kulfi Falooda.jpg" style="margin-left: 25px; margin-right: 28px" />
     <asp:Label ID="Label6" runat="server" Text="Kulfi Falooda ice cream" style="text-align: center; display: block; margin-top: 5px;"></asp:Label>
     <asp:Label ID="Label7" runat="server" Text="Authentic kulfi ice cream flavored with rose water and studded with chopped almonds and pistachios, served atop a bed of vermicelli noodles soaked in rose syrup for a traditional Indian dessert experience." style="text-align: center; display: block; margin-top: 5px;"></asp:Label>
     <asp:Label ID="Label8" runat="server" Text="105 per cup" style="text-align: center; display: block; margin-top: 5px;"></asp:Label>
     <asp:Button ID="Button2" runat="server" Text="ORDER NOW" CssClass="order-button" style="margin-left: 105px; margin-right: 28px ; background-color:black ; color:white " Height="48px" Width="163px" OnClick="Button2_Click"/>
 </td>


             <td>
     <asp:Image ID="Image4" runat="server" Height="300px" Width="325px" ImageUrl="~/Images/Coconut Curry.png" style="margin-left: 25px; margin-right: 28px" />
     <asp:Label ID="Label9" runat="server" Text="Coconut Curry ice cream" style="text-align: center; display: block; margin-top: 5px;"></asp:Label>
     <asp:Label ID="Label10" runat="server" Text="Creamy coconut milk ice cream infused with fragrant curry spices, offering a bold and unexpected taste sensation inspired by South Asian cuisine. Taste it once" style="text-align: center; display: block; margin-top: 5px;"></asp:Label>
     <asp:Label ID="Label11" runat="server" Text="109 per cup" style="text-align: center; display: block; margin-top: 5px;"></asp:Label>
     <asp:Button ID="Button3" runat="server" Text="ORDER NOW" CssClass="order-button" style="margin-left: 105px; margin-right: 28px ; background-color:black ; color:white " Height="48px" Width="163px" OnClick="Button3_Click"/>
 </td></tr>

        <tr>
            <td>&nbsp;</td>
        </tr>

        <tr>
            <td>&nbsp;</td>
        </tr>

               <tr>
           <td class="auto-style2">
               <asp:Image ID="Image5" runat="server" Height="300px" Width="325px" ImageUrl="~/Images/Balsamic Strawberry.jpg" style="margin-left: 25px; margin-right: 28px" />
               <asp:Label ID="Label12" runat="server" Text="Balsamic Strawberry ice cream" style="text-align: center; display: block; margin-top: 5px;"></asp:Label>
               <asp:Label ID="Label13" runat="server" Text="Creamy strawberry ice cream elevated with a drizzle of aged balsamic vinegar for a tangy and complex flavor profile." style="text-align: center; display: block; margin-top: 5px;"></asp:Label>
               <asp:Label ID="Label14" runat="server" Text="109 per cup" style="text-align: center; display: block; margin-top: 5px;"></asp:Label>
               <asp:Button ID="Button4" runat="server" Text="ORDER NOW" CssClass="order-button" style="margin-left: 105px; margin-right: 28px ; background-color:black ; color:white " Height="48px" Width="163px" OnClick="Button4_Click"/>
           </td>


            <td class="auto-style2">
    <b><asp:Image ID="Image6" runat="server" Height="300px" Width="325px" ImageUrl="~/Images/Lavender Honey.jpg" style="margin-left: 25px;" /></b>
    <asp:Label ID="Label15" runat="server" Text="Lavender Honey ice cream" style="text-align: center; display: block; margin-top: 5px;"></asp:Label>
    <asp:Label ID="Label16" runat="server" Text="&quot;Lavender Honey&quot; ice cream offers a delicate blend of floral lavender and sweet honey flavors, creating a subtle and refined taste profile." style="text-align: center; display: block; margin-top: 5px;"></asp:Label>
    <asp:Label ID="Label17" runat="server" Text="119 per cup" style="text-align: center; display: block; margin-top: 5px;"></asp:Label>
    <asp:Button ID="Button5" runat="server" Text="ORDER NOW" CssClass="order-button" style="margin-left: 105px; margin-right: 28px ; background-color:black ; color:white " Height="48px" Width="163px" OnClick="Button5_Click"/>
</td>


            <td class="auto-style3">
    <asp:Image ID="Image7" runat="server" Height="300px" Width="325px" ImageUrl="~/Images/Black Forest.png" style="margin-left: 25px; margin-right: 28px" />
    <asp:Label ID="Label18" runat="server" Text="Black Forest ice cream" style="text-align: center; display: block; margin-top: 5px;"></asp:Label>
    <asp:Label ID="Label19" runat="server" Text="Decadent chocolate ice cream with swirls of cherry compote and dark chocolate chunks.Distinctly flavoured.  Taste it once." style="text-align: center; display: block; margin-top: 5px;"></asp:Label>
    <asp:Label ID="Label20" runat="server" Text="118 per cup" style="text-align: center; display: block; margin-top: 5px;"></asp:Label>
    <asp:Button ID="Button6" runat="server" Text="ORDER NOW" CssClass="order-button" style="margin-left: 105px; margin-right: 28px ; background-color:black ; color:white " Height="48px" Width="163px" OnClick="Button6_Click"/>
</td>


            <td class="auto-style2">
    <asp:Image ID="Image8" runat="server" Height="300px" Width="325px" ImageUrl="~/Images/Salted Caramel Crunch.png" style="margin-left: 25px; margin-right: 28px" />
    <asp:Label ID="Label21" runat="server" Text="Salted Caramel Crunch" style="text-align: center; display: block; margin-top: 5px;"></asp:Label>
    <asp:Label ID="Label22" runat="server" Text="Velvety caramel ice cream with swirls of salted caramel and crunchy caramel pieces.Taste it once" style="text-align: center; display: block; margin-top: 5px;"></asp:Label>
    <asp:Label ID="Label23" runat="server" Text="120 per cup" style="text-align: center; display: block; margin-top: 5px;" EnableTheming="False"></asp:Label>
    <asp:Button ID="Button7" runat="server" Text="ORDER NOW" CssClass="order-button" style="margin-left: 105px; margin-right: 28px ; background-color:black ; color:white " Height="48px" Width="163px" OnClick="Button7_Click"/>
</td></tr>

        <tr>
            &nbsp
        </tr>

        <tr>
            &nbsp
        </tr>


                <tr>
            <td>&nbsp;</td>
        </tr>

        <tr>
            <td>&nbsp;</td>
        </tr>

              

    </table>
</center>
    </form>
</body>
</html>