<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Sharada.Home" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

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
            font-size:46px;
            font-family: 'Brush Script MT';
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
    animation: changeColor 5s infinite; 
}
        .navbar {
            padding: 10px;
        }

        .nav-link.active {
    background-color: gold;
    transition: background-color 0.3s ease; 
    color: black; /* Adjust text color for better visibility */
}

        mark {
  background-color: yellow;
  color: black;
}

          .nav-link:hover,
  .nav-link.active {
      background-color: gold;
      transition: background-color 0.3s ease; 
      color: black; /* Adjust text color for better visibility */
  }

    </style>
</head>
<body>
    <form id="form211" runat="server">
        <div class="container-fluid">

            <!-- Logo and Name -->
            <div class="logo-container">
                <div class="hotel-name">
                    <img src="Images/logo.png" alt="Hotel Logo" style="font-family:'Brush Script MT'" class="logo">LodgeCuisineHub  </div>  </div>

            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ml-auto mr-auto">
                        <!-- Add your navigation links here -->

                      
<li class="nav-item">
    <a class="nav-link " href="Home.aspx">HOME</a>
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

                                                               <li class="nav-item"><a class="nav-link" href="Orders.aspx"> ORDERS</a></li>


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
            </div> </div>


    <center>
            <br /><b>
        <marquee behavior="scroll" direction="left" style="font-size:28px;">Welcome to LodgeCuisineHub, where luxury meets comfort, and every stay is an unforgettable experience. Indulge in the finest dining, relax in luxurious accommodations, and let us elevate your journey to new heights of hospitality.
</marquee></b>

            <div style="text-align: center;">
                <asp:Image ID="Image2" runat="server" Height="600px" Width="1570px" ImageUrl="~/Images/hotel.png" />

            </div>
            <p style="font-size: 36px; font-weight: bold; color: #333; margin-top: 20px;">
                "Flavors to Satisfy, Ambiance to Delight"
            </p>
            <p style="margin: 5px 0; font-size: 20px; margin-bottom: 5px">Indulge in a culinary symphony at our restaurant and lounge, and every sip comes with a side of laughter.</p>
            <p style="margin: 5px 0; font-size: 20px; margin-bottom: 5px">where every dish is a harmonious blend of flavors, and every sip comes with a side of laughter.</p>
            <p style="margin: 5px 0; font-size: 20px; margin-bottom: 5px">and every sip comes with a side of laughter.</p>
            <p style="margin: 5px 0; font-size: 20px; margin-bottom: 5px">Our chefs craft a culinary experience that not only tantalizes your taste buds but also leaves you smiling.</p>
            <p style="margin: 5px 0; font-size: 20px; margin-bottom: 5px">Come for the exquisite dining, stay for the vibrant ambiance, and let the good times roll at</p>
            <p style="font-size: 37px; font-style: italic; margin: 5px 0; margin-bottom: 5px">LodgeCuisineHub</p>
            <p style="font-size: 37px; font-style: italic; margin: 5px 0; margin-bottom: 5px">&nbsp;</p>
        </center>


          <div class="image-container" style="position: relative;">
<asp:Image ID="Image1" runat="server" Height="415px" Width="642px"
    ImageUrl="~/Images/room.jpg" style="padding-left:40px; " /> <b> <i>
   <asp:Label ID="Label3" runat="server"  Text="EXPLORE OUR UNIQUE ROOMS"
    style="position: absolute; top: 10px; left: 900px; font-size: 29px;"/> </b> 

     <p style="position: absolute; top: 60px; left: 680px; font-size: 20px;">
    Indulge in luxury and comfort with our exquisite range of rooms.
         From the elegant Classic Comfort to the opulent Royal Suites, each space is meticulously designed for your utmost relaxation.
         Immerse yourself in a blend of modern sophistication and timeless charm. Welcome to a world where every stay is an experience, and every room is a haven crafted just for you."
     <br />          Explore the different types of room types available
     </p>     
                   <asp:Button ID="Button2" runat="server" Text="STANDARD ROOMS"  style="top:230px;position:absolute; left:700px; height: 48px; width: 388px; background-color:black; color:white; right: 730px;" OnClick="Button2_Click" />  
                   <asp:Button ID="Button1" runat="server" Text="DELUXE ROOM"  style="top:230px; position:absolute; left:1155px; height: 48px; width: 388px; background-color:black; color:white;" OnClick="Button1_Click" /> <br> 
                   <asp:Button ID="Button3" runat="server" Text="SUITE"  style="top:300px;position:absolute; left:700px; height: 48px; width: 388px; background-color:black; color:white; right: 730px;" OnClick="Button3_Click" />  
                   <asp:Button ID="Button4" runat="server" Text="FAMILY ROOM"  style="top:300px; position:absolute; left:1155px; height: 48px; width: 388px; background-color:black; color:white;" OnClick="Button4_Click" /> <br> 
                   <asp:Button ID="Button5" runat="server" Text="HONEYMOON ROOM"  style="top:370px; position:absolute; left:700px; height: 48px; width: 388px; background-color:black; color:white;" OnClick="Button5_Click" /> <br> 
              <br/> </div>


                  <div class="image-container" style="position: relative;">
<asp:Image ID="Image3" runat="server" Height="415px" Width="642px"
    ImageUrl="~/Images/food.jpg" style="padding-left:40px; " /> <b> <i>
   <asp:Label ID="Label1" runat="server"  Text="EXPLORE OUR CULINARY DELIGHTS"
    style="position: absolute; top: 10px; left: 900px; font-size: 29px;"/> </b> 

     <p style="position: absolute; top: 60px; left: 680px; font-size: 20px;">
   "Delight your senses with our culinary masterpieces. Our diverse menu features a symphony of flavors, blending the freshest ingredients with culinary expertise. From savory starters to indulgent mains and decadent desserts, each dish is a testament to our commitment to exceptional dining. Elevate your culinary experience with us, where every bite tells a tale of passion and perfection."
     </p>     
                   <asp:Button ID="Button6" runat="server" Text="STARTERS"  style="top:230px;position:absolute; left:700px; height: 48px; width: 388px; background-color:black; color:white; right: 730px;" />  
                   <asp:Button ID="Button7" runat="server" Text="SOUP"  style="top:230px; position:absolute; left:1155px; height: 48px; width: 388px; background-color:black; color:white;"  /> <br> 
                   <asp:Button ID="Button8" runat="server" Text="MAIN COURSE"  style="top:300px;position:absolute; left:700px; height: 48px; width: 388px; background-color:black; color:white; right: 730px;" />  
                   <asp:Button ID="Button9" runat="server" Text="SALADS"  style="top:300px; position:absolute; left:1155px; height: 48px; width: 388px; background-color:black; color:white;" OnClick="Button9_Click" /> 
                      <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                      

                      <br />
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                 
                      <br> 
                       <asp:Button ID="Button15" runat="server" Text="ICE CREAM"  style="top:370px; position:absolute; left:700px; height: 48px; width: 388px; background-color:black; color:white;" OnClick="Button15_Click" /> <br> 
<asp:Button ID="Button10" runat="server" Text="CAKE"  style="top:370px; position:absolute; left:1155px; height: 48px; width: 388px; background-color:black; color:white;" OnClick="Button10_Click" />
                                     </div>
 
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</form>
</body>
</html>