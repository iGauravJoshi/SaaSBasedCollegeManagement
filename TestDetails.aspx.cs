using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BEL;
using DAL;

public partial class TestDetails:System.Web.UI.Page
{
    TestDetailsBEL objBEL1;
    TestDetailsDAL objDAL;
    protected void Page_Load(object sender, EventArgs e)
    {
        CalendarExtender1.StartDate = DateTime.Now;
        if (ClsCommon.CheckSession() == false)
        {
            Response.Redirect("~/Login.aspx");
        }
        if (Convert.ToInt32(Session["UserID"].ToString()) == 1)
            Panel1.Visible = true;
        else
            Panel1.Visible = false;
        if (Convert.ToString(Session["UserType"].ToString())=="Student".ToString())
            Panel2.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        objBEL1 = new TestDetailsBEL();
        objDAL = new TestDetailsDAL();
        objBEL1.course = DropDownList2.SelectedValue;
        objBEL1.branch = DropDownList3.SelectedValue;
        objBEL1.year = DropDownList4.SelectedValue;
        objBEL1.subject = DropDownList5.SelectedValue;
        objBEL1.testname = DropDownList6.SelectedValue;
        objBEL1.description = TextBox1.Text;
        objBEL1.maximummarks = Convert.ToInt32(TextBox2.Text);
        objBEL1.date = TextBox4.Text;
        Label1.Text =objDAL.AddTestDetails(objBEL1);
        GridView1.DataBind();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["ClientID"] = DropDownList1.SelectedValue;
        ClientDAL obj = new ClientDAL();
        Session["Client"] = obj.GetClientID();
        GridView1.DataBind();
    }
    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }
}