<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="copy.aspx.cs" Inherits="Sharada.copy" %>

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
                  <asp:Label ID="Label1" runat="server" Text="~~~COPYRIGHT POLICY~~~" Font-Size="38px"></asp:Label>
               </center>
            </b>
          <div class="special-container" id="copyrightContainer">
    <p style="font-size: 26px; text-align: justify;">
        &copy; 2024 LodgeCuisineHub. All rights reserved.<br /><br />
        
        &emsp; This website and its content, including but not limited to text, images, graphics, logos, audio clips, video clips, data compilations, and software, are the property of LodgeCuisineHub or its content suppliers and are protected by international copyright laws. The compilation of all content on this website is the exclusive property of LodgeCuisineHub and is protected by copyright law.<br /><br />
        
        &emsp; Any redistribution or reproduction of part or all of the contents in any form is prohibited other than the following:<br />
        &emsp; &emsp; - You may print or download extracts for your personal and non-commercial use only.<br />
        &emsp; &emsp; - You may copy the content to individual third parties for their personal use, but only if you acknowledge the website as the source of the material.<br /><br />
        
        &emsp; You may not, except with our express written permission, distribute or commercially exploit the content. Nor may you transmit it or store it in any other website or other form of electronic retrieval system.<br /><br />
        
        &emsp; "LodgeCuisineHub," the LodgeCuisineHub logo, and other marks indicated on our website are registered trademarks of LodgeCuisineHub or its subsidiaries, affiliates, or content suppliers. These marks may not be used in connection with any product or service that is not provided by LodgeCuisineHub, in any manner that is likely to cause confusion among customers, or in any manner that disparages or discredits LodgeCuisineHub. All other trademarks not owned by LodgeCuisineHub that appear on this website are the property of their respective owners, who may or may not be affiliated with, connected to, or sponsored by LodgeCuisineHub.<br /><br />
        
        &emsp; If you believe that your work has been copied and is accessible on this site in a way that constitutes copyright infringement, or that your intellectual property rights have been otherwise violated, please contact LodgeCuisineHub at contact@example.com for further assistance.<br /><br />
        
        &emsp; Thank you for your cooperation and respect for intellectual property rights.
    </p>
</div>





         </div>
         <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
         <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
      </form>
   </body>
</html>