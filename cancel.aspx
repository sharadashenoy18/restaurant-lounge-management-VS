<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cancel.aspx.cs" Inherits="Sharada.cancel" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
   <head runat="server">
      <title></title>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <!-- Bootstrap CSS -->
      <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
      <style>
         .special-container {
         margin-left: auto;
         margin-right: auto;
         width: 1450px; /* Adjust the width as needed */
         height: 600px;
         background-color: rgba(255, 255, 255, 0.8);
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
      </style>
   </head>
   <body>
      <form id="form1" runat="server">
         <div class="container-fluid">
            <b>
               <center>
                  <br />
                  <asp:Label ID="Label1" runat="server" Text="~~~CANCELLATION POLICY~~~" Font-Size="38px"></asp:Label>
               </center>
            </b>
           <div class="special-container" id="cancellationContainer">
    <p style="font-size: 20px; text-align: left;">
        <b>
            Cancellation Policy
        </b><br />
        &emsp; At LodgeCuisineHub, we value your patronage and strive to provide the best possible experience for all our guests. We understand that sometimes plans change, and we want to make the cancellation process as smooth as possible. Below is our comprehensive cancellation policy regarding room reservations and food delivery:<br />
        <br />
        &emsp; <b>Room Reservations:</b> If you need to cancel your room reservation, we kindly ask for at least 24 hours' notice prior to your scheduled check-in time to avoid any cancellation fees. Cancellations made within 24 hours of the check-in time may be subject to a cancellation fee equivalent to one night's stay. In case of a no-show, the full amount of the reservation will be charged.<br />
        <br />
        &emsp; <b>Food Delivery:</b> For food delivery orders, cancellations must be made at least 2 hours before the scheduled delivery time. Orders canceled within 2 hours of the scheduled delivery time may be subject to a cancellation fee equivalent to 50% of the total order value. If the delivery has already been dispatched, the full amount of the order will be charged.<br />
        <br />
        &emsp; <b>Exceptions:</b> Please note that certain promotional rates, special offers, or peak periods may have different cancellation policies, which will be clearly communicated to you at the time of booking.<br />
        <br />
        &emsp; <b>Contact Us:</b> If you need to cancel your reservation or have any questions regarding our cancellation policy, please do not hesitate to contact us at contact@example.com or call us at [Your Phone Number]. Our dedicated team is available to assist you.<br />
        <br />
        &emsp; We appreciate your understanding and cooperation regarding our cancellation policy. Thank you for choosing LodgeCuisineHub for your dining and accommodation needs. We look forward to serving you soon!
    </p>
</div>



         </div>
         <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
         <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
      </form>
   </body>
</html>