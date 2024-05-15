using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace Sharada
{
    public partial class NewUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = email_txt.Text.Trim();
            string password = password_txt.Text;

            if (IsEmailExists(email))
            {
                Label2.Text = "Email already registered.";
            }
            else
            {
                if (!IsValidEmail(email))
                {
                    Label2.Text = "Invalid email format.";
                    return;
                }

                try
                {
                    string connectionString = ConfigurationManager.ConnectionStrings["sqlstring"].ConnectionString;

                    using (SqlConnection con = new SqlConnection(connectionString))
                    {
                        string query = "INSERT INTO Login (email, passwords) VALUES (@email, @password)";

                        using (SqlCommand cmd = new SqlCommand(query, con))
                        {
                            cmd.Parameters.AddWithValue("@email", email);
                            cmd.Parameters.AddWithValue("@password", password);

                            con.Open();
                            cmd.ExecuteNonQuery();
                        }
                    }

                    Response.Redirect("Login.aspx");
                }
                catch (Exception ex)
                {
                    // Handle exception
                    Label2.Text = "An error occurred: " + ex.Message;
                }
            }
        }

        private bool IsValidEmail(string email)
        {
            try
            {
                var addr = new System.Net.Mail.MailAddress(email);
                return addr.Address == email;
            }
            catch
            {
                return false;
            }
        }

        private bool IsEmailExists(string email)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["sqlstring"].ConnectionString; string query = "SELECT COUNT(*) FROM Login WHERE email = @email";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@email", email);

                    con.Open();
                    int count = (int)cmd.ExecuteScalar();

                    return count > 0;
                }
            }
        }

    }
}
