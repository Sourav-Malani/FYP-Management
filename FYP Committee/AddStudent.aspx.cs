using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class AddStudent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_addStudent_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=UTHPAKHI\\SQLEXPRESS;Initial Catalog=FYP_M;Integrated Security=True");
        con.Open();
        SqlCommand cm;
        String studentName = txt_fullname.Text;
        String studentRollNo = txt_rollno.Text;
        String passWord = txt_password.Text;
        String Gender = RadioButtonList2.SelectedValue;

        // is any item is not entered.
        if (studentName == "" || studentRollNo == "" || passWord == "" || Gender == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "emptyValue()", true);
        }
        else 
        {
            String query = "insert into student values('" + studentName + "','" + studentRollNo + "','" + passWord + "','" + Gender + "')";
            cm = new SqlCommand(query, con);
            cm.ExecuteNonQuery();
            cm.Dispose();

            txt_fullname.Text = string.Empty;
            txt_rollno.Text = string.Empty;
            txt_password.Text = string.Empty;
            //RadioButtonList2.Items.Clear();
            ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "AllSet()", true);

        }
        con.Close();
    }


    protected void btn_cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Committee_Interface.aspx");
    }


    protected void txt_fullname_TextChanged(object sender, EventArgs e)
    {

    }

    protected void txt_rollno_TextChanged(object sender, EventArgs e)
    {

    }

    protected void txt_password_TextChanged(object sender, EventArgs e)
    {

    }

    protected void GenderStudent_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}