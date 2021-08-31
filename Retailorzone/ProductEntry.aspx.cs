using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ProductEntry : System.Web.UI.Page
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
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        
        string session = Session["Retailerid"].ToString();
        DBManager dm = new DBManager();
        string cmd = "Insert into Tbl_Product values('" + TxtPname.Text + "','" + TxtDecription.Text + "','" + TxtPquantity.Text + "','" + TxtPprice.Text + "','" + DdlPweight.SelectedValue + "','" + FuPpic.FileName + "','" + session + "','" + DateTime.Now + "')";
        bool b = dm.nonquery(cmd);
        if (b == true)
        {
            FuPpic.SaveAs(Server.MapPath("~/ProductPic/" + FuPpic.FileName));
            Response.Write("<script>alert('Product has been saved!!!');</script>");
        }
        else
        {
            Response.Write("<script>alert('Product not saved!!!');</script>");
        }
    }
}