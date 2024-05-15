using System.Configuration;
using System.Data.SqlClient;
using System;
using System.Web.UI.WebControls;

namespace Sharada
{
    public partial class Orders : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
                BindGridViewData1();
            }
        }
        private void BindGridView()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["sqlstring"].ConnectionString;

            string query = "SELECT ItemName, ItemPrice, Id , PictureURL FROM Food WHERE email = @Email";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Email", Session["UserEmail"]);
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();
                    GridView1.DataSource = reader;
                    GridView1.DataBind();
                    reader.Close();
                    connection.Close();
                }
            }
        }



        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void DeleteRecordFromDatabase(string itemName)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["sqlstring"].ConnectionString;
            string query = "DELETE FROM Food WHERE ItemName = @ItemName AND email = @Email AND Id =@Id";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@ItemName", itemName);
                    command.Parameters.AddWithValue("@Email", Session["UserEmail"]);

                    connection.Open();
                    command.ExecuteNonQuery();
                    connection.Close();
                }
                BindGridView();
                BindGridViewData1();
            }
        }



        protected void Button1_Click(object sender, EventArgs e)
        {

            Delete();

            // Redirect to the food page
            Response.Redirect("food.aspx");
        }
        void Delete()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["sqlstring"].ConnectionString;
            string tableName = "Food"; // Replace with your table name

            string query = $"TRUNCATE TABLE {tableName}";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();
                    command.ExecuteNonQuery();
                    connection.Close();
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["sqlstring"].ConnectionString;
            string query = "SELECT SUM(ItemPrice) AS TotalPrice FROM Food WHERE email = @Email";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Email", Session["UserEmail"]);
                    connection.Open();
                    object result = command.ExecuteScalar();
                    if (result != null)
                    {
                        if (Rb2.Checked)
                        {
                            decimal totalPrice = Convert.ToDecimal(result);
                            Session["totalPrices"] = totalPrice;
                            totalPrice += 100;
                            Label1.Text = "Total Price: " + totalPrice;
                        }
                        else
                        {
                            decimal totalPrice = Convert.ToDecimal(result);
                            Session["totalPrices"] = totalPrice;
                            Label1.Text = "Total Price: " + totalPrice;
                        }
                    }
                    connection.Close();
                }
            }

        }
        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            // Get the button that raised the event
            Button deleteButton = (Button)sender;

            // Get the ItemName from the CommandArgument of the button
            string itemName = deleteButton.CommandArgument.ToString();

            // Call the method to delete the row from the database
            DeleteRowFromDatabase(itemName);

            // Rebind the GridView to reflect the changes
            BindGridView();
        }

        private void DeleteRowFromDatabase(string itemName)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["sqlstring"].ConnectionString;
            string query = "DELETE FROM Food WHERE ItemName = @ItemName AND email = @Email";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@ItemName", itemName);
                    command.Parameters.AddWithValue("@Email", Session["UserEmail"]);
                    connection.Open();
                    command.ExecuteNonQuery();
                    connection.Close();
                }
            }
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            Response.Redirect("addr.aspx");
        }

        protected void BindGridViewData1()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["sqlstring"].ConnectionString;
            string query = "SELECT addr, state, pincode, road FROM Login";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();

                    SqlDataReader reader = command.ExecuteReader();

                    string labelText = "";
                    while (reader.Read())
                    {
                        string addr = reader["addr"].ToString();
                        string road = reader["road"].ToString();
                        string state = reader["state"].ToString();
                        string pincode = reader["pincode"].ToString();

                        // Check if any field is empty or null before adding to labelText
                        if (!string.IsNullOrEmpty(addr) || !string.IsNullOrEmpty(road) || !string.IsNullOrEmpty(state) || !string.IsNullOrEmpty(pincode))
                        {
                            labelText += $"Address: {addr}, Road: {road}, State: {state}, Pincode: {pincode}<br />";
                        }
                    }
                    Label3.Text = labelText;

                    reader.Close();
                    connection.Close();
                }
            }
        }


    }
}



