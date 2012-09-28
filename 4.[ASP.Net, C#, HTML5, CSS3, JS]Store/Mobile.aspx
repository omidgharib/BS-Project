<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Mobile.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class='content_bestproduct'>
    <div class='nbox' >
        <div class='header_products'>
            <h2> گوشی ها </h2>
        </div>
        <div class='product_box'>
            <div class='product'>
                <h2>  <asp:Label ID="lbl_title1" runat="server" Text="SONY-Xperia U"></asp:Label>  </h2>
                <h3>  <asp:Label ID="lbl_id1" runat="server" Text="cqr12"></asp:Label>  </h3>
                <asp:Image ID="img_product1" runat="server" ImageUrl="~/Images/Products/sony_xperia.jpeg" />
                <asp:Label ID="lbl_price1" runat="server" Text="قیمت: 560000 تومان"></asp:Label>
                <br />
                <asp:LinkButton ID="link_details1" runat="server">
                    جزییات بیشتر
                </asp:LinkButton>
                <asp:Button ID="btn_addtocart1" runat="server" Text="اضافه کردن به سبد" 
                    class='btn_addtocart' onclick="btn_addtocart1_Click"/>
            </div>  
            <div class='product'>
                <h2>  <asp:Label ID="lbl_title2" runat="server" Text="SAMSUNG-Galaxy note16GB"></asp:Label>  </h2>
                <h3>  <asp:Label ID="lbl_id2" runat="server" Text="sgn16"></asp:Label>  </h3>
                <asp:Image ID="img_product2" runat="server" 
                    ImageUrl="~/Images/Products/Samsung_galaxy_note.jpg" />
                <asp:Label ID="lbl_price2" runat="server" Text="قیمت:800000تومان"></asp:Label>
                <br />
                <asp:LinkButton ID="link_details2" runat="server">
                    جزییات بیشتر
                </asp:LinkButton>
                <asp:Button ID="btn_addtocart2" runat="server" Text="اضافه کردن به سبد" 
                    class='btn_addtocart' onclick="btn_addtocart2_Click"/>
            </div>
            <div class='product'>
                <h2>  <asp:Label ID="lbl_title3" runat="server" Text="SONY"></asp:Label>  </h2>
                <h3>  <asp:Label ID="lbl_id3" runat="server" Text="cqr12"></asp:Label>  </h3>
                <asp:Image ID="img_product3" runat="server" ImageUrl="~/Images/Products/sony_xperia.jpeg" />
                <asp:Label ID="lbl_price3" runat="server" Text="قیمت:2000ریال"></asp:Label>
                <br />
                <asp:LinkButton ID="link_details3" runat="server">
                    جزییات بیشتر
                </asp:LinkButton>
                <asp:Button ID="btn_addtocart3" runat="server" Text="اضافه کردن به سبد" 
                    class='btn_addtocart' onclick="btn_addtocart3_Click"/>
            </div> 
            <div class='product'>
                <h2>  <asp:Label ID="lbl_title4" runat="server" Text="SONY"></asp:Label>  </h2>
                <h3>  <asp:Label ID="lbl_id4" runat="server" Text="cqr12"></asp:Label>  </h3>
                <asp:Image ID="img_product4" runat="server" ImageUrl="~/Images/Products/sony_xperia.jpeg" />
                <asp:Label ID="lbl_price4" runat="server" Text="قیمت:2000ریال"></asp:Label>
                <br />
                <asp:LinkButton ID="link_details4" runat="server">
                    جزییات بیشتر
                </asp:LinkButton>
                <asp:Button ID="btn_addtocart4" runat="server" Text="اضافه کردن به سبد" 
                    class='btn_addtocart' onclick="btn_addtocart4_Click"/>
            </div>
            <div class='product_LastOne'>
                <h2>  <asp:Label ID="lbl_title5" runat="server" Text="SONY"></asp:Label>  </h2>
                <h3>  <asp:Label ID="lbl_id5" runat="server" Text="cqr12"></asp:Label>  </h3>
                <asp:Image ID="img_product5" runat="server" ImageUrl="~/Images/Products/sony_xperia.jpeg" />
                <asp:Label ID="lbl_price5" runat="server" Text="قیمت:2000ریال"></asp:Label>
                <br />
                <asp:LinkButton ID="link_details5" runat="server">
                    جزییات بیشتر
                </asp:LinkButton>
                <asp:Button ID="btn_addtocart5" runat="server" Text="اضافه کردن به سبد" 
                    class='btn_addtocart' onclick="btn_addtocart5_Click"/>
            </div>
            <div class='badboy'></div>  
        </div>
    </div>
        <div class='product_box'>
            <div class='product'>
                <h2>  <asp:Label ID="lbl_title6" runat="server" Text="SONY"></asp:Label>  </h2>
                <h3>  <asp:Label ID="lbl_id6" runat="server" Text="cqr12"></asp:Label>  </h3>
                <asp:Image ID="img_product6" runat="server" ImageUrl="~/Images/Products/sony_xperia.jpeg" />
                <asp:Label ID="lbl_price6" runat="server" Text="قیمت:2000ریال"></asp:Label>
                <br />
                <asp:LinkButton ID="link_details6" runat="server">
                    جزییات بیشتر
                </asp:LinkButton>
                <asp:Button ID="btn_addtocart6" runat="server" Text="اضافه کردن به سبد" 
                    class='btn_addtocart' onclick="btn_addtocart6_Click"/>
            </div> 
            <div class='product'>
                <h2>  <asp:Label ID="lbl_title7" runat="server" Text="SONY"></asp:Label>  </h2>
                <h3>  <asp:Label ID="lbl_id7" runat="server" Text="cqr12"></asp:Label>  </h3>
                <asp:Image ID="img_product7" runat="server" ImageUrl="~/Images/Products/sony_xperia.jpeg" />
                <asp:Label ID="lbl_price7" runat="server" Text="قیمت:2000ریال"></asp:Label>
                <br />
                <asp:LinkButton ID="link_details7" runat="server">
                    جزییات بیشتر
                </asp:LinkButton>
                <asp:Button ID="btn_addtocart7" runat="server" Text="اضافه کردن به سبد" 
                    class='btn_addtocart' onclick="btn_addtocart7_Click"/>
            </div> 
            <div class='product'>
                <h2>  <asp:Label ID="lbl_title8" runat="server" Text="SONY"></asp:Label>  </h2>
                <h3>  <asp:Label ID="lbl_id8" runat="server" Text="cqr12"></asp:Label>  </h3>
                <asp:Image ID="img_product8" runat="server" ImageUrl="~/Images/Products/sony_xperia.jpeg" />
                <asp:Label ID="lbl_price8" runat="server" Text="قیمت:2000ریال"></asp:Label>
                <br />
                <asp:LinkButton ID="link_details8" runat="server">
                    جزییات بیشتر
                </asp:LinkButton>
                <asp:Button ID="btn_addtocart8" runat="server" Text="اضافه کردن به سبد" 
                    class='btn_addtocart' onclick="btn_addtocart8_Click"/>
            </div>
            <div class='product'>
                <h2>  <asp:Label ID="lbl_title9" runat="server" Text="SONY"></asp:Label>  </h2>
                <h3>  <asp:Label ID="lbl_id9" runat="server" Text="cqr12"></asp:Label>  </h3>
                <asp:Image ID="img_product9" runat="server" ImageUrl="~/Images/Products/sony_xperia.jpeg" />
                <asp:Label ID="lbl_price9" runat="server" Text="قیمت:2000ریال"></asp:Label>
                <br />
                <asp:LinkButton ID="link_details9" runat="server">
                    جزییات بیشتر
                </asp:LinkButton>
                <asp:Button ID="btn_addtocart9" runat="server" Text="اضافه کردن به سبد" 
                    class='btn_addtocart' onclick="btn_addtocart9_Click"/>
            </div>  
            <div class='product_LastOne'>
                <h2>  <asp:Label ID="lbl_title10" runat="server" Text="SONY"></asp:Label>  </h2>
                <h3>  <asp:Label ID="lbl_id10" runat="server" Text="cqr12"></asp:Label>  </h3>
                <asp:Image ID="img_product10" runat="server" ImageUrl="~/Images/Products/sony_xperia.jpeg" />
                <asp:Label ID="lbl_price10" runat="server" Text="قیمت:2000ریال"></asp:Label>
                <br />
                <asp:LinkButton ID="link_details10" runat="server">
                    جزییات بیشتر
                </asp:LinkButton>
                <asp:Button ID="btn_addtocart10" runat="server" Text="اضافه کردن به سبد" 
                    class='btn_addtocart' onclick="btn_addtocart10_Click"/>
            </div> 
            <div class='badboy'></div> 
            </div> 
    </div>
</asp:Content>

