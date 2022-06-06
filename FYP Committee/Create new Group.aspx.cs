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

public partial class FYP_Committee_Create_new_Group : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
            
    }

    protected void txt_PrTitle_TextChanged(object sender, EventArgs e)
    {

    }

    protected void btn_cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Committee_Interface.aspx");
    }

    protected void btn_addGroup_Click(object sender, EventArgs e)
    {
        string Member1rollNo = DropDownList1.SelectedValue;
        string Member2rollNo = DropDownList2.SelectedValue;
        string Member3rollNo = DropDownList3.SelectedValue;
        string projectTitle = txt_PrTitle.Text;
        string projectDes = txt_PrDes.Text;

        if(Member1rollNo == "--Select Member 1--" || Member2rollNo == "--Select Member 2--" || projectTitle == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "EmptyValue()", true);

        }
        else
        {
            if( (Member1rollNo == Member2rollNo) || (Member1rollNo == Member3rollNo) || (Member2rollNo == Member3rollNo))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "Invalid()", true);
            }
            else
            {
                SqlConnection con = new SqlConnection("Data Source=UTHPAKHI\\SQLEXPRESS;Initial Catalog=FYP_M;Integrated Security=True");
                con.Open();

                SqlCommand cm;
                String query;
                // insert into studentGroup & then insert the groupID into FYP1.
                if (Member3rollNo == "--Select Member 3--")
                {
                    if (projectDes != "")
                    {
                        query = "insert into studentGroup(Member1rollNo ,Member2rollNo,projectTitle,projectDetails) values ('" + Member1rollNo + "','" + Member2rollNo + "','" + projectTitle + "','" + projectDes + "')";

                    }
                    else
                    {
                        query = "insert into studentGroup(Member1rollNo ,Member2rollNo,projectTitle) values ('" + Member1rollNo + "','" + Member2rollNo + "','" + projectTitle + "')";

                    }

                }
                else
                {
                    if (projectDes != "")
                    {
                        query = "insert into studentGroup(Member1rollNo ,Member2rollNo,Member3rollNo,projectTitle,projectDetails) values ('" + Member1rollNo + "','" + Member2rollNo + "','" + Member3rollNo + "','" + projectTitle + "','" + projectDes + "');";

                    }
                    else
                    {
                        query = "insert into studentGroup(Member1rollNo ,Member2rollNo,Member3rollNo,projectTitle) values ('" + Member1rollNo + "','" + Member2rollNo + "','" + Member3rollNo + "','" + projectTitle + "','" + projectDes + "');";

                    }

                }
                //String query = "insert into FYP_Committee_Member values('" + facultyID + "')";
                cm = new SqlCommand(query, con);
                cm.ExecuteNonQuery();
                cm.Dispose();

                // Now get groupID and insert into FYP1.
                SqlCommand cmd = new SqlCommand("getStudentGroupID @studentRollNo", con);
                cmd.Parameters.AddWithValue("@studentRollNo", Member1rollNo);

                string groupID = Convert.ToString(cmd.ExecuteScalar());
                int groupID_INT = int.Parse(groupID);
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "AllSet()", true);

                // insert the group into FYP1.
                query = "insert into FYP1(groupID) values('" + groupID_INT + "')";
                cm = new SqlCommand(query, con);
                cm.ExecuteNonQuery();
                cm.Dispose();

                con.Close();

                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "AllSet()", true);

                HtmlMeta meta = new HtmlMeta();
                meta.HttpEquiv = "Refresh";
                meta.Content = "2;url=Committee_Interface.aspx"; // wait 2 seconds and the reload.
                this.Page.Controls.Add(meta);


            }

        }

    }

    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}