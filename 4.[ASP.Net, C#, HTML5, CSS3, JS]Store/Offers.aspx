<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Offers.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="Offers">
        <header>
            <h2> سفارشات خریداران </h2>
        </header>
        <div class="grid">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                onpageindexchanging="GridView1_PageIndexChanging" 
                onrowcancelingedit="GridView1_RowCancelingEdit" 
                onrowediting="GridView1_RowEditing" onrowupdating="GridView1_RowUpdating">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="شناسه" Visible="False" 
                        NullDisplayText="خالی" />
                    <asp:BoundField DataField="CartId" HeaderText="کد سبد کالا" ReadOnly="True" />
                    <asp:BoundField DataField="UserId" HeaderText="کد کاربری" ReadOnly="True" />
                    <asp:BoundField DataField="TotalCost" HeaderText="هزینه کل" ReadOnly="True" />
                    <asp:BoundField DataField="Date" HeaderText="تاریخ سفارش" ReadOnly="True" />
                    <asp:CheckBoxField DataField="User_Submit" HeaderText="تایید کاربر" 
                        ReadOnly="True" />
                    <asp:CheckBoxField DataField="Admin_Submit" 
                        HeaderText="تایید مسؤل ارسال سفارشات" />
                    <asp:CheckBoxField DataField="PayOff_Submit" HeaderText="تایید نهایی کاربر" 
                        ReadOnly="True" />
                    <asp:CommandField CancelText="لغو" EditText="ویرایش" ShowEditButton="True" 
                        UpdateText="بروزرسانی" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>

