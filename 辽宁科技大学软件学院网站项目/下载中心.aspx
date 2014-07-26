<%@ Page Title="下载中心-辽宁科技大学软件学院" Language="C#" MasterPageFile="~/SiteFront.Master" AutoEventWireup="true" CodeBehind="下载中心.aspx.cs" Inherits="辽宁科技大学软件学院网站项目.下载中心" %>
<%@ OutputCache Duration="30" VaryByParam="*"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ObjectDataSource ID="odsdownload" runat="server" DeleteMethod="Delete" 
        InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" 
        SelectMethod="GetDataByType" 
        TypeName="辽宁科技大学软件学院网站项目.DAL.NewsTableAdapters.T_NewsTableAdapter" 
        UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_Id" Type="Int64" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="Tittle" Type="String" />
            <asp:Parameter Name="MainContent" Type="String" />
            <asp:Parameter Name="CreatDate" Type="DateTime" />
            <asp:Parameter Name="Original_Id" Type="Int64" />
        </UpdateParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="下载中心" Name="Type" Type="String" />
        </SelectParameters>
        <InsertParameters>
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="Tittle" Type="String" />
            <asp:Parameter Name="MainContent" Type="String" />
            <asp:Parameter Name="CreatDate" Type="DateTime" />
        </InsertParameters>
    </asp:ObjectDataSource>
    <asp:Repeater ID="Repeaterdownload" runat="server" DataSourceID="odsdownload">
    <HeaderTemplate><br /><table id="tablestyle"><tr>您当前所在位置：<a href="rjxy.aspx">网站首页</a>>><a href="下载中心.aspx">下载中心</a></tr><br /></HeaderTemplate>
    <ItemTemplate> <tr><td><div id="repeaterleft"><a href="show.aspx?id=<%#Eval("Id") %>&type=<%#Eval("Type") %>"><%#Eval("Tittle") %> </a></div></td><td><div  id="repeaterright"> <%#Eval("CreatDate") %></div></td></tr></ItemTemplate>
    <FooterTemplate></table></FooterTemplate>
    </asp:Repeater>
    </asp:Content>
