using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HRS_CaseStudy_2.Controller;
using System.Data;
using System.Data.SqlClient;

namespace HRS_CaseStudy_2.UI
{
    public partial class CreateEmployee : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Session["userId"] as string))
            {
                EmployeeController empController = new EmployeeController(int.Parse(Session["userId"].ToString()));

                if (!IsPostBack)
                {


                    DataSet ds = new DataSet();
                    ds = empController.GetStatusList();

                    ddl_getLevel.DataSource = empController.GetLevelList();
                    ddl_getLevel.DataTextField = "LevelDescription";
                    ddl_getLevel.DataValueField = "LevelId";
                    ddl_getLevel.DataBind();

                    ddl_getSpecialtyList.DataSource = empController.GetSpecialtyList();
                    ddl_getSpecialtyList.DataTextField = "SpecialtyName";
                    ddl_getSpecialtyList.DataValueField = "SpecialtyId";
                    ddl_getSpecialtyList.DataBind();

                    dl_civilStatus.DataSource = ds;
                    dl_civilStatus.DataTextField = "StatusDescription";
                    dl_civilStatus.DataValueField = "StatusId";
                    dl_civilStatus.DataBind();




                }
            }
            else 
            {
                Response.Redirect("Login.aspx");
            }
            
        }

       

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            add_bday.Text = Calendar1.SelectedDate.ToString("d");
        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            add_hired.Text = Calendar2.SelectedDate.ToString("d");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            

            EmployeeController empController = new EmployeeController(int.Parse(Session["userId"].ToString()));
            empController.EmployeeInsert(add_fname.Text, add_mname.Text, add_lname.Text, Calendar1.SelectedDate, ddl_gender.SelectedValue, int.Parse(dl_civilStatus.SelectedValue), add_sssno.Text, add_tinno.Text, add_citizen.Text, add_mob.Text, add_hmob.Text, add_street.Text, add_street1.Text, add_city.Text, add_state.Text, add_country.Text, add_edc_back.Text, add_certificate.Text, add_email.Text, add_enpid.Text, int.Parse(ddl_getLevel.SelectedValue), add_lmu.Text, add_gmu.Text, Calendar2.SelectedDate, add_wordgrp.Text, int.Parse(ddl_getSpecialtyList.SelectedValue), add_servise_line.Text, add_status1.Text, int.Parse(Session["userId"].ToString()));
            Response.Redirect("SearchEmployee.aspx");
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchEmployee.aspx");
        }

        protected bool CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (args.Value.Length != 10)
            {
                args.IsValid = false;
                return false;
            }
            else 
            {

                args.IsValid = true;
                return true;
            }
        }

        protected void add_mob_TextChanged(object sender, EventArgs e)
        {

        }

       
    }
}