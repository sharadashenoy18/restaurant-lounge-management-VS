<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Familyoom.aspx.cs" Inherits="Sharada.Familyoom" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />

    <style>

          .nav-link:hover,
  .nav-link.active {
      background-color: gold;
      transition: background-color 0.3s ease; 
      color: black; /* Adjust text color for better visibility */
  }

            .overlay {
        display: none; /* Initially hidden */
        position: fixed; /* Fixed position */
        top: 0;
        left: 0;
        width: 100%; /* Cover entire width */
        height: 100%; /* Cover entire height */
        background-color: rgba(0, 0, 0, 0.6); /* Semi-transparent black color */
        z-index: 999; /* Ensure it's above other elements */
    }


         .lightbox-container {
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            padding: 20px;
            background-color: white;
            box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
            z-index: 1000;
        }

        .lightbox-img {
            max-width: 100%;
            height: auto;
            margin-bottom: 20px;
        }

         .lightbox-btn {
            background-color: black;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
        }

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

        
    .overlay {
        display: none; /* Initially hidden */
        position: fixed; /* Fixed position */
        top: 0;
        left: 0;
        width: 100%; /* Cover entire width */
        height: 100%; /* Cover entire height */
        background-color: rgba(0, 0, 0, 0.6); /* Semi-transparent black color */
        z-index: 999; /* Ensure it's above other elements */
    }

    </style>
</head>
<body>
    <form id="form21" runat="server">
        <div class="overlay" id="overlay"></div>

        <div class="container-fluid">

            <!-- Logo and Name -->
            <div class="logo-container">
                <h1 class="hotel-name">
                    <img src="Images/logo.png" alt="Hotel Logo" class="logo">LodgeCuisineHub  </h1>  </div>

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
                <center>
                    <br />
                    <b>
                    <asp:Label ID="Label1" runat="server" Text="~~~FAMILY ROOMS~~~" Font-Size="38px"></asp:Label> 
                    <br />
                    <hr/></b></center> </div> </div>


   <div class="image-container" style="position: relative; background-color:beige">
    <asp:Image ID="Image1" runat="server" Height="415px" Width="642px" ImageUrl="~/Images/fam1.png" style="padding-left:40px; " /> <b> <i>
       <asp:Label ID="Label2" runat="server"  Text="ROYAL HEAVEN SUITE" style="position: absolute; top: 10px; left: 1000px; font-size: 29px;"/> </b> 
         <p style="position: absolute; top: 60px; left: 680px; font-size: 20px;">
        The "Classic Comfort Room" offers a cozy haven with elegant decor and plush bedding.Guests enjoy essential amenities, including a private bathroom and work desk.Complimentary Wi-Fi, a coffee/tea station, and personalized service ensure a comfortable stay.With attentive staff and thoughtful features, it's a perfect choice for a relaxing retreat.</p>
        <p style="position: absolute; top: 160px; left: 700px; font-size: 20px;">
        <br/> <span class="arrow">&#9656;</span> <b> AREA : </b> 40sq Mt
        <br/> <span class="arrow">&#9656;</span><b> PERSONS : </b> Upto 3 guests
        <br/><span class="arrow">&#9656;</span> <b> WIFI : </b> Free Upto 3 devices
        <br/><span class="arrow">&#9656;</span> <b> BED : </b>  King / Twin
        <br/><span class="arrow">&#9656;</span><b> PRICE : </b>&#8377;  7,500 per day</p>
<asp:Button ID="Button2" runat="server" Text="CHECK AVAILABILITY" style="top:360px; position:absolute; left:1050px; height: 48px; width: 288px; background-color:black; color:white;" OnClick="Button2_Click" />
       <asp:Button ID="Button1" runat="server" Text="VIEW MORE PHOTOS"  OnClientClick="openLightbox(0); return false;" style="top:360px; position:absolute; left:720px; height: 48px; width: 288px; background-color:black; color:white;" />
       <br/> </div>  <br/><br/>

        <div class="image-container" style="position:relative; background-color:beige">
            <asp:Image ID="Image2" runat="server" Height="415px" Width="642px" ImageUrl="~/Images/fam2.png" style="padding-left:40px; " /> <b> <i>
       <asp:Label ID="Label3" runat="server"  Text="GRAND RETREAT SUITE" style="position: absolute; top: 10px; left: 1000px; font-size: 29px;"/> </b> 
         <p style="position: absolute; top: 60px; left: 680px; font-size: 20px;">
Indulge in the ultimate retreat with our opulent "Comfort Bliss Room," meticulously crafted to offer a harmonious blend of luxury, comfort, and tranquility. Immerse yourself in the plush surroundings, where every detail has been thoughtfully curated to enhance your experience. From the sumptuous furnishings to the state-of-the-art amenities, prepare to be enveloped in an atmosphere of pure bliss and relaxation.        <br/>
                         <br />
             <span class="arrow">&#9656;</span> <b> AREA : 6</b>0sq Mt 
             <br /><span class="arrow">&#9656;</span><b> PERSONS : </b> Upto 5&nbsp; guests 
          <br/>   <span class="arrow">&#9656;</span> <b> WIFI : </b> Free Upto 5 devices
        <br/><span class="arrow">&#9656;</span> <b> BED : </b>  King / Twin
        <br/><span class="arrow">&#9656;</span><b> PRICE : </b>&#8377;  10,000 per day</p>
            <asp:Button ID="Button4" runat="server" Text="CHECK AVAILABILITY" style="top:360px; position:absolute; left:1050px; height: 48px; width: 288px; background-color:black; color:white;" OnClick="Button4_Click" />
       <asp:Button ID="Button5" runat="server" Text="VIEW MORE PHOTOS"  OnClientClick="openLightbox(0); return false;" style="top:360px; position:absolute; left:720px; height: 48px; width: 288px; background-color:black; color:white;" />
            <br/> </div>  <br/>  <hr/> <br/><br/>

         <div id="lightbox" class="lightbox-container">
            <img id="lightbox-img" class="lightbox-img" src="" alt="Additional Photo">

<button class="lightbox-btn" type="button" onclick="prevImage()">Previous</button>
<button class="lightbox-btn" type="button" onclick="nextImage()">Next</button>
<button class="lightbox-btn" type="button" onclick="closeLightbox()">Close</button>
        </div>
            <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

<script>
    let currentIndex = 0;
    const images = [
    "<%= ResolveUrl("~/Images/living.jpg") %>",
    "<%= ResolveUrl("~/Images/bathroom.jpg") %>",
        "<%= ResolveUrl("~/Images/view.png") %>",
        "<%= ResolveUrl("~/Images/office.png") %>"
    ];

    function openLightbox() {
        currentIndex = 0;
        showImage();
        document.getElementById('lightbox').style.display = 'block';
        document.getElementById('overlay').style.display = 'block'; // Show overlay

    }

    function closeLightbox() {
        document.getElementById('lightbox').style.display = 'none';
    }

    function showImage() {
        document.getElementById('lightbox-img').src = images[currentIndex];
        document.getElementById('overlay').style.display = 'none'; // Hide overlay
    }

    function nextImage() {
        currentIndex = (currentIndex + 1) % images.length;
        showImage();
    }

    function prevImage() {
        currentIndex = (currentIndex - 1 + images.length) % images.length;
        showImage();
    }
</script>

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</form>
</body>
</html>

