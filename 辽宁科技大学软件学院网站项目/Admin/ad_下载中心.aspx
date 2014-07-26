<%@ Page Title="" Language="C#"  MasterPageFile="~/Admin/Manage.Master" AutoEventWireup="true" CodeBehind="ad_下载中心.aspx.cs" Inherits="辽宁科技大学软件学院网站项目.Admin.ad_下载中心" %>
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
            <asp:Parameter Name="TypeSecond" Type="String" />
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
            <asp:Parameter Name="TypeSecond" Type="String" />
        </InsertParameters>
    </asp:ObjectDataSource>
    <a href="ad_下载中心edit.aspx?action=add">点击此处发布新闻</a>
    
    <asp:ListView ID="lvdownload" runat="server" DataKeyNames="Id" 
        DataSourceID="odsdownload">
        <ItemTemplate>
            <tr >
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" OnClientClick='return confirm("确认删除？");'/>
                    <a href="ad_下载中心edit.aspx?action=edit&id=<%# Eval("Id") %>">编辑</a>
                </td>
                <td>
                    <asp:Label ID="TypeLabel" runat="server" Text='<%# Eval("Type") %>' />
                </td>
                <td>
                    <asp:Label ID="TypeSecondLabel" runat="server" 
                        Text='<%# Eval("TypeSecond") %>' />
                </td>
                <td>
                    <asp:Label ID="TittleLabel" runat="server" Text='<%# Eval("Tittle") %>' />
                </td>
                <td>
                    <asp:Label ID="CreatDateLabel" runat="server" Text='<%# Eval("CreatDate") %>' />
                </td>
                
            </tr>
        </ItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>
                        没有任何新闻。</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table ID="itemPlaceholderContainer" runat="server" border="0" style="">
                            <tr runat="server" style="">
                                <th runat="server">
                                </th>
                                <th runat="server">
                                    文章分类</th>
                                 <th runat="server">
                                    二级分类</th>   
                                <th runat="server">
                                    文章标题</th>
                                <th runat="server">
                                    发布日期</th>
                                
                            </tr>
                            <tr ID="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" >
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                </td>
                <td>
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                </td>
                <td>
                    <asp:Label ID="TypeLabel" runat="server" Text='<%# Eval("Type") %>' />
                </td>
                <td>
                    <asp:Label ID="TittleLabel" runat="server" Text='<%# Eval("Tittle") %>' />
                </td>
                <td>
                    <asp:Label ID="MainContentLabel" runat="server" 
                        Text='<%# Eval("MainContent") %>' />
                </td>
                <td>
                    <asp:Label ID="CreatDateLabel" runat="server" Text='<%# Eval("CreatDate") %>' />
                </td>
                <td>
                    <asp:Label ID="TypeSecondLabel" runat="server" 
                        Text='<%# Eval("TypeSecond") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:DataPager ID="dpdownload" runat="server" PagedControlID="lvdownload">
        <Fields>
            <asp:NextPreviousPagerField ButtonType="Button" FirstPageText="首页" 
                ShowFirstPageButton="True" ShowNextPageButton="False" />
            <asp:NumericPagerField ButtonCount="3" />
            <asp:NextPreviousPagerField ButtonType="Button" LastPageText="末页" 
                ShowLastPageButton="True" ShowPreviousPageButton="False" />
        </Fields>
    </asp:DataPager>
</asp:Content>
