using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class customerzone_Customer_MasterPage : System.Web.UI.MasterPage
{
    DBManager dm = new DBManager();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Userid"] != null)
        {
            if (IsPostBack == false)
            {
                string stt = "select U_Name from TblU_Registration Where U_Email='"+Session["Userid"].ToString()+"'";
                System.Data.DataTable dt = dm.selectquery(stt);
                if (dt.Rows.Count > 0)
                {
                    LblU_Name.Text = dt.Rows[0][0].ToString();
                }
                else
                { 
                
                }
            }
        }
        else
            Response.Redirect("../genralzone/Default.aspx");
    }
}
