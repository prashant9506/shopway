using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class customerzone_Offer : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-SO1Q9F0;Initial Catalog=Shopway;Integrated Security=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataAdapter ad = new SqlDataAdapter("Select Top 8 * from Retailer_offer ORDER BY NEWID()", con);
        DataTable d = new DataTable();
        ad.Fill(d);
        off.DataSource = d;
        off.DataBind();
       
    }
}