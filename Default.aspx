<%@ Page Title="Smart Fitness & Exercise Planner" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SmartFitnessPlanner._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="hero-section">
        <h1>Smart Fitness & Exercise Planner</h1>

        <p>
            Plan your exercises, explore workout activities,
            and track your fitness progress in one place.
        </p>

        <div class="home-buttons">
            <asp:HyperLink ID="lnkExercises"
                runat="server"
                NavigateUrl="Exercises.aspx"
                CssClass="main-button">
                Explore Exercises
            </asp:HyperLink>

            <asp:HyperLink ID="lnkLogin"
                runat="server"
                NavigateUrl="Login.aspx"
                CssClass="secondary-button">
                Login
            </asp:HyperLink>
        </div>
    </div>

    <div class="features-section">

        <div class="feature-card">
            <h3>🏃 Exercise Library</h3>
            <p>Explore exercises with categories, difficulty levels and instructions.</p>
        </div>

        <div class="feature-card">
            <h3>🤖 AI Recommendations</h3>
            <p>Get personalized exercise recommendations using an AI API.</p>
        </div>

        <div class="feature-card">
            <h3>📊 Progress Tracking</h3>
            <p>Record completed activities and monitor your progress.</p>
        </div>

    </div>

</asp:Content>