using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HRS_CaseStudy_2.Controller;
using System.Data;
using HRS_CaseStudy_2.BusinessEntity;

namespace HRS_CaseStudy_2.UI
{
    public partial class UpdateCategory : System.Web.UI.Page
    {

        CategoryController cc;
        CategoryInfo c1 = new CategoryInfo();
        
        protected void Page_Load(object sender, EventArgs e)
        {



            if (!string.IsNullOrEmpty(Session["userId"] as string))
            {
                if (!IsPostBack)
                {
                    DataSet ds = new DataSet();

                    cc = new CategoryController(int.Parse(Session["userId"].ToString()));
                    ds = cc.categoryView(int.Parse(Session["CategoryId"].ToString()));

                    txt_desc.Text = ds.Tables[0].Rows[0]["CategoryDescription"].ToString();
                    txt_name.Text = ds.Tables[0].Rows[0]["CategoryName"].ToString();

                }
            
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
                   


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            CategoryController cc =  new CategoryController(int.Parse(Session["userId"].ToString()));
            cc.categoryUpdate(Convert.ToInt32(Session["CategoryId"]), txt_name.Text, txt_desc.Text,Convert.ToInt32(Session["userId"]));
            Response.Redirect("SearchCategory.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchCategory.aspx");
        }

       

        
    }
}