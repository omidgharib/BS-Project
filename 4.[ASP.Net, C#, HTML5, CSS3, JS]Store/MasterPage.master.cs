using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OnlineStoreBL;

public partial class MasterPage : System.Web.UI.MasterPage
{
    public User currentmember
    {
        get {

            if (Session["User"] == null)
            {
                return null;
            }
            else return (User)Session["User"];
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (currentmember==null)
        {
            link_login.InnerText = "ورود";
            link_register.Text = "ثبت نام";
        }
        else
        {
            link_login.InnerText = currentmember.Name.ToString();
            link_register.Text = "خروج";
            //link_register.
        }
        //////Show Cart Details 
        if (Session["CartId"] != null && Session["Cart"] != null)
        {
            int number=0;
            CartCollection temp = (CartCollection)Session["Cart"];
            for (int i = 0; i < temp.Count; i++)
            {
                number += (int)temp[i].Quantity;
            }
            Link_cart.Text = "سبد کالا(" + number.ToString() + "مورد)";
        }
        else
        {
            Link_cart.Text = "سبد کالا(0 مورد)";
        }
    }
    protected void link_register_Click(object sender, EventArgs e)
    {
        if (link_register.Text=="ثبت نام")
        {
            Response.Redirect("Register.aspx");
        }
        else
        {
            Session["User"]=null;
            Session.Abandon();
            Response.Redirect("Default.aspx");
        }
    }
    protected void link_login_Click(object sender, EventArgs e)
    {

        if (link_login.InnerText == " ورود")
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void Link_cart_Click(object sender, EventArgs e)
    {
        Response.Redirect("Cart.aspx");
    }
}
