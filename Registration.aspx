<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="SmartFitnessPlanner.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration - Smart Fitness Planner</title>
</head>

<body>
    <form id="form1" runat="server">

        <div class="registration-container">

            <h2>Create Account</h2>

            <asp:Label ID="lblName" runat="server" Text="Full Name"></asp:Label>
            <br />

            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>

            <br /><br />

            <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
            <br />

            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>

            <br /><br />

            <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
            <br />

            <asp:TextBox ID="txtPassword"
                runat="server"
                TextMode="Password">
            </asp:TextBox>

            <br /><br />

            <asp:Label ID="lblFitnessLevel"
                runat="server"
                Text="Fitness Level">
            </asp:Label>
            <br />

            <asp:DropDownList ID="ddlFitnessLevel" runat="server">
                <asp:ListItem Text="Beginner" Value="Beginner"></asp:ListItem>
                <asp:ListItem Text="Intermediate" Value="Intermediate"></asp:ListItem>
                <asp:ListItem Text="Advanced" Value="Advanced"></asp:ListItem>
            </asp:DropDownList>

            <br /><br />

            <asp:Label ID="lblAvailableTime"
                runat="server"
                Text="Available Time (minutes)">
            </asp:Label>
            <br />

            <asp:TextBox ID="txtAvailableTime"
                runat="server"
                TextMode="Number">
            </asp:TextBox>

            <br /><br />

            <asp:Button ID="btnRegister"
                runat="server"
                Text="Register"
                OnClick="btnRegister_Click" />

            <br /><br />

            <asp:Label ID="lblMessage"
                runat="server"
                Text="">
            </asp:Label>

        </div>

    </form>
</body>
</html>
