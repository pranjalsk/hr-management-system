using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;



namespace HRS_CaseStudy_2
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Login_Click(object sender, EventArgs e)
        {

        }

        protected void btn_Login_Click1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=APPLE-PC\SQLEXPRESS;Initial Catalog=CASESTUDY;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("spValidateUser", con);
            cmd.Parameters.AddWithValue("@userName", txt_Login_username.Text);
            cmd.Parameters.AddWithValue("@password", txt_Login_password.Text);
            cmd.CommandType = CommandType.StoredProcedure;

            SqlDataReader sdr = cmd.ExecuteReader();
            while (sdr.Read())
            {
                if (sdr[0].ToString() == txt_Login_username.Text && sdr[1].ToString() == txt_Login_password.Text)
                {
                    Session["userId"] = sdr[2].ToString();
                    Session["LastModDate"] = System.DateTime.Today;
                    Response.Redirect("Default.aspx");
                }
                
            }
            lbl_ErrorMSg.Visible=true;
            lbl_ErrorMSg.Text = "Incorrect username or password";


        }


    }
}