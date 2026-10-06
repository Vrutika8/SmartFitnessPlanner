using System;

namespace SmartFitnessPlanner
{
    public partial class AIRecommendations : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGetRecommendation_Click(object sender, EventArgs e)
        {
            string fitnessLevel = ddlFitnessLevel.SelectedValue;
            string availableTime = txtAvailableTime.Text.Trim();
            string category = ddlCategory.SelectedValue;

            if (string.IsNullOrEmpty(availableTime))
            {
                lblRecommendation.Text =
                    "Please enter your available time.";
                return;
            }

            int time;

            if (!int.TryParse(availableTime, out time) || time <= 0)
            {
                lblRecommendation.Text =
                    "Please enter a valid time in minutes.";
                return;
            }

            string recommendation = "";

            recommendation += "<h3>Recommended Workout Plan</h3>";
            recommendation += "<p><b>Fitness Level:</b> " + fitnessLevel + "</p>";
            recommendation += "<p><b>Available Time:</b> " + time + " minutes</p>";
            recommendation += "<p><b>Category:</b> " + category + "</p>";

            recommendation += "<hr/>";

            if (category == "Strength")
            {
                recommendation += "<b>1. Squats</b> – 10 to 12 repetitions<br/>";
                recommendation += "<b>2. Push-ups</b> – 8 to 10 repetitions<br/>";
                recommendation += "<b>3. Lunges</b> – 8 repetitions each leg<br/>";
                recommendation += "<b>4. Glute Bridge</b> – 10 to 12 repetitions<br/>";
            }
            else if (category == "Cardio")
            {
                recommendation += "<b>1. Jumping Jacks</b> – 30 seconds<br/>";
                recommendation += "<b>2. High Knees</b> – 30 seconds<br/>";
                recommendation += "<b>3. Marching in Place</b> – 1 minute<br/>";
                recommendation += "<b>4. Step Touch</b> – 1 minute<br/>";
            }
            else if (category == "Core")
            {
                recommendation += "<b>1. Plank</b> – 20 seconds<br/>";
                recommendation += "<b>2. Bird Dog</b> – 8 repetitions each side<br/>";
                recommendation += "<b>3. Dead Bug</b> – 8 repetitions each side<br/>";
                recommendation += "<b>4. Glute Bridge</b> – 10 repetitions<br/>";
            }
            else if (category == "Flexibility")
            {
                recommendation += "<b>1. Shoulder Stretch</b> – 20 seconds<br/>";
                recommendation += "<b>2. Hamstring Stretch</b> – 20 seconds<br/>";
                recommendation += "<b>3. Quad Stretch</b> – 20 seconds each leg<br/>";
                recommendation += "<b>4. Cat-Cow Stretch</b> – 8 repetitions<br/>";
            }
            else
            {
                recommendation += "<b>1. Squats</b> – 10 repetitions<br/>";
                recommendation += "<b>2. Push-ups</b> – 8 repetitions<br/>";
                recommendation += "<b>3. Marching in Place</b> – 1 minute<br/>";
                recommendation += "<b>4. Plank</b> – 20 seconds<br/>";
            }

            recommendation += "<hr/>";
            recommendation += "<p><b>Note:</b> Perform the exercises at a comfortable pace and stop if you feel pain or discomfort.</p>";

            lblRecommendation.Text = recommendation;
        }
    }
}