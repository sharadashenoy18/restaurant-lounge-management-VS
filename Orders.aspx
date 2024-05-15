<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="Sharada.Orders" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
   <head runat="server">
      <title></title>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <!-- Bootstrap CSS -->
      <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
      <style>
         input::placeholder {
         font-size: 32px; /* Adjust the font size according to your preference */
         }
         .nav-link:hover,
         .nav-link.active {
         background-color: gold;
         transition: background-color 0.3s ease;
         color: black; /* Adjust text color for better visibility */
         }
         .container-wrapper {
         display: flex;
         justify-content: space-between;
         margin-left: 25px;
         margin-right: 25px;
         }
         .special-container
         {
         width: calc(70% - 15px); /* Subtracting margin */
         height: 550px;
         background-color: rgba(255, 255, 255, 0.8);
         padding: 20px;
         border-radius: 10px;
         box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
         z-index: 1;
         text-align: center;
         overflow-y: auto;
         }
         .special-container2 {
         width: calc(30% - 10px); /* Subtracting margin */
         height: 550px;
         background-color: rgba(255, 255, 255, 0.8);
         padding: 20px;
         border-radius: 10px;
         box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
         z-index: 1;
         text-align: center;
         overflow-y: auto;
         }
         .special-container3{
         width:670px;
         height:45px;
         background-color:antiquewhite;
         }
         .highlight {
         background-color: #ebecf0;
         }
         body::before {
         content: "";
         background-image: url('Images/hotel.png');
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
         .grid {
         width: 800px;
         height: 510px;
         display: flex;
         justify-content: center;
         align-items: center;
         margin: 5px;
         }
      </style>
   </head>
   <body>
      <form id="form1" runat="server">
         <br />
         <div class="container-wrapper">
            <div class="special-container" id="specialContainer">
               <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderColor="Black"
    style="background-color:white;" Font-Bold="True" Font-Size="X-Large"
    OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CaptionAlign="Top" CssClass="grid1" Height="500px" Width="1000px">
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" />
        <asp:TemplateField HeaderText="Image">
            <ItemTemplate>
                <center>
                    <asp:Image ID="ImgItem" runat="server" Height="200" Width="300" style="padding:20px;"
                        ImageUrl='<%# Eval("PictureURL") %>' />
                </center>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="ItemName" HeaderText="Item Name" />
        <asp:BoundField DataField="ItemPrice" HeaderText="Price" />
        <asp:TemplateField HeaderText="Actions">
            <ItemTemplate>
                <asp:Button ID="DeleteButton" runat="server" Text="Delete" CssClass="btn btn-danger"
                    CommandName="Delete" CommandArgument='<%# Eval("ItemName") %>' OnClick="DeleteButton_Click" />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>

            </div>
            <div class="special-container2" id="specialContainer2">
               <b>
                  <center>
                     <asp:Label ID="Label2" runat="server" Text="MODE OF ORDERING?" style="font-size:26px;"></asp:Label>
                  </center>
               </b>
               <br />
               <center>
                  <table >
                     <tr>
                        <td>
                           <asp:RadioButton ID="RadioButton1" runat="server" Text="Takeaway" style="font-size:23px;" GroupName="a" />
                        </td>
                     </tr>
                     <br />
                     <tr>
                        <td>
                           <asp:RadioButton ID="Rb2" runat="server" Text="Home delivery" style="font-size:23px;" GroupName="a" />
                        </td>
                     </tr>
                  </table>
                  <asp:Label ID="Label4" runat="server" Text="* for home delivery extra charges of ₹100 will be applicable"></asp:Label>
               </center>
               <br /><br />
               <div class="special-container3" id="three" style="display:none;">
                  <div>
                     <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
                  </div>
                  &nbsp <br /> <br />
                  <asp:Button ID="Button12" runat="server" Text="EDIT IT" OnClick="Button12_Click" style="height:35px; width:190px; background-color:#007bff;" />
               </div>
               <br /><br /><br />
               <div class="special-container3" id="four" style="display:none;">
                  <table>
                     <tr>
                        <td>
                           <asp:Label ID="Label5" runat="server" Text="Enter Address"></asp:Label>
                        </td>
                        <td>
                           <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                     </tr>
                     <tr>
                        <td>
                           <asp:Label ID="Label11" runat="server" Text="Enter road name"></asp:Label>
                        </td>
                        <td>
                           <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                     </tr>
                     <tr>
                        <td>
                           <asp:Label ID="Label6" runat="server" Text="Enter state"></asp:Label>
                        </td>
                        <td>
                           <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                     </tr>
                     <tr>
                        <td>
                           <asp:Label ID="Label7" runat="server" Text="Enter pincode"></asp:Label>
                        </td>
                        <td>
                           <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </td>
                     </tr>
                  </table>
                  <br />
                  <asp:Button ID="Button34" runat="server" Text="UPDATE IN DB" style="height:35px; width:190px; background-color:#007bff;"  />
                  &nbsp &nbsp &nbsp &nbsp &nbsp
                  <asp:Button ID="Button35" runat="server" Text="ONLY FOR THIS TIME" style="height:35px; width:190px; background-color:#007bff;" />
               </div>
               <br /><br />
            </div>
         </div>
         <center>
            <br />
            <asp:Label ID="Label1" runat="server" Text="" style="font-size:24px; background-color:white"></asp:Label>
            &nbsp; &nbsp; &nbsp; &nbsp;  
            <asp:Button ID="Button2" runat="server" Text="TOTAL PRICE" OnClick="Button2_Click"  style="background-color:#007bff;" Height="48px" Width="215px"/>
            <br /> <br />
            <asp:Button ID="Button1" runat="server" Text="ORDER NOW" OnClick="Button1_Click" Width="215px" style="background-color:#007bff;" Height="48px" />
         </center>
         <script type="text/javascript">
             window.onload = function () {
                 // Initially hide the special-container3
                 var specialContainer3 = document.getElementById('three');
                 specialContainer3.style.display = 'none';
                 var specialContainer4 = document.getElementById('four');
                 specialContainer4.style.display = 'none';
                 var radioButton1 = document.getElementById('<%= RadioButton1.ClientID %>');
                var rb2 = document.getElementById('<%= Rb2.ClientID %>');
            radioButton1.addEventListener('change', toggleSpecialContainer3);
            rb2.addEventListener('change', toggleSpecialContainer3);
            var editButton = document.getElementById('<%= Button12.ClientID %>');
            editButton.addEventListener('click', toggleSpecialContainer4);
            };
            function toggleSpecialContainer3() {
            var specialContainer3 = document.getElementById('three');
            var rb2 = document.getElementById('<%= Rb2.ClientID %>');

                 // Check if Rb2 is checked, then toggle visibility of special-container3
                 if (rb2.checked) {
                     specialContainer3.style.display = 'block';
                 } else {
                     specialContainer3.style.display = 'none';
                 }
             }
         </script>
      </form>
      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
   </body>
</html>