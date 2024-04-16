<%@ Page Title="" Language="C#" MasterPageFile="~/budget.Master" AutoEventWireup="true" CodeBehind="Debt.aspx.cs" Inherits="budgetapp.Debt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
        }

        .container {
            max-width: 600px;
            background-color: #fff;
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin: 50px auto;
                /*position: fixed;*/
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
    <h2><i class="fas fa-money-bill-wave m-2"></i> Debt Section</h2>
    <div class="row">
        <div class="col-md-4">
            <asp:Label runat="server" AssociatedControlID="DebtorName">
                <i class="fas fa-user"></i> Debtor Name

            </asp:Label>
            <asp:TextBox runat="server" ID="DebtorName" CssClass="form-control" placeholder="Enter Debtor Name:"></asp:TextBox>
        </div>
        <div class="col-md-4">
            <asp:Label runat="server" AssociatedControlID="Debtoraddress">
               <i class="fas fa-home"></i> Debtor Address
            </asp:Label>
            <asp:TextBox runat="server" ID="Debtoraddress" CssClass="form-control" placeholder="Enter Debtor address"></asp:TextBox>
        </div>
        <div class="col-md-4">
            <asp:Label runat="server" AssociatedControlID="DebtorContactInformation">
                <i class="fas fa-phone"></i>Debtor Contact Information
            </asp:Label>
            <asp:TextBox runat="server" ID="DebtorContactInformation" CssClass="form-control" placeholder="Enter Debtor Contact Information" TextMode="Number"></asp:TextBox>
        </div>
    </div>
        <br />
    <div class="row">
        <div class="col-md-4">
            <asp:Label runat="server" AssociatedControlID="CreditorName">
                <i class="fas fa-user"></i>Creditor Name
            </asp:Label>
            <asp:TextBox runat="server" ID="CreditorName" CssClass="form-control" placeholder="Enter Creditor Name"></asp:TextBox>
        </div>
        <div class="col-md-4">
           <asp:Label runat="server" AssociatedControlID="CreditorAddress">
                <i class="fas fa-home"></i> Creditor Address
            </asp:Label>
            <asp:TextBox runat="server" ID="CreditorAddress" CssClass="form-control" placeholder="Enter Creditor Address"></asp:TextBox>
        </div>
        <div class="col-md-4">
            <asp:Label runat="server" AssociatedControlID="CreditorContactInformation">
                <i class="fas fa-phone"></i> Creditor Contact Information
            </asp:Label>
            <asp:TextBox runat="server" ID="CreditorContactInformation" CssClass="form-control" placeholder="Enter Creditor Contact Information"></asp:TextBox>
        </div>
    </div>
        <br />
    <div class="row">
        <div class="col-md-4">
            <asp:Label runat="server" AssociatedControlID="AmountOwed">
                <i class="fas fa-dollar-sign"></i> Amount Owed
            </asp:Label>
            <asp:TextBox runat="server" ID="AmountOwed" CssClass="form-control" TextMode="Number" placeholder="Enter Amount Owed"></asp:TextBox>
        </div>
        <div class="col-md-4">
            <asp:Label runat="server" AssociatedControlID="RepaymentTerms">
                <i class="fas fa-file-invoice-dollar"></i> Repayment Terms
            </asp:Label>
            <asp:TextBox runat="server" ID="RepaymentTerms" CssClass="form-control"  Rows="4" placeholder="Enter Repayment Terms"></asp:TextBox>
        </div>
        <div class="col-md-4">
            <asp:Label runat="server" AssociatedControlID="InterestRate">
                <i class="fas fa-percent"></i> Interest Rate (if applicable)
            </asp:Label>
            <asp:TextBox runat="server" ID="InterestRate" CssClass="form-control" TextMode="Number"  placeholder="Add Interest Rate "></asp:TextBox>
        </div>
    </div>
        <br />
        <div class="row">
        <div class="col-md-4">
            <asp:Label runat="server" AssociatedControlID="CollateralDetails">
                <i class="fas fa-key"></i> Collateral Details
            </asp:Label>
            <asp:TextBox runat="server" ID="CollateralDetails" CssClass="form-control"  placeholder="Enter Collateral Details"></asp:TextBox>
        </div>
        <div class="col-md-4">
            <asp:Label runat="server" AssociatedControlID="DateofAgreement">
                <i class="fas fa-calendar"></i> Date of Agreement
            </asp:Label>
            <asp:TextBox runat="server" ID="DateofAgreement" CssClass="form-control" TextMode="Date"  Rows="4" placeholder="Enter Date of Agreement"></asp:TextBox>
        </div>
        <div class="col-md-4">
            <asp:Label runat="server" AssociatedControlID="WitnessSignature">
                <i class="fas fa-user-check"></i>Witness Signature
            </asp:Label>
            <asp:TextBox runat="server" ID="WitnessSignature" CssClass="form-control"   placeholder="Add Witness Signature"></asp:TextBox>
        </div>
    </div>
        <br />

     <div class="row">
        <div class="col-md-4">
            <asp:Label runat="server" AssociatedControlID="DebtorSignature">
                <i class="fas fa-signature"></i> Debtor Signature
            </asp:Label>
            <asp:TextBox runat="server" ID="DebtorSignature" CssClass="form-control"  placeholder="Enter Debtor Signature"></asp:TextBox>
        </div>
        <div class="col-md-4">
            <asp:Label runat="server" AssociatedControlID="CreditorSignature">
                <i class="fas fa-signature"></i> Creditor Signature
            </asp:Label>
            <asp:TextBox runat="server" ID="CreditorSignature" CssClass="form-control"   placeholder="Enter Creditor Signature"></asp:TextBox>
        </div>
        <div class="col-md-4">
            <asp:Label runat="server" AssociatedControlID="Notes">
                <i class="fas fa-sticky-note"></i>Note
            </asp:Label>
            <asp:TextBox runat="server" ID="Notes" CssClass="form-control"   placeholder="Add Notes"></asp:TextBox>
        </div>
    </div>
    <br />
    <div class="row">
        <div class="col">
            <div  > <asp:Button runat="server" ID="btnSave" OnClick="btnSave_Click" CssClass="btn btn-primary" Text=" Save "  /></div>
        </div>
    </div>
</div>
</asp:Content>
