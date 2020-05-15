using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Influencer_influencer_home : System.Web.UI.Page
{
     SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\My_Project\App_Data\IMDatabase.mdf;Integrated Security=True;User Instance=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        string un = Request.QueryString["un"];
        lblmsg.Text = un;
    }
    protected void  Button1_Click(object sender, EventArgs e)
      {
        Response.Redirect("influencer_viewprofile.aspx?unm=" + lblmsg.Text);
       }
}
