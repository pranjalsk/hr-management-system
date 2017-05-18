<%@ Page Title="" Language="C#" MasterPageFile="~/UI/HRS_master.Master" AutoEventWireup="true" CodeBehind="CreateCategory.aspx.cs" Inherits="HRS_CaseStudy_2.UI.CreateCategory" %>
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
            height: 675px;
        }
        .style2
        {
            width: 331px;
        }
        .style3
        {
            width: 226px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <table id="Table1" border="0" cellpadding="1" cellspacing="1" width="100%">
        <tr>
            <td align="center" class="header" 
                style="HEIGHT: 1px; background-color: #CCCCFF;">
                Add Category</td>
        </tr>
        <tr>
            <td class="emptyline">
            </td>
        </tr>
        <tr valign="top">
            <td align="center">
                <br />
                <table>
                    <tr>
                        <td align="left">
                            <asp:Label ID="categoryLabel0" runat="server" CssClass="label">Category:</asp:Label>
                        </td>
                        <td align="left" class="style3">
                            <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="txt_name" ErrorMessage="Please Enter Category!!" 
                                
                                style="z-index: 1; left: 645px; top: 370px; position: relative; bottom: 385px;" 
                                Display="None" Font-Size="Smaller" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                        </td>
                        <td align="left" class="style2">
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                ControlToValidate="txt_name" ErrorMessage="Please Enter Valid Category!" 
                                style="z-index: 1; left: 821px; top: 371px; position: relative" 
                                ValidationExpression="[\w_\s\.-]*" Display="None" Font-Size="Smaller" 
                                ForeColor="#CC3300" Visible="False"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            <asp:Label ID="descriptionLabel0" runat="server" CssClass="label">Description:</asp:Label>
                        </td>
                        <td align="left" class="style3">
                            <asp:TextBox ID="txt_desc" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </td>
                        <td align="left" class="style2">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                ControlToValidate="txt_desc" ErrorMessage="Please Enter Description!" 
                                style="z-index: 1; left: 638px; top: 408px; position: relative" 
                                Display="None" Font-Size="Smaller"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                                ErrorMessage="Please Enter Valid Description!!" ForeColor="White" 
                                style="z-index: 1; left: 641px; top: 432px; position: relative; height: 13px; bottom: 330px;" 
                                ValidationExpression="[\w_\s\.-]*" ControlToValidate="txt_desc" 
                                Display="None" Font-Size="Smaller"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            &nbsp;</td>
                        <td align="center" colspan="2">
                            <asp:Button ID="Button1" runat="server" Text="Add" onclick="Button1_Click" />
&nbsp;<asp:Button ID="Button2" runat="server" Text="Cancel" onclick="Button2_Click" 
                                CausesValidation="False" PostBackUrl="~/UI/SearchCategory.aspx" />
                        </td>
                    </tr>
                </table>
                <br />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                    style="margin-top: 4px" />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>
