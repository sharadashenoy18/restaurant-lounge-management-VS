<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="invoice.aspx.cs" Inherits="Sharada.invoice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
          .logo {
      width: 146px;
      height: 141px;
      margin-right: 10px;
  }

           .logo-container {
     text-align: center;
     margin-top: 10px;
     display: flex;
     align-items: center;
     justify-content: center;
 }

                   .hotel-name {
    font-size: 100px; /* Adjust font size */
    font-weight: bold; /* Add font weight */
    margin-top: 10px;
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <div class="logo-container">
     <h1 class="hotel-name">
         <img src="Images/logo.png" alt="Hotel Logo" class="logo">LodgeCuisineHub
     </h1>
 </div>
        </div>
    </form>
</body>
</html>
