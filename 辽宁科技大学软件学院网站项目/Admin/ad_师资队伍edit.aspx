<%@ Page Title="" Language="C#"  ValidateRequest="false"  MasterPageFile="~/Admin/Manage.Master" AutoEventWireup="true" CodeBehind="ad_师资队伍edit.aspx.cs" Inherits="辽宁科技大学软件学院网站项目.Admin.ad_师资队伍edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="ckeditor/ckeditor.js" type="text/javascript"></script>
新闻标题：<asp:TextBox ID="txttittle" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ErrorMessage="*" ControlToValidate="txttittle"></asp:RequiredFieldValidator>
    <br />
二级分类：<asp:ListBox ID="lbteacher" runat="server" Rows="1">
        <asp:ListItem>---请选择---</asp:ListItem>
        <asp:ListItem>师资概况</asp:ListItem>
        <asp:ListItem>教授简介</asp:ListItem>
        <asp:ListItem>教师简介</asp:ListItem>
    </asp:ListBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ErrorMessage="*" ControlToValidate="lbteacher" InitialValue="---请选择---"></asp:RequiredFieldValidator>
    <br />
新闻内容：<asp:TextBox ID="txtcontent" runat="server" TextMode="MultiLine" CssClass="ckeditor"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ErrorMessage="*" ControlToValidate="txtcontent" EnableClientScript="False"></asp:RequiredFieldValidator>
    <br />
<asp:Button ID="btnsave" runat="server" Text="保存并发布" onclick="btnsave_Click" />
</asp:Content>
