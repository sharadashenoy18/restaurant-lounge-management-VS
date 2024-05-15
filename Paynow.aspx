<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Paynow.aspx.cs" Inherits="Sharada.Paynow" %>
<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            background-image: url('Images/hotel.png');
            background-size: cover;
            background-repeat: no-repeat;
            opacity: 0.9;
            margin: 0; /* Reset default body margin */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Ensure full height */
        }

 

        .pay-now-container {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            text-align: center;
        }
    </style>
    <form action="Return.aspx" method="post" name="razorpayForm">
            <input id="razorpay_payment_id" type="hidden" name="razorpay_payment_id" />
            <input id="razorpay_order_id" type="hidden" name="razorpay_order_id" />
            <input id="razorpay_signature" type="hidden" name="razorpay_signature" />
        </form>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="pay-now-container">
        <b><center>
        <asp:Label ID="Label1" runat="server" style="font-size:25px;" Text="Like our delicious meals, your payment is handled with the utmost care and security. After confirming the payment , you will get a confirmation mail . So please check your gmail after payment"></asp:Label>
       <br /><br /> <button class="gem-button gem-button-size-tiny gem-button-style-outline gem-button-text-weight-normal gem-button-border-2 gem-button-empty" id="rzp-button1" style="width: 137px; background-color:black; color:white; height: 41px;">Pay Now</button><br /> <br />
    </div></b>
    <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
    <script>
        var orderId = "<%=orderId%>"
        var options = {
            "name": "<%=product%>",
            "description": "<%=product%>",
            "order_id": orderId,
            "image": "Images/logo.png",
            "prefill": {
                "name": "<%=name%>",
                "email": "<%=email%>",
                "contact": "<%=contact%>",
            },
            "notes": {
                "address": "<%=addressn%>",
                "merchant_order_id": "<%=orderIds%>",
            },
            "theme": {
                "color": "#F37254"
            }
        }
        options.theme.image_padding = false;
        options.handler = function (response) {
            document.getElementById('razorpay_payment_id').value = response.razorpay_payment_id;
            document.getElementById('razorpay_order_id').value = orderId;
            document.getElementById('razorpay_signature').value = response.razorpay_signature;
            document.razorpayForm.submit();
        };
        options.modal = {
            ondismiss: function () {
                console.log("This code runs when the popup is closed");
            },
            escape: true,
            backdropclose: false
        };
        var rzp = new Razorpay(options);
        document.getElementById('rzp-button1').onclick = function (e) {
            rzp.open();
            e.preventDefault();
        }
    </script>
</asp:Content>
