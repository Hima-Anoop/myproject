using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class Influencer_Add_profile : System.Web.UI.Page
{
    datamanipulation dm = new datamanipulation();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "insert into add_profile values('" + txtfb.Text + "','" + txtyt.Text + "','" + txtins.Text + "','" + txtsocial.Text + "','"+Session["Id"].ToString()+"')";
        int r =dm.for_execute(str);
     
        if (r > 0)
        {
            Response.Write("<script>alert('Sucessfully Added')</script>");
        
        }
        else
        {
            Response.Write("Not");
        }

    }
}