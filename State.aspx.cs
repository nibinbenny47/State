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
}