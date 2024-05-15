using System;
using System.Data.SqlClient;
using System.Configuration;
namespace Sharada
{
    public partial class Login : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["sqlstring"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (RadioButton2.Checked)
            {
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    SqlCommand cmd = new SqlCommand("SELECT email FROM Login WHERE email=@email AND passwords=@passwords", con);
                    cmd.Parameters.AddWithValue("@email", txtUsername.Text);
                    cmd.Parameters.AddWithValue("@passwords", txtPassword.Text);
                    try
                    {
                        con.Open();
                        SqlDataReader reader = cmd.ExecuteReader();

                        if (reader.Read())
                        {
                            string userEmail = reader["email"].ToString();
                            Session["UserEmail"] = userEmail;
                            UpdateRoomStatusAndDates();
                            Response.Redirect("Home.aspx");
                        }
                        else
                        {
                            string script = "alert('EMAIL ID OR PASSWORD IS INCORRECT');";
                            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", script, true);
                        }
                    }
                    catch (Exception ex)
                    {
                    }
                }
            }
            else 
            {
                string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\sharada\source\repos\Sharada\App_Data\Emp.mdf;Integrated Security=True;";
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    SqlCommand cmd = new SqlCommand("SELECT email FROM Login WHERE email=@email AND passwords=@passwords", con);
                    cmd.Parameters.AddWithValue("@email", txtUsername.Text);
                    cmd.Parameters.AddWithValue("@passwords", txtPassword.Text);
                    try
                    {
                        con.Open();
                        SqlDataReader reader = cmd.ExecuteReader();

                        if (reader.Read())
                        {
                            string userEmail = reader["email"].ToString();
                            Session["UserEmail"] = userEmail;
                            UpdateRoomStatusAndDates();
                            Response.Redirect("Home.aspx");
                        }
                        else
                        {
                            string script = "alert('EMAIL ID OR PASSWORD IS INCORRECT');";
                            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", script, true);
                        }
                    }
                    catch (Exception ex)
                    {
                    }
                }
            }
        }
        private void UpdateRoomStatusAndDates()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["sqlstring"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "UPDATE Room SET Status = 'Available', CheckInDate = NULL, CheckOutDate = NULL WHERE CheckOutDate < @Today";
                using (SqlCommand command = new SqlCommand(query, con))
                {
                    command.Parameters.AddWithValue("@Today", DateTime.Today);
                    try
                    {
                        con.Open();
                        command.ExecuteNonQuery();
                    }
                    catch (Exception ex)
                    {
                    }
                }
            }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("ForgotPassword.aspx");
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewUser.aspx");
        }
    }
}