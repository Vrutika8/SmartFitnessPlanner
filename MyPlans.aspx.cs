using System;
using System.Configuration;
using System.Data.SqlClient;

namespace SmartFitnessPlanner
{
    public partial class MyPlans : System.Web.UI.Page
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
                LoadPlans();
            }
        }

        private void LoadPlans()
        {
            string connectionString =
                ConfigurationManager.ConnectionStrings["SmartFitnessConnection"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = @"
                    SELECT 
                        E.ExerciseName,
                        EP.PlanDate,
                        EP.DurationMinutes,
                        EP.Status
                    FROM ExercisePlans EP
                    INNER JOIN Exercises E
                        ON EP.ExerciseID = E.ExerciseID
                    WHERE EP.UserID = @UserID
                    ORDER BY EP.PlanDate DESC";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    // Use the currently logged-in user's ID
                    cmd.Parameters.AddWithValue(
                        "@UserID",
                        Convert.ToInt32(Session["UserID"]));

                    con.Open();

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        gvPlans.DataSource = reader;
                        gvPlans.DataBind();
                    }
                }
            }
        }
    }
}