using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace Sharada
{
    public partial class Resetknow : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["sqlstring"].ConnectionString;

            if (Session["UserEmail"] != null && TextBox1.Text == Session["UserEmail"].ToString())
            {
                string email = TextBox1.Text;
                string oldPassword = TextBox2.Text;
                string newPassword = TextBox3.Text;
                string confirmNewPassword = TextBox4.Text;

                if (IsOldPasswordCorrect(connectionString, email, oldPassword))
                {
                    if (newPassword == confirmNewPassword)
                    {
                        if (UpdatePassword(connectionString, email, newPassword))
                        {
                            ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Password updated successfully!');", true);
                            return;
                        }
                        else
                        {
                            ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Failed to update password. Please try again later.');", true);
                            return;
                        }
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('New passwords do not match!');", true);
                        return;
                    }
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Old password is incorrect!');", true);
                    return;
                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Please log in or provide the correct email address!');", true);
                return;
            }
        }

        private bool IsOldPasswordCorrect(string connectionString, string email, string oldPassword)
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT passwords FROM Login WHERE email = @Email AND passwords = @Password", con))
                {
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@Password", oldPassword);
                    con.Open();
                    object result = cmd.ExecuteScalar();
                    return result != null; // If result is not null, old password is correct
                }
            }
        }

        private bool UpdatePassword(string connectionString, string email, string newPassword)
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("UPDATE Login SET passwords = @NewPassword WHERE email = @Email", con))
                {
                    cmd.Parameters.AddWithValue("@NewPassword", newPassword);
                    cmd.Parameters.AddWithValue("@Email", email);
                    con.Open();
                    int rowsAffected = cmd.ExecuteNonQuery();
                    return rowsAffected > 0; // If rows affected is greater than 0, password update is successful
                }
            }
        }
    }
}
