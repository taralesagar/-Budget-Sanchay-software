using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace budgetapp
{
    public partial class Debt : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-9MGM660\\SQLEXPRESS;Initial Catalog=budget_ISIE;Integrated Security=True;");
        string debtid;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void DebtID()
        {
            con.Open();
            SqlCommand cmd1 = new SqlCommand("select count(Income_id) from Income_source", con);
            int i = Convert.ToInt32(cmd1.ExecuteScalar());
            i++;
            debtid = "DID0" + i.ToString();
            con.Close();
        }

        

        protected void btnSave_Click(object sender, EventArgs e)
        {
            DebtID();
            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO Debt([Debt_id],[Debtor_Name],[Debtor_Address],[Debtor_Contact],[Creditor_Name],[Creditor_Address],[Creditor_Contact],[Amount_Owed],[Repayment_Terms],[Interest_Rate],[Collateral_Details],[Date_of_agreement],[Witness_Signature],[Debtor_Signature],[Creditor_Signature],[Notes])" +
                " VALUES ('" + debtid + "','" + DebtorName.Text + "','" + Debtoraddress.Text + "','" + DebtorContactInformation.Text + "','" + CreditorName.Text + "','" + CreditorAddress.Text + "','" + CreditorContactInformation.Text + "','" + AmountOwed.Text + "','"+ RepaymentTerms.Text + "','"+ InterestRate.Text + "','"+ CollateralDetails.Text + "','"+ DateofAgreement.Text + "','"+ WitnessSignature.Text + "','"+DebtorSignature.Text+"','"+ CreditorSignature.Text + "','"+ Notes.Text + "') ", con);

            cmd.ExecuteNonQuery();
            con.Close();

            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Saved Successfully'); window.location.href='Debt.aspx'; ", true);




        }
    }
}