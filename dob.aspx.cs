using System;
using System.Configuration;
using System.Data.SqlClient;

namespace Sharada
{
    public partial class dob : System.Web.UI.Page
    {
        protected void Button1_Click(object sender, EventArgs e)
        {
            // Retrieve user input
            string email = TextBox1.Text;
            string dob = txtDate.Text; // Date of birth

            // Validate user input (you may need more thorough validation)
            if (string.IsNullOrEmpty(email) || string.IsNullOrEmpty(dob))
            {
                // Display error message if any field is empty
                Response.Write("<script>alert('Please fill in all fields.');</script>");
                return;
            }

            try
            {
                // Establish connection to database
                string connectionString = ConfigurationManager.ConnectionStrings["sqlstring"].ConnectionString;


                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    // Update the dob column in the Login table
                    string query = "UPDATE Login SET dob = @dob WHERE email = @email";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        // Add parameters to prevent SQL injection
                        command.Parameters.AddWithValue("@dob", dob);
                        command.Parameters.AddWithValue("@email", email);

                        // Execute the query
                        int rowsAffected = command.ExecuteNonQuery();

                        // Check if the update was successful
                        if (rowsAffected > 0)
                        {
                            // Display success message
                            Response.Write("<script>alert('Date of birth updated successfully!');</script>");
                        }
                        else
                        {
                            // Display error message if no rows were affected
                            Response.Write("<script>alert('Failed to update date of birth.');</script>");
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Display error message if an exception occurs
                Response.Write("<script>alert('An error occurred: " + ex.Message + "');</script>");
            }
        }
    }
}
