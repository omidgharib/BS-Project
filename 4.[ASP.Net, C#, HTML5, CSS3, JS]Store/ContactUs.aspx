<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">   
    <div class="ContactUs">
        <header>
            <h2> ارتباط با ما </h2>
        </header>
        <div class="floors">
            <table>
                <tr>
                    <td class="right">
                        <span> نام : </span>
                    </td>
                    <td class="left">
                        <asp:TextBox ID="txt_Name" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="right">
                        <span> آدرس پست الکترونیکی : </span>
                    </td>
                    <td class="left">
                        <asp:TextBox ID="txt_EmailAddress" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="right">
                        <span> سرآغاز :  </span>
                    </td>
                    <td class="left">
                        <asp:TextBox ID="txt_Tittle" runat="server"></asp:TextBox> 
                    </td>
                </tr>
                <tr>
                    <td class="right">
                        <span> پیام : </span>   
                    </td>
                    <td class="left left_message">
                        <asp:TextBox ID="txt_Message" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="btn">
                        <asp:Button ID="btn_submit" class="btn_ContactUs" runat="server" Text="ثبت" 
                        style="width:70px; text-align:center;" onclick="btn_submit_Click" />
                        <asp:Button ID="btn_ignore" class="btn_ContactUs" runat="server" Text="بازگشت" 
                        style="width:70px; text-align:center;" onclick="btn_ignore_Click"/>

                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>

