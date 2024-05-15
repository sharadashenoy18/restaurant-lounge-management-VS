using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sharada
{
    public partial class Ordered_food : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindGridView();
        }

        private void BindGridView()
        {
            if (Session["UserEmail"] != null)
            {
                string userEmail = Session["UserEmail"].ToString();
                string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\sharada\source\repos\Sharada\App_Data\Users.mdf;Integrated Security=True;";

                string query = "SELECT ItemName, ItemPrice, PaymentStatus ,order_time FROM BookedFoodOrders WHERE email = @Email";

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@Email", userEmail);
                        connection.Open();
                        SqlDataReader reader = command.ExecuteReader();
                        GridView1.DataSource = reader;
                        GridView1.DataBind();
                        reader.Close();
                    }
                }
            }
        }

    }
}