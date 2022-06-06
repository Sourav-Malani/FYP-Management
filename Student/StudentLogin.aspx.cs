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

public partial class StudentLogin : System.Web.UI.Page
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

    protected void btn_cancel_Click1(object sender, EventArgs e)
    {
        Response.Redirect("~\\Default.aspx");
    }

    protected void btn_Login_Click1(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["FYP_MConnectionString"].ConnectionString);

        con.Open(); 
        SqlCommand cmd = new SqlCommand("select * from student where studentRollNo = @rollno and studentPassword = @password",con);
        cmd.Parameters.AddWithValue("@rollno", txt_Username.Text);
        cmd.Parameters.AddWithValue("@password", txt_password.Text);

        SqlDataReader sdr = cmd.ExecuteReader();
        Session["UN"] = txt_Username.Text; // send username to other page.

        if (txt_Username.Text == "" || txt_password.Text == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "EmptyValue()", true);

        }
        else
        {
            if (sdr.Read())
            {
                Response.Redirect("Student_Interface.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "Invalid()", true);
            }

        }
        con.Close();
    }



    protected void txt_Username_TextChanged1(object sender, EventArgs e)
    {

    }

    protected void txt_password_TextChanged1(object sender, EventArgs e)
    {

    }
}