<%@ Page Title="" Language="C#" MasterPageFile="~/SiteFront.Master" AutoEventWireup="true" CodeBehind="show.aspx.cs" Inherits="辽宁科技大学软件学院网站项目.show" %>
<%@ OutputCache Duration="30" VaryByParam="*"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />您当前所在位置：
    <asp:HyperLink ID="Link1" runat="server"></asp:HyperLink>
    <asp:HyperLink ID="Link2" runat="server"></asp:HyperLink>
    <asp:HyperLink ID="Link3" runat="server"></asp:HyperLink>
   <br />
    <br />
    <table id="showtable"><tr><td>
   <br /><div id="tittle"><asp:Literal ID="LiteralTittle" runat="server"></asp:Literal></div>
   <br /><div id="creattime"><asp:Literal ID="LiteralCreatTime" runat="server"></asp:Literal></div><hr />
   <div id="maincontent"><asp:Literal ID="LiteralMainContent" runat="server"></asp:Literal></div>
   </td></tr></table><br />
</asp:Content>
