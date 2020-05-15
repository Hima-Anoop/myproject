using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


public class datamanipulation
{
    SqlConnection con;
	public datamanipulation()
	{
		con=new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\My_Project\App_Data\IMDatabase.mdf;Integrated Security=True;User Instance=True");
	}
    public int for_execute(string str)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = str;
        cmd.Connection = con;
        con.Open();
        int r = cmd.ExecuteNonQuery();
        con.Close();
        return r;

    }
    public DataSet for_adapter(string str)
    {
        SqlDataAdapter adpt = new SqlDataAdapter(str, con);
        DataSet ds = new DataSet();
        con.Open();
        adpt.Fill(ds);
        con.Close();
        return ds;

    }
}