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
    public partial class SearchCategory : System.Web.UI.Page
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
            CategoryController cc =  new CategoryController(int.Parse(Session["userId"].ToString()));
            DataSet ds = new DataSet();

            ds = cc.categorySearch(txt_name.Text);
            gv.DataSource = ds;
            gv.DataBind();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void gv_PageIndexChanged(object sender, EventArgs e)
        {
          
        }

        protected void gv_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void gv_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            
            if (e.CommandName == "Edit")
            {
                int rowindex = int.Parse(e.CommandArgument.ToString());
                Session["CategoryId"]=gv.DataKeys[rowindex].Value;
                Response.Redirect("UpdateCategory.aspx");

            }

        }
    }
}