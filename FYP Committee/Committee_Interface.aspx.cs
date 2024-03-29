﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Committee_Interface : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BulletedList1_Click(object sender, BulletedListEventArgs e)
    {
       

    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {

    }


    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
    }

    protected void Continue_Click(object sender, EventArgs e)
    {
        string selecteditem = DropDownList1.SelectedItem.Text;
        if(selecteditem == "ACTIONS")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "emptyValue()", true);
        }
        else if (selecteditem == "Add Student")
        {
            Response.Redirect("AddStudent.aspx");

        }
        else if (selecteditem == "View Students in FYP1")
        {
            Response.Redirect("StudentsRegesteredInFyp1.aspx");
        }
        else if (selecteditem == "Add Faculty")
        {
            Response.Redirect("AddFaculty.aspx");
        }
        else if (selecteditem == "Create Committee")
        {
            Response.Redirect("Create Committee.aspx");
        }
        else if (selecteditem == "Make a Panel")
        {
            Response.Redirect("CreatePanel.aspx");
        }
        else if(selecteditem == "Choose Supervisor")
        {
            Response.Redirect("ChooseSupervisor.aspx");
        }
        else if(selecteditem == "Make a Supervisor")
        {
            Response.Redirect("MakeSupervisor.aspx");
        }
        else if(selecteditem == "View Transaction History")
        {
            Response.Redirect("TransactionHistory.aspx");
        }
        else if (selecteditem == "View All Faculty")
        {
            Response.Redirect("ViewAllFaculty.aspx");
        }
        else if(selecteditem == "View All Students")
        {
            Response.Redirect("ViewAllStudents.aspx");
        }
        else if(selecteditem == "Make a supervisor")
        {

        }
    }

    protected void GoBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("~\\Default.aspx");
    }
}