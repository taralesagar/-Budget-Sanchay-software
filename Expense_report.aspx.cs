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
    public partial class Expense_report : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-9MGM660\\SQLEXPRESS;Initial Catalog=budget_ISIE;Integrated Security=True;");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                Bindgrid();
            }
        }
        protected void Bindgrid()
        {
            SqlCommand cMD = new SqlCommand("select * from Expense_source", con);
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
            SqlCommand cmd = new SqlCommand("delete  from Expense_source where ID=" + Index, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Bindgrid();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label id = GridView1.Rows[e.RowIndex].FindControl("lbl_id") as Label;
            TextBox Expense_id = GridView1.Rows[e.RowIndex].FindControl("txt_exp_id") as TextBox;
            TextBox Expense_catagory = GridView1.Rows[e.RowIndex].FindControl("txt_exp_cat") as TextBox;
            TextBox Expense_amount = GridView1.Rows[e.RowIndex].FindControl("txt_exp_amo") as TextBox;
            TextBox Expense_date = GridView1.Rows[e.RowIndex].FindControl("txt_exp_date") as TextBox;
            TextBox Expense_method = GridView1.Rows[e.RowIndex].FindControl("txt_exp_met") as TextBox;
            TextBox Expense_recipt_no = GridView1.Rows[e.RowIndex].FindControl("txt_exp_reci") as TextBox;
            TextBox Expense_type = GridView1.Rows[e.RowIndex].FindControl("txt_exp_type") as TextBox;
            TextBox Expense_description = GridView1.Rows[e.RowIndex].FindControl("txt_exp_desc") as TextBox;
            //TextBox Income_account = GridView1.Rows[e.RowIndex].FindControl("txt_icm_acc") as TextBox;
            //TextBox product01_description = GridView1.Rows[e.RowIndex].FindControl("txt_product01_description") as TextBox;

            con.Open();
            SqlCommand cmd = new SqlCommand("Update Expense_source set Expense_id= '" + Expense_id.Text + "', Expense_catagory= '" + Expense_catagory.Text + "', Expense_amount= '" + Expense_amount.Text + "', Expense_date = '" + Expense_date.Text + "', Expense_method = '" + Expense_method.Text + "', Expense_recipt_no= '" + Expense_recipt_no.Text + "', Expense_type = '" + Expense_type.Text + "', Expense_description = '" + Expense_description.Text + "' where ID=" + Convert.ToInt32(id.Text), con);
            cmd.ExecuteNonQuery();
            con.Close();
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            GridView1.EditIndex = -1;
            //Call ShowData method for displaying updated data  
            Bindgrid();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            Bindgrid();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            Bindgrid();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from Expense_source  where Expense_date between   '" + txt_startdate.Text + "' and '" + txt_enddate.Text + "'", con);
            SqlDataAdapter d = new SqlDataAdapter();
            DataTable dt = new DataTable();
            d.SelectCommand = cmd;
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();
        }
    }
}


