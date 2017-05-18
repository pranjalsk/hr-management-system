<%@ Page Title="" Language="C#" MasterPageFile="~/UI/HRS_master.Master" AutoEventWireup="true" CodeBehind="ViewSkill.aspx.cs" Inherits="HRS_CaseStudy_2.UI.ViewSkill" %>
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
            height: 825px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <table id="Table1" border="0" cellpadding="1" cellspacing="1" width="1005">
        <tr>
            <td align="center" class="header" style="HEIGHT: 1px">
                Skill Information</td>
        </tr>
        <tr>
            <td class="emptyline">
            </td>
        </tr>
        <tr valign="top">
            <td align="center">
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="categoryLabel" runat="server" CssClass="viewlabel">Category:</asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="LabelCategory" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="skillLabel" runat="server" CssClass="viewlabel">Skill:</asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="LabelSkillName" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="descriptionLabel" runat="server" CssClass="viewlabel">Description:</asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="LabelDesc" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
&nbsp;<asp:Button ID="Button1" runat="server" Text="Okay" onclick="Button1_Click" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
