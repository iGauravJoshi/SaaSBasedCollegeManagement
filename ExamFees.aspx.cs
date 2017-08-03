using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BEL;
using DAL;

public partial class Examfees : System.Web.UI.Page
{
    examfeesBEL objBEL1;
    admissionFessDAL objDAL;
    protected void Page_Load(object sender, EventArgs e)
    {
        CalendarExtender1.EndDate = DateTime.Now;
        if (ClsCommon.CheckSession() == false)
        {
            Response.Redirect("~/Login.aspx");
        }
        if (Convert.ToInt32(Session["UserID"].ToString()) == 1)
            Panel1.Visible = true;
        else
            Panel1.Visible = false;
    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }

    protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }

    protected void Button_Click(object sender, EventArgs e)
    {
        objBEL1 = new examfeesBEL();
        objDAL = new admissionFessDAL();
        objBEL1.feespaid = Convert.ToInt32(TextBox3.Text);
        objBEL1.course = DropDownList1.SelectedValue;
        objBEL1.branch = DropDownList3.SelectedValue;
        objBEL1.year = DropDownList4.SelectedValue;
        objBEL1.name = DropDownList5.SelectedValue;
        //objBEL1.rollno = Convert.ToInt32(DropDownList4.SelectedValue);
        objBEL1.image = FileUpload1.FileName;

        objBEL1.examtype = DropDownList7.SelectedValue;
        objBEL1.dopayment = TextBox18.Text;

        if (TextBox5.Text == "")
            TextBox5.Text = "0";

        objBEL1.checkno = Int32.Parse(TextBox5.Text.ToString());
        objBEL1.totalfees = int.Parse(TextBox4.Text);

        Label3.Text = objDAL.ExamFees(objBEL1);
        GridView1.DataBind();
    }
    protected void CheckBox2_CheckedChanged1(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        CheckBox1.Checked = false;
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox2.Checked = false;
        if (CheckBox1.Checked)
            Panel2.Visible = true;
        else
            Panel2.Visible = false;
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["ClientID"] = DropDownList2.SelectedValue;
        ClientDAL obj = new ClientDAL();
        Session["Client"] = obj.GetClientID();
        GridView1.DataBind();
    }
}