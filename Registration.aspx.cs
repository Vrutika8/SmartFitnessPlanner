using System;
using System.Configuration;
using System.Data.SqlClient;

namespace SmartFitnessPlanner
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string connectionString =
                ConfigurationManager.ConnectionStrings["SmartFitnessConnection"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = @"INSERT INTO Users
                                (FullName, Email, Password, FitnessLevel, AvailableTime)
                                VALUES
                                (@FullName, @Email, @Password, @FitnessLevel, @AvailableTime)";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@FullName", txtName.Text.Trim());
                    cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                    cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
                    cmd.Parameters.AddWithValue("@FitnessLevel", ddlFitnessLevel.SelectedValue);
                    cmd.Parameters.AddWithValue("@AvailableTime",
                        Convert.ToInt32(txtAvailableTime.Text));

                    con.Open();
                    cmd.ExecuteNonQuery();

                    lblMessage.Text = "Registration successful!";
                }
            }
        }
    }
}