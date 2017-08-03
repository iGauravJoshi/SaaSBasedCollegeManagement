using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BEL;
using DAL;

public partial class HostelAllocation : System.Web.UI.Page
{
    HostelAllocationBEL objBEL;
    ClassDAL objDAL;
    protected void Page_Load(object sender, EventArgs e)
    {
        CalendarExtender1.EndDate = DateTime.Now;
        if (ClsCommon.CheckSession() == false)
        {
            Response.Redirect("~/Login.aspx");
        }
        if (Convert.ToInt32(Session["UserID"].ToString()) == 1)
            Panel2.Visible = true;
        else
            Panel2.Visible = false;
        if (Session["usertype"].ToString() == "Student")
        {
            Panel4.Visible = false;
            Panel3.Visible = true;
        }
        else
        {
            Panel4.Visible = true;
        }  
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        objBEL = new HostelAllocationBEL();
        objDAL = new ClassDAL();
        objBEL.course = DropDownList1.SelectedValue;
        objBEL.branch = DropDownList2.SelectedValue;
        objBEL.year = DropDownList3.SelectedValue;
        objBEL.date = TextBox1.Text;
        objBEL.name = DropDownList6.SelectedValue;
        objBEL.roomNo = Int32.Parse(DropDownList5.Text.ToString());

        Label5.Text = objDAL.AddHostelAllocation(objBEL);
        GridView1.DataBind();
    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void imgPopup_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["ClientID"] = DropDownList4.SelectedValue;
        ClientDAL obj = new ClientDAL();
        Session["Client"] = obj.GetClientID();
        GridView1.DataBind();
    }
    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }
}