using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Common_Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\My_Project\App_Data\IMDatabase.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "select * from influencer_reg where username='" + txtuname.Text + "' and password='" + txtpwd.Text + "' and status='Approved'";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = str;
        cmd.Connection = con;
        con.Open();
        SqlDataReader sdr = cmd.ExecuteReader();
        if (sdr.Read())
        {
            Session["firstname"]=sdr[1].ToString();
            Session["id"] = sdr[0].ToString();
            Response.Redirect("~/Influencer/Influencer_home.aspx?un=" + txtuname.Text);

        }

        else
        {
            con.Close();
            string str1 = "select * from agency_reg where username='" + txtuname.Text + "' and password='" + txtpwd.Text + "' and status='Approved'";
            SqlCommand cmdd = new SqlCommand();
            cmdd.CommandType = CommandType.Text;
            cmdd.CommandText = str1;
            cmdd.Connection = con;
            con.Open();
            SqlDataReader sdr1 = cmdd.ExecuteReader();
            if (sdr1.Read())
            {
                Session["company"] = sdr1[1].ToString();
                Session["id"] = sdr1[0].ToString();
                Response.Redirect("~/Agency/agency_home.aspx?un=" + txtuname.Text);

            }
            else
            {
                con.Close();
                string str2 = "select * from Admin_Login where username='" + txtuname.Text + "' and password='" + txtpwd.Text + "'";
                SqlCommand cmdd1 = new SqlCommand();
                cmdd1.CommandType = CommandType.Text;
                cmdd1.CommandText = str2;
                cmdd1.Connection = con;
                con.Open();
                SqlDataReader sdr2 = cmdd1.ExecuteReader();
                if (sdr2.Read())
                {

                    Session["id"] = sdr2[0].ToString();
                    Response.Redirect("~/Admin/Admin_home.aspx?un=" + txtuname.Text);

                }
                else
                {
                    Response.Write("Error");
                }

                con.Close();


            }


        }
    }
}
        
 

    
