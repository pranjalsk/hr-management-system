using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HRS_CaseStudy_2.Controller;
using HRS_CaseStudy_2.BusinessEntity;

namespace HRS_CaseStudy_2.UI
{
    public partial class UpdateEmployee : System.Web.UI.Page
    {
     
        EmployeeInfo empInfo = new EmployeeInfo();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Session["userId"] as string))
            {

                EmployeeController empController = new EmployeeController(int.Parse(Session["userId"].ToString()));
                if (!IsPostBack)
                {
                    ddl_getLevel.DataSource = empController.GetLevelList();
                    ddl_getLevel.DataTextField = "LevelDescription";
                    ddl_getLevel.DataValueField = "LevelId";
                    ddl_getLevel.DataBind();

                    ddl_getSpecialtyList.DataSource = empController.GetSpecialtyList();
                    ddl_getSpecialtyList.DataTextField = "SpecialtyName";
                    ddl_getSpecialtyList.DataValueField = "SpecialtyId";
                    ddl_getSpecialtyList.DataBind();

                    dl_civilStatus.DataSource = empController.GetStatusList();
                    dl_civilStatus.DataTextField = "StatusDescription";
                    dl_civilStatus.DataValueField = "StatusId";
                    dl_civilStatus.DataBind();



                    empInfo = empController.EmployeeSearch(int.Parse(Session["empID"].ToString()));

                    empNumber.Text = Session["empID"].ToString();
                    add_fname.Text = empInfo.FirstName;
                    add_mname.Text = empInfo.MiddleName;
                    add_lname.Text = empInfo.LastName;
                    Calendar1.SelectedDate = empInfo.BirthDate;
                    add_bday.Text = empInfo.BirthDate.ToString();
                    ddl_gender.SelectedValue = empInfo.Gender;
                    dl_civilStatus.SelectedValue = empInfo.CivilStatus.ToString();
                    add_sssno.Text = empInfo.SSNo;
                    add_tinno.Text = empInfo.TinNo;
                    add_citizen.Text = empInfo.Citizenship;
                    add_mob.Text = empInfo.MobileNo;
                    add_hmob.Text = empInfo.HomePhoneNo;
                    add_street.Text = empInfo.Street1;
                    add_street1.Text = empInfo.Street2;
                    add_city.Text = empInfo.City;
                    add_state.Text = empInfo.State;
                    add_country.Text = empInfo.Country;
                    add_edc_back.Text = empInfo.EducBackGround;
                    add_certificate.Text = empInfo.Recognitions;
                    add_email.Text = empInfo.AccentureDetailsInfo.Email;
                    add_enpid.Text = empInfo.AccentureDetailsInfo.EnterpriseId;
                    ddl_getLevel.SelectedValue = empInfo.AccentureDetailsInfo.Level.ToString();
                    add_lmu.Text = empInfo.AccentureDetailsInfo.LMU;
                    add_gmu.Text = empInfo.AccentureDetailsInfo.GMU;
                    Calendar2.SelectedDate = empInfo.AccentureDetailsInfo.DateHired;
                    add_hired.Text = empInfo.AccentureDetailsInfo.DateHired.ToString();
                    add_wordgrp.Text = empInfo.AccentureDetailsInfo.WorkGroup;
                    ddl_getSpecialtyList.SelectedValue = empInfo.AccentureDetailsInfo.Specialty.ToString();
                    add_servise_line.Text = empInfo.AccentureDetailsInfo.ServiceLine;
                    add_status1.Text = empInfo.AccentureDetailsInfo.Status;


                }
            }
            else 
            {
                Response.Redirect("Login.aspx");
            
            }
        }
   
        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

         
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            EmployeeController empController = new EmployeeController(int.Parse(Session["userId"].ToString()));

            empController.EmployeeUpdate(int.Parse(Session["empID"].ToString()), add_fname.Text, add_mname.Text, add_lname.Text, Calendar1.SelectedDate, ddl_gender.SelectedValue, int.Parse(dl_civilStatus.SelectedValue), add_sssno.Text, add_tinno.Text, add_citizen.Text, add_mob.Text, add_hmob.Text, add_street.Text, add_street1.Text, add_city.Text, add_state.Text, add_country.Text, add_edc_back.Text, add_certificate.Text, add_email.Text, add_enpid.Text, int.Parse(ddl_getLevel.SelectedValue), add_lmu.Text, add_gmu.Text, Calendar2.SelectedDate, add_wordgrp.Text, int.Parse(ddl_getSpecialtyList.SelectedValue), add_servise_line.Text, add_status1.Text, int.Parse(Session["userId"].ToString()));
            Response.Redirect("ViewEmployee.aspx?eid="+int.Parse(Session["empID"].ToString()));
         
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            add_bday.Text = Calendar1.SelectedDate.ToString();
        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            add_hired.Text = Calendar2.SelectedDate.ToString();
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("SearchEmployee.aspx");
        }
    }
}