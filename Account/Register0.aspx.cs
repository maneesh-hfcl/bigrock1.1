using Microsoft.AspNet.Identity;
using System;
using System.Linq;
using System.Web.UI;
//using WebSite3;
using MySql.Data.MySqlClient;
using System.Data;
using System.Web.UI.WebControls;
using System.Globalization;

public partial class Account_Register : Page
{
  //  MySqlConnection con = new MySqlConnection(@"Data source=localhost;port=3306;Initial catalog=DJB;User ID=root;Password=root");
    MySqlConnection con = new MySqlConnection(@"Data source=103.21.58.5;port=3306;Initial catalog=DjB;User ID=naushad;Password=kT8en7~5");

    protected void CreateUser_Click(object sender, EventArgs e)
    {
      

        Random r = new Random();
        int num = r.Next(Convert.ToInt32(100), Convert.ToInt32(1000000));
        String a = num.ToString();
            Session["AppId"] = a;
            Session["Name"] = UserName.Text;
            Session["EmployeeID"] = TextBox1.Text;
        Session["EmployeeID"] = TextBox1.Text;
        Session["email"] = TextBox4.Text;
        Session["phone"] = TextBox3.Text;
        Session["Address"] = TextBox2.Text;
        Session["Preference_1"] = DropDownList1.Text;
        Session["Preference_2"] = DropDownList6.Text;
        Session["Preference_3"] = DropDownList7.Text;
        Session["Allot_Anywhere?"] = DropDownList5.Text;
        Session["SEX"] = DropDownList8.Text;
        Session["Category"] = DropDownList2.Text;
        Session["Type"] = DropDownList3.Text;
        Session["DOJ"] = TextBox9.Text;
        Session["DOA"] = TextBox10.Text;
        Session["DOB"] = TextBox11.Text;
        Session["Change"] = DropDownList4.Text;
        //  Session["EmployeeID"] = TextBox1.Text;
        Response.Redirect("~/Account/Intermed");
     
     
con.Close();

    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null) {
            Response.Redirect("~/Account/Login");
         
        }
        Rvalid.MinimumValue = DateTime.Now.Date.AddDays(-7).ToString("yyyy-MM-dd");
        Rvalid.MaximumValue = DateTime.Now.Date.ToString("yyyy-MM-dd");
    }

    protected void UserName_TextChanged(object sender, EventArgs e)
    {

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }

    protected void Calendar3_SelectionChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox9_TextChanged(object sender, EventArgs e)
    {
      
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }


    protected void DropDownList1_SelectedIndexChanged2(object sender, EventArgs e)
    {

    }

    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {



    }

    protected void UserName_TextChanged1(object sender, EventArgs e)
    {

    }
    protected void CustomValidator1_ServerValidate(object sender, ServerValidateEventArgs e)
    {
        DateTime d;
        e.IsValid = DateTime.TryParseExact(e.Value, "yyyy-MM-dd", CultureInfo.InvariantCulture, DateTimeStyles.None, out d);
    }

    protected void TextBox9_TextChanged1(object sender, EventArgs e)
    {

    }



    protected void DropDownList8_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox10_TextChanged(object sender, EventArgs e)
    {
    
    }
}