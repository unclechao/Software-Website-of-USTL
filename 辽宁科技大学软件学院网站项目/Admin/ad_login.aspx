<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ad_login.aspx.cs" Inherits="辽宁科技大学软件学院网站项目.Admin.ad_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
    <script src="../js/jquery-1.7.1.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function() {
        $('#txtusername').focus(function() { $('#Label').text(''); });
        $('#txtpassword').focus(function() { $('#Label').text(''); });
        $('#Button1').click(function() { $('#Label').text(''); });
        })
    </script>
</head>
<body>
    <form id="form1" runat="server" >
    <div id="main" style=" text-align:center">
    
        <br />
        网站后台管理员登录<br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="管理员帐号：" 
            AssociatedControlID="txtusername"></asp:Label>
        <asp:TextBox ID="txtusername" runat="server" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="txtusernameRequiredFieldValidator" 
            ValidationGroup="login" ControlToValidate="txtusername" runat="server" 
            ErrorMessage="用户名不能为空，请输入" Display="Dynamic">*</asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="Label2" runat="server" Text="管理员密码：" 
            AssociatedControlID="txtpassword"></asp:Label>
        <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="txtpasswordRequiredFieldValidator" 
            ValidationGroup="login" ControlToValidate="txtpassword" runat="server" 
            ErrorMessage="密码不能为空，请输入" Display="Dynamic">*</asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Button ID="btnlogin" runat="server" Text="管理登陆" ValidationGroup="login" onclick="btnlogin_Click"  />&nbsp
        <asp:Button ID="Button1" runat="server" Text="清除再来"   onclick="btn_clear" OnClientClick="$('#txtusername').val('');
            $('#txtpassword').val('');window.event.returnValue=false;"/>&nbsp
        <asp:Button ID="btnback" runat="server" Text="返回首页" onclick="btnback_Click"/>&nbsp
        <br />
        <br />
        <asp:Label ID="Label" runat="server" Visible="False" style="color:Red"></asp:Label>
        <br />
        <asp:ValidationSummary ID="ValidationSummary" runat="server" 
            ValidationGroup="login" ShowMessageBox="True" ShowSummary="False" />
    </div>
    
    </form>
</body>
</html>
