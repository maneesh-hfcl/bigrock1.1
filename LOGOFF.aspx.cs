using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LOGOFF : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (Session["Eusername"] == null)
        {
            Session.Clear();
            //            Response.Redirect("~/Account/Login");
            Response.Redirect("~/");

        }
        else
        {
            Session.Clear();
            Response.Redirect("~/Account/Estatemanager.aspx");
        }
    }
}