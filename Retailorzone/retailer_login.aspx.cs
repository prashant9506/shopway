using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Retailorzone_retailer_login : System.Web.UI.Page
{
    encryption em = new encryption();
    DBManager dm = new DBManager();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnLogin_Click(object sender, EventArgs e)
    {
        string EncryptedPassword = em.encryptmydata(TxtPassword.Text);
        string mycmd = "SELECT UserType from TblAll_Login where Email_ID='" +TxtEmail.Text+ "'and Passwd='" + EncryptedPassword + "'";
        DataTable d = dm.selectquery(mycmd);
        if (d.Rows.Count > 0)
        {
           // Response.Write("<script>alert('This igguyne ReferLink')</script>");
            string utype = d.Rows[0][0].ToString();
            if (utype.ToLower() == "user")
            {
                Session["Userid"] = TxtEmail.Text;
              Response.Write("<script>alert('This is UserZonne Home Page Link');</script>");
                //ek page se dusre page ko link krne ke liy(Response.Redirect("url")) 
               //Response.Redirect("~/ProductEntry.aspx");
            }
            else if (utype.ToLower() == "admin")
            {
                Session["adminid"] = TxtEmail.Text;
                Response.Write("<script>alert('This is  AdminZone ReferLink');</script>");

            }
            else if (utype.ToLower() == "retailer")
            {
                Session["Retailerid"] = TxtEmail.Text;

              //  Response.Write("<script>alert('This is  retaillerZone HomePage link');</script>");
                Response.Redirect("Dashboard.aspx");
            }
            else
                Response.Write("<script>alert('Sorry Unable to login');</script>");
           
        }
        else
        {
            Response.Write("<script>alert('Invalid UserID or Password');</script>");
        }
    }
}