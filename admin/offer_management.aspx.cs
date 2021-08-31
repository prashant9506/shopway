using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class admin_offer_management : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-SO1Q9F0;Initial Catalog=Shopway;Integrated Security=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataAdapter ad = new SqlDataAdapter("Select * from Retailer_offer", con);
        DataTable d = new DataTable();
        ad.Fill(d);
        offdel.DataSource = d;
        offdel.DataBind();
    }
}