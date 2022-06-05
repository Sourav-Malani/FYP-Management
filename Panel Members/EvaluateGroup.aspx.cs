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

public partial class Panel_Members_EvaluateGroup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {


    }

    protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }



    protected void Button1_Click1(object sender, EventArgs e)
    {



        string facultyID = Session["ID"].ToString(); //  get panel Member ID  
        //string facultyID = "adnan.tariq";
        SqlConnection con = new SqlConnection("Data Source=UTHPAKHI\\SQLEXPRESS;Initial Catalog=FYP_M;Integrated Security=True");
        con.Open();
        SqlCommand cm;

        //TextBox txtImageName = (TextBox)Page.FindControl("message1");
        //string strFromTextArea = txtImageName.Text;

        string reviewORsuggestion = Request.Form["message1"]; //review or suggestion

        String query = "insert into reviewsORsuggestions(review, givenORnot) values('" + reviewORsuggestion + "', 1)";
        cm = new SqlCommand(query, con);
        cm.ExecuteNonQuery(); // insert review.
        cm.Dispose();

        //DropDownList1.Items.Insert(0, new ListItem("--Select Customer--", "0"));
        // is any item is not entered.
        if (RadioButtonList1.SelectedIndex < 0 || RadioButtonList2.SelectedIndex < 0 || RadioButtonList3.SelectedIndex < 0 ||
            RadioButtonList4.SelectedIndex < 0 || RadioButtonList5.SelectedIndex < 0 || RadioButtonList6.SelectedIndex < 0 ||
            RadioButtonList7.SelectedIndex < 0 || RadioButtonList8.SelectedIndex < 0 || RadioButtonList9.SelectedIndex < 0 ||
            RadioButtonList10.SelectedIndex < 0 || RadioButtonList11.SelectedIndex < 0 || RadioButtonList12.SelectedIndex < 0 ||
            RadioButtonList13.SelectedIndex < 0 || RadioButtonList14.SelectedIndex < 0 || RadioButtonList15.SelectedIndex < 0) // values not selected.
        {
            ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "emptyValue()", true);
        }
        else
        {
            //also getReviewID, and assign that ID to the below evaluation.
            //getLastReviewID
            //"insert into studentEvaluation values('ahmedraza.shahid',1,10,7,8,7,9,7,2,4,10,4,6,3,4,10,2);"
            int item1 = int.Parse(RadioButtonList1.SelectedItem.Text);
            int item2 = int.Parse(RadioButtonList2.SelectedItem.Text);
            int item3 = int.Parse(RadioButtonList7.SelectedItem.Text);
            int item4 = int.Parse(RadioButtonList4.SelectedItem.Text);
            int item5 = int.Parse(RadioButtonList5.SelectedItem.Text);

            int item6 = int.Parse(RadioButtonList6.SelectedItem.Text);
            int item7 = int.Parse(RadioButtonList7.SelectedItem.Text);
            int item8 = int.Parse(RadioButtonList8.SelectedItem.Text);
            int item9 = int.Parse(RadioButtonList9.SelectedItem.Text);
            int item10 = int.Parse(RadioButtonList10.SelectedItem.Text);

            int item11 = int.Parse(RadioButtonList11.SelectedItem.Text);
            int item12 = int.Parse(RadioButtonList12.SelectedItem.Text);
            int item13 = int.Parse(RadioButtonList13.SelectedItem.Text);
            int item14 = int.Parse(RadioButtonList14.SelectedItem.Text);
            int item15 = int.Parse(RadioButtonList15.SelectedItem.Text);

            SqlCommand cmd = new SqlCommand("getLastReviewID", con);
            //cmd.Parameters.AddWithValue("@supID", supervisorSelected);

            string reviewID = Convert.ToString(cmd.ExecuteScalar());
            int reviewID_INT = int.Parse(reviewID);

            query = "insert into studentEvaluation values('" + facultyID + "'," + item1 + "," + item2 + "," + item2 + "," + item2 + "," + item2 + "," + item2 + "" +
                "," + item2 + "," + item2 + "," + item2 + "," + item2 + "," + item2 + "," + item2 + "," + item2 + "," + item2 + "," + item2 + "," + +reviewID_INT + ") ";
            cm = new SqlCommand(query, con);
            cm.ExecuteNonQuery();
            cm.Dispose();

            ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "AllSet()", true);
        }
    }

    protected void RadioButtonList8_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void RadioButtonList3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void RadioButtonList4_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void RadioButtonList5_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void RadioButtonList6_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void RadioButtonList7_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void RadioButtonList9_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void RadioButtonList10_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void RadioButtonList11_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void RadioButtonList12_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void RadioButtonList13_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void RadioButtonList14_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void RadioButtonList15_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button2_Click1(object sender, EventArgs e)
    {
        Response.Redirect("~\\Default.aspx");
    }
}