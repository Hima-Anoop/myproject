using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Agency_view_influencers : System.Web.UI.Page
{
    datamanipulation dm = new datamanipulation();
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

        string str = "select influencer_reg.*,add_profile.* from influencer_reg inner join add_profile on influencer_reg.Id=add_profile.influencer_id";
      
        DataSet ds = dm.for_adapter(str);
        
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
        Panel1.Visible = true;
        lblmsg.Text = "You are Selected : " + GridView1.SelectedRow.Cells[1].Text;

        string str = "select influencer_reg.*,add_profile.* from influencer_reg inner join add_profile on influencer_reg.Id=add_profile.influencer_id where Id='" + GridView1.SelectedRow.Cells[0].Text + "'";

        DataSet ds = dm.for_adapter(str);
       
        if (ds.Tables[0].Rows.Count > 0)
        {
            Label11.Text = ds.Tables[0].Rows[0][0].ToString();
            Label2.Text = ds.Tables[0].Rows[0][1].ToString();
            Label3.Text = ds.Tables[0].Rows[0][2].ToString();
            Label4.Text = ds.Tables[0].Rows[0][3].ToString();
            Label5.Text = ds.Tables[0].Rows[0][4].ToString();
            Label6.Text = ds.Tables[0].Rows[0][5].ToString();
            Label7.Text = ds.Tables[0].Rows[0][6].ToString();


            Image1.ImageUrl = "~/Common/" + ds.Tables[0].Rows[0][10].ToString();
        }
        else
        {


        }
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        string str = "insert into company_interest values('"+Label11.Text+"','"+Session["id"].ToString()+"','"+Session["company"].ToString()+"','company is interested in your profile','"+DateTime.Now.ToString()+"')";
        int r = dm.for_execute(str);
        if (r > 0)
        {
            Response.Write("<script>alert('Interest send')</script");
        }
        else 
        {
            Response.Write("Not updateted");
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {

    }
}