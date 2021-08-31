using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_offer : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-NMLEVIA\SQLEXPRESS;Integrated Security=True");
    public DataSet sql_call(string str)
    {
        SqlDataAdapter adp = new SqlDataAdapter(str, con);
        DataSet dsa = new DataSet();
        adp.Fill(dsa);
        return dsa;
    }
    public void sqlq(string str)
    {
        SqlCommand comm = new SqlCommand(str, con);
        con.Open();
        comm.ExecuteNonQuery();
        con.Close();
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        string str = "insert into Retailer_offer(offer,status) values('" + TextBox1.Text + "','" + status .SelectedValue+ "')";
        sqlq(str);
    }
   
}