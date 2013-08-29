using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OnlineStoreBL;
using Cruder;
using Cruder.Core.Base;

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
        /////////////////////////////fill the product boxes///////////////////////////////////
        ProductCollection products = Product.laptop();
        //////BOX1/////
        lbl_title1.Text = products[0].Brand + "-" + products[0].ProductName;
        lbl_id1.Text = products[0].ProductId;
        img_product1.ImageUrl = "./Images/Products/" + products[0].Discount;
        lbl_price1.Text = "قیمت: " + products[0].Price + " تومان";
        ////////
        //////BOX2/////
        lbl_title2.Text = products[1].Brand + "-" + products[1].ProductName;
        lbl_id2.Text = products[1].ProductId;
        img_product2.ImageUrl = "./Images/Products/" + products[1].Discount;
        lbl_price2.Text = "قیمت: " + products[1].Price + " تومان";
        ////////
        //////BOX3/////
        lbl_title3.Text = products[2].Brand + "-" + products[2].ProductName;
        lbl_id3.Text = products[2].ProductId;
        img_product3.ImageUrl = "./Images/Products/" + products[2].Discount;
        lbl_price3.Text = "قیمت: " + products[2].Price + " تومان";
        ////////
        //////BOX4/////
        lbl_title4.Text = products[3].Brand + "-" + products[3].ProductName;
        lbl_id4.Text = products[3].ProductId;
        img_product4.ImageUrl = "./Images/Products/" + products[3].Discount;
        lbl_price4.Text = "قیمت: " + products[3].Price + " تومان";
        ////////
        //////BOX5/////
        lbl_title5.Text = products[4].Brand + "-" + products[4].ProductName;
        lbl_id5.Text = products[4].ProductId;
        img_product5.ImageUrl = "./Images/Products/" + products[4].Discount;
        lbl_price5.Text = "قیمت: " + products[4].Price + " تومان";
        ////////
        //////BOX6/////
        lbl_title6.Text = products[5].Brand + "-" + products[5].ProductName;
        lbl_id6.Text = products[5].ProductId;
        img_product6.ImageUrl = "./Images/Products/" + products[5].Discount;
        lbl_price6.Text = "قیمت: " + products[5].Price + " تومان";
        ////////
        //////BOX7/////
 
    }

    protected void btn_addtocart1_Click(object sender, EventArgs e)
    {
        ADDToCart(lbl_id1.Text);
    }
    protected void btn_addtocart2_Click(object sender, EventArgs e)
    {
        ADDToCart(lbl_id2.Text);
    }
    protected void btn_addtocart3_Click(object sender, EventArgs e)
    {
        ADDToCart(lbl_id3.Text);
    }
    protected void btn_addtocart4_Click(object sender, EventArgs e)
    {
        ADDToCart(lbl_id4.Text);
    }
    protected void btn_addtocart5_Click(object sender, EventArgs e)
    {
        ADDToCart(lbl_id5.Text);
    }
    protected void btn_addtocart6_Click(object sender, EventArgs e)
    {
        ADDToCart(lbl_id6.Text);
    }

    private void ADDToCart(string productId)
    {
        if (Session["User"] != null)
        {
            if (Session["CartId"] == null)
            {
                CartCollection carts = new CartCollection();
                Cart newcart = new Cart();
                Session["CartId"] = DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() +
                    DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() +
                    DateTime.Now.Millisecond.ToString();
                ProductCollection temp = new ProductCollection();
                temp.ReadList(Cruder.Core.Criteria.NewCriteria(Product.Columns.ProductId, Cruder.Core.CriteriaOperators.Equal,
                    productId));
                newcart.ProductId = temp[0].ProductId;
                newcart.Cost = temp[0].Price;
                newcart.Date = DateTime.Now.ToString();
                newcart.CartId = Session["CartId"].ToString();
                newcart.UserId = currentmember.UserId;
                newcart.Quantity = 1;
                carts.Add(newcart);
                Session["Cart"] = carts;
            }
            else
            {
                CartCollection carts = (CartCollection)Session["Cart"];
                Cart newcart = new Cart();
                ProductCollection temp = new ProductCollection();
                temp.ReadList(Cruder.Core.Criteria.NewCriteria(Product.Columns.ProductId, Cruder.Core.CriteriaOperators.Equal,
                    productId));
                newcart.ProductId = temp[0].ProductId;
                newcart.Cost = temp[0].Price;
                newcart.Date = DateTime.Now.ToString();
                newcart.CartId = Session["CartId"].ToString();
                newcart.UserId = currentmember.UserId;
                newcart.Quantity = 1;
                carts.Add(newcart);
                Session["Cart"] = carts;
            }
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }
}