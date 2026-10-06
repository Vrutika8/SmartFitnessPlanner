using System;
using System.Configuration;
using System.Data.SqlClient;

namespace SmartFitnessPlanner
{
    public partial class ProgressHistory : System.Web.UI.Page
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
                LoadProgress();
            }
        }

        private void LoadProgress()
        {
            string connectionString =
                ConfigurationManager.ConnectionStrings["SmartFitnessConnection"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = @"
                    SELECT
                        E.ExerciseName,
                        P.CompleteDate,
                        P.DurationMinutes,
                        P.Notes
                    FROM Progress P
                    INNER JOIN Exercises E
                        ON P.ExerciseID = E.ExerciseID
                    WHERE P.UserID = @UserID
                    ORDER BY P.CompleteDate DESC";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    // Use the currently logged-in user's ID
                    cmd.Parameters.AddWithValue(
                        "@UserID",
                        Convert.ToInt32(Session["UserID"]));

                    con.Open();

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        gvProgress.DataSource = reader;
                        gvProgress.DataBind();
                    }
                }
            }
        }
    }
}