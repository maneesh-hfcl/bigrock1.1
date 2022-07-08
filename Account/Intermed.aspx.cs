using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace WebApplication1.Account
{
    public partial class Intermed2 : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(@"Data source=103.21.58.5;port=3306;Initial catalog=DjB;User ID=naushad;Password=kT8en7~5");


        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["username"] == null)
            {
                Response.Redirect("~/Account/Login");


            }

            Label1.Text = (String)(Session["EmployeeID"]);
            Label2.Text = (String)(Session["Name"]);
            Label3.Text = (String)(Session["AppId"]);
            Label8.Text = (String)(Session["Preference_1"]);
            Label9.Text = (String)(Session["Preference_2"]);
            Label10.Text = (String)(Session["Preference_3"]);
            Label11.Text = (String)(Session["Address"]);
            Label12.Text = (String)(Session["Allot_Anywhere?"]);
            Label13.Text = (String)(Session["Category"]);
            Label14.Text = (String)(Session["type"]);
            Label15.Text = (String)(Session["DOJ"]);
            Label16.Text = (String)(Session["DOA"]);
            Label17.Text = (String)(Session["sex"]);
            Label18.Text = (String)(Session["DOB"]);
            Label19.Text = (String)(Session["Change"]);



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Account/Register.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            Random r = new Random();
            int num = r.Next(Convert.ToInt32(100), Convert.ToInt32(1000000));
            String a = num.ToString();
            con.Open();
            //   try
            //  {

            MySqlCommand cmd = con.CreateCommand();

            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "INSERT INTO APPLICATION_TABLE values ('" + Label1.Text + "', '" + Label3.Text + "','" + Label2.Text + "','" + Label8.Text + "','" + Label9.Text + "','" + Label10.Text + "','" + Label14.Text + "','" + Label15.Text + "','" + Label19.Text + "','NO','" + Label17.Text + "','" + Label13.Text + "','" + Label18.Text + "','NO','" + Label15.Text + "','" + Label12.Text + "','" + Label11.Text + "','" + Session["phone"] + "','" + Session["email"] + ",'" + Session["username"] + "'')";

            // cmd.CommandText = "INSERT INTO TEMP (uhid) VALUES ('ram');";
            int ab = cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/Account/Default2");
            //   }
            //  catch
            //  {
            //   con.Close();
            // Response.Redirect("~/Account/Erpage");
            con.Close();
            // }
        }
    }
}