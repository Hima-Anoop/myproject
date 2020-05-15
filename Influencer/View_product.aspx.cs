using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Influencer_View_product : System.Web.UI.Page
{
    datamanipulation dm = new datamanipulation();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bind();

        }
    }

    public void Bind()
    {

        string str = "select * from add_product";
        DataSet ds = dm.for_adapter(str);
        if (ds.Tables[0].Rows.Count > 0)
        {
            DataList1.DataSource = ds.Tables[0];
            DataList1.DataBind();
            
        }
        else
        {
           
        }
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {

         Label lblpid = (Label)e.Item.FindControl("productid");
         Label lblcate=(Label)e.Item.FindControl("lblcat");
        Label lblsubc=(Label)e.Item.FindControl("lblsub");
        Label lblnames=(Label)e.Item.FindControl("lblname");
        Label lblprice1=(Label)e.Item.FindControl("lblprice");
        Label lbldesc=(Label)e.Item.FindControl("lbldes");
        Label lblstat=(Label)e.Item.FindControl("lblstatus");
        Label lblag=(Label)e.Item.FindControl("lblagency");
        if (e.CommandName == "interest")
        {
            string str = "insert into view_interest values('" + Session["Id"].ToString() + "','"+Session["firstname"].ToString()+"','" + lblpid.Text + "','" + lblcate.Text+ "','"+lblsubc.Text+"','" + lblnames.Text + "','" + lblag.Text + "','pending','"+DateTime.Now.ToString()+"')";
            int r = dm.for_execute(str);
            if (r > 0)
            {
                Response.Write("<script>alert('Interest send')</script>");
               
            }
            else
            {
                Response.Write("Not");
            }
        
        }
    }

    
}