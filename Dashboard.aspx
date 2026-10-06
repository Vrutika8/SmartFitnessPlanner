<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="SmartFitnessPlanner.Dashboard" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Smart Fitness Planner - Dashboard</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f5f3ff;
            margin: 0;
        }

        .header {
            background: #6c5ce7;
            color: white;
            padding: 25px;
            text-align: center;
        }

        .container {
            width: 90%;
            max-width: 1000px;
            margin: 30px auto;
        }

        .welcome {
            background: white;
            padding: 20px;
            border-radius: 12px;
            margin-bottom: 25px;
            text-align: center;
        }

        .cards {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 20px;
        }

        .card {
            background: white;
            padding: 25px;
            border-radius: 12px;
            text-align: center;
            box-shadow: 0 3px 10px rgba(0,0,0,0.1);
        }

        .card h3 {
            color: #6c5ce7;
        }

        .btn {
            display: inline-block;
            background: #6c5ce7;
            color: white;
            padding: 10px 18px;
            text-decoration: none;
            border-radius: 6px;
            margin-top: 10px;
        }

        .btn:hover {
            background: #5849c7;
        }
    </style>
</head>

<body>

<form id="form1" runat="server">

    <div class="header">
        <h1>Smart Fitness Planner</h1>
        <p>Your Personal Exercise Planning Dashboard</p>
    </div>

    <div class="container">

        <div class="welcome">
            <h2>Welcome!</h2>
            <p>Choose a module to manage your fitness activities.</p>
        </div>

        <div class="cards">

            <div class="card">
                <h3>Exercise Library</h3>
                <p>Explore available exercises and instructions.</p>
                <a href="Exercises.aspx" class="btn">View Exercises</a>
            </div>

            <div class="card">
                <h3>AI Recommendations</h3>
                <p>Get a workout recommendation based on your preferences.</p>
                <a href="AIRecommendations.aspx" class="btn">Get Recommendation</a>
            </div>

            <div class="card">
                <h3>Exercise Planning</h3>
                <p>Create and manage your exercise plans.</p>
                <a href="ExercisePlanning.aspx" class="btn">Plan Exercise</a>
            </div>

            <div class="card">
                <h3>My Plans</h3>
                <p>View your planned exercises.</p>
                <a href="MyPlans.aspx" class="btn">View Plans</a>
            </div>

            <div class="card">
                <h3>Progress Tracking</h3>
                <p>Record completed exercise sessions.</p>
                <a href="Progress.aspx" class="btn">Track Progress</a>
            </div>

            <div class="card">
                <h3>Progress History</h3>
                <p>View your previous exercise records.</p>
                <a href="ProgressHistory.aspx" class="btn">View History</a>
            </div>

        </div>

    </div>

</form>

</body>
</html>