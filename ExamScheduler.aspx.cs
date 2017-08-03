using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.Expressions;
using BEL;
using DAL;

public partial class ExamScheduler : System.Web.UI.Page
{
    ExamBEL objBEL;
    ExamDAL objDAL;

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
           
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        objBEL = new ExamBEL();
        objDAL = new ExamDAL();
        objBEL.course = DropDownList1.SelectedValue;
        objBEL.branch = DropDownList2.SelectedValue;
        objBEL.year = DropDownList3.SelectedValue;
        objBEL.sub = DropDownList4.SelectedValue;
        objBEL.date = TextBox1.Text;
        //objBEL.duration = DropDownList5.SelectedValue;
        objBEL.etype = DropDownList6.SelectedValue;
        objBEL.end = DropDownList5.SelectedValue;
        Label6.Text = objDAL.AddExam(objBEL);
        GridView1.DataBind();
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList9_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["ClientID"] = DropDownList9.SelectedValue;
        ClientDAL obj = new ClientDAL();
        Session["Client"] = obj.GetClientID();
        GridView1.DataBind();
    }
    protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }
}