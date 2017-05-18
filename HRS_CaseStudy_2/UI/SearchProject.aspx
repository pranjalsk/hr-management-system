<%@ Page Title="" Language="C#" MasterPageFile="~/UI/HRS_master.Master" AutoEventWireup="true" CodeBehind="SearchProject.aspx.cs" Inherits="HRS_CaseStudy_2.UI.SearchProject" %>
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
            font-family : Arial;
            font-size : small;
            font-style : normal;
            font-weight : bold;
            width: 145px;
        }
        .style2
        {
            width: 145px;
        }
        .style3
        {
            height : 5px;
            width: 145px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <table id="Table1" border="0" cellpadding="1" cellspacing="1" height="100%" 
        width="1005" 
        style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; font-style: normal">
        <tr valign="top">
            <td class="search" style="height: 417px; background-color: #FFFFFF; background-image: none;" 
                width="20%">
                <table>
                    <tr>
                        <td class="style1" style="color: #000066">
                            Project Search</td>
                    </tr>
                    <tr>
                        <td class="style2">
                            <asp:TextBox ID="txt_ProjSearch" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="projectNameRequired_RequiredFieldValidator" 
                                runat="server" ControlToValidate="txt_ProjSearch" 
                                ErrorMessage="Please input search criteria.">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="projectName_RegularExpressionValidator" 
                                runat="server" ControlToValidate="txt_ProjSearch" 
                                ErrorMessage="Invalid search syntax" 
                                ValidationExpression="[\w_,\n\r\s\\\+\.\-/#()]*">*</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btn_ProjSrch" runat="server" Text="Search" 
                                onclick="btn_ProjSrch_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            <asp:HyperLink ID="HyperLink1" runat="server" 
                                NavigateUrl="~/UI/CreateProject.aspx" Font-Italic="True" 
                                ForeColor="#000066">Add new project</asp:HyperLink>
                        </td>
                    </tr>
                </table>
            </td>
            <td style="height: 417px" width="80%">
                <table width="100%">
                    <tr>
                        <td style="background-image: none; color: #000066; background-color: #FFFFFF;">
                            &nbsp;Showcase&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="gv_ShowProj" runat="server" AutoGenerateColumns="False" 
                                CellPadding="4" DataKeyNames="ProjId" ForeColor="#333333" GridLines="None" 
                                onrowcommand="gv_ShowProj_RowCommand" HorizontalAlign="Center" 
                                Width="661px">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:BoundField DataField="ProjId" HeaderText="ProjectId" Visible="False" />
                                    <asp:HyperLinkField DataNavigateUrlFields="ProjId" 
                                        DataNavigateUrlFormatString="\UI\ViewProject.aspx?pId={0}" 
                                        DataTextField="ProjName" HeaderText="Projects" />
                                    <asp:BoundField DataField="StartDate" HeaderText="Start date" />
                                    <asp:BoundField DataField="EndDate" HeaderText="End date" />
                                    <asp:ButtonField CommandName="Edit" 
                                        HeaderText="Update" Text="Edit" />
                                </Columns>
                                <EditRowStyle BackColor="#999999" />
                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:ValidationSummary ID="searchProject_ValidationSummary" runat="server" 
                                ShowMessageBox="True" ShowSummary="False" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
