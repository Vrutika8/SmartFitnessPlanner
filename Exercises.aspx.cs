using System;
using System.Configuration;
using System.Data.SqlClient;

namespace SmartFitnessPlanner
{
    public partial class Exercises : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
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
                string query = "SELECT ExerciseName, Category, Difficulty, Equipment, Instructions, ImagePath FROM Exercises ORDER BY ExerciseID";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    con.Open();

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        rptExercises.DataSource = reader;
                        rptExercises.DataBind();
                    }
                }
            }
        }
    }
}