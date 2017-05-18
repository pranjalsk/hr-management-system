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
    public partial class ViewEMployee : System.Web.UI.Page
    {
       
        EmployeeInfo empInfo = new EmployeeInfo();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Session["userId"] as string))
            {
                EmployeeController empController = new EmployeeController(int.Parse(Session["userId"].ToString()));
                empInfo = empController.EmployeeSearch(int.Parse(Request.QueryString["eid"]));

                label_firstname.Text = empInfo.FirstName;
                label_middlename.Text = empInfo.MiddleName;
                label_lastname.Text = empInfo.LastName;
                label_bday.Text = empInfo.BirthDate.ToString();

                label_gender.Text = empInfo.Gender;
                label_status.Text = empInfo.CivilStatus.ToString();
                label_sss.Text = empInfo.SSNo;
                label_tin.Text = empInfo.TinNo;
                label_citizenship.Text = empInfo.Citizenship;
                label_mob.Text = empInfo.MobileNo;
                label_homephone.Text = empInfo.HomePhoneNo;
                label_street.Text = empInfo.Street1;
                label_street1.Text = empInfo.Street2;
                label_city.Text = empInfo.City;
                label_state.Text = empInfo.State;
                label_country.Text = empInfo.Country;
                label_edubackground.Text = empInfo.EducBackGround;
                label_certification.Text = empInfo.Recognitions;
                label_email.Text = empInfo.AccentureDetailsInfo.Email;
                label_enterpriseid.Text = empInfo.AccentureDetailsInfo.EnterpriseId;
                label_level.Text = empInfo.AccentureDetailsInfo.Level.ToString();
                label_lmu.Text = empInfo.AccentureDetailsInfo.LMU;
                label_gmu.Text = empInfo.AccentureDetailsInfo.GMU;
                label_hired.Text = empInfo.AccentureDetailsInfo.DateHired.ToString();

                label_workgroup.Text = empInfo.AccentureDetailsInfo.WorkGroup;
                label_specialty.Text = empInfo.AccentureDetailsInfo.Specialty.ToString();
                label_serviceline.Text = empInfo.AccentureDetailsInfo.ServiceLine;
                label_status1.Text = empInfo.AccentureDetailsInfo.Status;
            }
            else 
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchEmployee.aspx");
        }
    }
}