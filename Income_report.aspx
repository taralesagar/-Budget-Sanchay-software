<%@ Page Title="" Language="C#" MasterPageFile="~/budget.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Income_report.aspx.cs" Inherits="budgetapp.Income_report" %>
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
       <h2>INCOME REPORT</h2> <br />
    
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
        <asp:GridView ID="GridView1" CssClass="gridvvs" DataKeyNames="ID" OnRowDeleting="GridView1_RowDeleting" AutoGenerateColumns="false" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating" OnRowEditing="GridView1_RowEditing" runat="server">
            <Columns>
                <asp:TemplateField HeaderText="Id">
                    <ItemTemplate>
                        <asp:Label ID="ld_lbl" runat="server" Text='<%#Eval("id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="INC ID">
                    <ItemTemplate>
                        <asp:Label ID="lbl_icm_id" runat="server" Text='<%#Eval("Income_id") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_icm_id" runat="server" Text='<%#Eval("Income_id") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="INC Source">
                    <ItemTemplate>
                        <asp:Label ID="lbl_icm_source" runat="server" Text='<%#Eval("Income_source") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_icm_source" runat="server" Text='<%#Eval("Income_source") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="INC AMT">
                    <ItemTemplate>
                        <asp:Label ID="lbl_icm_amt" runat="server" Text='<%#Eval("Income_amount") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_icm_amt" runat="server" Text='<%#Eval("Income_amount") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="INC freq.">
                    <ItemTemplate>
                        <asp:Label ID="lbl_icm_frq" runat="server" Text='<%#Eval("Income_frequency") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_icm_frq" runat="server" Text='<%#Eval("Income_frequency") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                  <asp:TemplateField HeaderText="INC Date">
                    <ItemTemplate>
                        <asp:Label ID="lbl_icm_date" runat="server" Text='<%#Eval("Income_date") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_icm_date" runat="server" Text='<%#Eval("Income_date") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="INC Recipt">
                    <ItemTemplate>
                        <asp:Label ID="lbl_icm_recipt" runat="server" Text='<%#Eval("Income_recipt_no") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_icm_recipt" runat="server" Text='<%#Eval("Income_recipt_no") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="INC Tax">
                    <ItemTemplate>
                        <asp:Label ID="lbl_icm_tax" runat="server" Text='<%#Eval("Income_tax_percent") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_icm_tax" runat="server" Text='<%#Eval("Income_tax_percent") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="INC Note">
                    <ItemTemplate>
                        <asp:Label ID="lbl_icm_note" runat="server" Text='<%#Eval("Income_note") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_icm_note" runat="server" Text='<%#Eval("Income_note") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="INC ACC">
                    <ItemTemplate>
                        <asp:Label ID="lbl_icm_acc" runat="server" Text='<%#Eval("Income_account") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_icm_acc" runat="server" Text='<%#Eval("Income_account") %>'></asp:TextBox>
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
