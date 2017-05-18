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
    public partial class ViewCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Session["userId"] as string))
            {

                CategoryController cc = new CategoryController(int.Parse(Session["userId"].ToString()));
                DataSet ds = new DataSet();
                ds = cc.categoryView(int.Parse(Request.QueryString["CategoryId"]));
                lbl_name.Text = ds.Tables[0].Rows[0]["CategoryName"].ToString();
                lbl_desc.Text = ds.Tables[0].Rows[0]["CategoryDescription"].ToString();



            }
            else
            {
                Response.Redirect("Login.aspx");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Response.Redirect("SearchCategory.aspx");
        }
    }
}