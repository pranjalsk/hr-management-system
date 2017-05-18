<%@ Page Title="" Language="C#" MasterPageFile="~/UI/HRS_master.Master" AutoEventWireup="true" CodeBehind="ViewEmployee.aspx.cs" Inherits="HRS_CaseStudy_2.UI.ViewEMployee" %>
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

    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <table id="Table1" border="0" cellpadding="1" cellspacing="1" height="100%" 
        width="1005">
        <tr>
            <td colspan="6" style="height: 46px">
                <table width="100%">
                    <tr>
                        <td align="left" class="header" colspan="6">
                            <asp:Label ID="employeeNumberLabel" Runat="Server" CssClass="text">Employee Number:
						    </asp:Label>
                            <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="center" class="header" colspan="6">
                Personal Information</td>
        </tr>
        <tr>
            <td colspan="6">
                <table width="100%">
                    <tr>
                        <td class="viewlabel" width="15%">
                            Last Name:</td>
                        <td>
                            <asp:Label ID="label_lastname" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="viewlabel" width="15%">
                            First Name:</td>
                        <td>
                            <asp:Label ID="label_firstname" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="viewlabel" width="15%">
                            Middle Name:</td>
                        <td>
                            <asp:Label ID="label_middlename" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="viewlabel" width="15%">
                            Birth Date:</td>
                        <td>
                            <asp:Label ID="label_bday" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="viewlabel" width="15%">
                            Age:</td>
                        <td>
                            <asp:Label ID="label_age" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="viewlabel" width="15%">
                            Gender:</td>
                        <td>
                            <asp:Label ID="label_gender" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="center" class="header" colspan="6">
                Civil Information</td>
        </tr>
        <tr>
            <td colspan="6">
                <table width="100%">
                    <tr>
                        <td class="viewlabel" width="20%">
                            Status:</td>
                        <td>
                            <asp:Label ID="label_status" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="viewlabel" width="20%">
                            Citizenship:</td>
                        <td>
                            <asp:Label ID="label_citizenship" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="viewlabel" width="20%">
                            SSS Number:</td>
                        <td>
                            <asp:Label ID="label_sss" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="viewlabel" width="20%">
                            TIN Number:</td>
                        <td>
                            <asp:Label ID="label_tin" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="6">
                <table cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td align="center" class="header" colspan="2">
                            Home Address</td>
                        <td align="center" class="header" colspan="2" width="50%">
                            Contact Information</td>
                    </tr>
                    <tr>
                        <td class="viewlabel" width="20%">
                            Street:</td>
                        <td>
                            <asp:Label ID="label_street" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="viewlabel" width="20%">
                            Mobile Phone:</td>
                        <td>
                            <asp:Label ID="label_mob" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="viewlabel" width="20%">
                        </td>
                        <td>
                            <asp:Label ID="label_street1" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="viewlabel" width="20%">
                            Home Phone:</td>
                        <td>
                            <asp:Label ID="label_homephone" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="viewlabel" width="20%">
                            City:</td>
                        <td colspan="5">
                            <asp:Label ID="label_city" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="viewlabel" width="20%">
                            State:</td>
                        <td colspan="5">
                            <asp:Label ID="label_state" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="viewlabel" width="20%">
                            Country:</td>
                        <td colspan="5">
                            <asp:Label ID="label_country" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="center" class="header" colspan="6">
                Accenture Information</td>
        </tr>
        <tr>
            <td colspan="6">
                <table width="100%">
                    <tr>
                        <td class="viewlabel" width="20%">
                            Email Address:</td>
                        <td>
                            <asp:Label ID="label_email" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="viewlabel" width="20%">
                            Enterprise ID:</td>
                        <td>
                            <asp:Label ID="label_enterpriseid" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="viewlabel" width="20%">
                            GMU:</td>
                        <td>
                            <asp:Label ID="label_gmu" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="viewlabel" width="20%">
                            Level:</td>
                        <td>
                            <asp:Label ID="label_level" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="viewlabel" width="20%">
                            Date Hired:</td>
                        <td>
                            <asp:Label ID="label_hired" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="viewlabel" width="20%">
                            LMU:</td>
                        <td>
                            <asp:Label ID="label_lmu" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="viewlabel" width="20%">
                            Work Group:</td>
                        <td>
                            <asp:Label ID="label_workgroup" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="viewlabel" width="20%">
                            Status:</td>
                        <td>
                            <asp:Label ID="label_status1" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="viewlabel" width="20%">
                            Specialty:</td>
                        <td>
                            <asp:Label ID="label_specialty" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="viewlabel" width="20%">
                            Service Line:</td>
                        <td>
                            <asp:Label ID="label_serviceline" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="header" colspan="6">
                            Education Background</td>
                    </tr>
                    <tr>
                        <td colspan="6">
                            <asp:Label ID="label_edubackground" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="header" colspan="6">
                            Certification/Award</td>
                    </tr>
                    <tr>
                        <td colspan="6">
                            <asp:Label ID="label_certification" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="6">
                            <asp:Button ID="Button1" runat="server" Text="Okay" onclick="Button1_Click" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
