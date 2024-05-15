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
    public partial class Soup : System.Web.UI.Page
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
                string itemName = "Lenil soup";
                int itemPrice = 130;
                string pictureURL = "~/Images/lentil.jpg";
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
                string itemName = "Tom Yum soup";
                int itemPrice = 130;
                string pictureURL = "~/Images/tom yum.jpg";
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
                string itemName = "Chai Spiced Latte Ice Cream";
                int itemPrice = 130;
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

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (Session["UserEmail"] != null)
            {
                string email = Session["UserEmail"].ToString();
                string itemName = "Butternut soup";
                int itemPrice = 130;
                string pictureURL = "~/Images/Butternut.jpg";
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
                string itemName = "Vegetable soup";
                int itemPrice = 130;
                string pictureURL = "~/Images/vegetable.jpg";
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
                string itemName = "Mushroom soup";
                int itemPrice = 130;
                string pictureURL = "~/Images/Mushroom.jpg";
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
                string itemName = "Minestrone soup";
                int itemPrice = 130;
                string pictureURL = "~/Images/Minestrone.jpg";
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
                string itemName = "Tomato soup";
                int itemPrice = 130;
                string pictureURL = "~/Images/Tomato soup.jpg";
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