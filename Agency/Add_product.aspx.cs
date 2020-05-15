using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Agency_Add_product : System.Web.UI.Page
{
    datamanipulation dm = new datamanipulation();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "insert into add_product values('" + DropDownList1.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + Image1.ImageUrl + "','" + TextBox6.Text + "','" + Session["Id"].ToString() + "')";
        int r = dm.for_execute(str);

        if (r > 0)
        {
            Response.Write("<script>alert('Sucessfully Added')</script>");

        }
        else
        {
            Response.Write("Not");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string path = "~/Common/Image/" + FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath(path));
            Image1.ImageUrl = path;
            lblmsg.Text = "";
        }
        else
        {
            lblmsg.Text = "Please Upload";
        }
    }
}