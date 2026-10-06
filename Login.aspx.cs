using System;
using System.Configuration;
using System.Data.SqlClient;

namespace SmartFitnessPlanner
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string connectionString =
                ConfigurationManager.ConnectionStrings["SmartFitnessConnection"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query =
                    "SELECT UserID FROM Users WHERE Email=@Email AND Password=@Password";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                    cmd.Parameters.AddWithValue("@Password", txtPassword.Text);

                    con.Open();

                    object result = cmd.ExecuteScalar();

                    if (result != null)
                    {
                        // Store logged-in user's ID
                        Session["UserID"] = Convert.ToInt32(result);

                        // Open Dashboard
                        Response.Redirect("Dashboard.aspx");
                    }
                    else
                    {
                        lblMessage.Text = "Invalid email or password.";
                    }
                }
            }
        }
    }
}