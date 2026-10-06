using System;
using System.Configuration;
using System.Data.SqlClient;

namespace SmartFitnessPlanner
{
    public partial class Progress : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Check whether the user is logged in
            if (Session["UserID"] == null)
            {
                Response.Redirect("Login.aspx");
                return;
            }

            if (!IsPostBack)
            {
                LoadExercises();
            }
        }

        private void LoadExercises()
        {
            string connectionString =
                ConfigurationManager.ConnectionStrings["SmartFitnessConnection"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query =
                    "SELECT ExerciseID, ExerciseName FROM Exercises ORDER BY ExerciseName";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    con.Open();

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        ddlExercise.DataSource = reader;
                        ddlExercise.DataTextField = "ExerciseName";
                        ddlExercise.DataValueField = "ExerciseID";
                        ddlExercise.DataBind();
                    }
                }
            }
        }

        protected void btnSaveProgress_Click(object sender, EventArgs e)
        {
            string connectionString =
                ConfigurationManager.ConnectionStrings["SmartFitnessConnection"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = @"INSERT INTO Progress
                                (UserID, ExerciseID, CompleteDate, DurationMinutes, Notes)
                                VALUES
                                (@UserID, @ExerciseID, @CompleteDate, @DurationMinutes, @Notes)";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    // Use the currently logged-in user's ID
                    cmd.Parameters.AddWithValue(
                        "@UserID",
                        Convert.ToInt32(Session["UserID"]));

                    cmd.Parameters.AddWithValue(
                        "@ExerciseID",
                        Convert.ToInt32(ddlExercise.SelectedValue));

                    cmd.Parameters.AddWithValue(
                        "@CompleteDate",
                        Convert.ToDateTime(txtCompletedDate.Text));

                    cmd.Parameters.AddWithValue(
                        "@DurationMinutes",
                        Convert.ToInt32(txtDuration.Text));

                    cmd.Parameters.AddWithValue(
                        "@Notes",
                        txtNotes.Text.Trim());

                    con.Open();
                    cmd.ExecuteNonQuery();

                    lblMessage.Text = "Progress saved successfully!";
                }
            }
        }
    }
}