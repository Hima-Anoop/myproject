using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Agency_agency_home : System.Web.UI.Page
{

    datamanipulation dm = new datamanipulation();
    protected void Page_Load(object sender, EventArgs e)
    {
          string un = Request.QueryString["un"];
          lblmsg.Text = un;

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
        ddlcategory.Items.Insert(0, "--Select Name--");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("view_profile.aspx?unm=" + lblmsg.Text);
    }


    protected void Button3_Click(object sender, EventArgs e)
    {
        if (ddlcategory.SelectedItem.Text == "--Select Name--" && ddlcategory.Text != "")
        {
            String str = "select * from influencer_reg where category like '%" + ddlcategory.Text + "%'";

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
        else if (ddlcategory.SelectedItem.Text != "--Select Name--" && ddlcategory.Text == "")
        {
            String str1 = "select * from influencer_reg where category='" + ddlcategory.Text + "'";
            
            DataSet ds1 = dm.for_adapter(str1);
            
            if (ds1.Tables[0].Rows.Count > 0)
            {
                DataList1.DataSource = ds1.Tables[0];
                DataList1.DataBind();

            }
            else
            {

            }
        }
        //else if (ddlcategory.SelectedItem.Text != "--Select Name--" && txtname.Text != " ")
        //{
        //    String str = "select * from influencer_reg where category='" + ddlcategory.Text + "' and firstname like '%" + txtname.Text + "%' ";

        //    DataSet ds = dm.for_adapter(str);

        //    if (ds.Tables[0].Rows.Count > 0)
        //    {
        //        DataList1.DataSource = ds.Tables[0];
        //        DataList1.DataBind();

        //    }
        //    else
        //    {

        //    }
        //}
    

        else
        {

            String str = "select * from influencer_reg where category='"+ddlcategory.Text+"'";

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
            
    }
}