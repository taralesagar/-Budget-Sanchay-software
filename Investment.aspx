<%@ Page Title="" Language="C#" MasterPageFile="~/budget.Master" AutoEventWireup="true" CodeBehind="Investment.aspx.cs" Inherits="budgetapp.Investment" %>

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
        <h2><i class="fas fa-money-bill"></i> Investment Section</h2>
        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="investmentName">
                        <i class="fas fa-wallet"></i> Investment Name
                    </asp:Label>
                    <asp:TextBox runat="server" ID="investmentName" CssClass="form-control" placeholder="Enter investment name"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="investmentType">
                        <i class="fas fa-chart-pie"></i> Investment Type
                    </asp:Label>
                  <%--  <asp:DropDownList runat="server" ID="investmentType" CssClass="form-control">
                        <asp:ListItem Text="Equities" Value="Equities" />
                        <asp:ListItem Text="Fixed Income" Value="Fixed Income" />
                        <asp:ListItem Text="Real Estate" Value="Real Estate" />
                        <asp:ListItem Text="Commodities" Value="Commodities" />
                    </asp:DropDownList>--%>

                    <asp:DropDownList ID="investmentType" runat="server" CssClass="form-control">
                            <asp:ListItem Value="StockMarket">Stock Market</asp:ListItem>
                            <asp:ListItem Value="MutualFunds">Mutual Funds</asp:ListItem>
                            <asp:ListItem Value="FixedDeposits">Fixed Deposits (FD)</asp:ListItem>
                            <asp:ListItem Value="RealEstate">Real Estate</asp:ListItem>
                            <asp:ListItem Value="Gold">Gold</asp:ListItem>
                            <asp:ListItem Value="GovernmentSecurities">Government Securities</asp:ListItem>
                            <asp:ListItem Value="PublicProvidentFund">Public Provident Fund (PPF)</asp:ListItem>
                            <asp:ListItem Value="NationalPensionSystem">National Pension System (NPS)</asp:ListItem>
                            <asp:ListItem Value="SovereignGoldBonds">Sovereign Gold Bonds (SGB)</asp:ListItem>
                            <asp:ListItem Value="InitialPublicOfferings">Initial Public Offerings (IPOs)</asp:ListItem>
                            <asp:ListItem Value="CorporateBonds">Corporate Bonds</asp:ListItem>
                            <asp:ListItem Value="RealEstateInvestmentTrusts">Real Estate Investment Trusts (REITs)</asp:ListItem>
                            <asp:ListItem Value="StartupInvestments">Startup Investments</asp:ListItem>
                            <asp:ListItem Value="Cryptocurrency">Cryptocurrency</asp:ListItem>
                            <asp:ListItem Value="Commodities">Commodities</asp:ListItem>
                            <asp:ListItem Value="EmployeeProvidentFund">Employee Provident Fund (EPF)</asp:ListItem>
                            <asp:ListItem Value="NationalSavingsCertificate">National Savings Certificate (NSC)</asp:ListItem>
                            <asp:ListItem Value="PostOfficeMonthlyIncomeScheme">Post Office Monthly Income Scheme (POMIS)</asp:ListItem>
                            <asp:ListItem Value="SeniorCitizenSavingsScheme">Senior Citizen Savings Scheme (SCSS)</asp:ListItem>
                            <asp:ListItem Value="TaxSavingFixedDeposits">Tax-saving Fixed Deposits</asp:ListItem>
                            <asp:ListItem Value="SystematicInvestmentPlans">Systematic Investment Plans (SIPs)</asp:ListItem>
                            <asp:ListItem Value="NationalSavingsScheme">National Savings Scheme (NSS)</asp:ListItem>
                            <asp:ListItem Value="BondsIssuedByPublicSectorUndertakings">Bonds issued by Public Sector Undertakings (PSUs)</asp:ListItem>
                            <asp:ListItem Value="ExchangeTradedFunds">Exchange-Traded Funds (ETFs)</asp:ListItem>
                            <asp:ListItem Value="DirectEquityInvestments">Direct Equity Investments</asp:ListItem>
                            <asp:ListItem Value="CertificateOfDeposit">Certificate of Deposit (CD)</asp:ListItem>
                            <asp:ListItem Value="PeerToPeerLending">Peer-to-Peer Lending</asp:ListItem>
                            <asp:ListItem Value="InfrastructureBonds">Infrastructure Bonds</asp:ListItem>
                            <asp:ListItem Value="UnitLinkedInsurancePlans">Unit Linked Insurance Plans (ULIPs)</asp:ListItem>
                            <asp:ListItem Value="EducationSavingsSchemes">Education Savings Schemes (e.g., Sukanya Samriddhi Yojana)</asp:ListItem>
                            <asp:ListItem Value="NonConvertibleDebentures">Non-Convertible Debentures (NCDs)</asp:ListItem>
                            <asp:ListItem Value="CorporateFixedDeposits">Corporate Fixed Deposits</asp:ListItem>
                            <asp:ListItem Value="GoldMonetizationScheme">Gold Monetization Scheme</asp:ListItem>
                            <asp:ListItem Value="MicrofinanceInvestments">Microfinance Investments</asp:ListItem>
                            <asp:ListItem Value="SmallSavingsSchemes">Small Savings Schemes (e.g., Kisan Vikas Patra)</asp:ListItem>
                            <asp:ListItem Value="EmployeeStockOwnershipPlans">Employee Stock Ownership Plans (ESOPs)</asp:ListItem>
                            <asp:ListItem Value="SectorSpecificMutualFunds">Sector-specific Mutual Funds (e.g., Technology Funds, Healthcare Funds)</asp:ListItem>
                            <asp:ListItem Value="RealEstateCrowdfunding">Real Estate Crowdfunding</asp:ListItem>
                            <asp:ListItem Value="StructuredProducts">Structured Products (e.g., Equity-linked Notes)</asp:ListItem>
                            <asp:ListItem Value="InternationalMutualFunds">International Mutual Funds (Investing in overseas markets)</asp:ListItem>
                            <asp:ListItem Value="ArtAndCollectibles">Art and Collectibles</asp:ListItem>
                            <asp:ListItem Value="VentureDebt">Venture Debt</asp:ListItem>
                            <asp:ListItem Value="GreenBonds">Green Bonds</asp:ListItem>
                            <asp:ListItem Value="RenewableEnergyInvestments">Renewable Energy Investments</asp:ListItem>
                            <asp:ListItem Value="SociallyResponsibleInvesting">Socially Responsible Investing (SRI) Funds</asp:ListItem>
                            <asp:ListItem Value="RuralInfrastructureDevelopmentFunds">Rural Infrastructure Development Funds</asp:ListItem>
                            <asp:ListItem Value="ExchangeTradedBonds">Exchange-Traded Bonds (EBs)</asp:ListItem>
                            <asp:ListItem Value="InsurancePoliciesWithInvestmentComponents">Insurance Policies with Investment Components (e.g., Endowment Plans, Unit-linked Insurance Plans)</asp:ListItem>
                            <asp:ListItem Value="EquitySavingsSchemes">Equity Savings Schemes</asp:ListItem>
                            <asp:ListItem Value="TreasuryInflationProtectedSecurities">Treasury Inflation-Protected Securities (TIPS)</asp:ListItem>
                      </asp:DropDownList>



                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="investmentAccount">
                        <i class="fas fa-credit-card"></i> Investment Account
                    </asp:Label>
                    <asp:TextBox runat="server" ID="investmentAccount" CssClass="form-control" placeholder="Enter investment account"></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="transactionDate">
                        <i class="far fa-calendar"></i> Transaction Date
                    </asp:Label>
                    <asp:TextBox runat="server" ID="transactionDate" CssClass="form-control" TextMode="Date"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="transactionType">
                        <i class="fas fa-exchange-alt"></i> Transaction Type
                    </asp:Label>
                    <asp:DropDownList runat="server" ID="transactionType" CssClass="form-control">
                        <asp:ListItem Text="Buy" Value="Buy" />
                        <asp:ListItem Text="Sell" Value="Sell" />
                        <asp:ListItem Text="Dividend" Value="Dividend" />
                        <asp:ListItem Text="Interest" Value="Interest" />
                    </asp:DropDownList>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="transactionAmount">
                        <i class="fas fa-dollar-sign"></i> Transaction Amount
                    </asp:Label>
                    <asp:TextBox runat="server" ID="transactionAmount" CssClass="form-control" placeholder="Enter transaction amount"></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="riskLevel">
                        <i class="fas fa-chart-line"></i> Risk Level
                    </asp:Label>
                    <asp:DropDownList runat="server" ID="riskLevel" CssClass="form-control">
                        <asp:ListItem Text="Low" Value="Low" />
                        <asp:ListItem Text="Medium" Value="Medium" />
                        <asp:ListItem Text="High" Value="High" />
                        <asp:ListItem Text="Very High" Value="Very High" />
                    </asp:DropDownList>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="taxImplications">
                        <i class="fas fa-file-invoice-dollar"></i> Tax Implications
                    </asp:Label>
                    <asp:TextBox runat="server" ID="taxImplications" CssClass="form-control" placeholder="Enter tax implications"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="investmentReciptno">
                        <i class="fas fa-balance-scale"></i> Investment Recipt No
                    </asp:Label>
                    <asp:TextBox runat="server" ID="investmentReciptno" CssClass="form-control" placeholder="Enter investment balance"></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="providerBroker">
                        <i class="fas fa-user-tie"></i> Provider/Broker
                    </asp:Label>
                    <asp:TextBox runat="server" ID="providerBroker" CssClass="form-control" placeholder="Enter provider/broker"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="investmentPerformance">
                        <i class="fas fa-chart-line"></i> Investment Performance
                    </asp:Label>
                    <asp:TextBox runat="server" ID="investmentPerformance" CssClass="form-control" placeholder="Enter investment performance"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="Investmentinstallment">
                        <i class="fas fa-globe"></i> Investment Installment
                    </asp:Label>
                    <asp:TextBox runat="server" ID="investmentInstallment" CssClass="form-control" TextMode="Number" placeholder="Enter Installment Number"></asp:TextBox>
                   
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="investmentDescription">
                        <i class="fas fa-file-alt"></i> Investment Description
                    </asp:Label>
                    <asp:TextBox runat="server" ID="investmentDescription" CssClass="form-control" TextMode="MultiLine" Rows="4" placeholder="Add description"></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <asp:Button runat="server" ID="btnSaveInvestment" OnClick="btnSaveInvestment_Click" CssClass="btn btn-primary" Text="Save Investment" />
            </div>
        </div>
    </div>
</asp:Content>
