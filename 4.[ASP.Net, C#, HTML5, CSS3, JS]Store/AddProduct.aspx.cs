using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OnlineStoreBL;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Just Admin can see this Page
        //foreach (TextBox item in this.Controls)
        //{
        //    item.Text = "";  
        //}
        // Set the null every textbox
        txt_Brand.Text = "";
        txt_Category.Text = "";
        txt_Date_of_Production.Text = "";
        txt_OffPercentage.Text = "";
        txt_Price.Text = "";
        txt_ProductId.Text = "";
        txt_ProductName.Text = "";
        txt_Stock.Text = "";
        lbl_error.Text = "";
    }
    protected void btn_ignore_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
    protected void btn_addtocart_Click(object sender, EventArgs e)
    {

    }
    protected void btn_AddProduct_Click(object sender, EventArgs e)
    {
        if (txt_Brand.Text != "" && txt_Category.Text != "" && txt_Date_of_Production.Text != "" && txt_OffPercentage.Text != "" &&
            txt_Price.Text != "" && txt_ProductId.Text != "" && txt_ProductName.Text != "" && txt_Stock.Text != "" &&
            FileUpload_ImageProduct.FileName != "")
        {
            //check the DB to existent of same info with this product (as image name ProductId and...)     !important 
            FileUpload_ImageProduct.SaveAs(MapPath(@"~\Images\Products\" + FileUpload_ImageProduct.FileName));
            Product item = new Product();
            item.Brand = txt_Brand.Text;
            item.Category = txt_Category.Text;
            item.Date_of_Production = txt_Date_of_Production.Text;
            item.Discount = FileUpload_ImageProduct.FileName;
            item.Off_Percentage = int.Parse(txt_OffPercentage.Text);
            item.Price = txt_Price.Text;
            item.ProductId = txt_ProductId.Text;
            item.ProductName = txt_ProductName.Text;
            item.Stock = long.Parse(txt_Stock.Text);
            item.Date_Created = DateTime.Now.ToShortDateString();
            item.Total_Rate = 0;
            item.Create();
        }
        else
        {
            lbl_error.Text = "فیلدهای خالی را پر کنید!";
        }
    }
}