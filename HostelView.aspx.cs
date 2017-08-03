using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BEL;
using DAL;

public partial class HostelView : System.Web.UI.Page
{

        addBEL obj;
        GetInfo obj1;

    protected void Page_Load(object sender, EventArgs e)
    {
        obj = new addBEL();
        obj1 = new GetInfo();
        obj = obj1.GetHostelData();
       
        Label2.Text = obj.feespaid;
        Label4.Text = obj.totalfees;
       
        if (obj.localg == "YES")
        {
            panel2.Visible = true;
        }
        else
        {
            panel2.Visible = false;
        }
        Label8.Text = obj.lgname;
        Label10.Text = obj.lgno;
        Label12.Text = obj.lgocc;
        Label14.Text = obj.lgemail;

        if (obj.vechowned == "YES")
        {
            Panel1.Visible = true;

        }
        else
        {
            Panel1.Visible = false;
        }
        Label20.Text = obj.vechno;

    }
}