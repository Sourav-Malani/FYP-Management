using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class FYP_Committee_ChooseSupervisor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void btn_ChooseSupervisor_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection("Data Source=UTHPAKHI\\SQLEXPRESS;Initial Catalog=FYP_M;Integrated Security=True");
        con.Open();
        //SqlCommand cm;
        string groupSelected = DropDownList1.SelectedValue;
        string supervisorSelected = DropDownList2.SelectedValue;

        // is any item is not entered.
        if (groupSelected == "--Select Group--" || supervisorSelected == "--Select Supervisor--")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "emptyValue()", true);
        }
        else
        {
            SqlCommand cmd = new SqlCommand("getWorkload @supID", con);
            cmd.Parameters.AddWithValue("@supID", supervisorSelected);

            string workload = Convert.ToString(cmd.ExecuteScalar());
            int workloadINT = int.Parse(workload);

            if (workloadINT < 6)
            {
                cmd = new SqlCommand("assignSupervisor @supID, @grpID", con);
                cmd.Parameters.AddWithValue("@supID", supervisorSelected);
                cmd.Parameters.AddWithValue("@grpID", groupSelected);
                cmd.ExecuteNonQuery();
                cmd.Dispose();

                cmd = new SqlCommand("incrementWorkLoad @supID",con); 
                cmd.Parameters.AddWithValue("@supID", supervisorSelected);
                cmd.ExecuteNonQuery();
                cmd.Dispose();
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "emptyValue()", true);

            }

            ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "AllSet()", true);

        }
        con.Close();
    }

    protected void btn_GoBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("Committee_Interface.aspx");
    }
}

