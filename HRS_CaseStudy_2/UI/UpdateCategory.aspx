<%@ Page Title="" Language="C#" MasterPageFile="~/UI/HRS_master.Master" AutoEventWireup="true" CodeBehind="UpdateCategory.aspx.cs" Inherits="HRS_CaseStudy_2.UI.UpdateCategory" %>
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
            height: 804px;
        }
        .style1
        {
            width: 105px;
        }
        .style2
        {
            width: 89px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <table id="Table1" border="0" cellpadding="1" cellspacing="1" width="1005px">
        <tr>
            <td align="center" class="header" 
                style="HEIGHT: 1px; background-color: #000066;">
                Update Category</td>
        </tr>
        <tr>
            <td class="emptyline">
            </td>
        </tr>
        <tr valign="top">
            <td align="center">
                <table>
                    <tr>
                        <td align="left" class="style1">
                            <asp:Label ID="categoryLabel" runat="server" CssClass="label">Category:</asp:Label>
                        </td>
                        <td align="left">
                            <%--  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ErrorMessage="Please Enter Valid Category!!" 
                                style="z-index: 1; left: 649px; top: 374px; position: absolute; width: 12px; bottom: 381px;" 
                                ValidationExpression="[\w_\s\.-]*">*</asp:RegularExpressionValidator>--%>
                            <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
                        </td>
                        <td align="left">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txt_name" Display="Dynamic" ErrorMessage="Enter Category!!" 
                                Font-Size="Smaller" ForeColor="Red" style="height: 68px"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="txt_name" Display="None" 
                                ErrorMessage="Enter valid Category!!" Font-Size="Smaller" ForeColor="Red" 
                                style="width: 101px" ValidationExpression="[\w_\s\.-]*"></asp:RegularExpressionValidator>
                        </td>
                        <td align="left" class="style2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="left" class="style1">
                            <asp:Label ID="descriptionLabel" runat="server" CssClass="label">Description:</asp:Label>
                          
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txt_desc" runat="server"></asp:TextBox>
                          
                        </td>
                        <td align="left">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="txt_desc" Display="None" ErrorMessage="Enter Description!!" 
                                Font-Size="Smaller" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                ControlToValidate="txt_desc" Display="None" 
                                ErrorMessage="Enter Valid description!!" Font-Size="Smaller" ForeColor="Red" 
                                ValidationExpression="[\w_\s\.-]*"></asp:RegularExpressionValidator>
                          
                        </td>
                        <td align="left" class="style2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="center" class="style1">
                            &nbsp;</td>
                        <td align="center" colspan="3">
&nbsp;<asp:Button ID="Button1" runat="server" Text="Update" onclick="Button1_Click" />
                        </td>
                    </tr>
                </table>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
        </tr>
    </table>
</asp:Content>
