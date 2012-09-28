using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OnlineStoreBL;

public partial class Login : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["User"]!=null)
        {
            Response.Redirect("Default.aspx");
        }
        lbl_error.Text = "";
    }
    protected void  btn_login_Click(object sender, EventArgs e)
    {
        if (txt_UserName.Text!=null&&txt_Password.Text!=null)
        {
            User newuser = User.LoginCheck(txt_UserName.Text, txt_Password.Text);
            CaptchaControl1.ValidateCaptcha(txt_Captcha.Text);
            if (CaptchaControl1.UserValidated)
            {
                if (newuser == null)
                {
                    lbl_error.Text = "نام کاربری یا گذرواژه اشتباه می باشد ";
                }
                else
                {
                    Session["User"] = newuser;
                    if (Session["URLReferer"] == null)
                    {
                        Response.Redirect("Default.aspx");
                    }
                    else
                    {
                        Response.Redirect(Session["URLReferer"].ToString());
                        Session["URLReferer"] = null;
                    }
                }
            }
            else
            {
                lbl_error.Text = "دوباره وارد کنید";
                txt_Captcha.Text = "";
            }            
        }
        else
        {
            lbl_error.Text = "فیلدها را خواهشا پرکنید";
        }


    }
    protected void btn_register_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }
}
