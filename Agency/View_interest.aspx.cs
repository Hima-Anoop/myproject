using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Agency_View_interest : System.Web.UI.Page
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

        string str = "select * from view_interest";
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
        lblmsg.Text = "You are Selected : " + GridView1.SelectedRow.Cells[0].Text;

        string str = "select * from view_interest where influencer_id='" + GridView1.SelectedRow.Cells[0].Text + "'";
        DataSet ds = dm.for_adapter(str);
        if (ds.Tables[0].Rows.Count > 0)
        {

            lblintid.Text = ds.Tables[0].Rows[0][0].ToString();

            infid.Text = ds.Tables[0].Rows[0][1].ToString();
            infname.Text = ds.Tables[0].Rows[0][2].ToString();
            lblpid.Text = ds.Tables[0].Rows[0][3].ToString();
            lblcat.Text = ds.Tables[0].Rows[0][4].ToString();
            lblsub.Text = ds.Tables[0].Rows[0][5].ToString();
            lblname.Text = ds.Tables[0].Rows[0][6].ToString();
            lblstatus.Text = ds.Tables[0].Rows[0][8].ToString();
           
        }
        else
        {


        }
    }
    
    protected void Button1_Click1(object sender, EventArgs e)
    {
        string str = "Update  view_interest set status='Approved' where influencer_id='" + GridView1.SelectedRow.Cells[0].Text + "'";
        int r = dm.for_execute(str);

        if (r > 0)
        {
            Response.Write("<script>alert('Approved')</script>");
        }
        else
        {
            Response.Write("not");
        }

    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        string str = "Update  view_interest set status='Approved' where influencer_id='" + GridView1.SelectedRow.Cells[0].Text + "'";
        int r = dm.for_execute(str);

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