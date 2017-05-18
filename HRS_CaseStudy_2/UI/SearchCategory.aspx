<%@ Page Title="" Language="C#" MasterPageFile="~/UI/HRS_master.Master" AutoEventWireup="true" CodeBehind="SearchCategory.aspx.cs" Inherits="HRS_CaseStudy_2.UI.SearchCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


.search
{
	background-color : #ff9933;
}

.text
{
	font-family : Arial;
	font-size : small;
	font-style : normal;
	font-weight : bold;      
}

.emptyline
{
	height : 5px;
}

        .style1
        {
            height: 24px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <table id="Table1" border="0" cellpadding="1" cellspacing="1" height="100%" 
        width="1005">
        <tr valign="top">
            <td class="search" style="height: 417; background-color: #CCCCFF;" width="15%">
                <table>
                    <tr>
                        <td class="text">
                            Category Search</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txt_name" runat="server" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="emptyline">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="Search" onclick="Button1_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="emptyline">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:HyperLink ID="HyperLink1" runat="server" 
                                NavigateUrl="~/UI/CreateCategory.aspx">Add Skill Category</asp:HyperLink>
                        </td>
                    </tr>
                </table>
            </td>
            <td style="height: 417px" width="2%">
            </td>
            <td style="height: 417px" width="80%">
                <table width="100%">
                    <tr>
                        <td class="style1">
                            </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="gv" runat="server" AutoGenerateColumns="False" 
                                DataKeyNames="CategoryId" onpageindexchanged="gv_PageIndexChanged" 
                                onrowcommand="gv_RowCommand" onselectedindexchanged="gv_SelectedIndexChanged">
                                <Columns>
                                    <asp:BoundField DataField="CategoryId" HeaderText="ID" />
                                    <asp:HyperLinkField DataNavigateUrlFields="CategoryId" 
                                        DataNavigateUrlFormatString="ViewCategory.aspx?CategoryId={0}" 
                                        DataTextField="CategoryName" HeaderText="name" />
                                    <asp:ButtonField CommandName="Edit" Text="Edit" />
                                </Columns>
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
