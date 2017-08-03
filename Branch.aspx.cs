using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BEL;
using DAL;

public partial class Branch : System.Web.UI.Page
{
    MasterBEL objBEL;
    ClassDAL objDAL;
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataBind();
        if (ClsCommon.CheckSession() == false)
        {
            Response.Redirect("~/Login.aspx");
        }
        Label1.Visible = false;
        if (Convert.ToInt32(Session["UserID"].ToString()) == 1)
        {
            Panel1.Visible = true;
        }
        else
            Panel1.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Visible = true;
        if (DropDownList2.SelectedIndex == 0 || DropDownList1.SelectedIndex == 0)
            Label1.Text = "Select a Valid value";
        else
        {
            objBEL = new MasterBEL();
            objDAL = new ClassDAL();
            objBEL.branch = TextBox1.Text;
            objBEL.course = DropDownList1.SelectedValue;
            Label1.Text = objDAL.AddBranch(objBEL);
        } 
        GridView1.DataBind();
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["ClientID"] = DropDownList2.SelectedValue;
        ClientDAL obj = new ClientDAL();
        Session["Client"] = obj.GetClientID();
        GridView1.DataBind();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }
}