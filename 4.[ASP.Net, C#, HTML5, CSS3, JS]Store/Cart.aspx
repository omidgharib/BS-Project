<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class='Cart_form'>
        <div class='header'>    
            <h2> سبد کالا  </h2>
        </div>
        <div class="error">
            <asp:Label ID="lbl_error" runat="server" ></asp:Label>
        </div>
        <div class="grid">
            <h3>  <asp:Label ID="lbl_CartId" runat="server"></asp:Label> </h3>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" CellPadding="4" 
                ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <div class="totalcost"> 
                <asp:Label ID="lbl_Totalcost" runat="server"></asp:Label>
            </div>
        </div>
        <div class="btn">
            <asp:Button ID="btn_submit" runat="server" Text="ثبت خرید" class="btn_Submit" 
                onclick="btn_submit_Click"/>
            <asp:Button ID="btn_ignore" runat="server" Text="لغو خرید" class="btn_Ignore" 
                onclick="btn_ignore_Click"/>
        </div>
        <div class='content'>
           <div class="spliter" ></div>
           <div class="paidway">
                <div style="color:#056f73;font-weight:600; margin-bottom:5px;">نحوه پرداخت :</div>
                <blockquote>» وجه سفارش برای همه شهرها  می بایست پس از ثبت سفارش، با استفاده از روش پرداخت اینترنتی و بصورت
                 آنلاین، یا در صورت عدم امکان پرداخت آنلاین، می توانید پرداخت خود را از
                  طریق کارت به کارت و یا واریز به حساب انجام داده .
                  <p style="display:none">» مشتریان مشهدی می توانند
                   وجه سفارش خود را در محل خود به جای پرداخت نقدی، با استفاده از دستگاه کارت خوان سیار ( Pos ) شرکت و با استفاده از کلیه کارت
                    های عضو شبکه شتاب پرداخت نمایند.</p><br>» پرداخت وجه برای سفارشات مشهد، می تواند پس از تحویل كالای خریداری شده در محل شما صورت گیرد.
                </blockquote>
                <div style="color:#056f73;font-weight:600; margin-bottom:5px;">شماره حساب  :</div>
                <blockquote><p>» سیبا ملی *********** به نام **** **** - شماره کارت : ****-****-****-**** - شماره شبا : IRxxxx xxxxxxxx xxxxxxxxxxx</p></blockquote>
                <div style="color:#056f73;font-weight:600; margin-bottom:5px;">نحوه ارسال سفارش :</div>
                <blockquote style="margin-left:10px"><p>» در ساعات
                 اداری حداكثر تا 1 ساعت پس از ثبت سفارش از بخش فروش شرکت با شما تماس گرفته خواهد شد.</p><p>» چنانچه ثبت سفارش در ساعات غیر اداری باشد در اولین ساعات اداری روز بعد با شما تماس 
                 گرفته خواهد شد.</p><p>» تحویل در محل (برای مشهد) جزء خدمات سایت بوده و این خدمات به رایگان ارائه می شود.
                 </p><p>» توجه: سفارشات لوازم جانبی شامل هزینه ارسال خواهد بود.</p><p>» سفارشات بقیه شهرها ها بوسیله پست 
                 تیپاکس و یا پست پیشتاز ارسال خواهد شد.</p><p>» مدت زمان تحویل كالا در مشهد  در روزهای كاری بین 2 تا 5
                  ساعت و میانگین زمان تحویل برای شهرستان ها حدود 48 ساعت می باشد.</p><p>» با توجه به ارسال سفارشات شهرستانها از طریق سرویس پست، امكان تاخیرات جزئی ناشی 
                  از تاخیر در عملكرد شركت پست وجود دارد.</p></blockquote>
            </div>
        </div>
    </div>
</asp:Content>

