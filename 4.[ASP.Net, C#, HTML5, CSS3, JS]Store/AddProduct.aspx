<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddProduct.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="addproduct">
        <header>
          <h2>  اضافه کردن محصولات و بروز رسانی محصولات  </h2>  
        </header>
        <table>
            <tr>
                <td class="right">
                    <span> کد کالا : </span>
                </td>
                <td class="left">
                    <asp:TextBox ID="txt_ProductId" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="right">
                    <span> نام کالا : </span>
                </td>
                <td class="left">
                    <asp:TextBox ID="txt_ProductName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="right">
                    <span> نوع کالا : </span>
                </td>
                <td class="left">
                    <asp:TextBox ID="txt_Category" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="right">
                    <span> برند کالا : </span>
                </td>
                <td class="left">
                    <asp:TextBox ID="txt_Brand" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="right">
                    <span> قیمت : </span>
                </td>
                <td class="left">
                    <asp:TextBox ID="txt_Price" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="right">
                    <span> تعداد موجود محصول : </span>
                </td>
                <td class="left">
                    <asp:TextBox ID="txt_Stock" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="right">
                    <span> درصد تخفیف : </span>
                </td>
                <td class="left">
                    <asp:TextBox ID="txt_OffPercentage" runat="server" MaxLength="2" Width="50px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="right">
                    <span> تاریخ ساخت محصول : </span>
                </td>
                <td class="left">
                    <asp:TextBox ID="txt_Date_of_Production" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="right">
                    <span> تصویر محصول : </span>
                </td>
                <td class="left">
                    <asp:FileUpload style="direction:rtl;" ID="FileUpload_ImageProduct" runat="server"  />
                </td>
            </tr>
            <tr>
                <td colspan="2" class="error">
                    <asp:Label ID="lbl_error" runat="server"></asp:Label>  
                </td>
            </tr>
            <tr>
                <td colspan="2" class="btn">
                    <asp:Button ID="btn_search" class="btn_ContactUs" runat="server" Text="جست و جو" 
                        style="width:70px; text-align:center;"/>
                    <asp:Button ID="btn_AddProduct" class="btn_ContactUs" runat="server" Text="ثبت کالا" 
                        style="width:70px; text-align:center;" onclick="btn_AddProduct_Click" />
                    <asp:Button ID="btn_Delete" class="btn_ContactUs" runat="server" Text="حذف" 
                        style="width:70px; text-align:center;"/>
                    <asp:Button ID="btn_ignore" class="btn_ContactUs" runat="server" Text="بازگشت" 
                        style="width:70px; text-align:center;" onclick="btn_ignore_Click"/>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

