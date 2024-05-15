using System;
using System.Configuration;
using System.Data.SqlClient;

namespace Sharada
{
    public partial class mob : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Check if the user is logged in and if the email field is not empty
            if (Session["UserEmail"] != null && !string.IsNullOrEmpty(TextBox1.Text))
            {
                // Check if the provided email matches the logged-in user's email
                if (TextBox1.Text == Session["UserEmail"].ToString())
                {
                    // Check if mobile number fields are not empty and if they match
                    if (!string.IsNullOrEmpty(TextBox2.Text) && TextBox2.Text == TextBox3.Text)
                    {
                        // Update the 'user' column in the database with the provided mobile number
                        string connectionString = ConfigurationManager.ConnectionStrings["sqlstring"].ConnectionString;
                        string query = "UPDATE Login SET [mob] = @mobile WHERE [email] = @email";

                        using (SqlConnection connection = new SqlConnection(connectionString))
                        {
                            using (SqlCommand command = new SqlCommand(query, connection))
                            {
                                command.Parameters.AddWithValue("@mobile", TextBox2.Text);
                                command.Parameters.AddWithValue("@email", TextBox1.Text);

                                connection.Open();
                                command.ExecuteNonQuery();
                            }
                        }

                        // Display success message
                        Response.Write("<script>alert('Mobile number updated successfully!');</script>");
                    }
                    else
                    {
                        // Display error message if mobile number fields are empty or do not match
                        Response.Write("<script>alert('Please enter and confirm the mobile number correctly!');</script>");
                    }
                }
                else
                {
                    // Display error message if the provided email does not match the logged-in user's email
                    Response.Write("<script>alert('Please enter the correct email address!');</script>");
                }
            }
            else
            {
                // Display error message if the user is not logged in or if the email field is empty
                Response.Write("<script>alert('Please enter your email address!');</script>");
            }
        }
    }
}
