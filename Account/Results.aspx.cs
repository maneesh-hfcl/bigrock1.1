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
   // MySqlConnection con = new MySqlConnection(@"Data source=localhost;port=3306;Initial catalog=DJB;User ID=root;Password=root");
    MySqlConnection con = new MySqlConnection(@"Data source=103.21.58.5;port=3306;Initial catalog=DjB;User ID=naushad;Password=kT8en7~5");
    protected void Page_Load(object sender, EventArgs e)
        {
        if (Session["musername"] == null)
        {
            Response.Redirect("~/Account/Login Master.aspx");

        }
        con.Open();
        MySqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "SELECT * FROM allotment_table";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        MySqlDataAdapter da = new MySqlDataAdapter(cmd);
        
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        con.Close();
    }

        protected void LogIn(object sender, EventArgs e)
        {
            if (IsValid)
            {
        
            }
        }

    private void BindGrid()
    {
 

    }


    protected void UserName_TextChanged(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void SqlDataSource1_Selecting(object sender, System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs e)
    {

    }

    protected void DJB_Selecting(object sender, System.Web.UI.WebControls.EntityDataSourceSelectingEventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged2(object sender, EventArgs e)
    {
 
    }
}