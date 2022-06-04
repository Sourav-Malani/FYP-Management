using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_Student_Interface : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GoBack_Click(object sender, EventArgs e)
    {

    }

    protected void Continue_Click(object sender, EventArgs e)
    {
        string selecteditem = DropDownList1.SelectedItem.Text;

        if (selecteditem == "View Project Details")
        {
            Response.Redirect("StudentDetails.aspx");
        }
        else if (selecteditem == "See Review")
        {
            Response.Redirect("studentReview.aspx");
        } 

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}