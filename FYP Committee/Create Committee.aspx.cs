using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Web.UI.HtmlControls;

public partial class FYP_Committee_Create_Committee : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //SqlConnection con = new SqlConnection("Data Source=UTHPAKHI\\SQLEXPRESS;Initial Catalog=FYP_M;Integrated Security=True");
        ////SqlConnection con = new SqlConnection(connection);
        //try
        //{
        //    DataTable dt = new DataTable();
        //    //Sql query              
        //    //string query = "Select * from  student;";
        //    string query1 = "SELECT facultyID,facultyName FROM Faculty WHERE facultyID NOT IN (SELECT M_ID FROM FYP_Committee_Member)";
        //    //Execute the query
        //    SqlDataAdapter da = new SqlDataAdapter(query1, con);
        //    con.Open();
        //    da.Fill(dt);
        //    //Bind the dropdown             
        //    DropDownList2.DataSource = dt;
        //    DropDownList2.DataTextField = "facultyName";
        //    DropDownList2.DataValueField = "facultyID";
        //    DropDownList2.DataBind();
        //    //------------Set the default value-------------
        //    DropDownList2.Items.Insert(0, new ListItem("--Select Faculty--", "0"));

        //}
        //catch
        //{
        //}
        //finally
        //{
        //    con.Close();
        //}

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String b;
        SqlConnection con = new SqlConnection("Data Source=UTHPAKHI\\SQLEXPRESS;Initial Catalog=FYP_M;Integrated Security=True");
        con.Open();
        SqlCommand cm;
        String facultyID = DropDownList2.SelectedValue;

        //DropDownList1.Items.Insert(0, new ListItem("--Select Customer--", "0"));
        // is any item is not entered.
        if (facultyID == "--Select Faculty--") // not solved.
        {
            ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "emptyValue()", true);
        }
        else
        {
            String query = "insert into FYP_Committee_Member values('"+facultyID+"')";
            cm = new SqlCommand(query, con);
            cm.ExecuteNonQuery();
            cm.Dispose();
            ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "AllSet()", true);

            HtmlMeta meta = new HtmlMeta();
            meta.HttpEquiv = "Refresh";
            meta.Content = "1;url=Create Committee.aspx"; // wait 2 seconds and the reload.
            this.Page.Controls.Add(meta);
            //Label1.Text = "You will now be redirected in 5 seconds";
        }
        con.Close();

    }
    protected void FacultyMembers_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        // cancel 
        Response.Redirect("Committee_Interface.aspx");
    }


    protected void DropDownList2_SelectedIndexChanged1(object sender, EventArgs e)
    {


    }
}