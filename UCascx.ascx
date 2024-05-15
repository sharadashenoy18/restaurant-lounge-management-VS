<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCascx.ascx.cs" Inherits="Sharada.UCascx" %>

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
            font-size: 32px;
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

        .hotel-name {
            color: black;
            font-style: italic;
            font-size: 75px;
            margin-top: 10px;
        }

        .navbar {
            padding: 10px;
        }
    </style>
</head>
<body>
    <form id="form21" >
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

                        <li class="nav-item custom-dropdown">
                            <a class="nav-link" href="#" id="summaryDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                SUMMARY
                            </a>
                            <div class="custom-dropdown-content dropdown-menu" aria-labelledby="summaryDropdown">
                               <a class="dropdown-item" href="Bookings.aspx">YOUR BOOKINGS</a>
<a class="dropdown-item" href="Orders.aspx">YOUR ORDERS</a>  </div>  </li>

                        <li class="nav-item"><a class="nav-link" href="Review.aspx">REVIEWS</a></li>
                        <li class="nav-item"><a class="nav-link" href="#">CONTACT US</a></li>
                        <li class="nav-item"><a class="nav-link" href="#">FEEDBACK</a></li>
                        <li class="nav-item"><a class="nav-link" href="FAQS.aspx">FAQs</a></li>
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
   
</form>
</body>
</html>

