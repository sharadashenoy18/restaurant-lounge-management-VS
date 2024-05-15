using System;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using System.Web.UI.WebControls;

namespace Sharada
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Button2_Click(object sender, EventArgs e)
        {
            string email = txtUsername.Text.Trim();
            Session["Reset"]=email;

            if (IsEmailRegistered(email))
            {
                string token = GenerateToken();
                if (SendResetEmail(email, token))
                {
                    Label2.Text = "Password reset link has been sent to your email.";
                }
                else
                {
                    Label2.Text = "Failed to send the password reset link. Please try again later.";
                }
            }
            else
            {
                Label2.Text = "Email not registered. Please enter a valid email address.";
            }
        }

        private bool IsEmailRegistered(string email)
        {
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\sharada\source\repos\Sharada\App_Data\Users.mdf;Integrated Security=True";
            string query = "SELECT COUNT(*) FROM Login WHERE email = @Email";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Email", email);
                    connection.Open();
                    int count = (int)command.ExecuteScalar();
                    return count > 0;
                }
            }
        }

        private string GenerateToken()
        {
            return Guid.NewGuid().ToString();
        }

        private bool SendResetEmail(string email, string token)
        {
            try
            {
                string fromAddress = "sharada.shenoy@somaiya.edu";
                string toAddress = email;
                string subject = "Password Reset";
                string body = $"We are sorry to hear that you are unable to login . We ar hear to help you to reset your password. Please click the following link to reset your password: <a href='https://localhost:44346/Reset.aspx?token={token}'>Reset Password . Thank you </a>";

                MailMessage message = new MailMessage(fromAddress, toAddress, subject, body);
                message.IsBodyHtml = true;

                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                client.UseDefaultCredentials = false;
                client.Credentials = new NetworkCredential("lodgecuisinehub0@gmail.com", "pncvovweehgulfuv");
                client.EnableSsl = true;

                client.Send(message);

                return true;
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Failed to send email: {ex.Message}");
                return false;
            }
        }
    }
}
