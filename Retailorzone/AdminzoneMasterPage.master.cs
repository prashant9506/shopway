using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Adminzone_AdminzoneMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Retailerid"] != null)
        {
            if (IsPostBack == false)
            {
                
            }
        }
        else
            Response.Redirect("../genralzone/Default.aspx");
    }
}
