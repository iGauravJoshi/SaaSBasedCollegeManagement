using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BEL;
using DAL;

public partial class StoreMark : System.Web.UI.Page
{
    ExamBEL objBEL;
    ExamDAL objDAL;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (ClsCommon.CheckSession() == false)
        {
            Response.Redirect("~/Login.aspx");
        }
        if (Convert.ToInt32(Session["UserID"].ToString()) == 1)
            Panel1.Visible = true;
        else
            Panel1.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //ToppersDAL td = new ToppersDAL();
        objBEL = new ExamBEL();
        objDAL = new ExamDAL();
        objBEL.course = DropDownList1.SelectedValue;
        objBEL.branch = DropDownList6.SelectedValue;
        objBEL.year = DropDownList3.SelectedValue;
        objBEL.sub = DropDownList4.SelectedValue;
        objBEL.max = TextBox18.Text;
        objBEL.etype = DropDownList5.SelectedValue;
        foreach (GridViewRow row in GridView1.Rows)
        {
            if (row.RowType == DataControlRowType.DataRow)
            {
                TextBox txtrow = (row.Cells[0].FindControl("txtmarks") as TextBox);
                objBEL.m = txtrow.Text;
                //objBEL.max = TextBox1.Text;
                Label nm = (row.Cells[0].FindControl("Label1") as Label);
                objBEL.name = nm.Text;
                Label2.Text = objDAL.StoreMarks(objBEL);
            }

        }
        GridView1.DataBind();
        GridView2.DataBind();
        //td.AddToppers(objBEL);
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["ClientID"] = DropDownList2.SelectedValue;
        ClientDAL obj = new ClientDAL();
        Session["Client"] = obj.GetClientID();
        GridView1.DataBind();
        GridView2.DataBind();
    }
    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView1.DataBind();
        GridView2.DataBind();
    }
   
}