using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

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
        Response.Redirect("Default.aspx");
    }

    protected void btn_Login_Click1(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["FYP_MConnectionString"].ConnectionString);

        con.Open(); 
        SqlCommand cmd = new SqlCommand("select * from student where studentRollNo = @rollno and studentPassword = @password",con);
        cmd.Parameters.AddWithValue("@rollno", txt_Username.Text);
        cmd.Parameters.AddWithValue("@password", txt_password.Text);

        SqlDataReader sdr = cmd.ExecuteReader();

        if (sdr.Read()) {
            Label1.Text = "Login Successfull";
            //Response.Redirect("")
        }
        else
        {
            Label1.Text = "Wrong Username or password";
        }
        con.Close();
    }


}