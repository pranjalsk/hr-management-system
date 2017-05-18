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
    public partial class SearchEmployee : System.Web.UI.Page
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
            
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("InsertEmployee.apsx");
        }

        protected void gv_RowCommand(object sender, GridViewCommandEventArgs e)
        {
           
        }

        protected void gv_RowCommand1(object sender, GridViewCommandEventArgs e)
        {
            int rowIndex = int.Parse(e.CommandArgument.ToString());
            Session["empID"] = gv.DataKeys[rowIndex].Value;
            if (e.CommandName == "Edit") 
            {
                Response.Redirect("UpdateEmployee.aspx");
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            EmployeeController empController = new EmployeeController(int.Parse(Session["userId"].ToString()));

            gv.DataSource = empController.EmployeeSearch(txt_FirstName.Text, txt_LastName.Text);
            gv.DataBind();
        }
    }
}