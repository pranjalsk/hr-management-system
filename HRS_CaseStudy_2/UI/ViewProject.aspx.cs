using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HRS_CaseStudy_2.BusinessEntity;
using HRS_CaseStudy_2.Controller;

namespace HRS_CaseStudy_2.UI
{
    public partial class ViewProject : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Session["userId"] as string))
            {
                ProjectController pc = new ProjectController();
                ProjectInfo prInf = new ProjectInfo();
                prInf = pc.SearchProjectByPK(Convert.ToInt32(Request.QueryString["pId"]));
                lbl_ProjName.Text = prInf.ProjectName;
                lbl_ProjStartDate.Text = prInf.StartDate.ToString();
                lbl_ProjEndDate.Text = prInf.EndDate.ToString();
                lbl_ProjDesc.Text = prInf.ProjectDescription;
                lbl_ProjClient.Text = prInf.Client;
            }
            else {
                Response.Redirect("Login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchProject.aspx");
        }
    }
}