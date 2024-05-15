using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sharada
{
    public partial class Booked_room : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["sqlstring"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.DataSource = SqlDataSource1;
                GridView1.DataBind();
            }
        }

        private bool SendEmail(string email)
        {
            try
            {
                Session["UserEmail"] = email;
                string fromAddress = "sharada.shenoy@somaiya.edu";
                string toAddress = email;
                string subject = "confirmation mail of canceling of room booking";
                string body = $"your cancelation has being done successfully. The change is reflected in your account  <a href='https://localhost:44346/Booked_room.aspx>Thank you </a>";

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
        protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            Label sid = row.FindControl("Label2") as Label;
            Label checkInDate = row.FindControl("Label7") as Label;

            DateTime today = DateTime.Today;
            DateTime checkIn = Convert.ToDateTime(checkInDate.Text);
            TimeSpan difference = checkIn - today;

            if (difference.TotalDays <= 2)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Cancellation is not allowed. Must be more than 2 days before check-in date.');", true);
            }
            else
            {
                SqlConnection con = new SqlConnection(connectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("DELETE FROM BookedRooms WHERE BookingID = @BookingID", con);
                cmd.Parameters.AddWithValue("@BookingID", Convert.ToInt32(sid.Text));
                cmd.ExecuteNonQuery();
                con.Close();
                SendEmail(Session["UserEmail"].ToString());
                ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Cancellation is done . Confirmation has been sent to yuor email');", true);
                GridView1.EditIndex = -1;
                GridView1.DataSource = SqlDataSource1;
                GridView1.DataBind();
            }
        }
    }
}