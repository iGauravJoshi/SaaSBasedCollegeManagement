using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BEL;
using DAL;

public partial class State : System.Web.UI.Page
{
    MasterBEL objBEL;
    ClassDAL objDAL;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (ClsCommon.CheckSession() == false)
        {
            Response.Redirect("~/Login.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        objBEL = new MasterBEL();
        objDAL = new ClassDAL();
        objBEL.state = TextBox1.Text;
        Label1.Visible = true;
        Label1.Text = objDAL.AddState(objBEL);
        
        GridView1.DataBind();
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}