<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyPlans.aspx.cs" Inherits="SmartFitnessPlanner.MyPlans" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Exercise Plans - Smart Fitness Planner</title>

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

        .plans-table {
            width: 100%;
            background: white;
            border-collapse: collapse;
            box-shadow: 0 3px 12px rgba(0,0,0,0.12);
            border-radius: 10px;
            overflow: hidden;
        }

        .plans-table th {
            background: #6c4ccf;
            color: white;
            padding: 14px;
            text-align: left;
        }

        .plans-table td {
            padding: 14px;
            border-bottom: 1px solid #ddd;
        }

        .plans-table tr:hover {
            background: #f3f0ff;
        }

        .no-plans {
            text-align: center;
            padding: 25px;
            background: white;
            border-radius: 10px;
        }
    </style>
</head>

<body>

<form id="form1" runat="server">

    <div class="page-container">

        <div class="page-title">
            <h1>My Exercise Plans</h1>
            <p>View your saved exercise plans.</p>
        </div>

        <asp:GridView
            ID="gvPlans"
            runat="server"
            AutoGenerateColumns="False"
            CssClass="plans-table"
            EmptyDataText="No exercise plans found.">

            <Columns>

                <asp:BoundField
                    DataField="ExerciseName"
                    HeaderText="Exercise" />

                <asp:BoundField
                    DataField="PlanDate"
                    HeaderText="Date"
                    DataFormatString="{0:dd-MM-yyyy}" />

                <asp:BoundField
                    DataField="DurationMinutes"
                    HeaderText="Duration (Minutes)" />

                <asp:BoundField
                    DataField="Status"
                    HeaderText="Status" />

            </Columns>

        </asp:GridView>

    </div>

</form>

</body>
</html>