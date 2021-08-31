using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class customerzone_Thanks_page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void continue_shopping_Click(object sender, EventArgs e)
    {
        Response.Redirect("customerhomepage.aspx");
    }
}