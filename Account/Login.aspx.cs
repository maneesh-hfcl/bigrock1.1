using Microsoft.AspNet.Identity;
using Microsoft.Owin.Security;
using System;
using System.Web;
using System.Web.UI;
using WebSite3;
using MySql.Data.MySqlClient;
using System.Data;

public partial class Account_Login : Page
{
   //     MySqlConnection con = new MySqlConnection(@"Data source=localhost;port=3306;Initial catalog=DJB;User ID=root;Password=root");
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
        
        cmd.CommandText = "select * from login where Username='"+UserName.Text+"'AND Password1='"+Password.Text+"'";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        MySqlDataAdapter da = new MySqlDataAdapter(cmd);
        da.Fill(dt);
          foreach (DataRow dr in dt.Rows) {
            Session["username"] = dr["username"].ToString();
            con.Close();
            Response.Redirect("~/Account/Register.aspx");
        }
        
          con.Close();
         Label1.Text = "Invalid Username Or password";
      
    }
    protected void UserName_TextChanged(object sender, EventArgs e)
    {

    }
}