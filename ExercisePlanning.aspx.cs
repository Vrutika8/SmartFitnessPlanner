using System;
using System.Configuration;
using System.Data.SqlClient;

namespace SmartFitnessPlanner
{
    public partial class ExercisePlanning : System.Web.UI.Page
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

        protected void btnSavePlan_Click(object sender, EventArgs e)
        {
            string connectionString =
                ConfigurationManager.ConnectionStrings["SmartFitnessConnection"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = @"INSERT INTO ExercisePlans
                                (UserID, ExerciseID, PlanDate, DurationMinutes, Status)
                                VALUES
                                (@UserID, @ExerciseID, @PlanDate, @DurationMinutes, @Status)";

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
                        "@PlanDate",
                        Convert.ToDateTime(txtPlanDate.Text));

                    cmd.Parameters.AddWithValue(
                        "@DurationMinutes",
                        Convert.ToInt32(txtDuration.Text));

                    cmd.Parameters.AddWithValue(
                        "@Status",
                        ddlStatus.SelectedValue);

                    con.Open();
                    cmd.ExecuteNonQuery();

                    lblMessage.Text =
                        "Exercise plan saved successfully!";
                }
            }
        }
    }
}