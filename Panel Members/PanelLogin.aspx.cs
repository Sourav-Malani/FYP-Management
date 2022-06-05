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
using System.Data.SqlClient;

public partial class Panel_PanelLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void txt_Username_TextChanged(object sender, EventArgs e)
    {

    }

    protected void txt_password_TextChanged(object sender, EventArgs e)
    {

    }

    protected void btn_Login_Click(object sender, EventArgs e)
    {
        Session["ID"] = txt_Username.Text;

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["FYP_MConnectionString"].ConnectionString);
        String facultyUsername = txt_Username.Text;
        String facultyPassword = txt_password.Text;

        con.Open();
        SqlCommand cmd = new SqlCommand("Select distinct F.facultyName from Faculty F inner join PanelMember C ON F.facultyID = C.PM_ID " +
                                        "where F.facultyID = @facultyID and F.facultypassword = @password;", con);
        cmd.Parameters.AddWithValue("@facultyID", txt_Username.Text);
        cmd.Parameters.AddWithValue("@password", txt_password.Text);

        SqlDataReader sdr = cmd.ExecuteReader();
        String str = sdr.ToString();

        if (facultyUsername == "" || facultyPassword == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "EmptyValue()", true);
        }
        else
        {
            if (sdr.Read())
            {
                Response.Redirect("Panel_Interface.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "Invalid()", true);
            }
        }
        con.Close();

    }

    protected void btn_cancel_Click2(object sender, EventArgs e)
    {
        Response.Redirect("~\\Default.aspx");
    }
}