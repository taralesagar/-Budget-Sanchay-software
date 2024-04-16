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
    public partial class Income_report : System.Web.UI.Page
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
            SqlCommand cMD = new SqlCommand("select * from Income_source", con);
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
            SqlCommand cmd = new SqlCommand("delete  from Income_source where ID=" + Index, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Bindgrid();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            Bindgrid();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label id = GridView1.Rows[e.RowIndex].FindControl("ld_lbl") as Label;
            TextBox Income_id = GridView1.Rows[e.RowIndex].FindControl("txt_icm_id") as TextBox;
            TextBox Income_source = GridView1.Rows[e.RowIndex].FindControl("txt_icm_source") as TextBox;
            TextBox Income_amount = GridView1.Rows[e.RowIndex].FindControl("txt_icm_amt") as TextBox;
            TextBox Income_frequency = GridView1.Rows[e.RowIndex].FindControl("txt_icm_frq") as TextBox;
            TextBox Income_date = GridView1.Rows[e.RowIndex].FindControl("txt_icm_date") as TextBox;
            TextBox Income_recipt_no = GridView1.Rows[e.RowIndex].FindControl("txt_icm_recipt") as TextBox;
            TextBox Income_tax_percent = GridView1.Rows[e.RowIndex].FindControl("txt_icm_tax") as TextBox;
            TextBox Income_note = GridView1.Rows[e.RowIndex].FindControl("txt_icm_note") as TextBox;
            TextBox Income_account = GridView1.Rows[e.RowIndex].FindControl("txt_icm_acc") as TextBox;
            //TextBox product01_description = GridView1.Rows[e.RowIndex].FindControl("txt_product01_description") as TextBox;

            con.Open();
            SqlCommand cmd = new SqlCommand("Update Income_source set Income_id= '" + Income_id.Text + "',Income_source= '" + Income_source.Text + "',Income_amount= '" + Income_amount.Text + "',Income_frequency = '" + Income_frequency.Text + "', Income_date = '" + Income_date.Text + "', Income_recipt_no= '" + Income_recipt_no.Text + "',Income_tax_percent = '" + Income_tax_percent.Text + "',Income_note = '" + Income_note.Text + "',Income_account = '" + Income_account.Text + "'  where ID=" + Convert.ToInt32(id.Text), con);
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            //con.Open();
            //SqlCommand cmd = new SqlCommand("Select * from Income_source where Income_date = '" + txt_date.Text + "'",con );
            //SqlDataAdapter d = new SqlDataAdapter();
            //DataTable dt = new DataTable();
            //d.Fill(dt);
            //GridView1.DataSource = dt;
            //GridView1.DataBind();
            //con.Close();

            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from Income_source where Income_date between   '" + txt_startdate.Text + "' and '"+ txt_enddate.Text + "'", con);
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