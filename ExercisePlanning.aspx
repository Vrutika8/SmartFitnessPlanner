<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExercisePlanning.aspx.cs" Inherits="SmartFitnessPlanner.ExercisePlanning" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Exercise Planning - Smart Fitness Planner</title>

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

        .planning-card {
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
            margin-bottom: 30px;
            color: #555;
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

        .plan-button {
            width: 100%;
            padding: 12px;
            background: #6c4ccf;
            color: white;
            border: none;
            border-radius: 8px;
            font-weight: bold;
            cursor: pointer;
        }

        .message {
            display: block;
            margin-top: 20px;
            text-align: center;
            font-weight: bold;
        }
    </style>
</head>

<body>

<form id="form1" runat="server">

    <div class="page-container">

        <div class="planning-card">

            <h1>Exercise Planning</h1>

            <p class="subtitle">
                Create your exercise plan
            </p>

            <div class="form-group">

                <label>Exercise</label>

                <asp:DropDownList
                    ID="ddlExercise"
                    runat="server"
                    CssClass="input-control">
                </asp:DropDownList>

            </div>

            <div class="form-group">

                <label>Plan Date</label>

                <asp:TextBox
                    ID="txtPlanDate"
                    runat="server"
                    TextMode="Date"
                    CssClass="input-control">
                </asp:TextBox>

            </div>

            <div class="form-group">

                <label>Duration (minutes)</label>

                <asp:TextBox
                    ID="txtDuration"
                    runat="server"
                    TextMode="Number"
                    CssClass="input-control">
                </asp:TextBox>

            </div>

            <div class="form-group">

                <label>Status</label>

                <asp:DropDownList
                    ID="ddlStatus"
                    runat="server"
                    CssClass="input-control">

                    <asp:ListItem Text="Planned" Value="Planned"></asp:ListItem>
                    <asp:ListItem Text="Completed" Value="Completed"></asp:ListItem>

                </asp:DropDownList>

            </div>

            <asp:Button
                ID="btnSavePlan"
                runat="server"
                Text="Save Exercise Plan"
                CssClass="plan-button"
                OnClick="btnSavePlan_Click" />

            <asp:Label
                ID="lblMessage"
                runat="server"
                CssClass="message">
            </asp:Label>

        </div>

    </div>

</form>

</body>
</html>
