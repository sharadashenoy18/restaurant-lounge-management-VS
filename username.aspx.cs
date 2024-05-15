using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sharada
{
    public partial class username : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["UserEmail"] != null && !string.IsNullOrEmpty(TextBox1.Text))
            {
                if (TextBox1.Text == Session["UserEmail"].ToString())
                {
                    if (!string.IsNullOrEmpty(TextBox2.Text) && TextBox2.Text == TextBox3.Text)
                    {
                        string connectionString = ConfigurationManager.ConnectionStrings["sqlstring"].ConnectionString;

                        string query = "UPDATE Login SET [user] = @username WHERE [email] = @email";

                        using (SqlConnection connection = new SqlConnection(connectionString))
                        {
                            using (SqlCommand command = new SqlCommand(query, connection))
                            {
                                command.Parameters.AddWithValue("@username", TextBox2.Text);
                                command.Parameters.AddWithValue("@email", TextBox1.Text);

                                connection.Open();
                                command.ExecuteNonQuery();
                            }
                        }

                        Response.Write("<script>alert('Username updated successfully!');</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('Please enter and confirm the username correctly!');</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Please enter the correct email address!');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Please enter your email address!');</script>");
            }
        }

    }
}