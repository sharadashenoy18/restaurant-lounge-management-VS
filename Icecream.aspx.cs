using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sharada
{
    public partial class Icecream : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void InsertIntoBookedFoodOrders(string foodName, string userEmail, int itemPrice)
        {
            string paymentStatus = "Paid Online";
            DateTime orderDateTime = DateTime.Now; // Get the current date and time
            string query = "INSERT INTO BookedFoodOrders (ItemName, email, ItemPrice, PaymentStatus, order_time) VALUES (@FoodName, @Email, @ItemPrice, @PaymentStatus, @OrderDateTime)";
            string connectionString = ConfigurationManager.ConnectionStrings["sqlstring"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@FoodName", foodName);
                    command.Parameters.AddWithValue("@Email", userEmail);
                    command.Parameters.AddWithValue("@ItemPrice", itemPrice);
                    command.Parameters.AddWithValue("@PaymentStatus", paymentStatus);
                    command.Parameters.AddWithValue("@OrderDateTime", orderDateTime);
                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }
        }
        private void InsertItemIntoDatabase(string email, string itemName, decimal itemPrice, string pictureURL)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["sqlstring"].ConnectionString;
            string query = "INSERT INTO Food (email, ItemName, ItemPrice, PictureURL) VALUES (@Email, @ItemName, @ItemPrice, @PictureURL)";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Email", email);
                    command.Parameters.AddWithValue("@ItemName", itemName);
                    command.Parameters.AddWithValue("@ItemPrice", itemPrice);
                    command.Parameters.AddWithValue("@PictureURL", pictureURL);
                    connection.Open();
                    int n = command.ExecuteNonQuery();
                    if (n > 0)
                    {
                        Response.Write("<script>alert('inserted');</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('noo');</script>");

                    }
                }
            }
        }

        protected void ButtonOrderNow1_Click(object sender, EventArgs e)
        {
            if (Session["UserEmail"] != null)
            {
                string email = Session["UserEmail"].ToString();
                string itemName = "Chai Spiced Latte Ice Cream";
                int itemPrice = 98;
                string pictureURL = "~/Images/Chai Spiced Latte.png";
                InsertItemIntoDatabase(email, itemName, itemPrice, pictureURL);
                InsertIntoBookedFoodOrders(itemName, email, itemPrice);
                Response.Redirect("Orders.aspx");
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["UserEmail"] != null)
            {
                string email = Session["UserEmail"].ToString();
                string itemName = "Gulkand Almond ice cream";
                int itemPrice = 100;
                string pictureURL = "~/Images/Gulkand Almond.png";
                InsertItemIntoDatabase(email, itemName, itemPrice, pictureURL);
                InsertIntoBookedFoodOrders(itemName, email, itemPrice);

                Response.Redirect("Orders.aspx");
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Session["UserEmail"] != null)
            {
                string email = Session["UserEmail"].ToString();
                string itemName = "Kulfi Falooda ice cream";
                int itemPrice = 105;
                string pictureURL = "~/Images/Kulfi Falooda.jpg";
                InsertItemIntoDatabase(email, itemName, itemPrice, pictureURL);
                InsertIntoBookedFoodOrders(itemName, email, itemPrice);

                Response.Redirect("Orders.aspx");
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (Session["UserEmail"] != null)
            {
                string email = Session["UserEmail"].ToString();
                string itemName = "Coconut Curry ice cream";
                int itemPrice = 109;
                string pictureURL = "~/Images/Coconut Curry.png";
                InsertItemIntoDatabase(email, itemName, itemPrice, pictureURL);
                InsertIntoBookedFoodOrders(itemName, email, itemPrice);

                Response.Redirect("Orders.aspx");
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (Session["UserEmail"] != null)
            {
                string email = Session["UserEmail"].ToString();
                string itemName = "Balsamic Strawberry ice cream";
                int itemPrice = 109;
                string pictureURL = "~/Images/Balsamic Strawberry.jpg";
                InsertItemIntoDatabase(email, itemName, itemPrice, pictureURL);
                InsertIntoBookedFoodOrders(itemName, email, itemPrice);

                Response.Redirect("Orders.aspx");
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            if (Session["UserEmail"] != null)
            {
                string email = Session["UserEmail"].ToString();
                string itemName = "Lavender Honey ice cream";
                int itemPrice = 119;
                string pictureURL = "~/Images/Lavender Honey.jpg";
                InsertItemIntoDatabase(email, itemName, itemPrice, pictureURL);
                InsertIntoBookedFoodOrders(itemName, email, itemPrice);

                Response.Redirect("Orders.aspx");
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            if (Session["UserEmail"] != null)
            {
                string email = Session["UserEmail"].ToString();
                string itemName = "Black Forest ice cream";
                int itemPrice = 118;
                string pictureURL = "~/Images/Black Forest.png";
                InsertItemIntoDatabase(email, itemName, itemPrice, pictureURL);
                InsertIntoBookedFoodOrders(itemName, email, itemPrice);

                Response.Redirect("Orders.aspx");
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            if (Session["UserEmail"] != null)
            {
                string email = Session["UserEmail"].ToString();
                string itemName = "Salted Caramel Crunch";
                int itemPrice = 120;
                string pictureURL = "~/Images/Salted Caramel Crunch.png";
                InsertItemIntoDatabase(email, itemName, itemPrice, pictureURL);
                InsertIntoBookedFoodOrders(itemName, email, itemPrice);

                Response.Redirect("Orders.aspx");
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}