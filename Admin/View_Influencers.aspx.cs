using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_View_Influencers : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\My_Project\App_Data\IMDatabase.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false; 
        if (!IsPostBack)
        {
            Bind();
           
        }

    }

    public void Bind()
    {

        string str = "select * from influencer_reg";
        SqlDataAdapter adpt = new SqlDataAdapter(str, con);
        DataSet ds = new DataSet();
        con.Open();
        adpt.Fill(ds);
        con.Close();
       
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
          
            lblmsg.Text = "";
           
        }
        else
        {
            lblmsg.Text = "no data";
        }


    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Panel1.Visible=true;
        lblmsg.Text = "You are Selected : " + GridView1.SelectedRow.Cells[1].Text;

        string str = "select * from influencer_reg where Id='" + GridView1.SelectedRow.Cells[0].Text + "'";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = str;
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        SqlDataAdapter adpt = new SqlDataAdapter();
        DataSet ds = new DataSet();
        adpt.SelectCommand = cmd;
        con.Open();
        adpt.Fill(ds);
        con.Close();
        if (ds.Tables[0].Rows.Count > 0)
        {

           Label2.Text = ds.Tables[0].Rows[0][1].ToString();
           Label3.Text = ds.Tables[0].Rows[0][2].ToString();
           Label4.Text = ds.Tables[0].Rows[0][3].ToString();
           Label5.Text = ds.Tables[0].Rows[0][4].ToString();
           Label6.Text = ds.Tables[0].Rows[0][5].ToString();
           Label7.Text = ds.Tables[0].Rows[0][6].ToString();
           Label11.Text = ds.Tables[0].Rows[0][11].ToString();
           Image1.ImageUrl = "~/Common/" + ds.Tables[0].Rows[0][10].ToString();
        }
        else
        {


        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "Update  influencer_reg set status='Approved' where id='" + GridView1.SelectedRow.Cells[0].Text + "'";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = str;
        cmd.Connection = con;
        con.Open();
        int r = cmd.ExecuteNonQuery();
        con.Close();
        if (r > 0)
        {
            Response.Write("<script>alert('Approved')</script>");
        }
        else
        {
            Response.Write("not");
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string str = "delete from influencer_reg where id='" + GridView1.SelectedRow.Cells[0].Text + "'";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = str;
        cmd.Connection = con; 
        con.Open();
        int r = cmd.ExecuteNonQuery();
        con.Close();
        if (r > 0)
        {
            Response.Write("<script>alert('Rejected')</script>");
        }
        else
        {
            Response.Write("not");
        }
    }
}