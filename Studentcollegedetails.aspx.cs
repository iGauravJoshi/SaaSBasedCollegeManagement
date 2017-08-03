using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BEL;
using DAL;

public partial class Studentcollegedetails : System.Web.UI.Page
{
    clgdetailsBEL objBEL1;
    clgdetailsDAL objDAL;
    protected void Page_Load(object sender, EventArgs e)
    {
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
        objBEL1 = new clgdetailsBEL();
        objDAL = new clgdetailsDAL();
        //objBEL1.ID = DropDownList1.SelectedValue;

        objBEL1.studentID = DropDownList8.SelectedValue;
        objBEL1.ID = DropDownList5.SelectedValue;
        objBEL1.styear = DropDownList1.SelectedValue;
        objBEL1.branch= DropDownList3.SelectedValue;
        objBEL1.ispass = RadioButton1.Text;
        objBEL1.yearofexam = DropDownList2.SelectedValue;
        objBEL1.lastexam = DropDownList7.SelectedValue;
        Label4.Text = objDAL.StoreDetailsInformation(objBEL1);
        GridView1.DataBind();
    }
    protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["ClientID"] = DropDownList6.SelectedValue;
        ClientDAL obj = new ClientDAL();
        Session["Client"] = obj.GetClientID();
        GridView1.DataBind();
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}