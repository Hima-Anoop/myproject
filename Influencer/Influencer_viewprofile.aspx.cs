using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Influencer_Influencer_viewprofile : System.Web.UI.Page
{
    datamanipulation dm = new datamanipulation();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string un = Request.QueryString["unm"];

            string str = "select * from influencer_reg where username='" + un + "'";
            DataSet ds = dm.for_adapter(str);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Label1.Text = ds.Tables[0].Rows[0][0].ToString();
                txtfname.Text = ds.Tables[0].Rows[0][1].ToString();
                txtlname.Text = ds.Tables[0].Rows[0][2].ToString();
                rblgen.Text = ds.Tables[0].Rows[0][3].ToString();
                txtcountry.Text = ds.Tables[0].Rows[0][4].ToString();
                txtemail.Text = ds.Tables[0].Rows[0][5].ToString();
                txtcontact.Text = ds.Tables[0].Rows[0][6].ToString();
                ddlcategory.Text = ds.Tables[0].Rows[0][7].ToString();
                txtuname.Text = ds.Tables[0].Rows[0][8].ToString();
                txtpwd.Text = ds.Tables[0].Rows[0][9].ToString();
                Image1.ImageUrl = "~/Common/" + ds.Tables[0].Rows[0][10].ToString();
            }
            else
            {
            }
            Bind();
        }
    }
    public void Bind()
    {
        string str = "select * from add_category";
        DataSet ds = dm.for_adapter(str);

        if (ds.Tables[0].Rows.Count > 0)
        {
            ddlcategory.DataSource = ds.Tables[0];
            ddlcategory.DataTextField = "cat_name";
            ddlcategory.DataValueField = "cat_id";
            ddlcategory.DataBind();
        }
        else
        {
        }
        ddlcategory.Items.Insert(0, "--Select Name--");
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "update influencer_reg set firstname='" + txtfname.Text + "',lastname='" + txtlname.Text + "',gender='" + rblgen.Text + "',country='"+txtcountry.Text+"',email='"+txtemail.Text+"',contact='"+txtcontact.Text+"',category='"+ddlcategory.Text+"',username='"+txtuname.Text+"',password='"+txtpwd.Text+"' where Id='" +Label1.Text + "'";
        int r = dm.for_execute(str);
        if (r > 0)
        {
            Response.Write("<script>alert('Updated')</script");
        }
        else
        {
            Response.Write("Not updateted");
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string str = "delete  from influencer_reg where Id='" + Label1.Text + "'";
        int r = dm.for_execute(str);
      
        if (r > 0)
        {
            Response.Write("<script>alert('Deleted')</script>");
            Response.Redirect("~/Influencer/influencer_registration");
        }
        else
        {
        }
    }
}