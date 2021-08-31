using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class customerzone_view_more_retailer : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-SO1Q9F0;Initial Catalog=Shopway;Integrated Security=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        string str2 = "Select * from TblR_Registration ORDER BY NEWID()";
        SqlDataAdapter st = new SqlDataAdapter(str2, con);
        DataTable dq = new DataTable();
        st.Fill(dq);
        retailer.DataSource = dq;
        retailer.DataBind();
    }
}