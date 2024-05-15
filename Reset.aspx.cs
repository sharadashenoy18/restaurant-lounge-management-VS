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
    public partial class Reset : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // 1. User Input Validation
            if (!string.IsNullOrEmpty(txtUsername.Text) && !string.IsNullOrEmpty(txtPassword.Text))
            {
                // Ensure passwords match
                if (txtUsername.Text == txtPassword.Text)
                {
                    string connectionString = ConfigurationManager.ConnectionStrings["sqlstring"].ConnectionString;
                    string email = Session["Reset"].ToString();

                    // 2. Database Update
                    using (SqlConnection con = new SqlConnection(connectionString))
                    {
                        using (SqlCommand cmd = new SqlCommand("UPDATE Login SET passwords = @NewPassword WHERE email = @Email", con))
                        {
                            cmd.Parameters.AddWithValue("@NewPassword", txtPassword.Text);
                            cmd.Parameters.AddWithValue("@Email", email);
                            con.Open();
                            int rowsAffected = cmd.ExecuteNonQuery();

                            if (rowsAffected > 0)
                            {
                                // Password updated successfully
                                Response.Write("<script>alert('Password reset successful.');</script>");
                            }
                            else
                            {
                                // Password update failed
                                Response.Write("<script>alert('Password reset failed.');</script>");
                            }
                        }
                    }
                }
                else
                {
                    // Passwords entered do not match
                    Response.Write("<script>alert('Passwords do not match.');</script>");
                }
            }
            else
            {
                // Either password field is empty
                Response.Write("<script>alert('Please enter a password.');</script>");
            }

            // 3. Redirect to Login Page
            Response.Redirect("Login.aspx");
        }

    }
}