using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;

public partial class HostelAllocated : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GetInfo o=new GetInfo();
        Session["s"] = o.getstuddata();
    }
}