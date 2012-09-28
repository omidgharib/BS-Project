<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewDetails.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="ViewDetails_form">
        <div class="info">
            <div class="right_img">
                <asp:Image ID="img_product" runat="server" ImageUrl="~/Images/Products/Samsung_galaxy_note.jpg" />
            </div>
            <div class="left_details">
            <asp:Label ID="lbl_title" runat="server" Text="Samsung-Galaxy Note 10"></asp:Label>
                <div class="de">
                    <div>
                        <span class="lb">مشخصات کلی:</span>  - وزن 583 گرم
                    </div>
                    <div style="direction:ltr">
                        <span class="lb">پردازنده:</span>   Exynos   Quad-Core   1.4GHz 
                    </div>
                    <div style="direction:rtl">
                        <span class="lb">دیسک درایو:</span>   حافظه داخلی   16 GB
                    </div>
                    <div style="direction:rtl">
                        <span class="lb">صفحه نمایش:</span> صفحه نمایش لمسی  LCD   Capacitive  - اندازه 10.1 اینچ
                    </div>
                    <div style="direction:rtl">
                        <span class="lb">امکانات:</span> قابلیت نصب سیم کارت - قابلیت مکالمه تلفنی سیم کارت - WiFi - GPRS - GPS 
                        - Edge - بلوتوث - کارت خوان - دوربین - وب کم - قطب نما - حسگر شتاب سنج - حسگر ژیروسکوپ - USB
                    </div>
                    <div style="direction:rtl">
                        <span class="lb">سایر مشخصات:</span>   Google Android   (v4.0.3 (Ice Cream Sandwich  - کارکرد باتری 
                        بین 24 تا 48 ساعت
                    </div>
                </div>
            </div>
        </div>
        <div class="rating-box">
            <ul class="rating"></ul>
            <span id="txt">امتیاز شما: </span>
            <span id="rate">0</span>
        </div>
        <div class="btn_return">
            <a href="Default.aspx"> بازگشت </a>   
        </div>
    </div>
</asp:Content>

