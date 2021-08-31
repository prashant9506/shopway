using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_retailer_delete : System.Web.UI.Page
{
    DBManager dm = new DBManager();
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["id"].ToString());
        if (Request.QueryString["id"] != null)
        {
            //Response.Redirect("adminhome.aspx");
            string cmd = "DELETE  FROM TblR_Registration where ID='" + id + "'";
            bool b = dm.nonquery(cmd);
            if (b == true)
            {
                Response.Redirect("retailer_management.aspx");
            }
        }
        else
        {
            Response.Redirect("retailer_management.aspx");
        }
    }
}