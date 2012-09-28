using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using OnlineStoreBL;

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
    DataTable CartDT = new DataTable();
    DataRow CartDR;
    Int32 totalcost = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] != null)
        {
            CartCollection lists = (CartCollection)Session["Cart"];
            if (Session["Cart"] != null)
            {
                lbl_CartId.Text = "کد سبد کالا:" + lists[0].CartId;
                if (ViewState["CartDT"] == null)
                {
                    CartDT.Columns.Add("کد کالا", System.Type.GetType("System.String"));
                    CartDT.Columns.Add("نام کالا", System.Type.GetType("System.String"));
                    CartDT.Columns.Add("قیمت واحد", System.Type.GetType("System.String"));
                    CartDT.Columns.Add("تعداد", System.Type.GetType("System.Int32"));
                    CartDT.Columns.Add("مبلغ نهایی", System.Type.GetType("System.Int32"));
                    Fillgrid(lists);
                }
                else
                {
                    CartDT = (DataTable)ViewState["CartDT"];
                    Fillgrid(lists);
                }
                //GridView1.DataSource = lists;
                GridView1.DataSource = CartDT;
                GridView1.DataBind();
                ViewState["CartDT"] = CartDT;
                lbl_Totalcost.Text = "جمع خرید شما:" + totalcost.ToString();
            }
            else
            {
                lbl_error.Text = "سبد کالا شما خالی می باشد!";
            }
        }
        else
        {
            Response.Redirect("Login.aspx");
            Session["URLReferer"] = "Login.aspx";
        }

    }

    private void Fillgrid(CartCollection lists)
    {
        for (int i = 0; i < lists.Count; i++)
        {
            int cost = 0;
            int number = 0;
            int price = 0;
            Product temp = Product.callbackProductName(lists[i].ProductId);
            price = int.Parse(temp.Price);
            number = int.Parse(lists[i].Quantity.ToString());
            cost = price * number;
            CartDR = CartDT.NewRow();
            CartDR[0] = lists[i].ProductId;
            CartDR[1] = temp.ProductName;
            CartDR[2] = temp.Price;
            CartDR[3] = lists[i].Quantity;
            CartDR[4] = cost;
            lists[i].Cost = cost.ToString();
            totalcost += cost;
            CartDT.Rows.Add(CartDR);
        }
    }
    protected void btn_ignore_Click(object sender, EventArgs e)
    {
        Session["Cart"] = null;
        Session["CartId"] = null;
        Response.Redirect("Default.aspx");
    }

    protected void btn_submit_Click(object sender, EventArgs e)
    {
        CartCollection lists = (CartCollection)Session["Cart"];
        for (int i = 0; i < lists.Count; i++)
        {
            lists[i].Create();
        }
        Invoice inv = new Invoice();
        inv.CartId = lists[0].CartId;
        inv.UserId = currentmember.UserId;
        inv.TotalCost = totalcost.ToString();
        inv.Date = DateTime.Now.ToShortDateString();
        inv.User_Submit = true;
        inv.Admin_Submit = false;
        inv.PayOff_Submit = false;
        inv.Create();
        Session["Cart"] = null;
        Session["CartId"] = null;
        Response.Redirect("SubmitCart.aspx");
    }
}