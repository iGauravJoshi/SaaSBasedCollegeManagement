using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
using BEL;
using DAL;


public partial class Stud_Attend : System.Web.UI.Page
{
    AttendBEL objBEL;
    SqlConnection con;
    AttendDAL objDAL;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        CalendarExtender1.EndDate = DateTime.Now;
        CalendarExtender2.EndDate = DateTime.Now;
        GridView2.Visible = true;
        if (ClsCommon.CheckSession() == false)
        {
            Response.Redirect("~/Login.aspx");
        }
        Label6.Visible = false;
        if (Convert.ToInt32(Session["UserID"].ToString()) == 1)
            Panel2.Visible = true;
        else
            Panel2.Visible = false;

        GridView1.Visible = false;
    }
   
    protected void submit_Click(object sender, EventArgs e)
    {
        Label6.Visible = true;
        objBEL = new AttendBEL();
        objDAL = new AttendDAL();
        objBEL.branch = DropDownList1.SelectedValue;
        objBEL.course = DropDownList4.SelectedValue;
        objBEL.subject = DropDownList3.SelectedValue;
        objBEL.year = DropDownList2.SelectedValue;
        objBEL.date = TextBox18.Text;
        objBEL.teacher = "1";
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            CheckBox ch = (CheckBox)GridView1.Rows[i].FindControl("CheckBox1");
            Label lb = (Label)GridView1.Rows[i].FindControl("Label1");
            objBEL.rollno = lb.Text;
            if (ch.Checked == true)
            {
                objBEL.ispresent = "P";
                Label6.Text = objDAL.AddAttend(objBEL);
            }
            else
            {
                objBEL.ispresent = "A";
                Label6.Text = objDAL.AddAttend(objBEL);
            }
        }
        GridView1.Visible = false;
     
          
    }


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView2.Visible = true;
    }

    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void SqlDataSource11_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["ClientID"] = DropDownList6.SelectedValue;
        ClientDAL obj = new ClientDAL();
        Session["Client"] = obj.GetClientID();
        GridView1.DataBind();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList7_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}