<%@ Page Title="" Language="C#" MasterPageFile="~/UI/HRS_master.Master" AutoEventWireup="true" CodeBehind="ViewProject.aspx.cs" Inherits="HRS_CaseStudy_2.UI.ViewProject" %>
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

.viewlabel
{
	font-family : Arial;
	font-size : smaller;
	font-weight : bold; 
	padding-left : 2px;
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
            height: 955px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <table id="Table1" border="0" cellpadding="1" cellspacing="1" width="1005px">
        <tr>
            <td align="center" class="header" 
                
                style="HEIGHT: 1px; background-image: none; font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; font-style: normal; background-color: #FFFFFF; color: #000000;">
                Project Information</td>
        </tr>
        <tr>
            <td class="emptyline">
            </td>
        </tr>
        <tr valign="top">
            <td align="center">
                <table>
                    <tr>
                        <td class="viewlabel" width="20%">
                            Project:</td>
                        <td>
                            <asp:Label ID="lbl_ProjName" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="viewlabel" width="20%">
                            Start Date:</td>
                        <td>
                            <asp:Label ID="lbl_ProjStartDate" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="viewlabel" width="20%">
                            End Date:</td>
                        <td>
                            <asp:Label ID="lbl_ProjEndDate" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="viewlabel" width="20%">
                            Client:</td>
                        <td>
                            <asp:Label ID="lbl_ProjClient" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="viewlabel" width="30%">
                            Description:</td>
                        <td>
                            <asp:Label ID="lbl_ProjDesc" runat="server" Text="Label"></asp:Label>
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
