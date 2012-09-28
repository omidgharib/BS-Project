using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OnlineStoreBL;
public partial class Register : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"]!=null)
        {
            Response.Redirect("Default.aspx");
        }
        lbl_Erorr.Text = "";
        lbl_Error_UserName.Text = "";
    }
    protected void btn_Cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
    protected void btn_Register_Click(object sender, EventArgs e)
    {
        if (txt_Address.Text != "" && txt_Birthday_Day.Text != "" && txt_Birthday_Year.Text != ""
            && txt_City.Text != "" && txt_Email.Text != "" && txt_LastName.Text != "" && txt_Mobile.Text != ""
            && txt_Name.Text != "" && txt_Password.Text != "" && txt_Password_retype.Text != ""
            && txt_Security_Question.Text!="" && txt_UserName.Text!="" && DropDownList_Birthday_Month.Text!=""
            && DropDownList_Gender.Text!="" && DropDownList_Security_Question.Text!="" && DropDownList_State.Text!="")
        {
            if (User.UserExistCheck(txt_UserName.Text)==null)
            {
                if (txt_Password.Text==txt_Password_retype.Text)
                {
                    User newuser = new User();
                    newuser.Address = txt_Address.Text;
                    newuser.Name = txt_Name.Text;
                    newuser.LastName = txt_LastName.Text;
                    newuser.UserName = txt_UserName.Text;
                    newuser.Tell = txt_Telephone.Text;
                    newuser.PostalCode = txt_PostalCode.Text;
                    newuser.Password = txt_Password.Text;
                    newuser.Answer_Secret_Question = txt_Security_Question.Text.Trim();
                    newuser.BirthDay = txt_Birthday_Day.Text;
                    newuser.Cell = txt_Mobile.Text;
                    newuser.City = txt_City.Text;
                    newuser.Email = txt_Email.Text;
                    newuser.BirthMonth = DropDownList_Birthday_Month.Text;
                    newuser.Secret_Question = DropDownList_Security_Question.Text;
                    newuser.State = DropDownList_State.Text;
                    newuser.BirthYear = txt_Birthday_Year.Text;
                    if (DropDownList_Gender.SelectedValue == "0")
                    {
                        newuser.Sex = false;
                    }
                    else
                    {
                        newuser.Sex = true;
                    }
                    newuser.Admin = 0;
                    newuser.Date_reg_day = DateTime.Now.Day.ToString();
                    newuser.Date_reg_month = DateTime.Now.Month.ToString();
                    newuser.Date_reg_year = DateTime.Now.Year.ToString();
                    newuser.Create();
                    newuser = User.LoginCheck(txt_UserName.Text, txt_Password.Text);
                    Session["User"] = newuser;
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    lbl_Erorr.Text = "خطا:گذرواژه را مجددا وارد نمایید";
                }
            }
            else
            {
                lbl_Error_UserName.Text = "خطا:این نام کاربری قبلا ثبت شده است";
            }
        }
        else
        {
            lbl_Erorr.Text = "خطا: لطفا فیلدهای خالی را پر نمایید";
        }
    }
}