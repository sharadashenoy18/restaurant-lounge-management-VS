﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Sharada.Contact" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
    <style>

        td {
    padding: 20px; /* Adjust the padding value as needed */
  }

        input::placeholder {
            font-size: 32px; /* Adjust the font size according to your preference */
        }

        .nav-link:hover,
        .nav-link.active {
            background-color: gold;
            transition: background-color 0.3s ease; 
            color: black; /* Adjust text color for better visibility */
        }

        .individual{
          
            width: 250px; /* Adjust the width as needed */
            height: 150px;
            background-color: rgba(255, 255, 255, 0.7);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            z-index: 1;
            text-align: center;
        }

        .white-container4 {
            width: 1373px;
            padding-left: 40px;
            height: 47px;
            background-color: rgba(235, 236, 240, 0.7); /* Fully transparent */
            margin: 0 auto;
        }
        
        .special-container {
            margin-left: auto;
            margin-right: auto;
            width: 100px; /* Adjust the width as needed */
            height: 100px;
            background-color: rgba(255, 255, 255, 0.5);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            z-index: 1;
            text-align: center;
            overflow-y: auto; /* Make the content inside the container scrollable */
        }

        .highlight {
            background-color: #EBECF0;
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
            opacity: 0.4;
        }

        .white-container {
            width: 1373px;
            padding-left:40px;
            height: 47px;
            background-color: #EBECF0;
            margin: 0 auto; 
        }

        .white-container1 {
            width: 1200px;
            padding-left:40px;
            height: 50px;
            background-color: #EBECF0;
            margin: 0 auto; 
        }

        .white-container2 {
            width: 1000px;
            padding-left:40px;
            height: 50px;
            background-color: #EBECF0;
            margin: 0 auto; 
        }

         .special-container {
   width:1300px;
   background-color: rgba(255, 255, 255, 0.5);
   height:220px;
    overflow-y: auto; /* Make the content inside the container scrollable */
}


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
            padding: 10px;
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
                                <a class="dropdown-item" href="Honeymoon.aspx">HONEYMOON ROOM</a>  
                            </div>
                        </li>
                        <li class="nav-item custom-dropdown">
                            <a class="nav-link" href="#" id="menuDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">MENU </a>
                            <div class="custom-dropdown-content dropdown-menu" aria-labelledby="menuDropdown">
                                <a class="dropdown-item" href="Starter.aspx">STARTER</a>
                                <a class="dropdown-item" href="Soup.aspx">SOUP </a>
                                <a class="dropdown-item" href="Maincourse.aspx">MAIN COURSE</a>
                                <a class="dropdown-item" href="Salads.aspx">SALADS </a>
                                <a class="dropdown-item" href="Icecream.aspx">ICE CREAM</a>
                                <a class="dropdown-item" href="Cake.aspx">CAKE</a> 
                            </div>
                        </li>
                     
                             <li class="nav-item"><a class="nav-link" href="Orders.aspx">ORDERS</a></li>
                        </li>
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
            
          
                <b>
                     <center> <asp:Label ID="Label1" runat="server" Text="~~~CONTACT US~~~" Font-Size="38px"></asp:Label></center>
                </b>
         
 <div class="special-container" id="specialContainer">
    <p style="font-size:23px; text-align:left;">
        <b>
            PHONE NUMBER&nbsp; : </b>&nbsp;022-XXXXXXXX, 022-XXXXXXXX, 022-XXXXXXXX, 022-XXXXXXXX<br />
        <b>EMAIL ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : </b>&nbsp;lodgeuisinehub@gmail.com, lodgeuisinehub.manager.@gmail.com, lodgeuisinehub.info@gmmail.com<br />
        <b>OFFICE HOURS</b>&nbsp;&nbsp;&nbsp;&nbsp; : 24 X 7 (at receptionist desk)<br />
        <b>ADDRESS</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;  abcd abcd ancd abcd abcd ancd abcd abcd ancd abcd abcd ancd abcd abcd ancd abcd</p>
</div>

  <center>
   <table>
      <tr>
         <td>
            <div class="individual" id="one">
               <div>
                 <asp:ImageButton ID="ImageButton6" runat="server"  ImageUrl="~/Images/privacy.png" Height="100px" Width="148px" OnClick="ImageButton6_Click"/>
               </div>
                                <b>  <asp:Label ID="Label2" runat="server" Text="PRIVACY"></asp:Label>

            </div>
         </td>
         <td>
            <div class="individual" id="two">
               <div>
                                    <asp:ImageButton ID="ImageButton1" runat="server"  ImageUrl="~/Images/cancel.jpg" Height="100px" Width="148px" OnClick="ImageButton1_Click"/>
               </div>
                <b> <asp:Label ID="Label3" runat="server" Text="CANCELLATION POLICY"></asp:Label>
            </div>
         </td>
         <td>
            <div class="individual" id="three">
               <div>
                                    <asp:ImageButton ID="ImageButton2" runat="server"  ImageUrl="~/Images/copy.jpg" Height="100px" Width="148px" OnClick="ImageButton2_Click"/>

               </div>
              <b>   <asp:Label ID="Label4" runat="server" Text="COPYRIGHT"></asp:Label>
            </div>
         </td>
      </tr></b>  
   </table>
</center>
        </div>

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    </form>
</body>
</html>
