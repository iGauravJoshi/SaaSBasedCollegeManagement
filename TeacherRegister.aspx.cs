using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BEL;
using DAL;

public partial class TeacherRegister : System.Web.UI.Page
{
    TeacherBEL objBEL;
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
        objBEL = new TeacherBEL();
        objDAL = new RegisterDAL();
        objBEL.fname = TextBox1.Text;
        objBEL.mname = mtextbox.Text;
        objBEL.lname = TextBox2.Text;
       

        if (RadioButton1.Checked)
            objBEL.gender = "male";
        else
            objBEL.gender = "female";
        objBEL.cno = TextBox3.Text;
        objBEL.email = TextBox4.Text;
        objBEL.bgrp = DropDownList1.SelectedValue;
       
        objBEL.dob = TextBox18.Text;
        objBEL.gbranch = DropDownList8.SelectedValue; ;
        Byte[] imgByte = null;
        if (FileUpload1.HasFile && FileUpload1.PostedFile != null)
        {
            HttpPostedFile File = FileUpload1.PostedFile;
            imgByte = new Byte[File.ContentLength];
            File.InputStream.Read(imgByte, 0, File.ContentLength);
        }
        objBEL.img = imgByte;
        objBEL.gyear = DropDownList9.SelectedValue;
        objBEL.gclg = TextBox7.Text;
        objBEL.psub = TextBox9.Text;
        objBEL.pyear = DropDownList10.SelectedValue;
        objBEL.pclg = TextBox17.Text;
        objBEL.aoi = TextBox11.Text;
        objBEL.exp = DropDownList2.SelectedValue;
        objBEL.doj =TextBox14.Text;
        objBEL.desig = DropDownList4.SelectedValue;

        objBEL.mstatus = DropDownList11.SelectedValue; 
      
            

        objBEL.uname = TextBox12.Text;
        objBEL.pass = TextBox13.Text;
        objBEL.photo = TextBox1.Text;
        objBEL.add = TextBox8.Text;
        Label2.Text = objDAL.AddTeacher(objBEL);
        Response.Redirect("Login.aspx");
    }
    protected void Married_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList11_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["ClientID"] = DropDownList3.SelectedValue;
        ClientDAL obj = new ClientDAL();
        Session["Client"] = obj.GetClientID();
    }
}