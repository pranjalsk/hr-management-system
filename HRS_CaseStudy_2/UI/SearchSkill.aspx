<%@ Page Title="" Language="C#" MasterPageFile="~/UI/HRS_master.Master" AutoEventWireup="true" CodeBehind="SearchSkill.aspx.cs" Inherits="HRS_CaseStudy_2.UI.SearchSkill" %>
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

        .textbox
        {}
        .style1
        {
            font-family : Arial;
            font-size : small;
            font-style : normal;
            font-weight : bold;
            width: 149px;
        }
        .style2
        {
            width: 149px;
        }
        .style3
        {
            height : 5px;
            width: 149px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <table id="Table1" border="0" cellpadding="1" cellspacing="1" height="100%" 
        width="1005">
        <tr valign="top">
            <td class="search" style="height: 417px; background-color: #CCCCFF;" 
                width="15%">
                <table>
                    <tr>
                        <td class="style1">
                            Skill Search</td>
                    </tr>
                    <tr>
                        <td class="style2">
                            <asp:TextBox ID="txt_SkillNameSearch" runat="server" Width="119px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="skillRequiredFieldValidator" runat="server" 
                                ControlToValidate="txt_SkillNameSearch" 
                                ErrorMessage=" Please input search criteria" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="skillRegularExpressionValidator" 
                                runat="server" ControlToValidate="txt_SkillNameSearch" 
                                ErrorMessage="Skill is an invalid search criteria. Only letters, numbers, spaces, dots, commas, underscores, slashes, plus, hyphens, hashes and brackets are allowed." 
                                ForeColor="Red" ValidationExpression="[\w_,\n\r\s\\\+\.\-/#()]*">*</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style2">
                            <asp:Button ID="ButtonSearchSkillName" runat="server" Text="Search" 
                                onclick="ButtonSearchSkillID_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style2">
                            <asp:HyperLink ID="HyperLink1" runat="server" 
                                NavigateUrl="~/UI/CreateSkill.aspx">Add new skill</asp:HyperLink>
                        </td>
                    </tr>
                </table>
            </td>
            <td style="height: 417px" width="2%">
            </td>
            <td style="height: 417px" width="80%">
                <table width="100%">
                    <tr>
                        <td style="width: 777px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 777px; height: 117px">
                            <asp:GridView ID="gv_SkillByName" runat="server" AutoGenerateColumns="False" 
                                DataKeyNames="SkillId" onrowcommand="EditLinkClick">
                                <Columns>
                                    <asp:HyperLinkField DataNavigateUrlFields="SkillId" 
                                        DataNavigateUrlFormatString="ViewSkill.aspx?SkillId={0}" 
                                        DataTextField="SkillName" HeaderText="Skill names" />
                                    <asp:BoundField DataField="CategoryName" HeaderText="Category name" />
                                    <asp:ButtonField CommandName="Edit" Text="edit" />
                                </Columns>
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 777px">
                            <asp:ValidationSummary ID="searchSkillValidationSummary" runat="server" 
                                ShowMessageBox="True" ShowSummary="False" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
