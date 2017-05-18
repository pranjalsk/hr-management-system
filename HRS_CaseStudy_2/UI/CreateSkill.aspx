<%@ Page Title="" Language="C#" MasterPageFile="~/UI/HRS_master.Master" AutoEventWireup="true" CodeBehind="CreateSkill.aspx.cs" Inherits="HRS_CaseStudy_2.UI.CreateSkill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #Table1
        {
            height: 867px;
        }

.header
{
	background-color : #ff9933;
	font-family : Arial;
	font-weight : bold;
	color : White; 
	height : 1px;	
	
}

.emptyline
{
	height : 5px;
}

    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <table id="Table1" border="0" cellpadding="1" cellspacing="1" width="1005px">
        <tr>
            <td align="center" class="header" 
                style="HEIGHT: 1px; background-color: #660066;">
                Add Skill</td>
        </tr>
        <tr>
            <td class="emptyline">
            </td>
        </tr>
        <tr valign="top">
            <td align="center">
                <table>
                    <tr>
                        <td align="left">
                            Category</td>
                        <td align="left">
                            <asp:DropDownList ID="ddl_Category" runat="server">
                            </asp:DropDownList>
                        &nbsp;<asp:RequiredFieldValidator ID="categoryRequiredFieldValidator" 
                                runat="server" ControlToValidate="ddl_Category" 
                                ErrorMessage="Category needs to be selected " ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            Skill</td>
                        <td align="left">
                            <asp:TextBox ID="txt_skillName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="skillRequiredFieldValidator" runat="server" 
                                ControlToValidate="txt_skillName" 
                                ErrorMessage="Skill Name Is Required To Be Entered" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="skillRegularExpressionValidator" 
                                runat="server" ControlToValidate="txt_skillName" 
                                ErrorMessage="Skill is not in valid format. Only letters, numbers, spaces, dots, commas, underscores, slashes, plus, hyphens, hashes and brackets are allowed." 
                                ForeColor="Red" ValidationExpression="[\w_,\n\r\s\\\+\.\-/#()]*">*</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            Description</td>
                        <td align="left">
                            <asp:TextBox ID="txt_skillDesc" runat="server" TextMode="MultiLine"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="descriptionRequiredFieldValidator" 
                                runat="server" ControlToValidate="txt_skillDesc" 
                                ErrorMessage="Skill Description Is Required To Be Entered" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="emptyline">
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
&nbsp;<asp:Button ID="ButtonAddSkill" runat="server" Text="Add" onclick="ButtonAddSkill_Click" />
                            <asp:Button ID="ButtonCancelSkillSearch" runat="server" Text="Cancel" 
                                onclick="ButtonCancelSkillSearch_Click" CausesValidation="False" />
                        </td>
                    </tr>
                </table>
                <asp:ValidationSummary ID="createSkillValidationSummary" runat="server" />
            </td>
        </tr>
    </table>
</asp:Content>
