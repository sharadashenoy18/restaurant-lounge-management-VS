<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Privacy.aspx.cs" Inherits="Sharada.Privacy" %>

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
                         <asp:Label ID="Label1" runat="server" Text="~~~PRIVACY POLICY~~~" Font-Size="38px"></asp:Label></center>
                </b>
         
 <div class="special-container" id="specialContainer">
    <p style="font-size: 20px; text-align: left;">
        <b>
            Privacy Policy
        </b><br />
        &emsp; At LodgeCuisineHub, we take your privacy seriously. We are committed to protecting the personal information you entrust to us. Our privacy policy outlines the measures we take to ensure the safety and security of your data:<br />
        <br />
        &emsp; <b>Data Collection:</b> We collect personal information such as name, email address, phone number, and billing information solely for the purpose of processing bookings, orders, and improving our services.<br />
        <br />
        &emsp; <b>Data Security:</b> We employ industry-standard security measures to safeguard your information from unauthorized access, disclosure, alteration, or destruction.<br />
        <br />
        &emsp; <b>Data Usage:</b> Your personal information is used only for the intended purposes stated at the time of collection. We do not share, sell, or rent your data to third parties without your consent, except where required by law.<br />
        <br />
        &emsp; <b>Data Access:</b> You have the right to access, update, or delete your personal information at any time. You may also opt-out of receiving marketing communications from us.<br />
        <br />
        &emsp; <b>Cookies:</b> We use cookies and similar technologies to enhance your browsing experience on our website. You can choose to accept or reject cookies through your browser settings.<br />
        <br />
        &emsp; <b>Third-Party Links:</b> Our website may contain links to third-party websites. We are not responsible for the privacy practices or content of these websites.<br />
        <br />
        &emsp; <b>Policy Updates:</b> We may update our privacy policy from time to time to reflect changes in our practices or legal requirements. Any updates will be posted on this page.<br />
        <br />
        &emsp; By using our services, you consent to the collection and use of your personal information as outlined in this privacy policy. If you have any questions or concerns about our privacy practices, please contact us at contact@example.com.
    </p>
</div>


 
        </div>

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    </form>
</body>
</html>
