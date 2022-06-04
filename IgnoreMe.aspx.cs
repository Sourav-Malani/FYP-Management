using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class IgnoreMe : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["FN"] = txtFN.Text;
        Session["LN"] = txtLN.Text;
        Response.Redirect("ignoreMe2.aspx");
    }

    protected void txtFN_TextChanged(object sender, EventArgs e)
    {

    }

    protected void txtLN_TextChanged(object sender, EventArgs e)
    {

    }
}