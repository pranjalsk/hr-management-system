using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HRS_CaseStudy_2.Controller;
using System.Data;

namespace HRS_CaseStudy_2.UI
{
    public partial class SearchProject : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(Session["userId"] as string))
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void btn_ProjSrch_Click(object sender, EventArgs e)
        {
            ProjectController pc = new ProjectController(Convert.ToInt32(Session["userId"]));

            DataSet ds = new DataSet();
            ds = pc.SearchProjectByName(txt_ProjSearch.Text, Convert.ToInt32(Session["userId"]));
            gv_ShowProj.DataSource = ds;
            gv_ShowProj.DataBind();
        }

        protected void gv_ShowProj_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            if (e.CommandName == "Edit")
            {
                int rowIndex = int.Parse(e.CommandArgument.ToString());//returns row index.
                Session["projId"] = Convert.ToInt32(gv_ShowProj.DataKeys[rowIndex].Value);

                Response.Redirect("/UI/UpdateProject.aspx");
            }
           
        }
    }
}