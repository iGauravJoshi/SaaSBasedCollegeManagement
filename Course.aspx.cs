using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Web.Configuration;
using BEL;
using DAL;

public partial class Course : System.Web.UI.Page
{
    MasterBEL objBEL;
    ClassDAL objDAL;
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.Visible = true;
        if (ClsCommon.CheckSession() == false)
        {
            Response.Redirect("~/Login.aspx");
        }
        Label1.Visible = false;
        if (Convert.ToInt32(Session["UserID"]) == 1)
        {
            Panel1.Visible = true;
        }
        else
            Panel1.Visible = false;
    }
          
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        objBEL = new MasterBEL();
        objDAL = new ClassDAL();
        objBEL.course = TextBox1.Text;
        Label1.Visible = true;
        Label1.Text = objDAL.AddCourse(objBEL);
        GridView1.DataBind();
        
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["ClientID"] = DropDownList2.SelectedValue;
        ClientDAL obj = new ClientDAL();
        Session["Client"] = obj.GetClientID();
        GridView1.DataBind();
    }
}