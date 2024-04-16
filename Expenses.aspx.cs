using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace budgetapp
{
    public partial class Expenses : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-9MGM660\\SQLEXPRESS;Initial Catalog=budget_ISIE;Integrated Security=True;");
        string expenseid;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void ExpenseID()
        {
            con.Open();
            SqlCommand cmd1 = new SqlCommand("select count(Expense_id) from Expense_source", con);
            int i = Convert.ToInt32(cmd1.ExecuteScalar());
            i++;
            expenseid = "EPS0" + i.ToString();
            con.Close();
        }

        protected void btnSaveExpense_Click(object sender, EventArgs e)
        {
            ExpenseID();
            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO Expense_source([Expense_id],[Expense_catagory],[Expense_amount],[Expense_date],[Expense_method],[Expense_recipt_no],[Expense_type],[Expense_description]) VALUES ('" + expenseid + "','"+ expenseCategory.Text + "','"+ expenseAmount.Text + "','"+ expenseDate.Text + "','"+ paymentMethod.SelectedItem.Text + "','"+ expensereciptno.Text+ "','"+ expenseType.Text+ "','"+ expenseDescription.Text + "') ",con);
            cmd.ExecuteNonQuery();
            con.Close();

            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Saved Successfully'); window.location.href='Expense.aspx'; ", true);



        }
    }
}