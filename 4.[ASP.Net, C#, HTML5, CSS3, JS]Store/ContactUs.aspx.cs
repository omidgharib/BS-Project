using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OnlineStoreBL;
using System.Net;
using System.Net.Mail;
//using System.Web.Mail;

public partial class Default2 : System.Web.UI.Page
{
    public User currentmember
    {
        get
        {
            if (Session["User"] == null)
            {
                return null;
            }
            else return (User)Session["User"];
        }

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (currentmember!=null)
        {
            txt_Name.Text = currentmember.Name;
            txt_EmailAddress.Text = currentmember.Email;
        }
    }
    protected void btn_ignore_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        if (txt_EmailAddress.Text != null && txt_Message.Text != null && txt_Name.Text != null && txt_Tittle.Text != null)
        {
            var fromAddress = "omidgharib1990@gmail.com";
            var toAddress = "omidgharib@yahoo.com";
            const string fromPassword = "yourPassword";
            string subject = " ارتباط با ما ";
            string body = "Name:   " + txt_Name.Text + "\n";
            body += "Email:   " + txt_EmailAddress.Text + "\n";
            body += "Subject:   " + txt_Tittle.Text + "\n\n";
            body += "Message:   " + txt_Message.Text + "\n";
            var smtp = new System.Net.Mail.SmtpClient();
            {
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
                smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
                smtp.Timeout = 20000;
            }
            smtp.Send(fromAddress, toAddress, subject, body);
        }
    }
}