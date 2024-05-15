using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sharada
{
    public partial class Cake : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void InsertIntoBookedFoodOrders(string foodName, string userEmail, int itemPrice)
        {
            string paymentStatus = "Paid Online";
            DateTime orderDateTime = DateTime.Now; // Get the current date and time
            string query = "INSERT INTO BookedFoodOrders (ItemName, email, ItemPrice, PaymentStatus, order_time) VALUES (@FoodName, @Email, @ItemPrice, @PaymentStatus, @OrderDateTime)";
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\sharada\source\repos\Sharada\App_Data\Users.mdf;Integrated Security=True";
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
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\sharada\source\repos\Sharada\App_Data\Users.mdf;Integrated Security=True;";
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

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (Session["UserEmail"] != null)
            {
                string email = Session["UserEmail"].ToString();
                string itemName = "Mango Tango Delight:";
                int itemPrice = 1700;
                string pictureURL = "~/Images/Mango Tango Delight.jpg";
                InsertItemIntoDatabase(email, itemName, itemPrice, pictureURL);
                InsertIntoBookedFoodOrders(itemName, email, itemPrice);
                Response.Redirect("Orders.aspx");
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
        protected void ButtonOrderNow1_Click(object sender, EventArgs e)
        {
            if (Session["UserEmail"] != null)
            {
                string email = Session["UserEmail"].ToString();
                string itemName = "Velvet Dream Cake";
                int itemPrice = 1200;
                string pictureURL = "~/Images/Velvet_Dream_Cake.png";
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
                string itemName = "Triple Chocolate Delight";
                int itemPrice = 1300;
                string pictureURL = "~/Images/Triple Chocolate Delight.jpg";
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
                string itemName = "Pistachio Perfection Cake";
                int itemPrice = 1500;
                string pictureURL = "~/Images/Pistachio Perfection Cake.jpg";
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
                string itemName = "Coffee Caramel Indulgence";
                int itemPrice = 1750;
                string pictureURL = "~/Images/Coffee Caramel Indulgence.png";
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
                string itemName = "Honey Lavender Love";
                int itemPrice = 1700;
                string pictureURL = "~/Images/Honey Lavender Love.jpg";
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
                string itemName = "Oreo Chocolate Delight";
                int itemPrice = 1600;
                string pictureURL = "~/Images/Oreo.png";
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
                string itemName = "Butterscotch Delight";
                int itemPrice = 1500;
                string pictureURL = "~/Images/Butterscotch.png";
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