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
    public partial class CreateSkill : System.Web.UI.Page
    {
        SkillInfo skillInfo = new SkillInfo();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Session["userId"] as string))
            {
                if (!IsPostBack)
                {
                    SkillController skillController = new SkillController(int.Parse(Session["userId"].ToString())); // createdBy=userId
                    ds = skillController.GetCategoryList();
                    ddl_Category.DataSource = ds;
                    ddl_Category.DataValueField = ds.Tables[0].Columns[0].ToString();
                    ddl_Category.DataTextField = ds.Tables[0].Columns[1].ToString();
                    ddl_Category.DataBind();
                }
            }
            else
	        {
                Response.Redirect("Login.aspx");
	        }
       
        }

        protected void ButtonAddSkill_Click(object sender, EventArgs e)
        {
            SkillController skillController = new SkillController(int.Parse(Session["userId"].ToString())); // createdBy=userId
            if (skillController.CreateSkill(txt_skillName.Text, txt_skillDesc.Text, int.Parse(ddl_Category.SelectedValue),ddl_Category.SelectedItem.Text))
            {
                Response.Write("Successfully added " + txt_skillName.Text);
            }
            else
            {
                Response.Write("Error");
            }
            Response.Redirect("SearchSkill.aspx");
        }

        protected void ButtonCancelSkillSearch_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchSkill.aspx");
        }
    }
}