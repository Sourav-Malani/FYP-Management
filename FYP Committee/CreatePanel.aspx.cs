using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.HtmlControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void btn_createPanel(object sender, EventArgs e)
    {
        String Facultymember1ID = DropDownList2.SelectedValue;
        String Facultymember2ID = DropDownList3.SelectedValue;
        String Facultymember3ID = DropDownList4.SelectedValue;
        String Facultymember4ID = DropDownList5.SelectedValue;
        String Facultymember5ID = DropDownList6.SelectedValue;
        String Facultymember6ID = DropDownList7.SelectedValue;

        String groupNo = DropDownList1.SelectedItem.Value;
        //int gNO = groupNo
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["FYP_MConnectionString"].ConnectionString);
        con.Open();

        if (Facultymember1ID == "--Select Panel Member 1--" || Facultymember2ID == "--Select Panel Member 2--" ||
           Facultymember3ID == "--Select Panel Member 3--" || Facultymember4ID == "--Select Panel Member 4--" ||
           Facultymember5ID == "--Select Panel Member 5--" || Facultymember4ID == "--Select Panel Member 6--" || groupNo == "Select Group")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "emptyValue()", true);

        }
        else{

            String query = "insert into PanelMember values('" + Facultymember1ID + "'),('" + Facultymember2ID + "'),('" + Facultymember3ID + "'),('" + Facultymember4ID + "')" +
                           ",('" + Facultymember5ID + "'),('" + Facultymember6ID + "')";

            SqlCommand cm = new SqlCommand(query, con);
            cm.ExecuteNonQuery();
            cm.Dispose();
            if (groupNo != "Select Group")
            {
                String query1 = "INSERT INTO PANEL(PanelMember1ID, PanelMember2ID, PanelMember3ID, PanelMember4ID, PanelMember5ID, PanelMember6ID, Group_Assigned)" +
                                 "VALUES('" + Facultymember1ID + "', '" + Facultymember2ID + "', '" + Facultymember3ID + "', '" + Facultymember4ID + "', '" + Facultymember5ID + "', '" + Facultymember6ID + "'," +
                                 " '" + groupNo + "')";

                cm = new SqlCommand(query1, con);
                cm.ExecuteNonQuery();
                cm.Dispose();

                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "AllSet()", true);

                HtmlMeta meta = new HtmlMeta();
                meta.HttpEquiv = "Refresh";
                meta.Content = "2;url=CreatePanel.aspx"; // wait 2 seconds and the reload.
                this.Page.Controls.Add(meta);




            }


        }


        con.Close();



    }

    protected void btn_GoBack(object sender, EventArgs e)
    {
        // Go back
        Response.Redirect("Committee_Interface.aspx");
    }
}