<%@ Page Title="" Language="C#" MasterPageFile="~/UI/HRS_master.Master" AutoEventWireup="true" CodeBehind="UpdateEmployee.aspx.cs" Inherits="HRS_CaseStudy_2.UI.UpdateEmployee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
 
 #datePicker
        {
        display:none;
      position:absolute;
            border:solid 2px black;
            background-color:white;
        }
#datePicker1
        {
         display:none;
            position:absolute;
            border:solid 2px black;
            background-color:white;
        }
        

.header
{
	background-color : #ff9933;
	font-family : Arial;
	font-weight : bold;
	color : White; 
	height : 1px;	
	
}

.label
{
	font-family : Arial;
	font-size : smaller;
	padding-left : 2px;
}

.img
{
	height : 20px;
	width : 21px;
	vertical-align : bottom; 
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
     <script type="text/javascript" >

         function displayCalendar(val) {

             if (val == 1) {
                 var datePicker = document.getElementById('datePicker');
                 datePicker.style.display = 'block';
             }
             else if (val == 2) {
                 var datePicker = document.getElementById('datePicker1');
                 datePicker.style.display = 'block';
             }

         }
    </script>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <table id="Table1" border="0" cellpadding="1" cellspacing="1" height="100%" 
        width="1005">
        <tr>
            <td colspan="6">
                <table width="100%">
                    <tr>
                        <td align="left" class="header" colspan="6" style="background-color: #000066">
                            <asp:Label ID="employeeNumberLabel" Runat="Server" CssClass="text">Employee Number:</asp:Label>
                        &nbsp;
                            <asp:Label ID="empNumber" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="center" class="header" colspan="6" style="background-color: #000066">
                Personal Information
            </td>
        </tr>
        <tr>
            <td colspan="6">
                <table width="100%">
                    <tr>
                        <td class="label">
                            Last Name:</td>
                        <td>
                            <asp:TextBox ID="add_lname" runat="server"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                    ControlToValidate="add_lname" 
                                    ErrorMessage="Lastname is not in valid format. Only letters, spaces, dots and single quotes are allowed." 
                                    ValidationExpression="[\w_\s\.-]*">*</asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="add_lname" ErrorMessage="Last Name is the required field">*</asp:RequiredFieldValidator>
                        </td>
                        <td class="label">
                            First Name:</td>
                        <td>
                            <asp:TextBox ID="add_fname" runat="server"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator11" 
                                    runat="server" ControlToValidate="add_fname" 
                                    ErrorMessage="Firstname is not in valid format. Only letters, spaces, dots and single quotes are allowed." 
                                    ValidationExpression="[\w_\s\.-]*">*</asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="add_fname" ErrorMessage="First Name is the required field">*</asp:RequiredFieldValidator>
                        </td>
                        <td class="label">
                            Middle Name:</td>
                        <td>
                            <asp:TextBox ID="add_mname" runat="server" 
                              ></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator12" 
                                    runat="server" ControlToValidate="add_mname" 
                                    ErrorMessage="Middlename is not in valid format. Only letters, spaces, dots and single quotes are allowed." 
                                    ValidationExpression="[\w_\s\.-]*">*</asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="add_mname" ErrorMessage="Middle Name is the required field">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="label">
                            Birth Date:</td>
                        <td>
&nbsp;<asp:TextBox ID="add_bday" runat="server" ReadOnly="True"></asp:TextBox>
                            <img alt="" src="images/calendar.JPG" onclick="displayCalendar(1)"/>
                            <div id="datePicker">
                            <asp:Calendar ID="Calendar1" 
                                runat="server" 
                                style="height: 196px; width: 294px" 
                                    onselectionchanged="Calendar1_SelectionChanged">
                            </asp:Calendar></div>
                                

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                    ControlToValidate="add_bday" ErrorMessage="Birth Date is the required field">*</asp:RequiredFieldValidator>
                                

                        </td>
                        <td class="label">
                            Age:</td>
                        <td>
                            <asp:TextBox ID="add_age" runat="server"></asp:TextBox>
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                                style="z-index: 1; left: 1028px; top: 329px; position: absolute; height: 366px; width: 216px" />
                        </td>
                        <td class="label">
                            Gender:</td>
                        <td>
                            <asp:DropDownList ID="ddl_gender" runat="server">
                                <asp:ListItem Value="M">Male</asp:ListItem>
                                <asp:ListItem Value="F">Female</asp:ListItem>
                            </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                    ControlToValidate="ddl_gender" ErrorMessage="Gender needs to be selected.">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="center" class="header" colspan="6" style="background-color: #000066">
                Civil Information</td>
        </tr>
        <tr>
            <td colspan="6">
                <table width="100%">
                    <tr>
                        <td class="label">
                            Status:</td>
                        <td>
                            <asp:DropDownList ID="dl_civilStatus" runat="server">
                            </asp:DropDownList>
                        </td>
                        <td class="label">
                            Citizenship:</td>
                        <td>
                            <asp:TextBox ID="add_citizen" runat="server"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                                    ControlToValidate="add_citizen" 
                                    ErrorMessage="letters, numbers, underscores (_), dashes (-), spaces ( ), and dots (.) only" 
                                    ValidationExpression="[\w_\s\.-]*">*</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="label">
                            SSS Number:</td>
                        <td>
                            <asp:TextBox ID="add_sssno" runat="server"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                    ControlToValidate="add_sssno" 
                                    ErrorMessage="numbers, spaces ( ), and dashes (-) only" 
                                    ValidationExpression="[0-9\s-]*">*</asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                    ControlToValidate="add_sssno" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                        <td class="label">
                            TIN Number:</td>
                        <td>
                            <asp:TextBox ID="add_tinno" runat="server"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator15" 
                                    runat="server" ControlToValidate="add_tinno" 
                                    ErrorMessage="numbers, spaces ( ), and dashes (-) only" 
                                    ValidationExpression="[0-9\s-]*">*</asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                    ControlToValidate="add_tinno" ErrorMessage="Required Field is missing">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="6">
                <table cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td align="center" class="header" colspan="2" style="background-color: #000066" 
                            width="50%">
                            Home Address</td>
                        <td align="center" class="header" colspan="2" style="background-color: #000066" 
                            width="50%">
                            Contact Information</td>
                    </tr>
                    <tr>
                        <td class="label">
                            Street:</td>
                        <td>
                            <asp:TextBox ID="add_street" runat="server"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator16" 
                                    runat="server" ControlToValidate="add_street" 
                                    ErrorMessage="Please enter valid input" 
                                    ValidationExpression="[\w_,\n\r\s\\\+\.\-/#()]*">*</asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                    ControlToValidate="add_street" 
                                ErrorMessage="Required Field is missing">*</asp:RequiredFieldValidator>
                        </td>
                        <td class="label">
                            Mobile Phone:</td>
                        <td>
                            <asp:TextBox ID="add_mob" runat="server"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator18" 
                                    runat="server" ControlToValidate="add_mob" 
                                    ErrorMessage="Please enter valid input" 
                                    ValidationExpression="[\w_,\n\r\s\\\+\.\-/#()]*">*</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="label">
                        </td>
                        <td>
                            <asp:TextBox ID="add_street1" runat="server"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator17" 
                                    runat="server" ControlToValidate="add_street1" 
                                    ErrorMessage="Please enter valid input" 
                                    ValidationExpression="[\w_,\n\r\s\\\+\.\-/#()]*">*</asp:RegularExpressionValidator>
                        </td>
                        <td class="label">
                            Home Phone:</td>
                        <td>
                            <asp:TextBox ID="add_hmob" runat="server"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator19" 
                                    runat="server" ControlToValidate="add_hmob" 
                                    ErrorMessage="Please enter valid input" 
                                    ValidationExpression="[\w_,\n\r\s\\\+\.\-/#()]*">*</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="label">
                            City:</td>
                        <td colspan="5">
                            <asp:TextBox ID="add_city" runat="server"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                                    ControlToValidate="add_city" 
                                    ErrorMessage="letters, numbers, underscores (_), dashes (-), spaces ( ), and dots (.) only" 
                                    ValidationExpression="[\w_\s\.-]*">*</asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                    ControlToValidate="add_city" ErrorMessage="Required Field is missing">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="label">
                            State:</td>
                        <td colspan="5">
                            <asp:TextBox ID="add_state" runat="server"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                                    ControlToValidate="add_state" 
                                    ErrorMessage="letters, numbers, underscores (_), dashes (-), spaces ( ), and dots (.) only" 
                                    ValidationExpression="[\w_\s\.-]*">*</asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                    ControlToValidate="add_state" ErrorMessage="Required Field is missing">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="label">
                            Country:</td>
                        <td colspan="5">
                            <asp:TextBox ID="add_country" runat="server"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                                    ControlToValidate="add_country" 
                                    ErrorMessage="letters, numbers, underscores (_), dashes (-), spaces ( ), and dots (.) only" 
                                    ValidationExpression="[\w_\s\.-]*">*</asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                    ControlToValidate="add_country" EnableViewState="False" 
                                ErrorMessage="Required Field is missing">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="center" class="header" colspan="6" style="background-color: #000066">
                Accenture Information</td>
        </tr>
        <tr>
            <td colspan="6">
                <table width="100%">
                    <tr>
                        <td class="label">
                            Email Address:</td>
                        <td>
                            <asp:TextBox ID="add_email" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                                    ControlToValidate="add_email" ErrorMessage="Required Field is missing">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator24" 
                                    runat="server" ControlToValidate="add_email" 
                                    ErrorMessage="Please enter a valid Email Address" 
                                    ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                        </td>
                        <td class="label">
                            Enterprise ID:</td>
                        <td>
                            <asp:TextBox ID="add_enpid" runat="server"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator13" 
                                    runat="server" ControlToValidate="add_enpid" 
                                    ErrorMessage="letters, numbers, underscores (_), dashes (-), spaces ( ), and dots (.) only" 
                                    ValidationExpression="[\w_\s\.-]*">*</asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                                    ControlToValidate="add_enpid" ErrorMessage="Required Field is missing">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="label">
                            GMU:</td>
                        <td>
                            <asp:TextBox ID="add_gmu" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                                    ControlToValidate="add_gmu" ErrorMessage="Required Field is missing">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator14" 
                                    runat="server" ControlToValidate="add_gmu" 
                                    ErrorMessage="letters and numbers only" ValidationExpression="[\w]*">*</asp:RegularExpressionValidator>
                        </td>
                        <td class="label">
                            Level:</td>
                        <td>
                            <asp:DropDownList ID="ddl_getLevel" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="label">
                            Date Hired:</td>
                        <td>
&nbsp;<asp:TextBox ID="add_hired" runat="server" ReadOnly="True"></asp:TextBox>
                            <img alt="" src="images/calendar.JPG" onclick="displayCalendar(2)" />

                            <div id="datePicker1">
                            <asp:Calendar ID="Calendar2" 
                                runat="server" 
                                style="height: 196px; width: 294px" 
                                    onselectionchanged="Calendar2_SelectionChanged">
                            </asp:Calendar></div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                                    ControlToValidate="add_hired" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                        <td class="label">
                            LMU:</td>
                        <td>
                            <asp:TextBox ID="add_lmu" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                                    ControlToValidate="add_lmu" ErrorMessage="Required Field is missing">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                                    ControlToValidate="add_lmu" ErrorMessage="letters and numbers only" 
                                    ValidationExpression="[\w]*">*</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="label">
                            Work Group:</td>
                        <td>
                            <asp:TextBox ID="add_wordgrp" runat="server"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator20" 
                                    runat="server" ControlToValidate="add_wordgrp" 
                                    ErrorMessage="Please enter valid input" 
                                    ValidationExpression="[\w_,\n\r\s\\\+\.\-/#()]*">*</asp:RegularExpressionValidator>
                        </td>
                        <td class="label">
                            Status:</td>
                        <td>
                            <asp:TextBox ID="add_status1" runat="server"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator10" 
                                    runat="server" ControlToValidate="add_status1" 
                                    ErrorMessage="letters, numbers, underscores (_), dashes (-), spaces ( ), and dots (.) only" 
                                    ValidationExpression="[\w_\s\.-]*">*</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="label">
                            Specialty:</td>
                        <td>
                            <asp:DropDownList ID="ddl_getSpecialtyList" runat="server">
                            </asp:DropDownList>
                        </td>
                        <td class="label">
                            Service Line:</td>
                        <td>
                            <asp:TextBox ID="add_servise_line" runat="server"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator21" 
                                    runat="server" ControlToValidate="add_servise_line" 
                                    ErrorMessage="Please enter valid input" 
                                    ValidationExpression="[\w_,\n\r\s\\\+\.\-/#()]*">*</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="header" colspan="6" style="background-color: #000066">
                            Education Background</td>
                    </tr>
                    <tr>
                        <td colspan="6">
                            <asp:TextBox ID="add_edc_back" runat="server" TextMode="MultiLine"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                                    ControlToValidate="add_edc_back" 
                                ErrorMessage="Required Field is missing">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator22" 
                                    runat="server" ControlToValidate="add_edc_back" 
                                    ErrorMessage="Please enter valid input" 
                                    ValidationExpression="[\w_,\n\r\s\\\+\.\-/#()]*">*</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="header" colspan="6" style="background-color: #000066">
                            Certification/Award</td>
                    </tr>
                    <tr>
                        <td colspan="6">
                            <asp:TextBox ID="add_certificate" runat="server" TextMode="MultiLine"></asp:TextBox>
                                
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator23" 
                                    runat="server" ControlToValidate="add_certificate" 
                                    ErrorMessage="Please enter valid input" 
                                    ValidationExpression="[\w_,\n\r\s\\\+\.\-/#()]*">*</asp:RegularExpressionValidator>
                                
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="6">
&nbsp;<asp:Button ID="Button1" runat="server" Text="Update" onclick="Button1_Click1" />
                            <asp:Button ID="Button2" runat="server" Text="Cancel" 
                                onclick="Button2_Click1" CausesValidation="False" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
