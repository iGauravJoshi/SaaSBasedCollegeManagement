
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BEL;
using DAL;

public partial class SubjectFacultyDetails : System.Web.UI.Page
{
    subjectFacultyDetailsBEL objBEL;
    ClassDAL objDAL;
    protected void Page_Load(object sender, EventArgs e)
    {
      /*  if (ClsCommon.CheckSession() == false)
        {
            Response.Redirect("~/Login.aspx");
        }
        if (Convert.ToInt32(Session["UserID"].ToString()) == 1)
            Panel1.Visible = true;
        else
            Panel1.Visible = false; */
      
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        objBEL = new subjectFacultyDetailsBEL();
        objDAL = new ClassDAL();
        objBEL.course = DropDownList1.SelectedValue;
        objBEL.branch = DropDownList2.SelectedValue;
        objBEL.year = DropDownList3.SelectedValue;
        objBEL.subject = DropDownList5.SelectedValue;
        objBEL.teacher = DropDownList4.SelectedValue;

        Label3.Text = objDAL.AddsubjectFacultyDetails(objBEL);
        GridView1.DataBind();
    }
    protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["ClientID"] = DropDownList6.SelectedValue;
        ClientDAL obj = new ClientDAL();
        Session["Client"] = obj.GetClientID();
        GridView1.DataBind();
    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }
}