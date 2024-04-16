<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="budgetapp.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: montserrat;
            background: linear-gradient(120deg, #a8df65, #2c3e50);
            height: 100vh;
            overflow: hidden;
        }

        .center {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 400px;
            background: white;
            ;
            border-radius: 10px;
        }

            .center h1 {
                text-align: center;
                padding: 0 0 20px 0;
                border-bottom: 1px solid silver;
            }

            .center form {
                padding: 0 40px;
                box-sizing: border-box;
            }

        form .txt_field {
            position: relative;
            border-bottom: 2px solid #adadad;
            margin: 30px 0;
        }

        .txt_field input {
            width: 100%;
            padding: 0 5px;
            height: 40px;
            font-size: 16px;
            border: none;
            background: none;
            outline: none;
        }

        .txt_field label {
            position: absolute;
            top: 50%;
            left: 5px;
            color: #adadad;
            transform: translateY(-50%);
            font-size: 16px;
            pointer-events: none;
            transition: .5s;
        }

        .txt_field span::before {
            content: '';
            position: absolute;
            top: 40px;
            left: 0px;
            width: 0%;
            height: 2px;
            background: #6fa345;

        }

        .txt_field input:focus ~ label,
        .txt_field input:valid ~ label {
            top: -5px;
            color: #6fa345;
        }

        .txt_field input:focus ~ span::before,
        .txt_field input:valid ~ span::before {
            width: 100%;
        }

        .pass {
            margin: -5px 0 20px 5px;
            color: #a6a6a6;
            cursor: pointer;
        }

            .pass:hover {
                text-decoration: underline;
            }

        input[type="submit"] {
            width: 100%;
            height: 50px;
            border: 1px solid;
            background: #6fa345;
            border-radius: 25px;
            font-size: 18px;
            color: #e9f4fb;
            font-weight: 700;
            cursor: pointer;
            outline: none;
        }

            input[type="submit"]:hover {
                border-color: #6fa345;
                transition: .5s;
            }

        .signup_link {
            margin: 30px 0;
            text-align: center;
            font-size: 16px;
            color: #666666;
        }

            .signup_link a {
                color: #2691d9;
                text-decoration: none;
            }

                .signup_link a:hover {
                    text-decoration: underline;
                }
    </style>
</head>
<body>
    <div class="center">
        <h1>Login</h1>
        <form method="post" runat="server">
            <div class="txt_field">
                <%--<input id="text" type="text" required >--%>
                <asp:TextBox ID="username01" CssClass="input" runat="server"></asp:TextBox>
                <span></span>
                <label>Username</label>
            </div>
            <div class="txt_field">
                <asp:TextBox ID="pass" CssClass="input" runat="server" TextMode="Password"></asp:TextBox>
                <%--<input  type="password" required >--%>
                <span></span>
                <label>Password</label>
            </div>
            <%--<input type="submit" value="login">--%>
            <asp:Button ID="submit"  runat="server" Text="Login" />
            <div class="signup_link">
                Not a member? <a href="#">Signup</a>
            </div>

        </form>
    </div>
</body>
</html>
