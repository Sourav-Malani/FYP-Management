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
public partial class Student_Details : System.Web.UI.Page
{
    private DataTable GetData(SqlCommand cmd)

    {

        DataTable dt = new DataTable();

        String strConnString = System.Configuration.ConfigurationManager.ConnectionStrings["FYP_MConnectionString"].ConnectionString;

        SqlConnection con = new SqlConnection(strConnString);

        SqlDataAdapter sda = new SqlDataAdapter();

        cmd.CommandType = CommandType.Text;

        cmd.Connection = con;

        try

        {

            con.Open();

            sda.SelectCommand = cmd;

            sda.Fill(dt);

            return dt;

        }

        catch (Exception ex)

        {

            Response.Write(ex.Message);

            return null;

        }

        finally

        {

            con.Close();

            sda.Dispose();

            con.Dispose();

        }

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        String studentUsername = Session["UN"].ToString();
        //String studentUsername = "i19-0434";
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["FYP_MConnectionString"].ConnectionString);

        con.Open();
        SqlCommand cmd = new SqlCommand("getStudentData @rollno", con);
        cmd.Parameters.AddWithValue("@rollno", studentUsername);


        SqlDataReader sdr = cmd.ExecuteReader();

        string strQuery = "getStudentData @rollno";

        //SqlCommand cmd = new SqlCommand(strQuery);

        DataTable dt = GetData(cmd);

        GridView1.DataSource = dt;

        GridView1.DataBind();

        GridView1.DataBind();
        //if (sdr.Read())
        //{
        //   // Label1.Text = "Login Successfull";
        //    //Response.Redirect("")
        //}
        //else
        //{
        //    //Label1.Text = "Wrong Username or password";
        //}
        //con.Close();
        //Session["LN"] = txtLN.Text;
        //Response.Redirect("Student_Interface.aspx");
    }

    protected void StudentDetails_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Student_Interface.aspx");
    }
}