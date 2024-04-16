using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

namespace budgetapp
{
    public partial class Income : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-9MGM660\\SQLEXPRESS;Initial Catalog=budget_ISIE;Integrated Security=True;");
        string incomeid;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void IncomeID()
        {
            con.Open();
            SqlCommand cmd1 = new SqlCommand("select count(Income_id) from Income_source", con);
            int i = Convert.ToInt32(cmd1.ExecuteScalar());
            i++;
            incomeid = "ICS0" + i.ToString();
            con.Close();
        }
        protected void btnSaveIncome_Click(object sender, EventArgs e)
        {
            IncomeID();
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Income_source([Income_id],[Income_source],[Income_amount],[Income_frequency],[Income_date],[Income_recipt_no],[Income_tax_percent],[Income_note],[Income_account]) values('" + incomeid + "','" + incomeSource.Text + "','"+ incomeAmount.Text + "','"+ incomeFrequency.SelectedItem.Text + "','"+ incomeDate.Text + "','"+ incomeType.SelectedItem.Text + "','"+ incomeTaxPercentage.Text + "','"+ incomeNotes.Text + "','"+ Account.Text + "' )", con);
            cmd.ExecuteNonQuery();
            con.Close();
            //incomeSource.Text = string.Empty;
            //incomeAmount.Text = string.Empty;
            //incomeFrequency.SelectedItem.Text = string.Empty;
            //incomeDate.Text = string.Empty;
            //incomeType.SelectedItem.Text = string.Empty;
            //incomeTaxPercentage.Text = string.Empty;
            //incomeNotes.Text = string.Empty;
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Saved Successfully'); window.location.href='Income.aspx'; ", true);
        }
    }
}