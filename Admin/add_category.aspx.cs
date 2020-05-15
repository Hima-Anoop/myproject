using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_add_category : System.Web.UI.Page
{
    datamanipulation dm = new datamanipulation();
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "insert into add_category values('" + txtname.Text + "')";
        int r = dm.for_execute(str);
        if (r > 0)
        {
            Response.Write("<script>alert('Successfully Added')</script>");

        }
        else
        {
            Response.Write(" not");

        }
    }
}