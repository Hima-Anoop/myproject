using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Common_forgot_password : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\My_Project\App_Data\IMDatabase.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View1);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        string str = "select * from influencer_reg where username='" + txtuname.Text + "' and status='Approved'";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = str;
        cmd.Connection = con;
        con.Open();
        SqlDataReader sdr = cmd.ExecuteReader();
        if (sdr.Read())
        {
            Session["firstname"] = sdr[1].ToString();
            Session["id"] = sdr[0].ToString();
            MultiView1.SetActiveView(influencer);

        }
        else
        {
            con.Close();
            string str1 = "select * from agency_reg where username='" + txtuname.Text + "'";
            SqlCommand cmdd = new SqlCommand();
            cmdd.CommandType = CommandType.Text;
            cmdd.CommandText = str1;
            cmdd.Connection = con;
            con.Open();
            SqlDataReader sdr1 = cmdd.ExecuteReader();
            if (sdr1.Read())
            {

                Session["id"] = sdr1[0].ToString();
                MultiView1.SetActiveView(agency);

            }

            else
            {
                con.Close();
                string str2 = "select * from Admin_Login where username='" + txtuname.Text + "'";
                SqlCommand cmdd1 = new SqlCommand();
                cmdd1.CommandType = CommandType.Text;
                cmdd1.CommandText = str2;
                cmdd1.Connection = con;
                con.Open();
                SqlDataReader sdr2 = cmdd1.ExecuteReader();
                if (sdr2.Read())
                {

                    Session["id"] = sdr2[0].ToString();
                    MultiView1.SetActiveView(apwd);

                }
                else
                {

                }

                con.Close();


            }

        }
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        string str1 = "select * from influencer_reg where firstname='" + iname.Text + "' and email='" + imail.Text + "' and contact='" + iph.Text + "'";
        SqlCommand cmdd = new SqlCommand();
        cmdd.CommandType = CommandType.Text;
        cmdd.CommandText = str1;
        cmdd.Connection = con;
        con.Open();
        SqlDataReader sdr1 = cmdd.ExecuteReader();
        if (sdr1.Read())
        {

            Session["id"] = sdr1[0].ToString();
            MultiView1.SetActiveView(ipwd);

        }

        else
        {
            Response.Write("not");
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string str1 = "select * from agency_reg where username='" + agencyname.Text + "' and email='" + agencymail.Text + "' and contact='" + agencyph.Text + "'";
        SqlCommand cmdd = new SqlCommand();
        cmdd.CommandType = CommandType.Text;
        cmdd.CommandText = str1;
        cmdd.Connection = con;
        con.Open();
        SqlDataReader sdr1 = cmdd.ExecuteReader();
        if (sdr1.Read())
        {

            Session["id"] = sdr1[0].ToString();
            MultiView1.SetActiveView(agpwd);

        }

        else
        {
            Response.Write("not");
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        string str1 = "select * from Admin_Login where username='" + adminname.Text + "'";
        SqlCommand cmdd = new SqlCommand();
        cmdd.CommandType = CommandType.Text;
        cmdd.CommandText = str1;
        cmdd.Connection = con;
        con.Open();
        SqlDataReader sdr1 = cmdd.ExecuteReader();
        if (sdr1.Read())
        {

            Session["id"] = sdr1[0].ToString();
            MultiView1.SetActiveView(apwd);

        }

        else
        {
            Response.Write("not");
        }
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        string str = "update influencer_reg set password='" + txtnewpwd.Text + "' where username='" + txtuname.Text + "' ";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = str;
        cmd.Connection = con;
        con.Open();
        int r = cmd.ExecuteNonQuery();
        con.Close();
        if (r > 0)
        {
            Response.Write("<script>alert('successfully Updated')</script>");
        }
        else
        {
            Response.Write("Please check your old password");
        }
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        string str = "update agency_reg set passwod='" + txtnewpwd0.Text + "' where username='" + txtuname.Text + "' ";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = str;
        cmd.Connection = con;
        con.Open();
        int r = cmd.ExecuteNonQuery();
        con.Close();
        if (r > 0)
        {
            Response.Write("<script>alert('successfully Updated')</script>");
        }
        else
        {
            Response.Write("Please check your old password");
        }

    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        string str = "update Admin_Login set password='" + txtnewpwd1.Text + "' where username='" + txtuname.Text + "'";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = str;
        cmd.Connection = con;
        con.Open();
        int r = cmd.ExecuteNonQuery();
        con.Close();
        if (r > 0)
        {
            Response.Write("<script>alert('successfully Updated')</script>");
        }
        else
        {
            Response.Write("Please check your usename");
        }
    }
}