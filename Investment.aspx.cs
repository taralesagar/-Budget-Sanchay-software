using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace budgetapp
{
    public partial class Investment : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-9MGM660\\SQLEXPRESS;Initial Catalog=budget_ISIE;Integrated Security=True;");
        string investmentid;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void InvestmentID()
        {
            con.Open();
            SqlCommand cmd1 = new SqlCommand("select count(Investment_id) from Investment_Source", con);
            int i = Convert.ToInt32(cmd1.ExecuteScalar());
            i++;
            investmentid = "IVM0" + i.ToString();
            con.Close();
        }

      

        protected void btnSaveInvestment_Click(object sender, EventArgs e)
        {
            InvestmentID();
            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO Investment_Source([investment_id],[Investment_name],[Investment_type],[Investment_account],[Transaction_date],[Transaction_type],[Transaction_amount],[Risk_level],[Tax_implication],[Investment_Recipt_No],[Provider_Broker],[Investment_performance],[Investment_installment],[Investment_description]) VALUES ('" + investmentid + "','" + investmentName.Text + "','" + investmentType.SelectedItem.Text + "','" + investmentAccount.Text + "','" + transactionDate.Text + "','" + transactionType.SelectedItem.Text + "','" + transactionAmount.Text + "','" + riskLevel.SelectedItem.Text + "','"+ taxImplications.Text+ "','"+ investmentReciptno.Text + "','"+ providerBroker.Text + "','"+ investmentPerformance.Text + "','"+ investmentInstallment.Text + "','"+ investmentDescription.Text + "') ", con);
            cmd.ExecuteNonQuery();
            con.Close();

            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Saved Successfully'); window.location.href='Investment.aspx'; ", true);



        }
    }
}