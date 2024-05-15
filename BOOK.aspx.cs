using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sharada
{ 
    public partial class BOOK : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["RoomType"] != null && Session["RoomName"] != null && Session["Price"] != null)
                {
                    roomtype_txtbox.Text = Session["RoomType"].ToString();
                    room_name_txtbox.Text = Session["RoomName"].ToString();
                    price_txtbox.Text = Session["Price"].ToString() + " per day";
                }
            }
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            string roomType = roomtype_txtbox.Text;
            string roomName = room_name_txtbox.Text;
            DateTime fromDate = DateTime.Parse(from_date.Text);
            DateTime toDate = DateTime.Parse(to_date.Text);

            int numberOfDays = ((int)(toDate - fromDate).TotalDays )+ 1;

            string query = "SELECT COUNT(*) FROM Room WHERE RoomType = @RoomType AND RoomName = @RoomName AND Status = 'Available' AND RoomNumber NOT IN (SELECT RoomNumber FROM Room WHERE (@FromDate BETWEEN CheckInDate AND CheckOutDate) OR (@ToDate BETWEEN CheckInDate AND CheckOutDate))";

            int availableRooms = 0;
            string connectionString = ConfigurationManager.ConnectionStrings["sqlstring"].ConnectionString; using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@RoomType", roomType);
                    command.Parameters.AddWithValue("@RoomName", roomName);
                    command.Parameters.AddWithValue("@FromDate", fromDate);
                    command.Parameters.AddWithValue("@ToDate", toDate);
                    connection.Open();
                    availableRooms = (int)command.ExecuteScalar();

                    Label2.Text = availableRooms + "rooms are avaialable";
                    Session["availableRooms"] = availableRooms;
                }
            }

            if (availableRooms > 0)
            {
                int price = Convert.ToInt32(Session["Price"]); 
                int totalPrice = numberOfDays * price;
                Session["totalPrice"] = totalPrice;
                total.Text = totalPrice.ToString();
                Session["NumberOfDays"] = numberOfDays;
            }

            else
            {
                Response.Write("<script>alert('Sorry, no rooms are available for the selected dates.');</script>");
            }
        }


        private bool SendEmail(string email)
        {
            try
            {
                Session["UserEmail"]=email;
                string fromAddress = "sharada.shenoy@somaiya.edu";
                string toAddress = email;
                string subject = "confirmation mail of room booking";
                string body = $"Your room has been booked successfully  <a href='https://localhost:44346/Booked_room.aspx>Thank you </a>";

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



        protected void boook_Click(object sender, EventArgs e)
        {
            int availableRooms = Convert.ToInt32(Session["availableRooms"]);
            if (availableRooms > 0)
            {
                string roomType = roomtype_txtbox.Text;
                string roomName = room_name_txtbox.Text;
                DateTime fromDate = DateTime.Parse(from_date.Text);
                DateTime toDate = DateTime.Parse(to_date.Text);
                int totalPrice = Convert.ToInt32(Session["totalPrice"]);

                // Update room status to 'Booked'
                string updateQuery = @"
            WITH AvailableRoom AS (
                SELECT TOP 1 RoomNumber FROM Room 
                WHERE RoomType = @RoomType 
                AND RoomName = @RoomName 
                AND Status = 'Available'
            ) 
            UPDATE Room 
            SET Status = 'Booked', CheckInDate = @FromDate, CheckOutDate = @ToDate 
            WHERE RoomNumber IN (SELECT RoomNumber FROM AvailableRoom)";

                // Insert booking information into BookedRooms table
                string insertQuery = @"
            INSERT INTO BookedRooms (RoomType, RoomName, TotalAmountPaid, NumberOfDays, CheckInDate, CheckOutDate, PaymentStatus, Email)
            VALUES (@RoomType, @RoomName, @TotalAmountPaid, @NumberOfDays, @FromDate, @ToDate, 'Paid Online', @Email)";

                string connectionString = ConfigurationManager.ConnectionStrings["sqlstring"].ConnectionString;

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    using (SqlTransaction transaction = connection.BeginTransaction())
                    {
                        try
                        {
                            using (SqlCommand command = new SqlCommand(updateQuery, connection, transaction))
                            {
                                command.Parameters.AddWithValue("@RoomType", roomType);
                                command.Parameters.AddWithValue("@RoomName", roomName);
                                command.Parameters.AddWithValue("@FromDate", fromDate);
                                command.Parameters.AddWithValue("@ToDate", toDate);
                                int rowsAffected = command.ExecuteNonQuery();
                                if (rowsAffected == 0)
                                {
                                    throw new Exception("Failed to book the room. Room may have been booked by another user.");
                                }
                            }
                            using (SqlCommand command = new SqlCommand(insertQuery, connection, transaction))
                            {
                                command.Parameters.AddWithValue("@RoomType", roomType);
                                command.Parameters.AddWithValue("@RoomName", roomName);
                                command.Parameters.AddWithValue("@TotalAmountPaid", totalPrice);
                                command.Parameters.AddWithValue("@NumberOfDays", Convert.ToInt32(Session["NumberOfDays"]));
                                command.Parameters.AddWithValue("@FromDate", fromDate);
                                command.Parameters.AddWithValue("@ToDate", toDate);
                                command.Parameters.AddWithValue("@Email", Session["UserEmail"].ToString());
                                command.ExecuteNonQuery();
                            }
                            transaction.Commit();
                            SendEmail(Session["UserEmail"].ToString());
                            Response.Redirect("Paynow.aspx");
                        }
                        catch (Exception ex)
                        {                           
                            Response.Write("<script>alert('" + ex.Message + "');</script>");
                        }
                    }
                }
            }
            else
            {
                Response.Write("<script>alert('Sorry, no rooms are available for the selected dates.');</script>");
            }
        }
    }
}
