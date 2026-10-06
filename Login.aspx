<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Login.aspx.cs"
    Inherits="SmartFitnessPlanner.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>Login - Smart Fitness Planner</title>

    <style>

        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #f3f0ff, #ffffff);
            min-height: 100vh;
        }

        .login-container {
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 30px;
        }

        .login-card {
            width: 900px;
            max-width: 100%;
            min-height: 500px;
            background: white;
            border-radius: 22px;
            box-shadow: 0 12px 35px rgba(0,0,0,0.12);
            display: flex;
            overflow: hidden;
        }

        .login-left {
            width: 50%;
            background: #6c4ab6;
            color: white;
            padding: 55px 45px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .login-left h1 {
            font-size: 36px;
            margin-bottom: 15px;
        }

        .login-left p {
            font-size: 17px;
            line-height: 1.6;
            opacity: 0.95;
        }

        .features {
            margin-top: 25px;
        }

        .features p {
            margin: 12px 0;
            font-size: 15px;
        }

        .login-right {
            width: 50%;
            padding: 55px 50px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .login-right h2 {
            color: #333;
            font-size: 30px;
            margin-bottom: 8px;
        }

        .subtitle {
            color: #777;
            margin-bottom: 30px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #444;
        }

        .input-box {
            width: 100%;
            padding: 13px 15px;
            border: 1px solid #ddd;
            border-radius: 10px;
            font-size: 15px;
            outline: none;
        }

        .input-box:focus {
            border-color: #6c4ab6;
        }

        .login-button {
            width: 100%;
            padding: 14px;
            background: #6c4ab6;
            color: white;
            border: none;
            border-radius: 10px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            margin-top: 8px;
        }

        .login-button:hover {
            background: #563799;
        }

        .message {
            display: block;
            margin-top: 15px;
            color: #d9534f;
            text-align: center;
        }

        .footer-text {
            text-align: center;
            margin-top: 25px;
            color: #777;
            font-size: 14px;
        }

        @media (max-width: 700px) {

            .login-card {
                flex-direction: column;
            }

            .login-left,
            .login-right {
                width: 100%;
            }

            .login-left {
                padding: 35px;
            }

            .login-right {
                padding: 35px;
            }
        }

    </style>

</head>

<body>

    <form id="form1" runat="server">

        <div class="login-container">

            <div class="login-card">

                <!-- LEFT SIDE -->

                <div class="login-left">

                    <h1>Smart Fitness</h1>

                    <p>
                        Plan your workouts, track your progress,
                        and stay consistent with your fitness journey.
                    </p>

                    <div class="features">

                        <p>✓ Exercise Library</p>

                        <p>✓ Personalized Recommendations</p>

                        <p>✓ Exercise Planning</p>

                        <p>✓ Progress Tracking</p>

                    </div>

                </div>


                <!-- RIGHT SIDE -->

                <div class="login-right">

                    <h2>Welcome Back!</h2>

                    <p class="subtitle">
                        Login to continue to your fitness planner.
                    </p>


                    <div class="form-group">

                        <label>Email</label>

                        <asp:TextBox
                            ID="txtEmail"
                            runat="server"
                            CssClass="input-box"
                            placeholder="Enter your email">
                        </asp:TextBox>

                    </div>


                    <div class="form-group">

                        <label>Password</label>

                        <asp:TextBox
                            ID="txtPassword"
                            runat="server"
                            TextMode="Password"
                            CssClass="input-box"
                            placeholder="Enter your password">
                        </asp:TextBox>

                    </div>


                    <asp:Button
                        ID="btnLogin"
                        runat="server"
                        Text="Login"
                        CssClass="login-button"
                        OnClick="btnLogin_Click" />


                    <asp:Label
                        ID="lblMessage"
                        runat="server"
                        CssClass="message">
                    </asp:Label>


                    <div class="footer-text">
                        Smart Fitness & Exercise Planner
                    </div>

                </div>

            </div>

        </div>

    </form>

</body>

</html>