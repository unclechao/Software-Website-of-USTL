<%@ Page Title="" Language="C#" ValidateRequest="false"  MasterPageFile="~/Admin/Manage.Master" AutoEventWireup="true" CodeBehind="ad_学科建设edit.aspx.cs" Inherits="辽宁科技大学软件学院网站项目.Admin.ad_学科建设edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="ckeditor/ckeditor.js" type="text/javascript"></script>
新闻标题：<asp:TextBox ID="txttittle" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txttittle" ErrorMessage="*"></asp:RequiredFieldValidator>
    <br />
二级分类：<asp:ListBox ID="lbsubject" runat="server" Rows="1">
        <asp:ListItem>---请选择---</asp:ListItem>
        <asp:ListItem>学科状况</asp:ListItem>
        <asp:ListItem>学位分委员会</asp:ListItem>
        <asp:ListItem>学位分委员会职责</asp:ListItem>
    </asp:ListBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="lbsubject" ErrorMessage="*" InitialValue="---请选择---"></asp:RequiredFieldValidator>
    <br />
新闻内容：<asp:TextBox ID="txtcontent" runat="server" TextMode="MultiLine" CssClass="ckeditor"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="txtcontent" EnableClientScript="False" ErrorMessage="*"></asp:RequiredFieldValidator>
    <br />
<asp:Button ID="btnsave" runat="server" Text="保存并发布" onclick="btnsave_Click" />
</asp:Content>
