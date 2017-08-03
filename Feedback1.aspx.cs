using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BEL;
using DAL;


public partial class Feedback1 : System.Web.UI.Page
{
    stuwork objBEL;
    ClassDAL objDAL;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        objBEL = new stuwork();
        objDAL = new ClassDAL();
        foreach (GridViewRow row in GridView1.Rows)
        {
            if (row.RowType == DataControlRowType.DataRow)
            {
                TextBox txtrow = (row.Cells[0].FindControl("TextBox1") as TextBox);
                DropDownList droprow = (row.Cells[0].FindControl("DropDownList1") as DropDownList);
                objBEL.fbCate = droprow.SelectedValue;
                Label name = (row.Cells[0].FindControl("Label1") as Label);
                Label teacher=(row.Cells[0].FindControl("Label2") as Label);
                objBEL.name = teacher.Text;
                objBEL.emailId = name.Text;
                objBEL.remark = txtrow.Text;
                Label1.Text = objDAL.AddFeedback(objBEL);
            }

        }
    }
}