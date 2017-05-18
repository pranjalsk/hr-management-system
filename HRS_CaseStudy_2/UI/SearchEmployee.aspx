<%@ Page Title="" Language="C#" MasterPageFile="~/UI/HRS_master.Master" AutoEventWireup="true" CodeBehind="SearchEmployee.aspx.cs" Inherits="HRS_CaseStudy_2.UI.SearchEmployee" %>
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

.label
{
	font-family : Arial;
	font-size : smaller;
	padding-left : 2px;
}

        .style1
        {
            font-family : Arial;
            font-size : small;
            font-style : normal;
            font-weight : bold;
            height: 20px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <table id="Table1" border="0" cellpadding="1" cellspacing="1" height="100%" 
        width="1005px">
        <tr valign="top">
            <td class="search" style="height: 417px; background-color: #CCCCFF;" 
                width="20%">
                <table>
                    <tr>
                        <td class="style1" style="color: #FF6666">
                            Employee Search</td>
                    </tr>
                    <tr>
                        <td class="emptyline">
                        </td>
                    </tr>
                    <tr>
                        <td class="label" style="color: #0099CC">
                            First Name:
                        </td>
                    </tr>
                    <tr>
                        <td class="emptyline">
                            <asp:TextBox ID="txt_FirstName" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="label" style="color: #0099FF">
                            Last Name:
                        </td>
                    </tr>
                    <tr>
                        <td class="emptyline">
                            <asp:TextBox ID="txt_LastName" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="Search" 
                                onclick="Button1_Click1" />
                        </td>
                    </tr>
                    <tr>
                        <td class="emptyline">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:HyperLink ID="LinkButton1" runat="server" 
                                NavigateUrl="~/UI/CreateEmployee.aspx">Add Employee</asp:HyperLink>
                        </td>
                    </tr>
                </table>
            </td>
            <td style="height: 417px" width="2%">
            </td>
            <td style="height: 417px" width="80%">
                <table width="100%">
                    <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="gv" runat="server" AutoGenerateColumns="False" 
                                DataKeyNames="EmployeeId" Height="218px" onrowcommand="gv_RowCommand1" 
                                style="z-index: 1; left: 403px; top: 456px; position: absolute; height: 218px; width: 396px; right: 484px;" 
                                Width="396px">
                                <Columns>
                                    <asp:HyperLinkField DataNavigateUrlFields="EmployeeId" 
                                        DataNavigateUrlFormatString="ViewEmployee.aspx?eid={0}" 
                                        DataTextField="FullName" HeaderText="Employee Name" />
                                    <asp:BoundField DataField="Level" HeaderText="Level" />
                                    <asp:ButtonField CommandName="Edit" Text="Edit" />
                                </Columns>
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td style="background-color: #CCCCFF">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
