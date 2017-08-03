using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using BEL;
using DAL;

public partial class Admission : System.Web.UI.Page
{
    addBEL objBel;
    addDAL objDAL;
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
        Panel2.Visible = false;
       Panel3.Visible = false;
        
    }
    
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {        
        if (RadioButton1.Checked)
            Panel2.Visible = true;
        if (RadioButton3.Checked)
            Panel3.Visible = true;
    }
    protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
    {
        if(RadioButton3.Checked)
            Panel3.Visible = true;
        if (RadioButton1.Checked)
            Panel2.Visible = true;
    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        if(!RadioButton1.Checked)
        Panel2.Visible = false;
        if (RadioButton3.Checked)
            Panel3.Visible = true;
        
    }
    protected void TextBox7_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        objBel = new addBEL();
        objDAL = new addDAL();
        objBel.course = DropDownList3.SelectedValue;
        objBel.branch = DropDownList1.SelectedValue;
        objBel.year = DropDownList4.SelectedValue;
        objBel.name= DropDownList5.SelectedValue;
        objBel.feespaid =TextBox1.Text; 
        objBel.totalfees = TextBox2.Text;
        objBel.localg = RadioButton1.Text;
        objBel.vechowned = RadioButton3.Text;
        objBel.lgname = TextBox3.Text;
        objBel.lgno = TextBox4.Text;
        objBel.lgocc = TextBox5.Text;
        objBel.lgemail= TextBox6.Text;
        objBel.lgaddr= TextBox7.Text;
        objBel.vechno = TextBox8.Text;
        Label4.Text = objDAL.StoreUserInformation(objBel);
        
        GridView1.DataBind();
        //lblout.Text = LoginBLL.CheckUser(objBel);
    }
    protected void RadioButton4_CheckedChanged(object sender, EventArgs e)
    {
        if(RadioButton4.Checked)
            Panel3.Visible = false;
        if (RadioButton1.Checked)
            Panel2.Visible = true;
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
        if (Convert.ToInt32(TextBox1.Text) >= Convert.ToInt32(TextBox2.Text))
            Label4.Text = "Value should be less than";
    }
    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        ClientDAL obj = new ClientDAL();
        Session["ClientID"] = DropDownList2.SelectedValue;

        Session["Client"] = obj.GetClientID();
        GridView1.DataBind();
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

    }
}