<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProgressHistory.aspx.cs" Inherits="SmartFitnessPlanner.ProgressHistory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Progress History - Smart Fitness Planner</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f5f3ff;
            margin: 0;
            padding: 0;
        }

        .page-container {
            width: 90%;
            max-width: 1000px;
            margin: 40px auto;
        }

        .page-title {
            text-align: center;
            margin-bottom: 30px;
        }

        .page-title h1 {
            color: #4b338a;
        }

        .progress-table {
            width: 100%;
            background: white;
            border-collapse: collapse;
            box-shadow: 0 3px 12px rgba(0,0,0,0.12);
            border-radius: 10px;
            overflow: hidden;
        }

        .progress-table th {
            background: #6c4ccf;
            color: white;
            padding: 14px;
            text-align: left;
        }

        .progress-table td {
            padding: 14px;
            border-bottom: 1px solid #ddd;
        }

        .progress-table tr:hover {
            background: #f3f0ff;
        }
    </style>
</head>

<body>

<form id="form1" runat="server">

    <div class="page-container">

        <div class="page-title">
            <h1>Progress History</h1>
            <p>View your completed exercise activities.</p>
        </div>

        <asp:GridView
            ID="gvProgress"
            runat="server"
            AutoGenerateColumns="False"
            CssClass="progress-table"
            EmptyDataText="No progress records found.">

            <Columns>

                <asp:BoundField
                    DataField="ExerciseName"
                    HeaderText="Exercise" />

                <asp:BoundField
                    DataField="CompleteDate"
                    HeaderText="Date"
                    DataFormatString="{0:dd-MM-yyyy}" />

                <asp:BoundField
                    DataField="DurationMinutes"
                    HeaderText="Duration (Minutes)" />

                <asp:BoundField
                    DataField="Notes"
                    HeaderText="Notes" />

            </Columns>

        </asp:GridView>

    </div>

</form>

</body>
</html>
