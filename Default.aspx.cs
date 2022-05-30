using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {

    }



    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string role  = RadioButtonList1.SelectedItem.Text;
      
        if(role == "STUDENT")
        {
            Response.Redirect("StudentLogin.aspx");

        }
        else if (role == "COMMIT. MEMBER")
        {
            Response.Redirect("FYP_Committee_Interface_Login.aspx");
        }
        else if (role == "SUPERVISOR")
        {
            Response.Redirect(".aspx");
        }
        else if (role == "PANEL MEMBER")
        {
            Response.Redirect(".aspx");
        }



    }
}