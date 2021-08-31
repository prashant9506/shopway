using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_productdelete : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-SO1Q9F0;Initial Catalog=Shopway;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        string str = "Select * from Tbl_Product";
        SqlDataAdapter ds = new SqlDataAdapter(str, con);
        DataTable dt = new DataTable();
        ds.Fill(dt);
        pro1.DataSource = dt;
        pro1.DataBind();
    }
}