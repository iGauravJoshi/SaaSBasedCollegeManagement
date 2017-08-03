using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BEL;
using DAL;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Drawing;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Configuration;
using System.Security.Cryptography;

public partial class Client : System.Web.UI.Page
{
    ClientBEL objBEL;
    ClientDAL objDAL;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (ClsCommon.CheckSession() == false)
        {
            Response.Redirect("~/Login.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        objBEL = new ClientBEL();
        objDAL = new ClientDAL();
        objBEL.name = TextBox1.Text;
        objBEL.add = TextBox8.Text;
        objBEL.cno = TextBox3.Text;
        objBEL.orgname = TextBox2.Text;
        objBEL.email = TextBox7.Text;
        objBEL.user = TextBox4.Text;
        objBEL.pass = TextBox5.Text;
        Label8.Text = objDAL.AddClient(objBEL);
    }
}