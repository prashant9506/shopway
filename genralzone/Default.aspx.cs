using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-SO1Q9F0;Initial Catalog=Shopway;Integrated Security=True");
    Captcha cg = new Captcha(); 
    encryption em = new encryption();
    DBManager dm = new DBManager();
    MySmsSender sm = new MySmsSender();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["Userid"] != null)
        {
            string cmd = "select U_Name from TblU_Registration where U_Email='" + Session["Userid"].ToString() + "'";
            DataTable dt2 = dm.selectquery(cmd);
            string name = dt2.Rows[0][0].ToString();
            user_profile.Text = name;
            
            //user_profile.ImageUrl = "../images/logo.jpeg";
        }
        string str = "Select * from Tbl_Product ORDER BY NEWID()";
        SqlDataAdapter ds = new SqlDataAdapter(str, con);
        DataTable dt = new DataTable();
        ds.Fill(dt);
        ListView12.DataSource = dt;
        ListView12.DataBind();


        SqlDataAdapter ad = new SqlDataAdapter("Select * from Retailer_Offer", con);
        DataTable d = new DataTable();
        ad.Fill(d);
        Lsti2.DataSource = d;
        Lsti2.DataBind();

        string str2 = "Select Top 4 *  from TblR_Registration ORDER BY NEWID()";
        SqlDataAdapter st = new SqlDataAdapter(str2, con);
        DataTable dq = new DataTable();
        st.Fill(dq);
        retail.DataSource = dq;
        retail.DataBind();


    }

    protected void BtnRegistor_Click(object sender, EventArgs e)
    {
        if (U_CheckBox1.Checked == true)
        {
            encryption em = new encryption();
            string EcryptPass = em.encryptmydata(U_Password.Text);
            string stt = "Insert Into TblU_Registration values('" + U_Name.Text + "','" + U_Email.Text + "','" + EcryptPass + "','" + U_Address.Text + "','" + U_State.Text + "','" + U_Pin.Text + "','" + U_Mobile.Text + "')";
            bool b = dm.nonquery(stt);
            if (b == true)
            {
                string stt2 = "Insert Into TblAll_Login values('" + U_Email.Text + "','" + EcryptPass + "','" + DateTime.Now + "','True','user')";
                bool d = dm.nonquery(stt2);
                if (d == true)
                {
                    Response.Write("<script>alert('Registered Succefully!!!');</script>");
                }
                else
                {
                    Response.Write("<script>alert('Unable to Set Login Records!!!');</script>");
                }
            }
            else
                Response.Write("<script>alert('Not Registered!!!');</script>");
        }
        else
        {
            Response.Write("<script>alert('Please Accept Term and Conditions!!!');</script>");
        }

    }
    protected void BtnLogin_Click(object sender, EventArgs e)
    {
        if(Session["Userid"] == null)
        {
            encryption em = new encryption();
            string EncryptedPassword = em.encryptmydata(TxtPassword.Text);
            string mycmd = "SELECT UserType from TblAll_Login where Email_ID='" + TxtEmail.Text + "'and Passwd='" + EncryptedPassword + "'";
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
                    Response.Redirect("~/customerzone/customerhomepage.aspx");
                }
                else if (utype.ToLower() == "admin")
                {
                    Session["adminid"] = TxtEmail.Text;
                    // Response.Write("<script>alert('This is  AdminZone ReferLink');</script>");
                    Response.Redirect("~/admin/Dashboard.aspx");
                }
                else if (utype.ToLower() == "retailer")
                {
                    Session["Retailerid"] = TxtEmail.Text;

                    // Response.Write("<script>alert('This is  retaillerZone HomePage link');</script>");
                    Response.Redirect("~/Retailorzone/Dashboard.aspx");
                }
                else
                    Response.Write("<script>alert('Sorry Unable to login');</script>");

            }
            else
            {
                Response.Write("<script>alert('Invalid UserID or Password');</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('already user login, firstly logout exist user');</script>");
        }
       
    }
    protected void offer_Click(object sender, EventArgs e)
    {
        if (Session["Userid"] != null)
        {
            Response.Redirect("~/customerzone/Offer.aspx");

        }
        else
        {
            Response.Write("<script>alert('First Login Then You Can See Offer')</script>");
        }
    }
    protected void add_Click(object sender, EventArgs e)
    {
        if (Session["Userid"] != null)
        {
            Response.Redirect("~/customerzone/add_to_cart.aspx");

        }
        else
        {
            Response.Write("<script>alert('First Login Then You Can See Cart Product')</script>");
        }
    }
    protected void Btn_Forget_Click(object sender, EventArgs e)
    {
        if (TxtF_Email == null && TxtF_Mobile == null)
        {
            Response.Write("<script>alert('Please Input Requiered Fields');</script>");
        }
        else
        {
            string st = "select UserType from TblAll_Login where Email_ID='" + TxtF_Email.Text + "'";
            DataTable dt = dm.selectquery(st);
            if (dt.Rows.Count > 0)
            {
                string usertype = dt.Rows[0][0].ToString();
                if (usertype == "user")
                {
                    string sttUser = "select U_Email,U_MobileNo from TblU_Registration Where U_Email='" + TxtF_Email.Text + "' and U_MobileNo='" + TxtF_Mobile.Text + "'";
                    DataTable dtUser = dm.selectquery(sttUser);
                    if (dtUser.Rows.Count > 0)
                    {
                        string Mobile = TxtF_Mobile.Text;
                        string NewPassword1 = cg.getcode();
                        string NewPassword=em.encryptmydata(NewPassword1);
                        string msg = "Hey on request we have change your password Now your new password is '" + NewPassword1 + "' Regards SHOPWAY TEAM Thank You For Using Our Service!!! ";
                        bool bb = sm.SendSMS(Mobile, msg);
                        if (bb == true)
                        {
                            string stt2 = "Update TblU_Registration set U_Password='" + NewPassword + "' where U_Email='" + TxtF_Email.Text + "' ";
                            bool bbb = dm.nonquery(stt2);
                            if (bbb == true)
                            {
                                string stt3 = "Update TblAll_Login set Passwd='" + NewPassword + "' where Email_ID='" + TxtF_Email.Text + "'";
                                bool b4 = dm.nonquery(stt3);
                                if (b4 == true)
                                {
                                    Response.Write("<script>alert('We Have Send Your Password as New Password!!!');</script>");
                                }
                                else
                                {
                                    Response.Write("<script>alert('Sorry!!! Unable to set Login Records!!!');</script>");
                                }
                            }
                            else
                            {
                                Response.Write("<script>alert('Sorry!!! Unable to set Registration Records!!!');</script>");
                            }
                        }
                        else
                        {
                            Response.Write("<script>alert('Please Check Your Internet Connection!!!');</script>");
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert('Unable To Reset Password');</script>");
                    }
                }
                else if (usertype == "Retailer")
                {
                    string sttUser = "select R_Email,R_Mobile from TblR_Registration Where R_Email='" + TxtF_Email.Text + "' and R_Mobile='" + TxtF_Mobile.Text + "'";
                    DataTable dtRetailer = dm.selectquery(sttUser);
                    if (dtRetailer.Rows.Count > 0)
                    {
                        string Mobile = TxtF_Mobile.Text;
                        string NewPassword = cg.getcode();
                        string msg = "Hey on request we have change your password Now your new password is '" + NewPassword + "' Regards SHOPWAY TEAM Thank You For Using Our Service!!! ";
                        bool bb = sm.SendSMS(Mobile, msg);
                        if (bb == true)
                        {
                            string stt2 = "Update TblR_Registration set R_Password='" + NewPassword + "' where R_Email='" + TxtF_Email.Text + "' ";
                            bool bbb = dm.nonquery(stt2);
                            if (bbb == true)
                            {
                                string stt3 = "Update TblAll_Login set Passwd='" + NewPassword + "' where Email_ID='" + TxtF_Email.Text + "'";
                                bool b4 = dm.nonquery(stt3);
                                if (b4 == true)
                                {
                                    Response.Write("<script>alert('We Have Send Your Password as New Password!!!');</script>");
                                }
                                else
                                {
                                    Response.Write("<script>alert('Sorry!!! Unable to set Login Records!!!');</script>");
                                }
                            }
                            else
                            {
                                Response.Write("<script>alert('Sorry!!! Unable to set Registration Records!!!');</script>");
                            }
                        }
                        else
                        {
                            Response.Write("<script>alert('Please Check Your Internet Connection!!!');</script>");
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert('Unable To Reset Password');</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('You Are not An Authorised Member');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('You Are not in Our Database');</script>");
            }
        }
    }
}