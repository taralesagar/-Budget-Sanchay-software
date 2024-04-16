<%@ Page Title="" Language="C#" MasterPageFile="~/budget.Master" AutoEventWireup="true" CodeBehind="Investment_report.aspx.cs" Inherits="budgetapp.Investment_report" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style>
         .gridv {
            padding: 20px;
            overflow-x: auto; /* Enable horizontal scrolling for small screens */
        }

        /* Header styles */
        .gridv th {
            background-color: #2c3e50;
            color: #a8df65;
            padding: 10px;
            text-align: center;
        }

        /* Row styles */
        .gridv tr {
            background-color: #f8f8f8;
        }

        /* Alternate row styles */
        .gridv tr:nth-child(even) {
            background-color: #e8e8e8;
        }

        /* Cell styles */
        .gridv td {
            padding: 6px;
            text-align: center;
        }

        /* Edit and delete buttons styles */
        .gridv .btn_Edit,
        .gridv .btn_Delete,
        .gridv .btn_Update,
        .gridv .btn_Cancel {
            padding: 6px 10px;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .gridv .btn_Edit,
        .gridv .btn_Delete {
            background-color: #a8df65;
            color: #fff;
            border: none;
        }

        .gridv .btn_Edit:hover,
        .gridv .btn_Delete:hover {
            background-color: #6fa345;
        }

        .gridv .btn_Update,
        .gridv .btn_Cancel {
            
            background-color: #4caf50;
            color: #fff;
            border: none;
        }

        .gridv .btn_Update:hover,
        .gridv .btn_Cancel:hover {
            background-color: #367b36;
        }

        /* Responsive styles */
        @media screen and (max-width: 768px) {
            .gridv {
                width: 100%; /* Ensure full width on small screens */
            }

            .gridv th,
            .gridv td {
                padding: 6px; /* Adjust cell padding for better spacing */
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="gridv">
        <h2>Investment Report</h2>
        <asp:GridView ID="GridView1" AutoGenerateColumns="false" OnRowDeleting="GridView1_RowDeleting" DataKeyNames="ID" OnRowUpdating="GridView1_RowUpdating" OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit" runat="server">
               <Columns>
                <asp:TemplateField HeaderText="Id">
                    <ItemTemplate>
                        <asp:Label ID="ld_lbl" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="IVM ID">
                    <ItemTemplate>
                        <asp:Label ID="lbl_ivm_id" runat="server" Text='<%#Eval("Investment_id") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_ivm_id" runat="server" Text='<%#Eval("Investment_id") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="IVM NAME">
                    <ItemTemplate>
                        <asp:Label ID="lbl_ivm_name" runat="server" Text='<%#Eval("Investment_name") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_ivm_name" runat="server" Text='<%#Eval("Investment_name") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="IVM TYPE">
                    <ItemTemplate>
                        <asp:Label ID="lbl_ivm_type" runat="server" Text='<%#Eval("Investment_type") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_ivm_type" runat="server" Text='<%#Eval("Investment_type") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="IVM ACC">
                    <ItemTemplate>
                        <asp:Label ID="lbl_ivm_acc" runat="server" Text='<%#Eval("Investment_account") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_ivm_acc" runat="server" Text='<%#Eval("Investment_account") %>'></asp:TextBox>
                    </EditItemTemplate>

                </asp:TemplateField>
                  <asp:TemplateField HeaderText="IVM Date">
                    <ItemTemplate>
                        <asp:Label ID="lbl_ivm_date" runat="server" Text='<%#Eval("Transaction_date") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_ivm_date" runat="server" Text='<%#Eval("Transaction_date") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="IVM Trans. Type">
                    <ItemTemplate>
                        <asp:Label ID="lbl_ivm_trytype" runat="server" Text='<%#Eval("Transaction_type") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_ivm_trytype" runat="server" Text='<%#Eval("Transaction_type") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="IVM AMO">
                    <ItemTemplate>
                        <asp:Label ID="lbl_ivm_amo" runat="server" Text='<%#Eval("Transaction_amount") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_ivm_amo" runat="server" Text='<%#Eval("Transaction_amount") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="IVM Risk">
                    <ItemTemplate>
                        <asp:Label ID="lbl_ivm_risk_lvl" runat="server" Text='<%#Eval("Risk_level") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_ivm_risk_lvl" runat="server" Text='<%#Eval("Risk_level") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="IVM TAX">
                    <ItemTemplate>
                        <asp:Label ID="lbl_ivm_tax" runat="server" Text='<%#Eval("Tax_implication") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_ivm_tax" runat="server" Text='<%#Eval("Tax_implication") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                    <asp:TemplateField HeaderText="IVM Recipt">
                    <ItemTemplate>
                        <asp:Label ID="lbl_ivm_recipt" runat="server" Text='<%#Eval("Investment_Recipt_No") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_ivm_recipt" runat="server" Text='<%#Eval("Investment_Recipt_No") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                     <asp:TemplateField HeaderText="IVM Brocker">
                    <ItemTemplate>
                        <asp:Label ID="lbl_ivm_brocker" runat="server" Text='<%#Eval("Provider_Broker") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_ivm_brocker" runat="server" Text='<%#Eval("Provider_Broker") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                     <asp:TemplateField HeaderText="IVM Performance">
                    <ItemTemplate>
                        <asp:Label ID="lbl_ivm_performance" runat="server" Text='<%#Eval("Investment_performance") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_ivm_performance" runat="server" Text='<%#Eval("Investment_performance") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                     <asp:TemplateField HeaderText="IVM Installment">
                    <ItemTemplate>
                        <asp:Label ID="lbl_ivm_installment" runat="server" Text='<%#Eval("Investment_installment") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_ivm_installment" runat="server" Text='<%#Eval("Investment_installment") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                        <asp:TemplateField HeaderText="IVM Installment">
                    <ItemTemplate>
                        <asp:Label ID="lbl_ivm_description" runat="server" Text='<%#Eval("Investment_description") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_ivm_description" runat="server" Text='<%#Eval("Investment_description") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                  <asp:TemplateField HeaderText="UPDATE">
                    <ItemTemplate>
                        <asp:Button ID="btn_Edit" runat="server" CssClass="btn_Edit" Text="EDIT" CommandName="Edit" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:Button ID="btn_Update" runat="server" CssClass="btn_Update" Text="UPDATE" CommandName="Update" />
                        <asp:Button ID="btn_Cancel" runat="server" CssClass="btn_Cancel" Text="CANCEL" CommandName="Cancel" />
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="DELETE">
                    <ItemTemplate>
                        <asp:Button ID="btn_Delete" runat="server" CssClass="btn_Delete" Text="DELETE" CommandName="Delete" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
