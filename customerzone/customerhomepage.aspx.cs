using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class customerzone_customerhomepage : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-SO1Q9F0;Initial Catalog=Shopway;Integrated Security=True");
       
    protected void Page_Load(object sender, EventArgs e){
     string str2 = "Select Top 4 *  from TblR_Registration ORDER BY NEWID()";
        SqlDataAdapter st = new SqlDataAdapter(str2,con);
        DataTable dq = new DataTable();
        st.Fill(dq);
        product.DataSource =dq;
        product.DataBind();

        string str = "Select Top 12 * from Tbl_Product ORDER BY NEWID()";
        SqlDataAdapter ds = new SqlDataAdapter(str, con);
        DataTable dt = new DataTable();
        ds.Fill(dt);
        ListView12.DataSource = dt;
        ListView12.DataBind();

        DBManager dm=new DBManager();
        if (Session["Userid"] != null)
        {
            if (IsPostBack == false)
            {
                string UserName= Session["Userid"].ToString();
                string cmd = "Select U_Name From TblU_Registration where U_Email='"+UserName+"'";
                DataTable d = dm.selectquery(cmd);
                if (d.Rows.Count > 0)
                {
                    LblU_Name.Text = d.Rows[0][0].ToString();
                }
                else
                    LblU_Name.Text = "User";
            }
        }
        else
            Response.Redirect("../genralzone/Default.aspx");
    }
}