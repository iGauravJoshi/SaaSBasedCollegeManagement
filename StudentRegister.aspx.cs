using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using BEL;
using DAL;

public partial class StudentRegister : System.Web.UI.Page
{
    StudentBEL objBEL;
    RegisterDAL objDAL;
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
        /*TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = ""; 
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = ""; 
        TextBox8.Text = "";
        TextBox9.Text = "";
        TextBox10.Text = "";
        TextBox11.Text = "";
        TextBox12.Text = "";
        TextBox13.Text = "";*/
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        objBEL = new StudentBEL();
        objDAL = new RegisterDAL();
        objBEL.fname = TextBox1.Text;
        objBEL.mname = TextBox2.Text;
        objBEL.lname = TextBox3.Text;
        
        if (RadioButton1.Checked)
            objBEL.gender = "male";
        else
            objBEL.gender = "female";
        objBEL.contactNo = TextBox3.Text;
        objBEL.emailId = TextBox4.Text;
        objBEL.bloodGrp = DropDownList1.SelectedValue;
        objBEL.moName = TextBox5.Text;
        objBEL.faName = TextBox6.Text;
        objBEL.faOcc = TextBox7.Text;
        objBEL.faCoNo = TextBox8.Text;
        objBEL.addOfCo = TextBox9.Text;
        objBEL.pAdd = TextBox10.Text;
        objBEL.state = DropDownList6.SelectedValue;
        objBEL.city = DropDownList7.SelectedValue;
        objBEL.dob = TextBox18.Text;

        Byte[] imgByte = null;
        if (FileUpload1.HasFile && FileUpload1.PostedFile != null)
        {
            HttpPostedFile File = FileUpload1.PostedFile;
            imgByte = new Byte[File.ContentLength];
            File.InputStream.Read(imgByte, 0, File.ContentLength);
        }
        objBEL.img = imgByte;
        
        if (RadioButton3.Checked)
            objBEL.caste = "obc";
        else
            if (RadioButton4.Checked)
                objBEL.caste = "sc";
            else
                if (RadioButton5.Checked)
                    objBEL.caste = "st";
                else
                    if (RadioButton6.Checked)
                        objBEL.caste = "NT";
                    else
                        objBEL.caste = "General";


        objBEL.bPlace = TextBox11.Text;
        objBEL.branch = DropDownList2.SelectedValue;
        objBEL.course = DropDownList5.SelectedValue;
        objBEL.year = DropDownList3.SelectedValue;
        objBEL.yrOfAdmit = DropDownList12.SelectedValue;
        objBEL.rollno = TextBox15.Text;
        objBEL.usernm = TextBox12.Text;
        objBEL.pass = TextBox13.Text;
        
        Label2.Text = objDAL.AddStudent(objBEL);

       Response.Redirect("Login.aspx");
    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        
    }
    protected void TextBox11_TextChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["ClientID"] = DropDownList4.SelectedValue;
        ClientDAL obj = new ClientDAL();
        Session["Client"] = obj.GetClientID();
    }
}