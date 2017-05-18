using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HRS_CaseStudy_2.UI
{
    public partial class HRS_master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void imgBtn_employee_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("SearchEmployee.aspx");
        }

        protected void imgBtn_skillCat_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("SearchCategory.aspx");
        }

        protected void imgBtn_skills_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("SearchSkill.aspx");
        }

        protected void imgBtn_Projects_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("SearchProject.aspx");
        }
    }
}