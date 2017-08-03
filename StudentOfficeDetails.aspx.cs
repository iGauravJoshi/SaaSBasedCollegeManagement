using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BEL;
using DAL;

public partial class StudentOfficeDetails : System.Web.UI.Page
{
    StudentOfficeDetailsBEL objBEL1;
    StudentOfficeDetailsDAL objDAL;
    protected void Page_Load(object sender, EventArgs e)
    {
        CalendarExtender1.EndDate = DateTime.Now;
        if (ClsCommon.CheckSession() == false)
        {
            Response.Redirect("~/Login.aspx");
        }
        if (Convert.ToInt32(Session["UserID"].ToString()) == 1)
        {
            Panel1.Visible = true;
            //DropDownList7.SelectedValue = Session["Client"].ToString();
        }
        else
            Panel1.Visible = false;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        objBEL1 = new StudentOfficeDetailsBEL();
        objDAL = new StudentOfficeDetailsDAL();
        objBEL1.course = DropDownList1.SelectedValue;
        objBEL1.branch = DropDownList6.SelectedValue;
        objBEL1.year = DropDownList3.SelectedValue;
        objBEL1.name = DropDownList5.SelectedValue;
        objBEL1.rollnumber = Convert.ToInt32(DropDownList4.SelectedValue);
        objBEL1.remarks = TextBox1.Text;
        objBEL1.feespaid = Convert.ToInt32(TextBox2.Text);
        objBEL1.totalfees = Convert.ToInt32(TextBox3.Text);
        objBEL1.duedate = TextBox4.Text;

        if (RadioButton1.Checked)
            objBEL1.isapproved = true;
        else
            objBEL1.isapproved = false;
        Label1.Text = objDAL.AddStudentOfficeDetails(objBEL1);
        GridView1.DataBind();
    }
   
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }
    protected void DropDownList7_SelectedIndexChanged(object sender, EventArgs e)
    {

        Session["ClientID"] = DropDownList7.SelectedValue;
        ClientDAL obj = new ClientDAL();
        Session["Client"] = obj.GetClientID();
        GridView1.DataBind();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList4_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList7_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
}