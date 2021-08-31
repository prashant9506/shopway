using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class customerzone_remove : System.Web.UI.Page
{
    DBManager dm = new DBManager();
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] == null)
        {
            Response.Redirect("Add_to_cart.aspx");
        }
        else
        {
            id = Convert.ToInt32(Request.QueryString["id"].ToString());
            string cmd = "DELETE  FROM Tbl_cart where product_id='"+id+"'";
            bool b = dm.nonquery(cmd);
            if (b == true)
            {
                Response.Redirect("Customer_add_to_cart.aspx");
            }
            
        }
    }
}