<%@ Page Title="��������-�����Ƽ���ѧ���ѧԺ" Language="C#" MasterPageFile="~/SiteFront.Master" AutoEventWireup="true" CodeBehind="��������.aspx.cs" Inherits="�����Ƽ���ѧ���ѧԺ��վ��Ŀ.��������" %>
<%@ OutputCache Duration="30" VaryByParam="*"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ObjectDataSource ID="odsdownload" runat="server" DeleteMethod="Delete" 
        InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" 
        SelectMethod="GetDataByType" 
        TypeName="�����Ƽ���ѧ���ѧԺ��վ��Ŀ.DAL.NewsTableAdapters.T_NewsTableAdapter" 
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
            <asp:Parameter DefaultValue="��������" Name="Type" Type="String" />
        </SelectParameters>
        <InsertParameters>
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="Tittle" Type="String" />
            <asp:Parameter Name="MainContent" Type="String" />
            <asp:Parameter Name="CreatDate" Type="DateTime" />
        </InsertParameters>
    </asp:ObjectDataSource>
    <asp:Repeater ID="Repeaterdownload" runat="server" DataSourceID="odsdownload">
    <HeaderTemplate><br /><table id="tablestyle"><tr>����ǰ����λ�ã�<a href="rjxy.aspx">��վ��ҳ</a>>><a href="��������.aspx">��������</a></tr><br /></HeaderTemplate>
    <ItemTemplate> <tr><td><div id="repeaterleft"><a href="show.aspx?id=<%#Eval("Id") %>&type=<%#Eval("Type") %>"><%#Eval("Tittle") %> </a></div></td><td><div  id="repeaterright"> <%#Eval("CreatDate") %></div></td></tr></ItemTemplate>
    <FooterTemplate></table></FooterTemplate>
    </asp:Repeater>
    </asp:Content>
