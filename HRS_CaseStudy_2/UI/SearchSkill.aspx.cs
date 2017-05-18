using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HRS_CaseStudy_2.Controller;
using HRS_CaseStudy_2.BusinessEntity;
using System.Data;

namespace HRS_CaseStudy_2.UI
{
    public partial class SearchSkill : System.Web.UI.Page
    {
        SkillInfo skillInfo = new SkillInfo();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(Session["userId"] as string))
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void ButtonSearchSkillID_Click(object sender, EventArgs e)
        {
            SkillController skillController = new SkillController();
            ds = skillController.SearchSkills(txt_SkillNameSearch.Text);
            gv_SkillByName.DataSource = ds;
            gv_SkillByName.DataBind();
        }   

       

        protected void EditLinkClick(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Edit")
            {
                int rowIndex = int.Parse(e.CommandArgument.ToString());//returns row index.
                Session["skillId"] = (int)gv_SkillByName.DataKeys[rowIndex].Value;
                Response.Redirect("/UI/UpdateSkill.aspx");
            }

            else if (e.CommandName == "skillIdClicked")
            {
                int rowIndex = int.Parse(e.CommandArgument.ToString());//returns row index.
                Session["skillId"] = (int)gv_SkillByName.DataKeys[rowIndex].Value;
                Response.Redirect("/UI/ViewSkill.aspx");
            }
        }

        
    }
}