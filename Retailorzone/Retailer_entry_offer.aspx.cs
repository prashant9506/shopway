using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Retailorzone_Retailer_entry_offer : System.Web.UI.Page
{
    DBManager dm = new DBManager();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-SO1Q9F0;Initial Catalog=Shopway;Integrated Security=True");
        SqlDataAdapter ds = new SqlDataAdapter("Select * from Retailer_Offer ", con);
        DataTable dt = new DataTable();
        ds.Fill(dt);
        Lst2.DataSource = dt;
        Lst2.DataBind();
    }
    protected void offer_Click(object sender, EventArgs e)
    {
        int id = 1;
        string str = "Insert into Retailer_offer values('" + id + "','" + off.Text + "','" + status.SelectedValue + "','" + DateTime.Now + "')";
        bool q = dm.nonquery(str);
        if (q == true)
        {
            Response.Write("<script>alert('Your offer will be send')</script>");
        }
        else
        {
            Response.Write("<script>alert('Your offer will not send.Please try again!!!')</script>");
        }
    }
}