using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for DBManager
/// </summary>
public class DBManager
{
	public DBManager()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-SO1Q9F0;Initial Catalog=Shopway;Integrated Security=True");
    
    public bool nonquery(string query){
    SqlCommand cmd=new SqlCommand(query,con);
    try
    {
            
        con.Open();
        cmd.ExecuteNonQuery();
        return true;
    }
    catch
    {
        return false;
    }
    finally {
        con.Close();
    }
   
       }
    public DataTable selectquery(string query) {
        DataTable dt = new DataTable();
        SqlDataAdapter ad = new SqlDataAdapter(query, con);
        ad.Fill(dt);
        return dt;
    }

    public DataSet RepeaterQuery(string query)
    {
        DataSet ds = new DataSet();
        SqlDataAdapter ad = new SqlDataAdapter(query, con);
        ad.Fill(ds);
        return ds;
    }

}