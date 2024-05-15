using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace Sharada
{
    public partial class Review : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["UserEmail"] == null)
                {
                    Response.Redirect("Login.aspx");
                }
                PopulateGridView();
            }
        }

        private void PopulateGridView()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["sqlstring"].ConnectionString;
            string query = "SELECT Email, ReviewText, CreatedAt FROM Review WHERE ReviewText IS NOT NULL";


            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    DataTable dataTable = new DataTable();

                    connection.Open();
                    adapter.Fill(dataTable);

                    if (dataTable.Rows.Count > 0)
                    {
                        foreach (DataRow row in dataTable.Rows)
                        {
                            string email = row["Email"].ToString();
                            string reviewText = row["ReviewText"].ToString();
                            DateTime createdAt = (DateTime)row["CreatedAt"];

                            //string reviewInfo = $"<span style='font-weight:normal'>{email} : <span style='font-weight:normal'>{createdAt.ToString()} <br/> <b>{reviewText}";
                            // row["ReviewText"] = reviewInfo;

                            string reviewInfo = $"<b><span style='font-weight:bold; font-size: large;'>{email}</span> : <span style='font-weight:bold; font-size: medium;'>{createdAt.ToString()}</span></b> <br/> <span style='font-weight:normal; font-size: larger;'>{reviewText}</span>";
                            row["ReviewText"] = reviewInfo;


                            //string reviewInfo = $"<span style='font-weight:bold'>{email}</span> : <span style='font-weight:bold'>{createdAt.ToString()}</span> <br/> <b>{reviewText}</b>";
                            //row["ReviewText"] = reviewInfo;

                        }


                        GridViewReviews.DataSource = dataTable;
                        GridViewReviews.DataBind();
                    }
                }
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string userEmail = Session["UserEmail"] as string;
            string reviewText = txtarea1.Value.Trim();

            if (!string.IsNullOrEmpty(userEmail) && !string.IsNullOrEmpty(reviewText))
            {
                InsertReview(userEmail, reviewText);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Review submitted successfully!');", true);
                txtarea1.Value = "";
                PopulateGridView();
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Please log in before submitting a review.');", true);
            }
        }

        private void InsertReview(string email, string review)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["sqlstring"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO Review (Email, ReviewText) VALUES (@UserEmail, @Review)";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Review", review);
                    command.Parameters.AddWithValue("@UserEmail", email);

                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }
        }
    }
}
