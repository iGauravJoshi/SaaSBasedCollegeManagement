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

public partial class Hostel_Attendance : System.Web.UI.Page
{
    HostelAttendBEL objBEL;
    HostelAttendDAL objDAL;
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        CalendarExtender1.EndDate = DateTime.Now;
        CalendarExtender2.EndDate = DateTime.Now;
        if (ClsCommon.CheckSession() == false)
        {
            //Response.Redirect("~/Login.aspx");
        }
        Label2.Visible = false;
        //if (Convert.ToInt32(Session["UserID"].ToString()) == 1)
          //  Panel2.Visible = true;
       // else
           // Panel2.Visible = false;
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Label2.Visible = true;
        objBEL = new HostelAttendBEL();
        objDAL = new HostelAttendDAL();
        objBEL.date = TextBox18.Text;
        
        for (int i = 0; i < GridView3.Rows.Count; i++)
        {
            CheckBox ch = (CheckBox)GridView3.Rows[i].FindControl("CheckBox1");
            Label lb = (Label)GridView3.Rows[i].FindControl("Label1");
            objBEL.rollno = lb.Text;
            if (ch.Checked == true)
            {
                objBEL.ispresent = "P";
                Label2.Text = objDAL.AddHostelAttend(objBEL);
            }
            else
            {
                objBEL.ispresent = "A";
                Label2.Text = objDAL.AddHostelAttend(objBEL);
            }
        }
        GridView3.DataBind();
        
          
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        GridView4.Visible = true;
        GridView4.DataBind();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["ClientID"] = DropDownList2.SelectedValue;
        ClientDAL obj = new ClientDAL();
        Session["Client"] = obj.GetClientID();
    }
    protected void SqlDataSource3_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void TextBox18_TextChanged(object sender, EventArgs e)
    {

    }
}