using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class customerzone_customerfeedback : System.Web.UI.Page
{
    DBManager dm = new DBManager();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TxtBtn_Click(object sender, EventArgs e)
    {
        
        string str = "insert into Tbl_feedback values('" + TxtName.Text + "','" + TxtEID.Text + "','" + TxtMsg.Text + "','" + 1 + "')";
        bool b1 = dm.nonquery(str);
        if (b1 == true)
        {
            Response.Write("<script>alert('Your Feedback Has Been Send')</script>");
        }
        else {
            Response.Write("<script>alert('Sorry!!!Your Feedback Has Not Been Send')</script>");
        }
    }
}