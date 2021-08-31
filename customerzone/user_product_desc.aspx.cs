using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class customerzone_user_product_desc : System.Web.UI.Page
{
    DBManager dm = new DBManager();
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-SO1Q9F0;Initial Catalog=Shopway;Integrated Security=True");
    int id;
    string p_name, p_price, p_quantity, p_weight, p_desc, p_pic;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        else
        {
            id = Convert.ToInt32(Request.QueryString["id"].ToString());
            //Response.Write("<script>alert('id')</script>");
            string str = "Select * from Tbl_Product where ID=" + id + "";
            SqlDataAdapter ds = new SqlDataAdapter(str, con);
            DataTable dt = new DataTable();
            ds.Fill(dt);
            product.DataSource = dt;
            product.DataBind();
        }
    }
    protected void addtocart_Click(object sender, EventArgs e)
    {
        if (Session["Userid"] != null)
        {
            string u_id = Session["Userid"].ToString();
            id = Convert.ToInt32(Request.QueryString["id"].ToString());
            string str = "Select * from Tbl_Product where ID=" + id + "";
            SqlDataAdapter ds = new SqlDataAdapter(str, con);
            DataTable dt = new DataTable();
            ds.Fill(dt);
            foreach (DataRow dr in dt.Rows)
            {
                p_name = dr["P_Name"].ToString();
                p_price = dr["P_Price"].ToString();
                p_quantity = dr["P_Quantity"].ToString();
                p_weight = dr["P_Weight"].ToString();
                p_desc = dr["P_Discription"].ToString();
                p_pic = dr["P_Pic"].ToString();
            }
            string mycmd = "Insert into Tbl_cart values('" + id + "','" + u_id + "','" + p_name + "','" + p_price + "','" + p_desc + "','" + p_quantity + "','" + p_weight + "','" + p_pic + "','" + DateTime.Now + "') ";
            bool n1 = dm.nonquery(mycmd);
            if (n1 == true)
            {

                //Response.Write("<Script>window.open('Add_to_cart.aspx?id="+id+"')</Script>");
                //Response.Write("<Script>window.open('Customer_add_to_cart.aspx')</Script>");
                Response.Write("<script>alert('Add to cart')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('sorry')</script>");
        }

        
    }
}