using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class About : Page
{
    MySqlConnection con = new MySqlConnection(@"Data source=103.21.58.5;port=3306;Initial catalog=DjB;User ID=naushad;Password=kT8en7~5");
    //MySqlConnection con = new MySqlConnection(@"Data source=localhost;port=3306;Initial catalog=DJB;User ID=root;Password=root");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Eusername"] == null)
        {
            Response.Redirect("~/Account/Estatemanager.aspx");

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        bindData();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        
        GridView1.EditIndex = -1;
        bindData();

    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        Response.Write("<script>alert('You are about to change a House status as an Estate Manager! Your activity is being tracked and monitored. Please ensure only Authentic Change');</script>");
        GridView1.EditIndex = e.NewEditIndex;
        bindData();    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Response.Write("<script>alert('You are about to change a House status. Your activity is being tracked and monitored. Please ensure only Authentic Change');</script>");
        int id = int.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString());
        con.Open();
        MySqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        DropDownList status = (DropDownList)GridView1.Rows[e.RowIndex].FindControl("DropDownList1");
        DropDownList Vacant = (DropDownList)GridView1.Rows[e.RowIndex].FindControl("DropDownList2");
        TextBox remarks = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2");
       
       // try {
            cmd.CommandText = "update total_house_table set damaged='" + status.Text + "',vacant='" + Vacant.Text + "',remarks='" + remarks.Text + "' where UHID='"+id+"'";
            cmd.ExecuteNonQuery();

     //   }
      //  catch { }
        con.Close();
        GridView1.EditIndex = -1;
        bindData();
       

    }
    private void bindData() {
        con.Open();
        MySqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        // cmd.CommandText = "SELECT * FROM total_house_table where EstateManager= '"+Session["Eusername"]+"' AND UHID like '" + TextBox1.Text + "' OR Locationtype like '" + TextBox1.Text + "' OR HouseNO like '" + TextBox1.Text + "'"  ;
        cmd.CommandText = "SELECT UHID,locationtype,Typeh,HouseNo,damaged,vacant,remarks FROM total_house_table where EstateManager= '" + Session["Eusername"] + "' and (UHID like '%" + TextBox1.Text + "%' OR Locationtype like '%" + TextBox1.Text + "%' OR HouseNO like '%" + TextBox1.Text + "%')";
        //  cmd.CommandText = "select UHID,Locationtype,Typeh,HouseNo,damaged,vacant,remarks from total_house_table";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        MySqlDataAdapter da = new MySqlDataAdapter(cmd);
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        con.Close();

    }

    protected void Button2_Click(object sender, EventArgs e)
    {try
        {
            con.Open();
            MySqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            // cmd.CommandText = "SELECT * FROM total_house_table where EstateManager= '"+Session["Eusername"]+"' AND UHID like '" + TextBox1.Text + "' OR Locationtype like '" + TextBox1.Text + "' OR HouseNO like '" + TextBox1.Text + "'"  ;
            cmd.CommandText = "SELECT t1.UHID,t1.employeeid,t1.nameofallotee,t1.locationID,t1.Typeho,t1.HouseNo FROM allotment_table t1, total_house_table t2 where t1.UHID = '" + TextBox3.Text + "' and t1.uhid=t2.uhid and t2.vacant='tech possession'";
            //  cmd.CommandText = "select UHID,Locationtype,Typeh,HouseNo,damaged,vacant,remarks from total_house_table";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            da.Fill(dt);
            
            GridView2.DataSource = dt;
            GridView2.DataBind();
            con.Close();
        }
        catch { }
    }

    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

        con.Open();
        string query = "SELECT t1.UHID,t1.employeeid,t1.nameofallotee,t1.locationID,t1.Typeho,t1.HouseNo,t1.DOA FROM allotment_table t1, total_house_table t2 where t1.UHID = '" + TextBox3.Text + "' and t1.uhid=t2.uhid and vacant='tech possession'";
        MySqlCommand nq = new MySqlCommand(query, con);
        MySqlDataReader dr = nq.ExecuteReader();
        bool success=dr.Read();
        if (success)
        {
            Session["UHID"] = dr["UHID"].ToString();


            //Accessing TemplateField Column controls
            Session["locationtype"] = dr["LocationID"].ToString();
            Session["Typeh"] = dr["typeho"].ToString();
            Session["HouseNo"] = dr["Houseno"].ToString();
            Session["employeeid"] = dr["employeeid"].ToString();
            Session["name"] = dr["nameofallotee"].ToString();
            Session["DOA"] = dr["DOA"].ToString();
            con.Close();
            //  lblValues.Text = "<b>Name:</b> " + name + " <b>Country:</b> " + country;
            Response.Redirect("~/Account/Techpos.aspx");
        }
        Response.Write("<script>alert('Sorry, but the UHID has its status changed and doesnt allow for this operation');</script>");

        con.Close();
    }




    protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
    {

        con.Open();
        string query = "SELECT t1.UHID,t1.employeeid,t1.nameofallotee,t1.locationID,t1.Typeho,t1.HouseNo,t1.DOA FROM allotment_table t1, total_house_table t2 where t1.UHID = '" + TextBox4.Text + "' and t1.uhid=t2.uhid and vacant='Physical Possession'";
        MySqlCommand nq = new MySqlCommand(query, con);
        MySqlDataReader dr = nq.ExecuteReader();
        bool success = dr.Read();
        if (success)
        {
            Session["UHID"] = dr["UHID"].ToString();


            //Accessing TemplateField Column controls
            Session["locationtype"] = dr["LocationID"].ToString();
            Session["Typeh"] = dr["typeho"].ToString();
            Session["HouseNo"] = dr["Houseno"].ToString();
            Session["employeeid"] = dr["employeeid"].ToString();
            Session["name"] = dr["nameofallotee"].ToString();
            Session["DOA"] = dr["DOA"].ToString();
            con.Close();
            //  lblValues.Text = "<b>Name:</b> " + name + " <b>Country:</b> " + country;
            Response.Redirect("~/Account/Techpos1.aspx");
        }
        Response.Write("<script>alert('Sorry, but the UHID has its status changed and doesnt allow for this operation');</script>");
        con.Close();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            MySqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            // cmd.CommandText = "SELECT * FROM total_house_table where EstateManager= '"+Session["Eusername"]+"' AND UHID like '" + TextBox1.Text + "' OR Locationtype like '" + TextBox1.Text + "' OR HouseNO like '" + TextBox1.Text + "'"  ;
            cmd.CommandText = "SELECT t1.UHID,t1.employeeid,t1.nameofallotee,t1.locationID,t1.Typeho,t1.HouseNo FROM allotment_table t1, total_house_table t2 where t1.UHID = '" + TextBox4.Text + "' and t1.uhid=t2.uhid and t2.vacant='Physical Possession'";
            //  cmd.CommandText = "select UHID,Locationtype,Typeh,HouseNo,damaged,vacant,remarks from total_house_table";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            da.Fill(dt);

            GridView3.DataSource = dt;
            GridView3.DataBind();
            con.Close();
        }
        catch { }
    }
}