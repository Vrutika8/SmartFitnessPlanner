<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Progress.aspx.cs" Inherits="SmartFitnessPlanner.Progress" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Progress Tracking - Smart Fitness Planner</title>

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

        .progress-card {
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

        .save-button {
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

        <div class="progress-card">

            <h1>Progress Tracking</h1>

            <p class="subtitle">
                Record your completed exercise activity
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

                <label>Completed Date</label>

                <asp:TextBox
                    ID="txtCompletedDate"
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

                <label>Notes</label>

                <asp:TextBox
                    ID="txtNotes"
                    runat="server"
                    TextMode="MultiLine"
                    Rows="4"
                    CssClass="input-control">
                </asp:TextBox>

            </div>

            <asp:Button
                ID="btnSaveProgress"
                runat="server"
                Text="Save Progress"
                CssClass="save-button"
                OnClick="btnSaveProgress_Click" />

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