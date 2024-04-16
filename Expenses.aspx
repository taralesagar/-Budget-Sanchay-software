<%@ Page Title="" Language="C#" MasterPageFile="~/budget.Master" AutoEventWireup="true" CodeBehind="Expenses.aspx.cs" Inherits="budgetapp.Expenses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
        }

        .container {
                /*position: fixed;*/
            max-width: 600px;
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
        <h2><i class="fas fa-money-bill"></i> Expenses Section</h2>
        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="expenseCategory">
                        <i class="fas fa-list-alt"></i> Expense Category
                    </asp:Label>
                    <asp:TextBox runat="server" ID="expenseCategory" CssClass="form-control" placeholder="Enter expense category"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="expenseAmount">
                        <i class="fas fa-dollar-sign"></i> Expense Amount
                    </asp:Label>
                    <asp:TextBox runat="server" ID="expenseAmount" CssClass="form-control" placeholder="Enter expense amount"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="expenseDate">
                        <i class="far fa-calendar"></i> Expense Date
                    </asp:Label>
                    <asp:TextBox runat="server" ID="expenseDate" CssClass="form-control" TextMode="Date"></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="paymentMethod">
                        <i class="far fa-credit-card"></i> Payment Method
                    </asp:Label>
                    <asp:DropDownList runat="server" ID="paymentMethod" CssClass="form-control">
                         <asp:ListItem Text="UPI" Value="UPI" />
                        <asp:ListItem Text="Cash" Value="Cash" />
                        <asp:ListItem Text="Debit Card" Value="Debit Card" />
                        <asp:ListItem Text="Credit Card" Value="Credit Card" />
                    </asp:DropDownList>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="expensereciptno">
                        <i class="fas fa-hand-holding-usd"></i> Receipt/Invoice Number
                    </asp:Label>
                    <asp:TextBox runat="server" ID="expensereciptno" CssClass="form-control" placeholder="Enter expense recipt no"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="expenseType">
                        <i class="fas fa-receipt"></i> Expense Type
                    </asp:Label>
                    <asp:TextBox runat="server" ID="expenseType" CssClass="form-control" placeholder="Enter expense type"></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="expenseDescription">
                        <i class="fas fa-file-alt"></i> Expense Description
                    </asp:Label>
                    <asp:TextBox runat="server" ID="expenseDescription" CssClass="form-control" TextMode="MultiLine" Rows="4" placeholder="Add description"></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <asp:Button runat="server" ID="btnSaveExpense" CssClass="btn btn-primary" OnClick="btnSaveExpense_Click" Text='Save Expense' />
            </div>
        </div>
    </div>
</asp:Content>
