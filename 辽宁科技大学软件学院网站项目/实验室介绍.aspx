<%@ Page Title="实验室介绍-辽宁科技大学软件学院" Language="C#" MasterPageFile="~/SiteFront.Master" AutoEventWireup="true" CodeBehind="实验室介绍.aspx.cs" Inherits="辽宁科技大学软件学院网站项目.实验室介绍" %>
<%@ OutputCache Duration="30" VaryByParam="*"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ObjectDataSource ID="odstextroom1" runat="server" DeleteMethod="Delete" 
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
            <asp:Parameter DefaultValue="实验室中心概况" Name="TypeSecond" Type="String" />
        </SelectParameters>
        <InsertParameters>
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="Tittle" Type="String" />
            <asp:Parameter Name="MainContent" Type="String" />
            <asp:Parameter Name="CreatDate" Type="DateTime" />
            <asp:Parameter Name="TypeSecond" Type="String" />
        </InsertParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="odstextroom2" runat="server" DeleteMethod="Delete" 
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
            <asp:Parameter DefaultValue="实验室开放" Name="TypeSecond" Type="String" />
        </SelectParameters>
        <InsertParameters>
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="Tittle" Type="String" />
            <asp:Parameter Name="MainContent" Type="String" />
            <asp:Parameter Name="CreatDate" Type="DateTime" />
            <asp:Parameter Name="TypeSecond" Type="String" />
        </InsertParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="odstextroom3" runat="server" DeleteMethod="Delete" 
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
            <asp:Parameter DefaultValue="实验室执行计划" Name="TypeSecond" Type="String" />
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
    <asp:HyperLink ID="Link3" runat="server"></asp:HyperLink><br />
    <asp:Repeater ID="Repeatertextroom1" runat="server" DataSourceID="odstextroom1">
    <HeaderTemplate><br /><table id="tablestyle">实验室中心概况 |</HeaderTemplate>
    <ItemTemplate> <tr><td><div id="repeaterleft"><a href="show.aspx?id=<%#Eval("Id") %>&type=<%#Eval("TypeSecond") %>"><%#Eval("Tittle") %> </a></div></td><td><div  id="repeaterright"> <%#Eval("CreatDate") %></div></td></tr></ItemTemplate>
    <FooterTemplate></table></FooterTemplate>
    </asp:Repeater>
    <asp:Repeater ID="Repeatertextroom2" runat="server" DataSourceID="odstextroom2">
    <HeaderTemplate><br /><table id="tablestyle">实验室开放 |</HeaderTemplate>
    <ItemTemplate> <tr><td><div id="repeaterleft"><a href="show.aspx?id=<%#Eval("Id") %>&type=<%#Eval("TypeSecond") %>"><%#Eval("Tittle") %> </a></div></td><td><div  id="repeaterright"> <%#Eval("CreatDate") %></div></td></tr></ItemTemplate>
    <FooterTemplate></table></FooterTemplate>
    </asp:Repeater>
    <asp:Repeater ID="Repeatertextroom3" runat="server" DataSourceID="odstextroom3">
    <HeaderTemplate><br /><table id="tablestyle">实验室执行计划 | </HeaderTemplate>
    <ItemTemplate> <tr><td><div id="repeaterleft"><a href="show.aspx?id=<%#Eval("Id") %>&type=<%#Eval("TypeSecond") %>"><%#Eval("Tittle") %> </a></div></td><td><div  id="repeaterright"> <%#Eval("CreatDate") %></div></td></tr></ItemTemplate>
    <FooterTemplate></table></FooterTemplate>
    </asp:Repeater>
    
    <br />
</asp:Content>
