using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BEL;
using DAL;

public partial class EditNonTeacherProfile : System.Web.UI.Page
{
    NonTeacherBEL objBEL;
    EditProfile objDAL;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

        Panel1.Visible = true;
        Panel2.Visible = false;
        Panel3.Visible = false;
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

        Panel1.Visible = false;
        Panel2.Visible = true;
        Panel3.Visible = false;
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {

        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = true;
    }
    
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox13_TextChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList2_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        objBEL = new NonTeacherBEL();
        objBEL.username= TextBox16.Text;
        objDAL = new EditProfile();

        objDAL.EditNonTeacherUsername(TextBox17.Text, objBEL);
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        objBEL = new NonTeacherBEL();
        objBEL.password = TextBox11.Text;
        objDAL = new EditProfile();

        objDAL.EditNonTeacherPassword(TextBox11.Text, objBEL);
    
    }
    protected void TextBox16_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox17_TextChanged(object sender, EventArgs e)
    {

    }
}