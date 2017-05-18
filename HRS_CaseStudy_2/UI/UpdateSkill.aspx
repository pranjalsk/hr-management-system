<%@ Page Title="" Language="C#" MasterPageFile="~/UI/HRS_master.Master" AutoEventWireup="true" CodeBehind="UpdateSkill.aspx.cs" Inherits="HRS_CaseStudy_2.UI.UpdateSkill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
 

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

.button
{
	font-family : Arial;
	font-size : smaller;
	font-style : normal;
	background-color :rgb(210,180,140);
	font-weight : bold; 
}

        #Table1
        {
            height: 892px;
        }

        .style1
        {
            height : 5px;
            width: 171px;
        }
        .style2
        {
            width: 171px;
        }
        .style3
        {
            width: 139px;
        }
        .style4
        {
            height: 113px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <table id="Table1" border="0" cellpadding="1" cellspacing="1" 
        width="1005px">
        <tr>
            <td align="center" class="header" 
                style="HEIGHT: 1px; background-color: #000066;">
                Update Skill</td>
        </tr>
        <tr>
            <td class="emptyline">
            </td>
        </tr>
        <tr valign="top">
            <td align="center">
                <table>
                    <tr>
                        <td class="style1">
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style2">
                            Skill ID:</td>
                        <td align="left" class="style3">
                            <asp:Label ID="LabelSkillID" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style2">
                            New skill name:</td>
                        <td align="left" class="style3">
                            <asp:TextBox ID="txt_NewSkillName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="searchSkillValidationSummary" runat="server" 
                                ControlToValidate="txt_NewSkillName" ErrorMessage="Skill Name is required" 
                                ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="skillRegularExpressionValidator" 
                                runat="server" 
                                ErrorMessage="Skill is not in valid format. Only letters, numbers, spaces, dots, " 
                                ForeColor="Red" ValidationExpression="[\w_\s\.\n\r\,\\/\+#()]*" 
                                ControlToValidate="txt_NewSkillName">*</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style2">
                            <asp:Label ID="descriptionLabel" runat="server" CssClass="label">Skill Description :
						    </asp:Label>
                        </td>
                        <td align="left" class="style3">
                            <asp:TextBox ID="txt_NewDesc" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="descriptionRequiredFieldValidator" 
                                runat="server" ControlToValidate="txt_NewDesc" 
                                ErrorMessage="Skill Description is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="descriptionRegularExpressionValidator" 
                                runat="server" ControlToValidate="txt_NewDesc" 
                                ErrorMessage="Description is not in valid format. Only letters, numbers, spaces, dots," 
                                ForeColor="Red" ValidationExpression="[\w_\s\.\n\r\,\\/\+#()]*">*</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2" class="style4">
&nbsp;<asp:Button ID="ButtonUpdateSkill" runat="server" Text="Update" onclick="ButtonUpdateSkill_Click" />
                            <br />
                            <asp:ValidationSummary ID="updateSkillValidationSummary" runat="server" 
                                Height="55px" ShowMessageBox="True" ShowSummary="False" />
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
