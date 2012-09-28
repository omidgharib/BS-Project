<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Register.ascx.cs" Inherits="Register" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<style type='text/css' >

table.register_form{
    width:900px;
    min-height:400px;
    direction:rtl;
    margin: 5px auto 0;
    box-shadow: 0 1px 0 rgba(255,255,255,0.4),0 0px 10px rgba(0,0,0,0.1);
    /*background-color:#F6F5FF;*/
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

table td{
    padding:2px;
}

h3{
    font-family:Tahoma, B Nazanin, Sans-Serif;
    text-shadow:2px 1px 5px #fff;
}

h4{
    font-family:Tahoma, B Nazanin, Sans-Serif;
    color:#5792bb; 
}

p{
    font-size:14px; 
    font-family:Tahoma, B Nazanin, Sans-Serif;  
}

hr{
   width:700px; 
   text-align:right;
   color:#8DBCFA;
}
.barBorder   {
    width: 300px;
    border: solid 1px black;
}
.barInternal{
    background: yellow;
}
.barInternalGreen{
    background: #32C81E;
}
.barInternalRed{
    background: Red;
}
.barInternalBlue{
    background: Blue;
}


.btn_register 
{
    margin-left:60px;
    margin-right:30px;
	-moz-box-shadow:inset 0px 1px 0px 0px #caefab;
	-webkit-box-shadow:inset 0px 1px 0px 0px #caefab;
	box-shadow:inset 0px 1px 0px 0px #caefab;
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #77d42a), color-stop(1, #5cb811) );
	background:-moz-linear-gradient( center top, #77d42a 5%, #5cb811 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#77d42a', endColorstr='#5cb811');
	background-color:#77d42a;
	-moz-border-radius:6px;
	-webkit-border-radius:6px;
	border-radius:6px;
	border:1px solid #268a16;
	display:inline-block;
	color:#ffffff;
	font-family:arial;
	font-size:15px;
	font-weight:bold;
	padding:6px 24px;
	text-decoration:none;
	text-shadow:1px 1px 0px #aade7c;
}
.btn_register:hover {
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #5cb811), color-stop(1, #77d42a) );
	background:-moz-linear-gradient( center top, #5cb811 5%, #77d42a 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#5cb811', endColorstr='#77d42a');
	background-color:#5cb811;
}
.btn_register:active {
	
	top:1px;
}


.btn_Cancel {
	-moz-box-shadow:inset 0px 1px 0px 0px #f29c93;
	-webkit-box-shadow:inset 0px 1px 0px 0px #f29c93;
	box-shadow:inset 0px 1px 0px 0px #f29c93;
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #fe1a00), color-stop(1, #ce0100) );
	background:-moz-linear-gradient( center top, #fe1a00 5%, #ce0100 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#fe1a00', endColorstr='#ce0100');
	background-color:#fe1a00;
	-moz-border-radius:6px;
	-webkit-border-radius:6px;
	border-radius:6px;
	border:1px solid #d83526;
	display:inline-block;
	color:#ffffff;
	font-family:arial;
	font-size:15px;
	font-weight:bold;
	padding:6px 24px;
	text-decoration:none;
	text-shadow:1px 1px 0px #b23e35;
}
.btn_Cancel:hover {
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #ce0100), color-stop(1, #fe1a00) );
	background:-moz-linear-gradient( center top, #ce0100 5%, #fe1a00 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ce0100', endColorstr='#fe1a00');
	background-color:#ce0100;
}
.btn_Cancel:active {
	position:relative;
	top:1px;
}

</style>

<table class='register_form'>
    <tr height='50'>
        <td colspan='2' class='header' >
            <h3> ثبت نام </h3>
        </td>
    </tr>
    <tr>
        <td colspan='2'>
            <p style='color:maroon; margin-right:15px;'> تذکر :پر کردن اطلاعات ستاره دار الزامی می باشد، توجه داشته باشید که اطلاعات بعد از ثبت قابل ویرایش نمی باشد لذا خواهشمند است با دقت فرم زیر را تکمیل فرمائید. </p>
        </td>
    </tr>
    <tr>
        <td align="center" colspan='2'>
            <asp:Label ID="lbl_Erorr" runat="server" ForeColor="#CC0000"></asp:Label >
        </td>
    </tr>
    <tr>
        <td colspan='2' align="right" >
            <h4 > مشخصات کاربری </h4>
            <hr  noshade="noshade" />
        </td>
    </tr>
    <tr>
        <td align="left" >
            <p> 
            نام ونام خانوادگی: 
            <span style="color:#ce0000;">*</span>
            </p>
        </td>
        <td align="right">
            <asp:TextBox ID="txt_Name" runat="server"></asp:TextBox>
            <asp:TextBox ID="txt_LastName" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="left" width="20%">
            <p>
             جنسیت: 
            <span style="color:#ce0000;">*</span>
            </p>   
        </td>
        <td align="right">
            <asp:DropDownList ID="DropDownList_Gender" runat="server">
                <asp:ListItem Value="1">مرد</asp:ListItem>
                <asp:ListItem Value="0">زن</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td align="left">
            <p>
             تاریخ تولد: 
            <span style="color:#ce0000;">*</span>
            </p>    
        </td>
        <td align="right">
            <asp:TextBox ID="txt_Birthday_Day" runat="server" MaxLength="2" ToolTip="روز" 
                Width="20px"></asp:TextBox>
            <span style="padding:0 7px">/</span>

            <asp:DropDownList ID="DropDownList_Birthday_Month" runat="server">
                <asp:ListItem>فروردین</asp:ListItem>
                <asp:ListItem>اردیبهشت</asp:ListItem>
                <asp:ListItem>خرداد</asp:ListItem>
                <asp:ListItem>تیر</asp:ListItem>
                <asp:ListItem>مرداد</asp:ListItem>
                <asp:ListItem>شهریور</asp:ListItem>
                <asp:ListItem>مهر</asp:ListItem>
                <asp:ListItem>آبان</asp:ListItem>
                <asp:ListItem>آذز</asp:ListItem>
                <asp:ListItem>دی</asp:ListItem>
                <asp:ListItem>بهمن</asp:ListItem>
                <asp:ListItem>اسفند</asp:ListItem>
            </asp:DropDownList>
            <span style="padding:0 7px">/</span>
            <asp:TextBox ID="txt_Birthday_Year" runat="server" MaxLength="4" Width="30px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan='2'>
            <h4 > انتخاب نام کاربری و گذرواژه </h4>
            <hr noshade="noshade" />
        </td>
    </tr>
    <tr>
        <td align="left">
            <p>
             نام کاربری: 
            <span style="color:#ce0000;">*</span>
            </p> 
        </td>
        <td align="right">
            <asp:TextBox ID="txt_UserName" runat="server"></asp:TextBox>
            <asp:Image ID="img_UserName" runat="server" style='margin-left:10px; margin-right:5px;'/>
            <asp:Label ID="lbl_Error_UserName" runat="server" ForeColor="#CC0000"></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="left">
            <p>
             گذرواژه: 
            <span style="color:#ce0000;">*</span>
            </p> 
        </td>
        <td align="right">
            <asp:TextBox ID="txt_Password" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="left">
            <p>
             تکرار گذرواژه: 
            <span style="color:#ce0000;">*</span>
            </p> 
        </td>
        <td>
            <asp:TextBox ID="txt_Password_retype" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan='2' align="right">
            <h4 > اطلاعات ارتباطی کاربر </h4>
            <hr noshade="noshade" />    
        </td>
     </tr>
    <tr>
        <td align="left">
            <p>
             تلفن: 
            <span style="opacity:0;">*</span>
            </p>    
        </td>
               
        <td  align="right">
            <asp:TextBox ID="txt_Telephone" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="left">
          <p>
             موبایل: 
            <span style="color:#ce0000;">*</span>
            </p> 
        </td>
        <td align="right">
            <asp:TextBox ID="txt_Mobile" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="left">
          <p>
             پست الکترونیکی: 
            <span style="color:#ce0000;">*</span>
            </p> 
        </td>
        <td align="right">
            <asp:TextBox ID="txt_Email" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="left">
          <p>
             استان: 
            <span style="color:#ce0000;">*</span>
            </p> 
        </td>
        <td align="right">
            <asp:DropDownList ID="DropDownList_State" runat="server">
                <asp:ListItem>آذربایجان شرقی</asp:ListItem>
	            <asp:ListItem>آذربایجان غربی</asp:ListItem>
	            <asp:ListItem>اردبیل</asp:ListItem>
	            <asp:ListItem>اصفهان</asp:ListItem>
	            <asp:ListItem>البرز</asp:ListItem>
	            <asp:ListItem>ایلام</asp:ListItem>
	            <asp:ListItem>بوشهر</asp:ListItem>
	            <asp:ListItem>تهران</asp:ListItem>
                <asp:ListItem>چهارمحال و بختیاری</asp:ListItem>
	            <asp:ListItem>خراسان جنوبی</asp:ListItem>
	            <asp:ListItem Selected="True">خراسان رضوی</asp:ListItem>
	            <asp:ListItem>خراسان شمالی</asp:ListItem>
	            <asp:ListItem>خوزستان</asp:ListItem>
	            <asp:ListItem>زنجان</asp:ListItem>
	            <asp:ListItem>سمنان</asp:ListItem>
	            <asp:ListItem>سیستان و بلوچستان</asp:ListItem>
                <asp:ListItem>فارس</asp:ListItem>
	            <asp:ListItem>قزوین</asp:ListItem>
	            <asp:ListItem>قم</asp:ListItem>
	            <asp:ListItem>کردستان</asp:ListItem>
	            <asp:ListItem>کرمان</asp:ListItem>
	            <asp:ListItem>کرمانشاه</asp:ListItem>
	            <asp:ListItem>کهگیلویه و بویراحمد</asp:ListItem>
                <asp:ListItem>گلستان</asp:ListItem>
	            <asp:ListItem>گیلان</asp:ListItem>
	            <asp:ListItem>لرستان</asp:ListItem>
	            <asp:ListItem>مازندران</asp:ListItem>
                <asp:ListItem>مرکزی</asp:ListItem>
                <asp:ListItem>هرمزگان</asp:ListItem>
	            <asp:ListItem>همدان</asp:ListItem>
	            <asp:ListItem>یزد</asp:ListItem>
            </asp:DropDownList>    
        </td>
    </tr>
    <tr >
        <td align="left">
          <p>
             شهر: 
            <span style="color:#ce0000;">*</span>
            </p> 
        </td>
        <td align="right">
            <asp:TextBox ID="txt_City" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr height='60'>
        <td align="left">
          <p>
             آدرس: 
            <span style="color:#ce0000;">*</span>
            </p> 
        </td>
        <td align="right">
            <asp:TextBox ID="txt_Address" runat="server" TextMode="MultiLine" Height="55px" 
                ToolTip="آدرس" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr >
        <td align="left">
            <p>
             کدپستی: 
            <span style="opacity:0;">*</span>
            </p> 
        </td>
        <td align="right">
            <asp:TextBox ID="txt_PostalCode" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan='2' align="right">
            <h4 > سوال مربوط به فراموش کردن گذرواژه </h4>
            <hr noshade="noshade" />    
        </td>
     </tr>
    <tr align="left">
        <td>
            <p>
             سوال امنیتی: 
            <span style="opacity:0;">*</span>
            </p> 
        </td>
        <td align="right">
            <asp:DropDownList ID="DropDownList_Security_Question" runat="server">
                <asp:ListItem>در چه شهری به دنیا آمدید؟</asp:ListItem>
                <asp:ListItem>مادرتان در کجا به دنیا آمده؟</asp:ListItem>
                <asp:ListItem>نام معلم اول دبستانتان چیست؟</asp:ListItem>
                <asp:ListItem>رنگ مورد علایقه اتان چیست؟</asp:ListItem>
                <asp:ListItem>بازیگر مورد علاقه تان کیست؟</asp:ListItem>
                <asp:ListItem>کجا با همسر خود آشنا شدید؟</asp:ListItem>
            </asp:DropDownList>                
        </td>
    </tr>
    <tr align="left">
        <td>
            <p>
             پاسخ شما: 
            <span style="opacity:0;">*</span>
            </p>
        </td>
        <td align="right">
            <asp:TextBox ID="txt_Security_Question" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr height='60'>
        <td>

        </td>
        <td align="right">
            <asp:Button ID="btn_Register" runat="server" Text="ثبت نام" 
                class='btn_register' onclick="btn_Register_Click" />

            <asp:Button ID="btn_Cancel" runat="server" Text="لغو" class='btn_Cancel' 
                onclick="btn_Cancel_Click" />
        </td>
    </tr>
</table>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    
    <asp:PasswordStrength ID="TextBox1_PasswordStrength" runat="server" Enabled="True" 
            TargetControlID="txt_Password" 
            DisplayPosition="LeftSide"
            PrefixText="میزان قدرت: " 
            TextStrengthDescriptions="خیلی ضعیف;ضعیف;متوسظ;قوی;بسیار قوی;فوق العاده"
            StrengthIndicatorType="BarIndicator"
            BarBorderCssClass="barBorder"
            BarIndicatorCssClass="barInternal"
            StrengthStyles="barInternalRed;barInternal;barInternalBlue;barInternalGreen"></asp:PasswordStrength>


