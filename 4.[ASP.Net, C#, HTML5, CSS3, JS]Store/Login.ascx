<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Login.ascx.cs" Inherits="Login" %>

<%@ Register assembly="MSCaptcha" namespace="MSCaptcha" tagprefix="cc1" %>

<style type='text/css' >

table.login_form{
    width:720px;
    height:350px;
    direction:rtl;
    margin: 5px auto;
    box-shadow: 0 1px 0 rgba(255,255,255,0.4),0 0px 10px rgba(0,0,0,0.1);	 
    border-bottom: 3px solid #8DBCC6;
    border-radius:8px;
}

td.header{
	background: -moz-linear-gradient(#fafafa, #eaeaea);
	background: -webkit-linear-gradient(#fafafa, #eaeaea);
	-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr='#fafafa', endColorstr='#eaeaea')";
	border-bottom: 1px solid #cacaca;
	box-shadow: 0 1px 0 rgba(255,255,255,0.4),0 0px 10px rgba(0,0,0,0.1);	
	margin-right:10px; padding:10px; 
	border-radius:8px;  
}

h3{
    font-family:Tahoma, B Nazanin, Sans-Serif;
    text-shadow:2px 1px 5px #fff;
}

p{
    font-size:14px; 
    font-family:Tahoma, B Nazanin, Sans-Serif;  
}

a{
    font-size:12px; 
    font-family:Tahoma, B Nazanin, Sans-Serif;  
    text-decoration:none;
    color:darkblue; 
}

.btn {
	-moz-box-shadow:inset 0px 1px 0px 0px #ffffff;
	-webkit-box-shadow:inset 0px 1px 0px 0px #ffffff;
	box-shadow:inset 0px 1px 0px 0px #ffffff;
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #ededed), color-stop(1, #dfdfdf) );
	background:-moz-linear-gradient( center top, #ededed 5%, #dfdfdf 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ededed', endColorstr='#dfdfdf');
	background-color:#ededed;
	-moz-border-radius:6px;
	-webkit-border-radius:6px;
	border-radius:6px;
	border:1px solid #dcdcdc;
	display:inline-block;
	color:#777777;
	font-family:arial;
	font-size:15px;
	font-weight:bold;
	padding:6px 24px;
	text-decoration:none;
	text-shadow:1px 1px 0px #ffffff;
}.btn:hover {
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #dfdfdf), color-stop(1, #ededed) );
	background:-moz-linear-gradient( center top, #dfdfdf 5%, #ededed 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#dfdfdf', endColorstr='#ededed');
	background-color:#dfdfdf;
}.btn:active {
	position:relative;
	top:1px;
}

</style>

<table class='login_form'>
    <tr height='50'>
        <td colspan='3' align="right" class='header'>
            <h3>  ورود به سایت </h3>
        </td>
    </tr>
    <tr height='40'>
        <td colspan='3' align='right' >
            <p>
             جهت ورود به سايت و استفاده از تمامی امکانات سایت نياز به وارد کردن نام کاربری و گذرواژه می باشد.
            </p>
        </td>
    </tr>
    <tr>
        <td align="left" width="20%">
            <p> نام کاربری </p>   
        </td>
        <td align="right">
                <asp:TextBox ID="txt_UserName" runat="server"></asp:TextBox>
        </td>
        <td>
        
        </td>
    </tr>
    <tr>
        <td align="left">
            <p> گذرواژه </p>    
        </td>
        <td>
            <asp:TextBox ID="txt_Password" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td align="right">
        
        </td>
    </tr>
    <tr>
        <td align="left">
            <p> متن مقابل را در کادر پایین وارد کنید </p> 
        </td>
        <td align="right">
            <cc1:CaptchaControl ID="CaptchaControl1" runat="server" FontColor="green" 
                style='background-color:transparent;' CaptchaLength="5" Width="180px"/>
        </td>
        <td>
        </td>
    </tr>
    <tr>
        <td>
            
        </td>
        <td align="right">
            <asp:TextBox ID="txt_Captcha" runat="server" ontextchanged="btn_login_Click"></asp:TextBox>
        </td>
        <td align='center'>
            <p> هنوز ثبت نام نکرده ام </p>
        </td>
    </tr>
    <tr height='30px'>
        <td align="left">
        </td>
        <td align="right">
            <asp:Button class='btn' ID="btn_login" runat="server" Text="ورود" Height="30px" 
             onclick="btn_login_Click" style='margin-right:20%;' />
        </td>
        <td align='center'>
            <asp:Button class='btn' ID="btn_register" runat="server" Text="ثبت نام" 
                onclick="btn_register_Click" />
            </td>
    </tr>
    <tr>
        <td colspan='3' align='center'>  
            <asp:Label ID="lbl_error" runat="server" ForeColor="#CC0000"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan='3' align='right'>
            <a href='forgetpass.aspx'> >>گذرواژه ام را فراموش کرده ام </a> 
        </td>
    </tr>
</table>