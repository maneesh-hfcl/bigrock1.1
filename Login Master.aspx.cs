using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace WebApplication1
{
    public partial class Account_Login : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection(@"Data source=103.21.58.5;port=3306;Initial catalog=DjB;User ID=naushad;Password=kT8en7~5");

        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "";

        }

        protected void LogIn(object sender, EventArgs e)
        {
            if (IsValid)
            {

            }
        }



        protected void CreateUser_Click(object sender, EventArgs e)
        {
            con.Open();
            MySqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
             
            cmd.CommandText = "select * from masterlogin where Username='" + UserName.Text + "'AND Password1='" + Password.Text + "'";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            da.Fill(dt);
            foreach (DataRow dr in dt.Rows)
            {
                Session["username"] = dr["username"].ToString();
                Response.Redirect("~/Account/Masterallot.aspx");
            }

            con.Close();
            Label1.Text = "Invalid Username Or password";

        }
        protected void UserName_TextChanged(object sender, EventArgs e)
        {

        }
    }
}