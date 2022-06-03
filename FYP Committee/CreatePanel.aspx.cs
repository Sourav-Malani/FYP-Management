using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=UTHPAKHI\\SQLEXPRESS;Initial Catalog=FYP_M;Integrated Security=True");
        //SqlConnection con = new SqlConnection(connection);
        try
        {
            DataTable dt = new DataTable();
            //Sql query              
            string query = "SELECT groupID, projectTitle FROM studentGroup WHERE groupID NOT IN (SELECT Group_Assigned FROM Panel)";
            string query1 = "SELECT facultyID,facultyName FROM Faculty WHERE facultyID NOT IN (SELECT M_ID FROM FYP_Committee_Member)";
            //Execute the query
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            con.Open();
            da.Fill(dt);
            //Bind the dropdown             
            DropDownList1.DataSource = dt;
            DropDownList1.DataTextField = "projectTitle";
            DropDownList1.DataValueField = "groupID";
            DropDownList1.DataBind();
            //------------Set the default value-------------
            DropDownList1.Items.Insert(0, new ListItem("--Select Group--", "0"));

        }
        catch
        {
        }
        finally
        {
            con.Close();
        }

        con = new SqlConnection("Data Source=UTHPAKHI\\SQLEXPRESS;Initial Catalog=FYP_M;Integrated Security=True");
        //SqlConnection con = new SqlConnection(connection);
        try
        {
            DataTable dt = new DataTable();
            //Sql query              
            string query = "SELECT facultyID, facultyName FROM Faculty WHERE facultyID NOT IN (SELECT PM_ID FROM PanelMember)";
            //string query1 = "SELECT facultyID,facultyName FROM Faculty WHERE facultyID NOT IN (SELECT M_ID FROM FYP_Committee_Member)";
            //Execute the query
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            con.Open();
            da.Fill(dt);
            //Bind the dropdown             
            DropDownList2.DataSource = dt;
            DropDownList2.DataTextField = "facultyName";
            DropDownList2.DataValueField = "facultyID";
            DropDownList2.DataBind();
            //------------Set the default value-------------
            DropDownList1.Items.Insert(0, new ListItem("--Select Panel Member 1--", "0"));

        }
        catch
        {
        }
        finally
        {
            con.Close();
        }

        con = new SqlConnection("Data Source=UTHPAKHI\\SQLEXPRESS;Initial Catalog=FYP_M;Integrated Security=True");
        //SqlConnection con = new SqlConnection(connection);
        try
        {
            //DataTable dt = new DataTable();
            //Sql query              
            string query = "SELECT facultyID, facultyName FROM Faculty WHERE facultyID NOT IN (SELECT PM_ID FROM PanelMember) and (facultyID!=@facuty_ID)";

            //string cmdstr = "select * from Report where InstituteId=@InstituteId";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.Add(new SqlParameter("@facuty_ID", DropDownList2.Text));  
            SqlDataAdapter adp = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();
            adp.Fill(dt);

           // //adap.fill(dt);
           // //adp.SelectCommand.Parameters.Add("@InstituteId", Session["InstituteId"])           



           // //string query1 = "SELECT facultyID,facultyName FROM Faculty WHERE facultyID NOT IN (SELECT M_ID FROM FYP_Committee_Member)";
           // //Execute the query
           // SqlDataAdapter da = new SqlDataAdapter(query, con);
           // da.SelectCommand.Parameters.Add("@facuty_ID");
           ////     a("@facuty_ID",)
           // con.Open();
           // da.Fill(dt);
            //Bind the dropdown             
            DropDownList3.DataSource = dt;
            DropDownList3.DataTextField = "facultyName";
            DropDownList3.DataValueField = "facultyID";
            DropDownList3.DataBind();
            //------------Set the default value-------------
            DropDownList1.Items.Insert(0, new ListItem("--Select Panel Member 1--", "0"));

        }
        catch
        {
        }
        finally
        {
            con.Close();
        }

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}