using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class FYP_Committee_Interface_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btn_cancel_Click2(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }

    protected void btn_Login_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["FYP_MConnectionString"].ConnectionString);
        String facultyUsername = txt_Username.Text;
        String facultyPassword = txt_password.Text;

        con.Open();
        SqlCommand cmd = new SqlCommand("Select distinct F.facultyName from Faculty F inner join FYP_Committee_Member C ON F.facultyID = C.M_ID", con);
        //cmd.Parameters.AddWithValue("@rollno", txt_Username.Text);
        //cmd.Parameters.AddWithValue("@password", txt_password.Text);

     //faulty who is also an FYP member
     // Select distinct F.facultyName from Faculty F inner join FYP_Committee_Member C ON F.facultyID = C.M_ID


        SqlDataReader sdr = cmd.ExecuteReader();


        if (facultyUsername == "" || facultyPassword == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "emptyValue()", true);
        }
        else
        {
            if (sdr.Read())
            {
                Response.Redirect("Committee_Interface.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "Invalid()", true);
            }
        }
        con.Close();
    }
}