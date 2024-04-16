<%@ Page Title="" Language="C#" MasterPageFile="~/budget.Master" AutoEventWireup="true" CodeBehind="Income.aspx.cs" Inherits="budgetapp.Income" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
        }

        .container {
            max-width: 500px;
            background-color: #fff;
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin: 50px auto;
           
        }

        h2 {
            color: #007bff;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
            color: #555;
        }

        input[type="text"],
        input[type="number"],
        select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type="date"] {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .btn-primary {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }

            .btn-primary i {
                margin-right: 5px;
            }

        @media only screen and (min-width: 1400px) {
            .container, .container-lg, .container-md, .container-sm, .container-xl, .container-xxl {
                max-width: 1140px;
            }
        }

        /* Add some responsiveness to adjust the layout on smaller screens */
        @media (max-width: 768px) {
            .container {
                max-width: 100%;
                padding: 10px;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2><i class="fas fa-dollar-sign"></i>Income Section</h2>
        <div class="row">
            <div class="col-md-4">
                <asp:Label runat="server" AssociatedControlID="incomeSource">
                <i class="fas fa-hand-holding-usd"></i> Income Source
                </asp:Label>
                <asp:TextBox runat="server" ID="incomeSource" CssClass="form-control" placeholder="Enter income source"></asp:TextBox>
            </div>
            <div class="col-md-4">
                <asp:Label runat="server" AssociatedControlID="incomeAmount">
                <i class="fas fa-dollar-sign"></i> Income Amount
                </asp:Label>
                <asp:TextBox runat="server" ID="incomeAmount" CssClass="form-control" placeholder="Enter income amount"></asp:TextBox>
            </div>
            <div class="col-md-4">
                <asp:Label runat="server" AssociatedControlID="incomeFrequency">
                <i class="far fa-calendar-alt"></i> Income Frequency
                </asp:Label>
                <asp:DropDownList runat="server" ID="incomeFrequency" CssClass="form-control">
                    <asp:ListItem Text="Monthly" Value="Monthly" />
                    <asp:ListItem Text="Bi-Weekly" Value="Bi-Weekly" />
                    <asp:ListItem Text="Weekly" Value="Weekly" />
                </asp:DropDownList>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-md-4">
                <asp:Label runat="server" AssociatedControlID="incomeDate">
                <i class="far fa-calendar"></i> Income Date
                </asp:Label>
                <asp:TextBox runat="server" ID="incomeDate" CssClass="form-control" TextMode="Date"></asp:TextBox>
            </div>
            <div class="col-md-4">
                <asp:Label runat="server" AssociatedControlID="incomeType">
                <i class="fas fa-briefcase"></i> Income Recept No.
                </asp:Label>
                <asp:DropDownList runat="server" ID="incomeType" CssClass="form-control">
                    <asp:ListItem Text="Primary Job" Value="Primary Job" />
                    <asp:ListItem Text="Secondary Job" Value="Secondary Job" />
                    <asp:ListItem Text="Passive Income" Value="Passive Income" />
                </asp:DropDownList>
            </div>
            <div class="col-md-4">
                <asp:Label runat="server" AssociatedControlID="incomeTaxPercentage">
                <i class="fas fa-file-invoice-dollar"></i> Income Tax Percentage
                </asp:Label>
                <asp:TextBox runat="server" ID="incomeTaxPercentage" CssClass="form-control" placeholder="Enter tax percentage"></asp:TextBox>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-4">
                <asp:Label runat="server" AssociatedControlID="Account">
                <i class="fas fa-credit-card"></i> Account 
                </asp:Label>
                <asp:TextBox runat="server" ID="Account" CssClass="form-control" TextMode="Number" placeholder="Add Account "></asp:TextBox>
            </div>
            <div class="col">
                <asp:Label runat="server" AssociatedControlID="incomeNotes">
                <i class="fas fa-file-alt"></i> Notes
                </asp:Label>
                <asp:TextBox runat="server" ID="incomeNotes" CssClass="form-control" TextMode="MultiLine" Rows="4" placeholder="Add notes"></asp:TextBox>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col">
                <div>
                    <asp:Button runat="server" ID="btnSaveIncome" CssClass="btn btn-primary" Text=" Save Income" OnClick="btnSaveIncome_Click" />
                </div>
            </div>
        </div>
    </div>

</asp:Content>

