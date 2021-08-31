using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class customerzone_add_to_cart : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-SO1Q9F0;Initial Catalog=Shopway;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Userid"] != null)
        {
            string Psession = Session["Userid"].ToString();
            string str = "Select * from Tbl_cart where user_id='" + Psession + "' ";
            SqlDataAdapter d = new SqlDataAdapter(str, con);
            DataTable dt = new DataTable();
            d.Fill(dt);
            AddListView.DataSource = dt;
            AddListView.DataBind();
        }
        else
        {
            Response.Redirect("../genralzone/Default.aspx");
        }
    }
}