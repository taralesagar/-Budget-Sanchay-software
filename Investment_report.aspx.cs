using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace budgetapp
{
    public partial class Investment_report : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-9MGM660\\SQLEXPRESS;Initial Catalog=budget_ISIE;Integrated Security=True;");

        string debtid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                Bindgrid();
            }
        }
        protected void Bindgrid()
        {
            SqlCommand cMD = new SqlCommand("select * from Investment_Source", con);
            SqlDataAdapter d = new SqlDataAdapter(cMD);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }


        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            con.Open();
            int Index = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values["ID"].ToString());
            SqlCommand cmd = new SqlCommand("delete  from Investment_Source where ID=" + Index, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Bindgrid();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label id = GridView1.Rows[e.RowIndex].FindControl("ld_lbl") as Label;
            TextBox Investment_id = GridView1.Rows[e.RowIndex].FindControl("txt_ivm_id") as TextBox;
            TextBox Investment_name = GridView1.Rows[e.RowIndex].FindControl("txt_ivm_name") as TextBox;
            TextBox Investment_type = GridView1.Rows[e.RowIndex].FindControl("txt_ivm_type") as TextBox;
            TextBox Investment_account = GridView1.Rows[e.RowIndex].FindControl("txt_ivm_acc") as TextBox;
            TextBox Transaction_date = GridView1.Rows[e.RowIndex].FindControl("txt_ivm_date") as TextBox;
            TextBox Transaction_type = GridView1.Rows[e.RowIndex].FindControl("txt_ivm_trytype") as TextBox;
            TextBox Transaction_amount = GridView1.Rows[e.RowIndex].FindControl("txt_ivm_amo") as TextBox;
            TextBox Risk_level = GridView1.Rows[e.RowIndex].FindControl("txt_ivm_risk_lvl") as TextBox;
            TextBox Tax_implication = GridView1.Rows[e.RowIndex].FindControl("txt_ivm_tax") as TextBox;
            TextBox Investment_Recipt_No = GridView1.Rows[e.RowIndex].FindControl("txt_ivm_recipt") as TextBox;
            TextBox Provider_Broker = GridView1.Rows[e.RowIndex].FindControl("txt_ivm_brocker") as TextBox;
            TextBox Investment_performance = GridView1.Rows[e.RowIndex].FindControl("txt_ivm_performance") as TextBox;
            TextBox Investment_installment = GridView1.Rows[e.RowIndex].FindControl("txt_ivm_installment") as TextBox;
            TextBox Investment_description = GridView1.Rows[e.RowIndex].FindControl("txt_ivm_description") as TextBox;


            con.Open();
            SqlCommand cmd = new SqlCommand("Update Investment_Source set Investment_id= '" + Investment_id.Text + "',Investment_name= '" + Investment_name.Text + "',Investment_type= '" + Investment_type.Text + "',Investment_account = '" + Investment_account.Text + "', Transaction_date = '" + Transaction_date.Text + "', Transaction_type= '" + Transaction_type.Text + "',Transaction_amount = '" + Transaction_amount.Text + "',Risk_level = '" + Risk_level.Text + "',Tax_implication = '" + Tax_implication.Text + "',Investment_Recipt_No = '" + Investment_Recipt_No.Text + "',Provider_Broker = '" + Provider_Broker.Text + "',Investment_performance = '" + Investment_performance.Text + "',Investment_installment = '" + Investment_installment.Text + "',Investment_description = '" + Investment_description.Text + "'  where ID=" + Convert.ToInt32(id.Text), con);
            cmd.ExecuteNonQuery();
            con.Close();
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            GridView1.EditIndex = -1;
            //Call ShowData method for displaying updated data  
            Bindgrid();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            Bindgrid();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            Bindgrid();
        }
    }
}