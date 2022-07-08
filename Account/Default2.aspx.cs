using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("~/Account/Login");
         
        
        }

        Label1.Text = (String)(Session["EmployeeID"]);
        Label2.Text = (String)(Session["Name"]);
        Label3.Text = (String)(Session["AppID"]);
        Label8.Text= (String)(Session["Preference_1"]);
        Label9.Text = (String)(Session["Preference_2"]);
        Label10.Text = (String)(Session["Preference_3"]);
        Label11.Text = (String)(Session["Address"]);
        Label12.Text = (String)(Session["Allot_Anywhere?"]);
        Label13.Text = (String)(Session["Category"]);
        Label14.Text = (String)(Session["type"]);
        Label15.Text = (String)(Session["DOJ"]);
        Label16.Text = (String)(Session["DOA"]);
        Label17.Text=(String)(Session["sex"]);




    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Account/Register.aspx");
    }



    protected void Button2_Click(object sender, EventArgs e)
    {

    }

    protected void Button2_Click1(object sender, EventArgs e)
    {

    }

    protected void Button2_Click2(object sender, EventArgs e)
    {

    }
}