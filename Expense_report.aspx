<%@ Page Title="" Language="C#" MasterPageFile="~/budget.Master" AutoEventWireup="true" CodeBehind="Expense_report.aspx.cs" Inherits="budgetapp.Expense_report" %>

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
          .search{

            background-color:#2c3e50;
            color:aliceblue;
            padding:20px;
            width:98%;
            border-radius:10px;
        }

        .gridvvs{
            width:97%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h2>Expense Source</h2>
          <div class="search">
        <h3>Search Data</h3><br />
        <div class="row">
            <div class="col-1">
                 <i class="fa-solid fa-calendar"> <asp:Label ID="lbl_date" runat="server" Text="Date"></asp:Label></i>
               
            </div>
            <div class="col-2">
                <asp:TextBox ID="txt_startdate" runat="server" TextMode="Date"></asp:TextBox>
            </div>
              <div class="col-2">
                 <i class="fa-solid fa-right-left"></i>
            </div>
            <div class="col-2">
                <asp:TextBox ID="txt_enddate" runat="server" TextMode="Date"></asp:TextBox>
            </div>
            <div class="col-2">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" />
            </div>
        </div>
    </div>



    <div class="gridv">

        <asp:GridView ID="GridView1" DataKeyNames="ID" CssClass="gridvvs" AutoGenerateColumns="false" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" runat="server">

            <Columns>
                <asp:TemplateField HeaderText="Id">

                    <ItemTemplate>
                        <asp:Label ID="lbl_id" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Expense ID">
                    <ItemTemplate>

                        <asp:Label ID="lbl_exp_id" runat="server" Text='<%#Eval("Expense_id") %>'></asp:Label>

                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_exp_id" runat="server" Text='<%#Eval("Expense_id") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Expense catagory">
                    <ItemTemplate>
                        <asp:Label ID="lbl_exp_cat" runat="server" Text='<%#Eval("Expense_catagory") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_exp_cat" runat="server" Text='<%#Eval("Expense_catagory") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Expense amount">
                    <ItemTemplate>
                        <asp:Label ID="lbl_exp_amo" runat="server" Text='<%#Eval("Expense_amount") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_exp_amo" runat="server" Text='<%#Eval("Expense_amount") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Expense date">
                    <ItemTemplate>
                        <asp:Label ID="lbl_exp_date" runat="server" Text='<%#Eval("Expense_date") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_exp_date" runat="server" Text='<%#Eval("Expense_date") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Expense method">
                    <ItemTemplate>
                        <asp:Label ID="lbl_exp_met" runat="server" Text='<%#Eval("Expense_method") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_exp_met" runat="server" Text='<%#Eval("Expense_method") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Expense recipt no">
                    <ItemTemplate>
                        <asp:Label ID="lbl_exp_reci" runat="server" Text='<%#Eval("Expense_recipt_no") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_exp_reci" runat="server" Text='<%#Eval("Expense_recipt_no") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Expense type">
                    <ItemTemplate>
                        <asp:Label ID="lbl_exp_type" runat="server" Text='<%#Eval("Expense_type") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_exp_type" runat="server" Text='<%#Eval("Expense_type") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Expense description">
                    <ItemTemplate>
                        <asp:Label ID="lbl_exp_desc" runat="server" Text='<%#Eval("Expense_description") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_exp_desc" runat="server" Text='<%#Eval("Expense_description") %>'></asp:TextBox>
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
