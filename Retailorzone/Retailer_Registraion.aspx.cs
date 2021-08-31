using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Retailorzone_Retailer_Registraion : System.Web.UI.Page
{
    static string captcha;
    Captcha cg = new Captcha();
    encryption em = new encryption();
    DBManager dm = new DBManager();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {

            captcha = cg.getcode();
            LblCaptcha.Text = captcha;
        }
    }
    protected void reg_Click(object sender, EventArgs e)
    {
        //R_ShopPic.SaveAs(Request.PhysicalApplicationPath + "./ShopPhotos/" + R_ShopPic.FileName.ToString());
        string encryptedpassword, gender = "";
        // Response.Write("<Script>alert('ok')</Script>");
        if (txtcaptcha.Text == captcha)

        {
            if (Rbdmale.Checked == true)
            {
                gender = "male";
            }
            else
            {
                gender = "female";
            }
            encryptedpassword = em.encryptmydata(Txtpass.Text);
            string cmd = "Select * From TblR_Registration where R_Email='" + Txtemail.Text + "'";
            DataTable dt = dm.selectquery(cmd);
            if (dt.Rows.Count > 0)
            {
                Response.Write("<script>alert('Already Registered');</script>");
            }
            else
            {
                string mycmd = "Insert into TblR_Registration values('" + TxtName.Text + "','" + Txtmobile.Text + "','" + Txtaddress.Text + "','" + gender + "','" + Txtadhar.Text + "','" + shoptype.SelectedValue + "','" + Txtshopno.Text + "','" + Txtemail.Text + "','" + encryptedpassword + "','" + R_ShopPic.FileName + "') ";
                bool n1 = dm.nonquery(mycmd);
                if (n1 == true)
                {
                    string mycmd2 = "Insert into TblAll_Login values('" + Txtemail.Text + "','" + encryptedpassword + "','" + DateTime.Now.ToString() + "','True','Retailer')";
                    bool n2 = dm.nonquery(mycmd2);
                    if (n2 == true)
                    {
                        if (R_ShopPic.FileName == null)
                        {

                            // R_ShopPic.SaveAs(Request.PhysicalApplicationPath + "./ShopPhotos/" + R_ShopPic.FileName.ToString());        
                            Response.Write("<script>alert('successfully registered1')</script>");
                        }
                        else
                        {
                            R_ShopPic.SaveAs(Request.PhysicalApplicationPath + "./ShopPhotos/" + R_ShopPic.FileName.ToString());
                            //R_ShopPic.SaveAs(Server.MapPath("./ShopPhotos/" + R_ShopPic.FileName));
                            Response.Write("<script>alert('successfully registered')</script>");
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert('Unable to set Record in Login table')</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('sorry')</script>");
                    //Response.Redirect("retailer_login.aspx");
                }
            }
        }
        else
        {
            Response.Write("<script>alert('invalid captcha')</script>");
        }
    }
    protected void ImagBtnRefresh_Click(object sender, ImageClickEventArgs e)
    {
        captcha = cg.getcode();
        LblCaptcha.Text = captcha;
    }
    protected void TxtDelete_Click(object sender, EventArgs e)
    {
        string str2 = "Delete From Tbl_Product";
        bool b = dm.nonquery(str2);
        if(b==true)
        {
            Response.Write("<script>alert('Data Deleted');</script>");
        }
        else
            Response.Write("<script>alert('Data Not Deleted');</script>");
    }
}