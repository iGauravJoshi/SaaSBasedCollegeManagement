using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BEL;
using DAL;

public partial class AdmissionFees : System.Web.UI.Page
{
    admissionFeesBEL objBEL1;
    admissionFessDAL objDAL;

    protected void Page_Load(object sender, EventArgs e)
    {
       CalendarExtender2.EndDate = DateTime.Now;

        if (ClsCommon.CheckSession() == false)
        {
            Response.Redirect("~/Login.aspx");
        }
        if (Convert.ToInt32(Session["UserID"].ToString()) == 1)
            Panel1.Visible = true;
        else
            Panel1.Visible = false;
        Panel2.Visible = false;
    }
    protected void checkbox1_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox2.Checked = false;
        if (CheckBox1.Checked)
            Panel2.Visible = true;
        else
            Panel2.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        objBEL1 = new admissionFeesBEL();
        objDAL = new admissionFessDAL();
        objBEL1.feespaid = Convert.ToInt32(TextBox1.Text);
        objBEL1.course = DropDownList3.SelectedValue;
        objBEL1.branch = DropDownList1.SelectedValue;
        objBEL1.year = DropDownList4.SelectedValue;
        objBEL1.name = DropDownList5.SelectedValue;
        //objBEL1.rollnumber = Convert.ToInt32(DropDownList4.SelectedValue);
        objBEL1.Image = FileUpload1.FileName;
        objBEL1.dateofpayment = TextBox18.Text;
        if (CheckBox2.Checked)
        {
            objBEL1.DD = false;
            objBEL1.cash = true;
            objBEL1.Chequeno = "NULL";
        }
        if (CheckBox1.Checked)
        {
            objBEL1.cash = false;
            objBEL1.DD = true;
            objBEL1.Chequeno = TextBox3.Text;
        }
        objBEL1.totalfees = int.Parse(TextBox2.Text);
        Label2.Text = objDAL.AddAdmissionFees(objBEL1);
        GridView2.DataBind();
        
    }
    protected void DD_CheckedChanged(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }
    protected void cash_CheckedChanged(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }
    protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        CheckBox1.Checked = false;
    }
    protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView2.DataBind();
    }
    protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {

    }


    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["ClientID"] = DropDownList2.SelectedValue;
        ClientDAL obj = new ClientDAL();
        Session["Client"] = obj.GetClientID();
        GridView2.DataBind();
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {

    }
}
