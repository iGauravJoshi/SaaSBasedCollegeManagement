using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BEL;
using DAL;

public partial class EditStudProfile : System.Web.UI.Page
{
    StudentBEL objBEL;
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
    protected void Button7_Click(object sender, EventArgs e)
    {
        objBEL = new StudentBEL();
        objBEL.usernm = TextBox16.Text;
        objDAL = new EditProfile();
        
        objDAL.EditStudUsername(TextBox17.Text, objBEL);
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        objBEL = new StudentBEL();
        objBEL.pass = TextBox11.Text;
        objDAL = new EditProfile();

        objDAL.EditStudPassword(TextBox11.Text, objBEL);
    

    }
}