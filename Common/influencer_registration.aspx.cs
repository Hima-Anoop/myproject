using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class Common_influencer_registration : System.Web.UI.Page
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
        ddlcategory.Items.Insert(0, "--select--");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string path = "Image/"+ FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath(path));
            Image1.ImageUrl = path;
            lblmsg.Text = "";
        }
        else
        {
            lblmsg.Text = "Please Upload";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "insert into influencer_reg values('" + txtfname.Text + "','" + txtlname.Text + "','" + rblgen.Text + "','" + txtcountry.Text + "','" + txtemail.Text + "','" + txtcontact.Text + "','" + ddlcategory.Text + "','" + txtuname.Text + "','" + txtpwd.Text + "','" + Image1.ImageUrl + "','pending')";
        
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