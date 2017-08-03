using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BEL;
using DAL;

public partial class _Default : System.Web.UI.Page
{
    
    LoginBEL objBEL;
    LoginDAL objDAL;
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Clear();
        Session.RemoveAll();
        if (ClsCommon.getI() == 1)
        {
            Response.Write("<script type=\"text/javascript\">alert('Invalid Username or Password');</script>");
            ClsCommon.I();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        objBEL = new LoginBEL();
        objDAL = new LoginDAL();
        objBEL.user = txtuser.Text;
        objBEL.pass = txtpass.Text;
        string type = objDAL.CheckUser(objBEL);
        Session["user"] = txtuser.Text;
        Session["usertype"] = type;
        Session["UserID"] = objBEL.uid;
        Session["ClientID"] = objBEL.cname;
        Session["Client"] = objBEL.cid;
        
        if (type != "Error")
            Response.Redirect(Session["usertype"]+"Home.aspx");
        else
        {
            ClsCommon.setI();
            Response.Redirect("Login.aspx");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        objDAL = new LoginDAL();
        objDAL.SendEMail(TextBox1.Text);
        Response.Redirect("Login.aspx");
    }
}