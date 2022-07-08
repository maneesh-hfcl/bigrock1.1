using Microsoft.AspNet.Identity;
using System;
using System.Linq;
using System.Web.UI;
using WebSite3;
using MySql.Data.MySqlClient;
using System.Data;

public partial class Account_Register : Page
{
     // MySqlConnection con = new MySqlConnection(@"Data source=localhost;port=3306;Initial catalog=DJB;User ID=root;Password=root");
    MySqlConnection con = new MySqlConnection(@"Data source=103.21.58.5;port=3306;Initial catalog=DjB;User ID=naushad;Password=kT8en7~5");

    protected void CreateUser_Click(object sender, EventArgs e)
    {
        /* var manager = new UserManager();
         var user = new ApplicationUser() { UserName = UserName.Text };
         IdentityResult result = manager.Create(user, Password.Text);
         if (result.Succeeded)
         {
             IdentityHelper.SignIn(manager, user, isPersistent: false);
             IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
         }
         else
         {
             ErrorMessage.Text = result.Errors.FirstOrDefault();
         }*/
     
           /* con.Open();
        MySqlCommand cmd = con.CreateCommand();
           Random r = new Random();
        int num = r.Next(Convert.ToInt32(100), Convert.ToInt32(1000000));
        String a = num.ToString(); 
        cmd.CommandType = CommandType.Text;
 
            cmd.CommandText = "INSERT INTO APPLICATION_TABLE values ('" + a + "', '" + TextBox1.Text + "','" + UserName.Text + "','" + DropDownList1.Text + "','" + DropDownList6.Text + "','" + DropDownList7.Text + "','" + DropDownList3.Text + "','" + TextBox9.Text + "','" + DropDownList4.Text + "','NO','MALE','" + DropDownList2.Text + "','" + TextBox11.Text + "','NO','" + TextBox10.Text + "','" + DropDownList5.Text + "')";

            //   cmd.CommandText = "INSERT INTO TEMP (uhid) VALUES ('ram');";
            int ab = cmd.ExecuteNonQuery();
        Session["AppId"] = a;
        Session["Name"] = UserName.Text;
        Session["EmployeeID"] = TextBox1.Text;
            Response.Redirect("~/Account/Default2");*/
     



con.Close();

    }

    protected void Page_Load(object sender, EventArgs e)
    {
        /* if (Session["username"] == null) {
             Response.Redirect("~/Account/Login");*/
        if (Session["musername"] == null)
        {
            Response.Redirect("~/Account/Login Master.aspx");

        }
    }



    protected void DropDownList1_SelectedIndexChanged2(object sender, EventArgs e)
    {

    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
         con.Open();
MySqlCommand cmd = con.CreateCommand();

cmd.CommandType = CommandType.Text;

   cmd.CommandText = "CALL simble('"+ TextBox3.Text+ "', '"+TextBox4.Text+"', '"+DropDownList2.Text+ "',  '" + DropDownList1.Text + "',  '" + DropDownList3.Text + "')";

    //   cmd.CommandText = "INSERT INTO TEMP (uhid) VALUES ('ram');";
        int ab = cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("~/Account/Results.aspx");


    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        con.Open();
        MySqlCommand cmd = con.CreateCommand();

        cmd.CommandType = CommandType.Text;

        cmd.CommandText = " CALL allotmentdjb_period('"+TextBox1.Text+"','"+TextBox2.Text+"')";

        //   cmd.CommandText = "INSERT INTO TEMP (uhid) VALUES ('ram');";
        int ab = cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("~/Account/Results.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Account/Results.aspx");
    }
}