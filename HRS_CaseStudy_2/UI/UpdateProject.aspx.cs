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
    public partial class UpdateProject : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Session["userId"] as string))
            {
                if (!IsPostBack)
                {
                    ProjectController pc = new ProjectController(Convert.ToInt32(Session["userId"]));
                    ProjectInfo pf = new ProjectInfo();
                    pf = pc.SearchProjectByPK(Convert.ToInt32(Session["projId"]));
                    lbl_ProjName.Text = pf.ProjectName;
                    txt_ProjStartDate.Text = Convert.ToString(pf.StartDate);
                    txt_ProjEndDate.Text = pf.EndDate.ToString();
                    txt_ProjClient.Text = pf.Client;
                    txt_ProjDesc.Text = pf.ProjectDescription;

                }
            }
            else
            { 
                Response.Redirect("Login.aspx");
            }
        }

        protected void btn_ProjUpdate_Click(object sender, EventArgs e)
        {
            ProjectController pc = new ProjectController(Convert.ToInt32(Session["userId"]));
            pc.UpdateProject(Convert.ToInt32(Session["projId"]), txt_ProjDesc.Text, txt_ProjClient.Text, Convert.ToDateTime(txt_ProjStartDate.Text), Convert.ToDateTime(txt_ProjEndDate.Text), Convert.ToInt32(Session["userId"]));
            
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txt_ProjStartDate.Text = Calendar1.SelectedDate.ToString("d");
        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            txt_ProjEndDate.Text = Calendar2.SelectedDate.ToString("d");
        }

        protected void btn_View_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewProject.aspx?pId=" + Convert.ToInt32(Session["projId"]));
        }

        protected void btn_updateCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchProject.aspx");
        }

        protected void descriptionCustomValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = (args.Value.Length <= 100);
        }

      
      


    }
}