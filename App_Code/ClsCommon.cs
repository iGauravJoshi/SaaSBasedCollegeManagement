using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ClsCommon
/// </summary>
public class ClsCommon
{
    public static int i;
	public ClsCommon()
	{
        i = 0;
	}
    public static void I()
    {
        i = 0;
    }
    public static int getI()
    {
        return i;
    }
    public static void setI()
    {
        i = 1;
    }
    public static bool CheckSession()
    {
        if (HttpContext.Current.Session["usertype"] == null)
        {
            return false;
        }
        else
        {
            return true;
        }
    }
}