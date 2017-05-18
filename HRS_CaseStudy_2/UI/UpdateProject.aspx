<%@ Page Title="" Language="C#" MasterPageFile="~/UI/HRS_master.Master" AutoEventWireup="true" CodeBehind="UpdateProject.aspx.cs" Inherits="HRS_CaseStudy_2.UI.UpdateProject" %>
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

        #Table1
        {
            height: 819px;
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
    }</script>


</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <table id="Table1" border="0" cellpadding="1" cellspacing="1" width="1005px">
        <tr>
            <td align="center" class="header" 
                
                
                style="HEIGHT: 1px; background-color: #FFFFFF; background-image: none; font-family: 'Times New Roman', Times, serif; font-size: large; font-weight: bold; font-style: normal; color: #000000;">
                Update Project</td>
        </tr>
        <tr>
            <td class="emptyline">
            </td>
        </tr>
        <tr valign="top">
            <td align="center">
                <table>
                    <tr>
                        <td align="left" class="label">
                            Project:</td>
                        <td align="left">
                            <asp:Label ID="lbl_ProjName" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="label">
                            Start Date:
                            
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txt_ProjStartDate" runat="server"></asp:TextBox>
                            <img alt="" src="images/calendar.JPG" onclick="displayCalendar(1)" 
                                style="background-image: url('images/calendar.JPG'); background-repeat: no-repeat"/></td>
                           
                            


                        <td><div id="datePicker">
                            <asp:Calendar ID="Calendar1" runat="server" 
                       onselectionchanged="Calendar1_SelectionChanged" BackColor="White" 
                                BorderColor="#3366CC" Font-Names="Verdana" 
                                Font-Size="8pt" ForeColor="#003399" Height="200px" 
                                Width="220px" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest">
                                <DayHeaderStyle ForeColor="#336666" 
                                    Height="1px" BackColor="#99CCCC" />
                                <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                                <OtherMonthDayStyle ForeColor="#999999" />
                                <SelectedDayStyle BackColor="#009999" ForeColor="#CCFF99" Font-Bold="True" />
                                <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                                <TitleStyle BackColor="#003399" Font-Bold="True" 
                                    Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" BorderColor="#3366CC" 
                                    BorderWidth="1px" />
                                <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                                <WeekendDayStyle BackColor="#CCCCFF" />
                            </asp:Calendar> </div>
                            <asp:RequiredFieldValidator ID="startDateRequiredFieldValidator" runat="server" 
                                ControlToValidate="txt_ProjStartDate" 
                                ErrorMessage="Start Date is the required field">*</asp:RequiredFieldValidator>
                        </td>
                           
                            


                    </tr>
                    <tr>
                        <td align="left" class="label">
                            End Date:</td>
                        <td align="left">
                            <asp:TextBox ID="txt_ProjEndDate" runat="server"></asp:TextBox>
                            <img alt="" src="images/calendar.JPG" onclick="displayCalendar(2)" 
                                style="background-image: url('images/calendar.JPG'); background-repeat: no-repeat"/></td>
                          

                            
                            

                           
                        <td> <div id="datePicker1">
                            <asp:Calendar ID="Calendar2" runat="server" 
                        onselectionchanged="Calendar2_SelectionChanged" BackColor="White" 
                                BorderColor="#3366CC" Font-Names="Verdana" 
                                Font-Size="8pt" ForeColor="#003399" Height="200px" 
                                Width="220px" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest">
                                <DayHeaderStyle ForeColor="#336666" 
                                    Height="1px" BackColor="#99CCCC" />
                                <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                                <OtherMonthDayStyle ForeColor="#999999" />
                                <SelectedDayStyle BackColor="#009999" ForeColor="#CCFF99" Font-Bold="True" />
                                <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                                <TitleStyle BackColor="#003399" Font-Bold="True" 
                                    Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" BorderColor="#3366CC" 
                                    BorderWidth="1px" />
                                <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                                <WeekendDayStyle BackColor="#CCCCFF" />
                            </asp:Calendar></div>
                            <asp:RequiredFieldValidator ID="endDateRequiredFieldValidator" runat="server" 
                                ControlToValidate="txt_ProjEndDate" 
                                ErrorMessage="End Date is the required field">*</asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="endDateCompareValidator" runat="server" 
                                ControlToCompare="txt_ProjStartDate" ControlToValidate="txt_ProjEndDate" 
                                ErrorMessage="End Date should be greater than Start Date." 
                                Operator="GreaterThan" Type="Date">*</asp:CompareValidator>
                        </td>
                          

                            
                            

                           
                    </tr>
                    <tr>
                        <td align="left" class="label">
                            Client:
                            
                        </td>
                        <td align="left">
                            <asp:TextBox ID="txt_ProjClient" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="clientRequiredFieldValidator" runat="server" 
                                ControlToValidate="txt_ProjClient" ErrorMessage="Client is the required field">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="clientRegularExpressionValidator" 
                                runat="server" ControlToValidate="txt_ProjClient" 
                                ErrorMessage="Client is not in valid format. Only letters, numbers, spaces, dots, " 
                                ValidationExpression="[\w_,\n\r\s\\\+\.\-/#()]*">*</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="label">
                            Description:</td>
                        <td align="left">
                            <asp:TextBox ID="txt_ProjDesc" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="descriptionRequiredFieldValidator" 
                                runat="server" ControlToValidate="txt_ProjDesc" 
                                ErrorMessage="Description is the required field">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="descriptionRegularExpressionValidator" 
                                runat="server" ControlToValidate="txt_ProjDesc" 
                                ErrorMessage="Description is not in valid format. Only letters, numbers, spaces, dots," 
                                ValidationExpression="[\w_,\n\r\s\\\+\.\-/#()]*">*</asp:RegularExpressionValidator>
                            <asp:CustomValidator ID="descriptionCustomValidator" runat="server" 
                                ControlToValidate="txt_ProjDesc" 
                                ErrorMessage="Description should not exceed 100 characters." 
                                onservervalidate="descriptionCustomValidator_ServerValidate">*</asp:CustomValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">
&nbsp;<asp:Button ID="btn_ProjUpdate" runat="server" Text="Update" onclick="btn_ProjUpdate_Click" />
                            <asp:Button ID="btn_View" runat="server" onclick="btn_View_Click" Text="View" />
                            <asp:Button ID="btn_updateCancel" runat="server" 
                                onclick="btn_updateCancel_Click" Text="Cancel" CausesValidation="False" />
                        </td>
                    </tr>
                </table>
                
                
                
                
                
                
                
                
                
                
                
                
               
               
                
                
                
                
                
                
                
                
                
                
                
                
                <asp:ValidationSummary ID="updateProjectValidationSummary" runat="server" />
                
                
                
                
                
                
                
                
                
                
                
                
               
               
                
                
                
                
                
                
                
                
                
                
                
                
            </td>
        </tr>
    </table>
</asp:Content>
