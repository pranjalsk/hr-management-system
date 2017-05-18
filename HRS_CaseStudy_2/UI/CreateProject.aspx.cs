using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HRS_CaseStudy_2.Controller;

namespace HRS_CaseStudy_2.UI
{
    public partial class CreateProject : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(Session["userId"] as string))
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void imgBtn_cal1_Click(object sender, ImageClickEventArgs e)
        {
            Calendar1.Visible = true;
        }

        protected void imgBtn_cal2_Click(object sender, ImageClickEventArgs e)
        {
            Calendar2.Visible = true;
        }

      
        protected void btn_ProjAdd_Click(object sender, EventArgs e)
        {
            ProjectController pc = new ProjectController(Convert.ToInt32(Session["userId"]));
            pc.CreateProject(txt_ProjName.Text, txt_ProjDesc.Text, txt_ProjClient.Text, Convert.ToDateTime(txt_ProjStartDate.Text), Convert.ToDateTime(txt_ProjEndDate.Text), Convert.ToInt32(Session["userId"]));
        }

        protected void Calendar1_SelectionChanged1(object sender, EventArgs e)
        {
            txt_ProjStartDate.Text = Calendar1.SelectedDate.ToString("d");
        }

        protected void Calendar2_SelectionChanged1(object sender, EventArgs e)
        {
            txt_ProjEndDate.Text = Calendar2.SelectedDate.ToString("d");
        }

        protected void btn_ProjAddCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchProject.aspx");
        }

        protected void descriptionCustomValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = (args.Value.Length <= 100);
        }



    }
}