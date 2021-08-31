using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class genralzone_view_details : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-SO1Q9F0;Initial Catalog=Shopway;Integrated Security=True");  
        
    protected void Page_Load(object sender, EventArgs e)
    {
       
            string id = Request.QueryString["email"].ToString();
            string str = "Select * from Tbl_Product where Retailer_ID='" + id + "'";
            SqlDataAdapter ds = new SqlDataAdapter(str, con);
            DataTable dt = new DataTable();
            ds.Fill(dt);
            details.DataSource = dt;
            details.DataBind();
        
    }
    protected void addto_Click(object sender, EventArgs e)
    {
        //if (Session["Userid"] == null)
        //{
        //    Response.Write("<script>alert('first you will login then you will Buy');</script>");
        //}
        //else {
        //    string str="select  from Tbl_Product";
            
        //}
    }
}