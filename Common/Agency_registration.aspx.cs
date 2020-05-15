using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class Common_Agency_registration : System.Web.UI.Page
{
    datamanipulation dm = new datamanipulation();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "insert into agency_reg values('" + txtcname.Text + "','" + txtdname.Text + "','" + txtaddr.Text + "','" + txtcontact.Text + "','" + txtemail.Text + "','" + txtuname.Text + "','" + txtpwd.Text + "','pending')";
        int r = dm.for_execute(str);
        if (r > 0)
        {
            Response.Write("<script>alert('Sucessfully Registered')</script>");
            Response.Redirect("~/Common/Login.aspx");
        }
        else
        {
            Response.Write("Not");
        }

    }
}