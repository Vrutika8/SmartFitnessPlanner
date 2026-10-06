<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Exercises.aspx.cs" Inherits="SmartFitnessPlanner.Exercises" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Exercise Library - Smart Fitness Planner</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f5f3ff;
            margin: 0;
            padding: 0;
        }

        .page-container {
            width: 90%;
            max-width: 1100px;
            margin: 40px auto;
        }

        .page-title {
            text-align: center;
            margin-bottom: 30px;
        }

        .page-title h1 {
            color: #4b338a;
        }

        .exercise-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 25px;
        }

        .exercise-card {
            background: white;
            border-radius: 15px;
            padding: 20px;
            box-shadow: 0 3px 12px rgba(0,0,0,0.12);
        }

        .exercise-card img {
            width: 100%;
            height: 180px;
            object-fit: cover;
            border-radius: 10px;
        }

        .exercise-card h3 {
            color: #4b338a;
            margin-bottom: 10px;
        }

        .exercise-card p {
            line-height: 1.5;
            margin: 6px 0;
        }

        .label {
            font-weight: bold;
        }
    </style>
</head>

<body>

<form id="form1" runat="server">

    <div class="page-container">

        <div class="page-title">
            <h1>Exercise Library</h1>
            <p>Explore exercises and learn how to perform them.</p>
        </div>

        <div class="exercise-grid">

            <asp:Repeater ID="rptExercises" runat="server">

                <ItemTemplate>

                    <div class="exercise-card">

                        <img src='<%# Eval("ImagePath") %>'
                             alt='<%# Eval("ExerciseName") %>' />

                        <h3>
                            <%# Eval("ExerciseName") %>
                        </h3>

                        <p>
                            <span class="label">Category:</span>
                            <%# Eval("Category") %>
                        </p>

                        <p>
                            <span class="label">Difficulty:</span>
                            <%# Eval("Difficulty") %>
                        </p>

                        <p>
                            <span class="label">Equipment:</span>
                            <%# Eval("Equipment") %>
                        </p>

                        <p>
                            <span class="label">Instructions:</span>
                            <%# Eval("Instructions") %>
                        </p>

                    </div>

                </ItemTemplate>

            </asp:Repeater>

        </div>

    </div>

</form>

</body>
</html>
