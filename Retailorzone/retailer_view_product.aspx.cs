using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Retailorzone_retailer_view_product : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-SO1Q9F0;Initial Catalog=Shopway;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        string se=Session["Retailerid"].ToString();
        if(Session["Retailerid"]!=null){
        string str = "Select * from Tbl_Product where Retailer_ID='"+se+"'";
        SqlDataAdapter ds = new SqlDataAdapter(str, con);
        DataTable dt = new DataTable();
        ds.Fill(dt);
        rpro.DataSource = dt;
        rpro.DataBind();
        }
        else{
            Response.Write("<script>alert('You cant see product')</script>");
        }
    }
}