using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using BEL;

public partial class ExamFeesView : System.Web.UI.Page
{
    examfeesBEL obj;
    GetInfo obj1;

    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.Visible = false;
        obj = new examfeesBEL();
        obj1 = new GetInfo();
        obj = obj1.GetExamData();
        Label1.Text = obj.examname;
        Label4.Text = obj.feespaid.ToString();
        Label6.Text = obj.dopayment;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;
    }
}