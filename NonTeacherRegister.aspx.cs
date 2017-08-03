using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BEL;
using DAL;

public partial class NonTeacherRegister : System.Web.UI.Page
{
    NonTeacherBEL objBEL;
    RegisterDAL objDAL;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (ClsCommon.CheckSession() == false)
        {
            Response.Redirect("~/Login.aspx");
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        objBEL = new NonTeacherBEL();
        objDAL = new RegisterDAL();
        objBEL.fname = TextBox1.Text;
        objBEL.mname = TextBox5.Text;
        objBEL.lname = TextBox2.Text;
           if (RadioButton1.Checked)
            objBEL.gender = "male";
           else
            objBEL.gender = "female";
           objBEL.contnumber = TextBox3.Text; 
        objBEL.emailid = TextBox4.Text;
        objBEL.bloodgroup = DropDownList1.SelectedValue;
        Byte[] imgByte = null;
        if (FileUpload1.HasFile && FileUpload1.PostedFile != null)
        {
            HttpPostedFile File = FileUpload1.PostedFile;
            imgByte = new Byte[File.ContentLength];
            File.InputStream.Read(imgByte, 0, File.ContentLength);
        }
        objBEL.img = imgByte;

        objBEL.dob = TextBox18.Text;
        objBEL.qualification = DropDownList5.SelectedValue;
        objBEL.collegename = TextBox6.Text;
        objBEL.addcorrespondance = TextBox8.Text;
        objBEL.peraddress = TextBox10.Text;
        objBEL.exp = DropDownList2.SelectedValue;
        objBEL.dojoin = TextBox19.Text;
        objBEL.designation = DropDownList4.SelectedValue;
         objBEL.marritalstatus = DropDownList11.SelectedValue;
        objBEL.username = TextBox12.Text;
        objBEL.password = TextBox13.Text;
     
        Label2.Text = objDAL.AddNonTeacher(objBEL);
        Response.Redirect("Login.aspx");
    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox1.Checked)
        {
            TextBox10.Text = TextBox8.Text;
        }
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["ClientID"] = DropDownList3.SelectedValue;
        ClientDAL obj = new ClientDAL();
        Session["Client"] = obj.GetClientID();
    }
}