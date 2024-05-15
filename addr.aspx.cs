using System;
using System.Configuration;
using System.Data.SqlClient;

namespace Sharada
{
    public partial class addr : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Check if the email session variable is set
            if (Session["UserEmail"] != null && !string.IsNullOrEmpty(TextBox1.Text))
            {
                // Check if the entered email matches the session email
                if (TextBox1.Text == Session["UserEmail"].ToString())
                {
                    // Validate and update address details
                    if (!string.IsNullOrEmpty(TextBox2.Text) && !string.IsNullOrEmpty(TextBox3.Text) && !string.IsNullOrEmpty(TextBox4.Text) && !string.IsNullOrEmpty(TextBox5.Text))
                    {
                        // Database connection string
                        string connectionString = ConfigurationManager.ConnectionStrings["sqlstring"].ConnectionString;

                        // SQL query to update address details
                        string query = "UPDATE Login SET [addr] = @address, [road] = @road, [state] = @state, [pincode] = @pincode WHERE [email] = @email";

                        // Create SQL connection and command objects
                        using (SqlConnection connection = new SqlConnection(connectionString))
                        {
                            using (SqlCommand command = new SqlCommand(query, connection))
                            {
                                // Set parameters
                                command.Parameters.AddWithValue("@address", TextBox2.Text);
                                command.Parameters.AddWithValue("@road", TextBox3.Text);
                                command.Parameters.AddWithValue("@state", TextBox4.Text);
                                command.Parameters.AddWithValue("@pincode", TextBox5.Text);
                                command.Parameters.AddWithValue("@email", TextBox1.Text);

                                // Open connection and execute query
                                connection.Open();
                                command.ExecuteNonQuery();
                            }
                        }

                        // Display success message
                        Response.Write("<script>alert('Address updated successfully!');</script>");
                    }
                    else
                    {
                        // Display error message if any field is empty
                        Response.Write("<script>alert('Please fill out all fields!');</script>");
                    }
                }
                else
                {
                    // Display error message for incorrect email
                    Response.Write("<script>alert('Please enter the correct email address!');</script>");
                }
            }
            else
            {
                // Display error message for missing session email
                Response.Write("<script>alert('Please enter your email address!');</script>");
            }
        }
    }
}
