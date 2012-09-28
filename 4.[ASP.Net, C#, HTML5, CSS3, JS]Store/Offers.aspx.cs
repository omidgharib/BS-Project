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
        GridView1.DataSource = Invoice.ShowInvoices();
        //GridView1.DataMember = "Id";
        GridView1.DataBind();
        
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        //GridView1.DataBind();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
    }
}