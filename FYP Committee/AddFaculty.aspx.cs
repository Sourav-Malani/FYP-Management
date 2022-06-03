using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class AddFaculty : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void btn_cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Committee_Interface.aspx");
    }





    protected void txt_facultyName_TextChanged(object sender, EventArgs e)
    {

    }



    protected void txt_facultyID_TextChanged(object sender, EventArgs e)
    {

    }



    protected void txt_facultypassword_TextChanged(object sender, EventArgs e)
    {

    }



    protected void btn_addFaculty_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=UTHPAKHI\\SQLEXPRESS;Initial Catalog=FYP_M;Integrated Security=True");
        con.Open();
        SqlCommand cm;
        String facultyName = txt_facultyName.Text;
        String facultyID = txt_facultyID.Text;
        String passWord = txt_facultypassword.Text;
        String Gender = RadioButtonList1.SelectedValue;
        
        // is any item is not entered.
        if(facultyName == "" || facultyID == "" || passWord == "" || Gender == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "emptyValue()", true);
        }
        else{
            String query = "insert into Faculty values('" + facultyName + "','" + facultyID + "','" + passWord + "','" + Gender + "')";
            cm = new SqlCommand(query, con);
            cm.ExecuteNonQuery();
            cm.Dispose();

            txt_facultyName.Text = string.Empty;
            txt_facultyID.Text = string.Empty;
            txt_facultypassword.Text = string.Empty;
            RadioButtonList1.Items.Clear();

            ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "AllSet()", true);
            
        }
        con.Close();
    }


    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}