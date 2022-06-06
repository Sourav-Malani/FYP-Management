using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Web.UI.HtmlControls;

public partial class FYP_Committee_MakeSupervisor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=UTHPAKHI\\SQLEXPRESS;Initial Catalog=FYP_M;Integrated Security=True");
        con.Open();
        SqlCommand cm;
        String facultyID = DropDownList1.SelectedValue;

        //DropDownList1.Items.Insert(0, new ListItem("--Select Customer--", "0"));
        // is any item is not entered.
        if (facultyID == "--Select Faculty--") // not selected.
        {
            ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "emptyValue()", true);
        }
        else
        {
            String query = "insert into supervisors(supervisorID) values('" + facultyID + "')";
            cm = new SqlCommand(query, con);
            cm.ExecuteNonQuery();
            cm.Dispose();
            ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "AllSet()", true);

            HtmlMeta meta = new HtmlMeta();
            meta.HttpEquiv = "Refresh";
            meta.Content = "1;url=Committee_Interface.aspx"; // wait 2 seconds and go to the main interface.
            this.Page.Controls.Add(meta);
        }
        con.Close();

    }



    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Committee_Interface.aspx");
    }
}