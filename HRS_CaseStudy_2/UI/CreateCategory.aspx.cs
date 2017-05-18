using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HRS_CaseStudy_2.Controller;
using Microsoft.ApplicationBlocks.Data;
using System.Data;

namespace HRS_CaseStudy_2.UI
{
    public partial class CreateCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Session["userId"] as string))
            { }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            CategoryController cc = new CategoryController(int.Parse(Session["userId"].ToString()));
            cc.categoryInsert(txt_name.Text, txt_desc.Text,Convert.ToInt32(Session["userId"]));
            Response.Redirect("SearchCategory.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateCategory.aspx");
        }

     
    }
}
