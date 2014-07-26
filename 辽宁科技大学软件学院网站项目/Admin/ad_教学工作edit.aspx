<%@ Page Title="" Language="C#"  ValidateRequest="false"  MasterPageFile="~/Admin/Manage.Master" AutoEventWireup="true" CodeBehind="ad_教学工作edit.aspx.cs" Inherits="辽宁科技大学软件学院网站项目.Admin.ad_教学工作edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <script src="ckeditor/ckeditor.js" type="text/javascript"></script>
新闻标题：<asp:TextBox ID="txttittle" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ErrorMessage="*" ControlToValidate="txttittle"></asp:RequiredFieldValidator>
    <br />
二级分类：<asp:ListBox ID="lbteach" runat="server" Rows="1">
        <asp:ListItem>---请选择---</asp:ListItem>
        <asp:ListItem>教学通知</asp:ListItem>
        <asp:ListItem>本科教学</asp:ListItem>
        <asp:ListItem>研究生教学</asp:ListItem>
        <asp:ListItem>软件工程系</asp:ListItem>
        <asp:ListItem>网络工程系</asp:ListItem>
        <asp:ListItem>工程应用系</asp:ListItem>
        <asp:ListItem>计算中心</asp:ListItem>
        <asp:ListItem>资料下载</asp:ListItem>
    </asp:ListBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ErrorMessage="*" ControlToValidate="lbteach" InitialValue="---请选择---"></asp:RequiredFieldValidator>
    <br />
新闻内容：<asp:TextBox ID="txtcontent" runat="server" TextMode="MultiLine" CssClass="ckeditor"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ErrorMessage="*" ControlToValidate="txtcontent" EnableClientScript="False"></asp:RequiredFieldValidator>
    <br />
<asp:Button ID="btnsave" runat="server" Text="保存并发布" onclick="btnsave_Click" />
</asp:Content>
