<%@ Page Title="教学工作-辽宁科技大学软件学院" Language="C#" MasterPageFile="~/SiteFront.Master" AutoEventWireup="true" CodeBehind="教学工作.aspx.cs" Inherits="辽宁科技大学软件学院网站项目.教学工作" %>
<%@ OutputCache Duration="30" VaryByParam="*"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ObjectDataSource ID="odsteach1" runat="server" DeleteMethod="Delete" 
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
            <asp:Parameter DefaultValue="教学通知" Name="TypeSecond" Type="String" />
        </SelectParameters>
        <InsertParameters>
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="Tittle" Type="String" />
            <asp:Parameter Name="MainContent" Type="String" />
            <asp:Parameter Name="CreatDate" Type="DateTime" />
            <asp:Parameter Name="TypeSecond" Type="String" />
        </InsertParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="odsteach2" runat="server" DeleteMethod="Delete" 
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
            <asp:Parameter DefaultValue="本科教学" Name="TypeSecond" Type="String" />
        </SelectParameters>
        <InsertParameters>
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="Tittle" Type="String" />
            <asp:Parameter Name="MainContent" Type="String" />
            <asp:Parameter Name="CreatDate" Type="DateTime" />
            <asp:Parameter Name="TypeSecond" Type="String" />
        </InsertParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="odsteach3" runat="server" DeleteMethod="Delete" 
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
            <asp:Parameter DefaultValue="研究生教学" Name="TypeSecond" Type="String" />
        </SelectParameters>
        <InsertParameters>
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="Tittle" Type="String" />
            <asp:Parameter Name="MainContent" Type="String" />
            <asp:Parameter Name="CreatDate" Type="DateTime" />
            <asp:Parameter Name="TypeSecond" Type="String" />
        </InsertParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="odsteach4" runat="server" DeleteMethod="Delete" 
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
            <asp:Parameter DefaultValue="软件工程系" Name="TypeSecond" Type="String" />
        </SelectParameters>
        <InsertParameters>
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="Tittle" Type="String" />
            <asp:Parameter Name="MainContent" Type="String" />
            <asp:Parameter Name="CreatDate" Type="DateTime" />
            <asp:Parameter Name="TypeSecond" Type="String" />
        </InsertParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="odsteach5" runat="server" DeleteMethod="Delete" 
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
            <asp:Parameter DefaultValue="网络工程系" Name="TypeSecond" Type="String" />
        </SelectParameters>
        <InsertParameters>
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="Tittle" Type="String" />
            <asp:Parameter Name="MainContent" Type="String" />
            <asp:Parameter Name="CreatDate" Type="DateTime" />
            <asp:Parameter Name="TypeSecond" Type="String" />
        </InsertParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="odsteach6" runat="server" DeleteMethod="Delete" 
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
            <asp:Parameter DefaultValue="工程应用系" Name="TypeSecond" Type="String" />
        </SelectParameters>
        <InsertParameters>
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="Tittle" Type="String" />
            <asp:Parameter Name="MainContent" Type="String" />
            <asp:Parameter Name="CreatDate" Type="DateTime" />
            <asp:Parameter Name="TypeSecond" Type="String" />
        </InsertParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="odsteach7" runat="server" DeleteMethod="Delete" 
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
            <asp:Parameter DefaultValue="计算中心" Name="TypeSecond" Type="String" />
        </SelectParameters>
        <InsertParameters>
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="Tittle" Type="String" />
            <asp:Parameter Name="MainContent" Type="String" />
            <asp:Parameter Name="CreatDate" Type="DateTime" />
            <asp:Parameter Name="TypeSecond" Type="String" />
        </InsertParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="odsteach8" runat="server" DeleteMethod="Delete" 
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
            <asp:Parameter DefaultValue="资料下载" Name="TypeSecond" Type="String" />
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
    <asp:Repeater ID="Repeaterteach1" runat="server" DataSourceID="odsteach1">
    <HeaderTemplate><br /><table id="tablestyle">教学通知 | </HeaderTemplate>
    <ItemTemplate> <tr><td><div id="repeaterleft"><a href="show.aspx?id=<%#Eval("Id") %>&type=<%#Eval("TypeSecond") %>"><%#Eval("Tittle") %> </a></div></td><td><div  id="repeaterright"> <%#Eval("CreatDate") %></div></td></tr></ItemTemplate>
    <FooterTemplate></table></FooterTemplate>
    </asp:Repeater>
    <asp:Repeater ID="Repeaterteach2" runat="server" DataSourceID="odsteach2">
    <HeaderTemplate><br /><table id="tablestyle">本科教学 | </HeaderTemplate>
    <ItemTemplate> <tr><td><div id="repeaterleft"><a href="show.aspx?id=<%#Eval("Id") %>&type=<%#Eval("TypeSecond") %>"><%#Eval("Tittle") %> </a></div></td><td><div  id="repeaterright"> <%#Eval("CreatDate") %></div></td></tr></ItemTemplate>
    <FooterTemplate></table></FooterTemplate>
    </asp:Repeater>
    <asp:Repeater ID="Repeaterteach3" runat="server" DataSourceID="odsteach3">
    <HeaderTemplate><br /><table id="tablestyle">研究生教学 | </HeaderTemplate>
    <ItemTemplate> <tr><td><div id="repeaterleft"><a href="show.aspx?id=<%#Eval("Id") %>&type=<%#Eval("TypeSecond") %>"><%#Eval("Tittle") %> </a></div></td><td><div  id="repeaterright"> <%#Eval("CreatDate") %></div></td></tr></ItemTemplate>
    <FooterTemplate></table></FooterTemplate>
    </asp:Repeater>
    <asp:Repeater ID="Repeaterteach4" runat="server" DataSourceID="odsteach4">
    <HeaderTemplate><br /><table id="tablestyle">软件工程系 | </HeaderTemplate>
    <ItemTemplate> <tr><td><div id="repeaterleft"><a href="show.aspx?id=<%#Eval("Id") %>&type=<%#Eval("TypeSecond") %>"><%#Eval("Tittle") %> </a></div></td><td><div  id="repeaterright"> <%#Eval("CreatDate") %></div></td></tr></ItemTemplate>
    <FooterTemplate></table></FooterTemplate>
    </asp:Repeater>
    <asp:Repeater ID="Repeaterteach5" runat="server" DataSourceID="odsteach5">
    <HeaderTemplate><br /><table id="tablestyle">网络工程系 | </HeaderTemplate>
    <ItemTemplate> <tr><td><div id="repeaterleft"><a href="show.aspx?id=<%#Eval("Id") %>&type=<%#Eval("TypeSecond") %>"><%#Eval("Tittle") %> </a></div></td><td><div  id="repeaterright"> <%#Eval("CreatDate") %></div></td></tr></ItemTemplate>
    <FooterTemplate></table></FooterTemplate>
    </asp:Repeater>
    <asp:Repeater ID="Repeaterteach6" runat="server" DataSourceID="odsteach6">
    <HeaderTemplate><br /><table id="tablestyle">工程应用系 | </HeaderTemplate>
    <ItemTemplate> <tr><td><div id="repeaterleft"><a href="show.aspx?id=<%#Eval("Id") %>&type=<%#Eval("TypeSecond") %>"><%#Eval("Tittle") %> </a></div></td><td><div  id="repeaterright"> <%#Eval("CreatDate") %></div></td></tr></ItemTemplate>
    <FooterTemplate></table></FooterTemplate>
    </asp:Repeater>
    <asp:Repeater ID="Repeaterteach7" runat="server" DataSourceID="odsteach7">
    <HeaderTemplate><br /><table id="tablestyle">计算中心 | </HeaderTemplate>
    <ItemTemplate> <tr><td><div id="repeaterleft"><a href="show.aspx?id=<%#Eval("Id") %>&type=<%#Eval("TypeSecond") %>"><%#Eval("Tittle") %> </a></div></td><td><div  id="repeaterright"> <%#Eval("CreatDate") %></div></td></tr></ItemTemplate>
    <FooterTemplate></table></FooterTemplate>
    </asp:Repeater>
    <asp:Repeater ID="Repeaterteach8" runat="server" DataSourceID="odsteach8">
    <HeaderTemplate><br /><table id="tablestyle">资料下载 | </HeaderTemplate>
    <ItemTemplate> <tr><td><div id="repeaterleft"><a href="show.aspx?id=<%#Eval("Id") %>&type=<%#Eval("TypeSecond") %>"><%#Eval("Tittle") %> </a></div></td><td><div  id="repeaterright"> <%#Eval("CreatDate") %></div></td></tr></ItemTemplate>
    <FooterTemplate></table></FooterTemplate>
    </asp:Repeater>

</asp:Content>
