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
    public partial class ViewSkill : System.Web.UI.Page
    {
        SkillInfo skillInfo = new SkillInfo();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Session["userId"] as string))
            {
                
                SkillController skillController = new SkillController();

                skillInfo = skillController.SearchSkill(int.Parse(Request.QueryString["skillId"])); // change hard code value
                LabelCategory.Text = skillInfo.CategoryName;
                LabelDesc.Text = skillInfo.SkillDescription;
                LabelSkillName.Text = skillInfo.SkillName;
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchSkill.aspx");
        }
    }
}