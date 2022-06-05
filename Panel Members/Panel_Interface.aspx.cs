using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Panel_Members_Panel_Interface : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
    }

    protected void Continue_Click(object sender, EventArgs e)
    {
        string selectedItem = DropDownList1.SelectedItem.Text;

        if (selectedItem == "ACTIONS")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "emptyValue()", true);
        }
        else if (selectedItem == "Evaluate Group")
        {
            Response.Redirect("EvaluateGroup.aspx");
        }

    }

    protected void GoBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("~\\Default.aspx");
    }
}