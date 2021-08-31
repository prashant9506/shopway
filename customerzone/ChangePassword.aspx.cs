using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class customerzone_ChangePassword : System.Web.UI.Page
{
    DBManager dm = new DBManager();
    encryption em = new encryption();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnChangePass_Click(object sender, EventArgs e)
    {
        string encryptedPassword = em.encryptmydata(TxtOldPass.Text);
        string encryptedNewPassword = em.encryptmydata(TxtNewPass.Text);
        string encryptedConPassword = em.encryptmydata(TxtConPass.Text);
        string stt="select U_Password from TblU_Registration where U_Email='"+Session["Userid"].ToString()+"' ";
        DataTable dt=dm.selectquery(stt);
        if (dt.Rows.Count > 0)
        {
            if (encryptedPassword == dt.Rows[0][0].ToString())
            {
                if (encryptedNewPassword == encryptedConPassword)
                {
                    string stt2 = "Update TblAll_Login set Passwd='" + encryptedNewPassword + "' where Email_ID='" + Session["Userid"].ToString() + "'";
                    bool b = dm.nonquery(stt2);
                    if (b == true)
                    {
                        string stt3 = "Update TblU_Registration set U_Password='" + encryptedNewPassword + "' where U_Email='" + Session["Userid"].ToString() + "'";
                        bool b2 = dm.nonquery(stt3);
                        if (b2 == true)
                        {
                            Response.Write("<script>alert('Your Password Has been Successfully Changed!!!');</script>");
                        }
                        else
                        {
                            Response.Write("<script>alert('Unable to Set Registration Password Records!!!');</script>");
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert('Unable to Set Login Password Records!!!');</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Your New Password does not match with your Conform Password!!!');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Password Does not Match with your Old Password!!!');</script>");
            }
            
        }
        else
        {
            Response.Write("<script>alert('Sorry Your Session Has Been Expire...Please Login Again!!!');</script>");
        }
    }
}