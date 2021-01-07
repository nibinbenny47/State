using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class District : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=db_myproject;Integrated Security=True");
    public static int id, status = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        if (!IsPostBack)
        {
            //fillDetails();
        }
    }


    protected void btnSave_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("insertStateName", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add("@statename", SqlDbType.VarChar).Value = txtName.Text;
        cmd.ExecuteNonQuery();
        cancel();
    }
    public void cancel()
    {
        txtName.Text = "";

    }
    protected void fillDetails()
    {
        string selQry = "select * from tbl_state";
        SqlDataAdapter adp = new SqlDataAdapter(selQry, con);

        DataTable dt = new DataTable();
        adp.Fill(dt);
        grdDetails.DataSource = dt;
        grdDetails.DataBind();

    }
    protected void grdDetails_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        id = Convert.ToInt32(e.CommandArgument.ToString());


        if (e.CommandName == "del")
        {

            SqlCommand cmd = new SqlCommand("deleteState", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@stateid", SqlDbType.VarChar).Value = id;
            cmd.Parameters.Add("@statename", SqlDbType.VarChar).Value = txtName.Text;
            cmd.ExecuteNonQuery();
            //string delQry = "delete from tbl_state where state_id='" + id + "'";
            //SqlCommand cmd = new SqlCommand(delQry, con);
            //cmd.ExecuteNonQuery();



            fillDetails();

        }

        if (e.CommandName == "ed")
        {

            string sel = "select * from tbl_state where state_id='" + id + "'";
            DataTable dt = new DataTable();
            SqlDataAdapter adp = new SqlDataAdapter(sel, con);
            adp.Fill(dt);
            if (dt.Rows.Count > 0)
            {


                txtName.Text = dt.Rows[0]["state_name"].ToString();

                status = 1;




            }




        }







    }
}