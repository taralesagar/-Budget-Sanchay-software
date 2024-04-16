<%@ Page Title="" Language="C#" MasterPageFile="~/budget.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="budgetapp.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* About Us Section Style */
        .section {
            padding: 80px 0;
        }

            .section h2 {
                font-size: 36px;
                font-weight: bold;
                margin-bottom: 30px;
            }

            .section p {
                font-size: 18px;
                line-height: 1.6;
                margin-bottom: 20px;
            }

            .section ul {
                margin-bottom: 20px;
            }

                .section ul li {
                    list-style-type: disc;
                }

        .developer-photo {
            width: 20%;
            height: auto;
            border-radius: 10px;
            margin-bottom: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="about" class="section">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <h2>About Our Budgeting Software</h2>
                    <h3>SagarSanchay </h3>
                    <h4>i.e.,-(Ocean of Savings)</h4>
                    <p>Our budgeting software is designed to help individuals effectively manage their finances and Easy to Manage there  Day-to-Day finances. With intuitive features and user-friendly interface, our software makes budgeting easy and efficient.</p>
                    <p>Key features include:</p>
                    <ul>
                        <li>Expense tracking</li>
                        <li>Budget forecasting</li>
                        <li>Investment Tracking with Data</li>
                        <li>Reports and analytics</li>
                        <li>Integration with banking and financial institutions (In Updated Version)</li>
                    </ul>
                    <p>Our vision is to empower users to take control of their finances, make informed financial decisions, and achieve easy finance and success..</p>
                </div>
                <div class="col-lg-6">
                    <h2>About the Developer</h2>
                    <div class="developer-info">
                        <img src="sagartarale.jpg" alt="John Doe" class="developer-photo">
                        <p>Hi, I'm SAGAR S TARALE, the developer behind our budgeting software. With over 6 Months+  of experience in software development, I'm passionate about creating innovative solutions that make a positive impact.</p>
                        <p>I hold a Bachelor's degree in Information Technology from Rajiv Gandhi College of Engineering and Reseach . I believe in continuous learning and staying updated with the latest industry trends.</p>
                        <p>My background in finance and technology has inspired me to create this budgeting software, with the goal of helping individuals and businesses achieve financial success.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
