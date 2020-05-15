using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Agency_view_profile : System.Web.UI.Page
{
    datamanipulation dm = new datamanipulation();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {


            string un = Request.QueryString["unm"];

            string str = "select * from agency_reg where username='" + un + "'";

            DataSet ds = dm.for_adapter(str);
          
            if (ds.Tables[0].Rows.Count > 0)
            {
                Label1.Text = ds.Tables[0].Rows[0][0].ToString();
                txtcname.Text = ds.Tables[0].Rows[0][1].ToString();
                txtdname.Text = ds.Tables[0].Rows[0][2].ToString();
                txtaddr.Text = ds.Tables[0].Rows[0][3].ToString();
                txtcontact.Text = ds.Tables[0].Rows[0][4].ToString();
                txtemail.Text = ds.Tables[0].Rows[0][5].ToString();
                txtuname.Text = ds.Tables[0].Rows[0][6].ToString();
                txtpwd.Text = ds.Tables[0].Rows[0][7].ToString();
            }

            else
            {

            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "update agency_reg set company='"+txtcname.Text+"',director='"+txtdname.Text+"',address='"+txtaddr.Text+"',contact='"+txtcontact.Text+"',email='"+txtemail.Text+"',username='"+txtuname.Text+"',password='"+txtpwd.Text+"' where id='" + Label1.Text + "'";
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
}