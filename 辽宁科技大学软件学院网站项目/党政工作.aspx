<%@ Page Title="党政工作-辽宁科技大学软件学院" Language="C#" MasterPageFile="~/SiteFront.Master" AutoEventWireup="true" CodeBehind="党政工作.aspx.cs" Inherits="辽宁科技大学软件学院网站项目.党政工作" %>
<%@ OutputCache Duration="30" VaryByParam="*"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ObjectDataSource ID="odsparty1" runat="server" DeleteMethod="Delete" 
        InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" 
        SelectMethod="GetDataByTypeSecond" 
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
            <asp:Parameter Name="TypeSecond" Type="String" />
            <asp:Parameter Name="Original_Id" Type="Int64" />
        </UpdateParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="党委工作" Name="TypeSecond" Type="String" />
        </SelectParameters>
        <InsertParameters>
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="Tittle" Type="String" />
            <asp:Parameter Name="MainContent" Type="String" />
            <asp:Parameter Name="CreatDate" Type="DateTime" />
            <asp:Parameter Name="TypeSecond" Type="String" />
        </InsertParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="odsparty2" runat="server" DeleteMethod="Delete" 
        InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" 
        SelectMethod="GetDataByTypeSecond" 
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
            <asp:Parameter Name="TypeSecond" Type="String" />
            <asp:Parameter Name="Original_Id" Type="Int64" />
        </UpdateParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="行政工作" Name="TypeSecond" Type="String" />
        </SelectParameters>
        <InsertParameters>
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="Tittle" Type="String" />
            <asp:Parameter Name="MainContent" Type="String" />
            <asp:Parameter Name="CreatDate" Type="DateTime" />
            <asp:Parameter Name="TypeSecond" Type="String" />
        </InsertParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="odsparty3" runat="server" DeleteMethod="Delete" 
        InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" 
        SelectMethod="GetDataByTypeSecond" 
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
            <asp:Parameter Name="TypeSecond" Type="String" />
            <asp:Parameter Name="Original_Id" Type="Int64" />
        </UpdateParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="工会工作" Name="TypeSecond" Type="String" />
        </SelectParameters>
        <InsertParameters>
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="Tittle" Type="String" />
            <asp:Parameter Name="MainContent" Type="String" />
            <asp:Parameter Name="CreatDate" Type="DateTime" />
            <asp:Parameter Name="TypeSecond" Type="String" />
        </InsertParameters>
    </asp:ObjectDataSource>
    <br />您当前所在位置：
    <asp:HyperLink ID="Link1" runat="server"></asp:HyperLink>
    <asp:HyperLink ID="Link2" runat="server"></asp:HyperLink>
    <asp:HyperLink ID="Link3" runat="server"></asp:HyperLink>
    <br />
    <asp:Repeater ID="Repeaterparty1" runat="server" DataSourceID="odsparty1">
    <HeaderTemplate><br /><table id="tablestyle">党委工作 | </HeaderTemplate>
    <ItemTemplate> <tr><td><div id="repeaterleft"><a href="show.aspx?id=<%#Eval("Id") %>&type=<%#Eval("TypeSecond") %>"><%#Eval("Tittle") %> </a></div></td><td><div  id="repeaterright"> <%#Eval("CreatDate") %></div></td></tr></ItemTemplate>
    <FooterTemplate></table></FooterTemplate>
    </asp:Repeater>
    <asp:Repeater ID="Repeaterparty2" runat="server" DataSourceID="odsparty2">
    <HeaderTemplate><br /><table id="tablestyle">行政工作 | </HeaderTemplate>
    <ItemTemplate> <tr><td><div id="repeaterleft"><a href="show.aspx?id=<%#Eval("Id") %>&type=<%#Eval("TypeSecond") %>"><%#Eval("Tittle") %> </a></div></td><td><div  id="repeaterright"> <%#Eval("CreatDate") %></div></td></tr></ItemTemplate>
    <FooterTemplate></table></FooterTemplate>
    </asp:Repeater>
    <asp:Repeater ID="Repeaterparty3" runat="server" DataSourceID="odsparty3">
    <HeaderTemplate><br /><table id="tablestyle">工会工作 | </HeaderTemplate>
    <ItemTemplate> <tr><td><div id="repeaterleft"><a href="show.aspx?id=<%#Eval("Id") %>&type=<%#Eval("TypeSecond") %>"><%#Eval("Tittle") %> </a></div></td><td><div  id="repeaterright"> <%#Eval("CreatDate") %></div></td></tr></ItemTemplate>
    <FooterTemplate></table></FooterTemplate>
    </asp:Repeater>

</asp:Content>
