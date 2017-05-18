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
    public partial class UpdateSkill : System.Web.UI.Page
    {
        SkillController skillController = new SkillController(); 
        SkillInfo skillInfo = new SkillInfo();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Session["userId"] as string))
            {
               
                if (!IsPostBack)
                {
                    LabelSkillID.Text = Session["skillId"].ToString();
                    skillInfo = skillController.SearchSkill((int)Session["skillId"]);
                    txt_NewSkillName.Text = skillInfo.SkillName.ToString();
                    txt_NewDesc.Text = skillInfo.SkillDescription.ToString();
                }    
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
                  
        }

        protected void ButtonUpdateSkill_Click(object sender, EventArgs e)
        {
            skillInfo.SkillId = (int)Session["skillId"];
            skillInfo.SkillName = txt_NewSkillName.Text;
            skillInfo.SkillDescription = txt_NewDesc.Text;
            skillInfo.ModifiedBy = int.Parse(Session["userId"].ToString());       
            if (skillController.UpdateSkill(skillInfo))
            {
                Response.Write("Successfully updated ");
            }
            else
            {
                Response.Write("error");
            }
            Response.Redirect("SearchSkill.aspx");
        }
    }
}