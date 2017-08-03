using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BEL;
using DAL;

public partial class Mess : System.Web.UI.Page
{
    menuBEL objBel;
    menuDAL objDAL;
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataBind();
        CalendarExtender2.EndDate = DateTime.Now;
        if (ClsCommon.CheckSession() == false)
        {
            Response.Redirect("~/Login.aspx");
        }
        //Label3.Visible = false;
        if (Convert.ToInt32(Session["UserID"].ToString()) == 1)
            Panel1.Visible = true;
        else
            Panel1.Visible = false;
       
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        //dt=Calendar1.SelectedDate.ToString();
    }
   
    protected void Button1_Click1(object sender, EventArgs e)
    {
        objBel = new menuBEL();
        objDAL = new menuDAL();
        objBel.date = TextBox18.Text;
        objBel.menuitem = TextBox1.Text;
        Label1.Visible = true;
        Label1.Text = objDAL.PostMenuInformation(objBel);
        GridView1.DataBind();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        objBel = new menuBEL();
        objBel.date = TextBox18.Text;
        objBel.menuitem = TextBox1.Text;
        Label1.Visible = true;
        Label1.Text = objDAL.PostMenuInformation(objBel);
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["ClientID"] = DropDownList2.SelectedValue;
        ClientDAL obj = new ClientDAL();
        Session["Client"] = obj.GetClientID();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Visible = true;
        if (DropDownList2.SelectedIndex == 0)
            Label1.Text = "Select a Valid value";
        else
        {
            objBel = new menuBEL();
            objDAL = new menuDAL();
            objBel.date = TextBox18.Text;
            objBel.menuitem = TextBox1.Text;
            Label1.Visible = true;
            Label1.Text = objDAL.PostMenuInformation(objBel);
            GridView1.DataBind();
        }
    }
}