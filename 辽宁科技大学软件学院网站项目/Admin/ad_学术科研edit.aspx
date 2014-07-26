<%@ Page Title="" Language="C#" ValidateRequest="false" MasterPageFile="~/Admin/Manage.Master" AutoEventWireup="true" CodeBehind="ad_学术科研edit.aspx.cs" Inherits="辽宁科技大学软件学院网站项目.Admin.ad_学术科研edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <script src="ckeditor/ckeditor.js" type="text/javascript"></script>
新闻标题：<asp:TextBox ID="txttittle" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txttittle" ErrorMessage="*"></asp:RequiredFieldValidator>
    <br />
二级分类：<asp:ListBox ID="lbscience" runat="server" Rows="1">
        <asp:ListItem>---请选择---</asp:ListItem>
        <asp:ListItem>研究方向</asp:ListItem>
        <asp:ListItem>科研成果</asp:ListItem>
        <asp:ListItem>主要著作</asp:ListItem>
        <asp:ListItem>推广项目</asp:ListItem>
    </asp:ListBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="lbscience" ErrorMessage="*" 
        InitialValue="---请选择---"></asp:RequiredFieldValidator>
    <br />
新闻内容：<asp:TextBox ID="txtcontent" runat="server" TextMode="MultiLine" CssClass="ckeditor"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="txtcontent" EnableClientScript="False" ErrorMessage="*"></asp:RequiredFieldValidator>
    <br />
<asp:Button ID="btnsave" runat="server" Text="保存并发布" onclick="btnsave_Click" />
</asp:Content>
