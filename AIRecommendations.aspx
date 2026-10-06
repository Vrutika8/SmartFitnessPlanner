<%@ Page Language="C#" Async="true" AutoEventWireup="true" CodeBehind="AIRecommendations.aspx.cs" Inherits="SmartFitnessPlanner.AIRecommendations" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AI Recommendations - Smart Fitness Planner</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f5f3ff;
            margin: 0;
            padding: 0;
        }

        .page-container {
            width: 90%;
            max-width: 700px;
            margin: 40px auto;
        }

        .recommendation-card {
            background: white;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 3px 12px rgba(0,0,0,0.12);
        }

        h1 {
            text-align: center;
            color: #4b338a;
            margin-bottom: 10px;
        }

        .subtitle {
            text-align: center;
            color: #555;
            margin-bottom: 30px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 8px;
        }

        .input-control {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 6px;
            box-sizing: border-box;
        }

        .recommend-button {
            width: 100%;
            padding: 12px;
            background: #6c4ccf;
            color: white;
            border: none;
            border-radius: 8px;
            font-weight: bold;
            cursor: pointer;
        }

        .recommendation-result {
            margin-top: 25px;
            padding: 20px;
            background: #f3f0ff;
            border-radius: 10px;
            line-height: 1.6;
        }
    </style>
</head>

<body>

<form id="form1" runat="server">

    <div class="page-container">

        <div class="recommendation-card">

            <h1>AI Exercise Recommendations</h1>

            <p class="subtitle">
                Get exercise suggestions based on your fitness preferences.
            </p>

            <div class="form-group">

                <label>Fitness Level</label>

                <asp:DropDownList
                    ID="ddlFitnessLevel"
                    runat="server"
                    CssClass="input-control">

                    <asp:ListItem Text="Beginner" Value="Beginner"></asp:ListItem>
                    <asp:ListItem Text="Intermediate" Value="Intermediate"></asp:ListItem>
                    <asp:ListItem Text="Advanced" Value="Advanced"></asp:ListItem>

                </asp:DropDownList>

            </div>

            <div class="form-group">

                <label>Available Time (minutes)</label>

                <asp:TextBox
                    ID="txtAvailableTime"
                    runat="server"
                    TextMode="Number"
                    CssClass="input-control">
                </asp:TextBox>

            </div>

            <div class="form-group">

                <label>Preferred Exercise Category</label>

                <asp:DropDownList
                    ID="ddlCategory"
                    runat="server"
                    CssClass="input-control">

                    <asp:ListItem Text="Strength" Value="Strength"></asp:ListItem>
                    <asp:ListItem Text="Cardio" Value="Cardio"></asp:ListItem>
                    <asp:ListItem Text="Core" Value="Core"></asp:ListItem>
                    <asp:ListItem Text="Flexibility" Value="Flexibility"></asp:ListItem>
                    <asp:ListItem Text="Full Body" Value="Full Body"></asp:ListItem>

                </asp:DropDownList>

            </div>

            <asp:Button
                ID="btnGetRecommendation"
                runat="server"
                Text="Get AI Recommendation"
                CssClass="recommend-button"
                OnClick="btnGetRecommendation_Click" />

            <div class="recommendation-result">

                <asp:Label
                    ID="lblRecommendation"
                    runat="server"
                    Text="Your AI recommendation will appear here.">
                </asp:Label>

            </div>

        </div>

    </div>

</form>

</body>
</html>
