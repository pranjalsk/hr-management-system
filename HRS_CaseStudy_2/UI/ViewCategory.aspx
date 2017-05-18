<%@ Page Title="" Language="C#" MasterPageFile="~/UI/HRS_master.Master" AutoEventWireup="true" CodeBehind="ViewCategory.aspx.cs" Inherits="HRS_CaseStudy_2.UI.ViewCategory" %>
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
            height: 838px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <table id="Table1" border="0" cellpadding="1" cellspacing="1" width="1005">
        <tr>
            <td align="center" class="header" style="HEIGHT: 1px">
                Category Information</td>
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
                            <asp:Label ID="categoryLabel" Runat="server" CssClass="viewlabel">Category:</asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lbl_name" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="categoryDescriptionLabel" Runat="server" CssClass="viewlabel">Description:</asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lbl_desc" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="3">
&nbsp;<asp:Button ID="Button1" runat="server" Text="Okay" onclick="Button1_Click" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
