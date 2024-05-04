using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobPilot.Company_Login
{
    public partial class company_question : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if (Session["companyEmail"] != null && Session["companyPassword"] != null)
                {

                }
                else
                {
                    Response.Redirect("CompanyLogin.aspx");
                }

                try
                {
                    String sessionCompanyEmail = Session["companyEmail"].ToString();
                    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["cn"].ToString());
                    con.Open();
                    SqlCommand cmd = new SqlCommand("select * from CustomQuestion where CompanyEmail=@Email", con);
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@Email", sessionCompanyEmail);
                    SqlDataReader reader = cmd.ExecuteReader();
                    quesRepeater.DataSource = reader;
                    quesRepeater.DataBind();
                    con.Close();
                }
                catch(Exception ex) { }
            }
        }

        protected void btnsaveQuest_Click(object sender, EventArgs e)
        {

            String sessionCompanyEmail = Session["companyEmail"].ToString();

            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["cn"].ToString());
            if (con.State == ConnectionState.Closed)
                con.Open();

            SqlCommand cmd = new SqlCommand("insert into CustomQuestion(CompanyEmail,Question,Required) values(@Email,@Question,@Required);", con);
            cmd.CommandType = CommandType.Text;
           
            cmd.Parameters.AddWithValue("@Email", sessionCompanyEmail);
            cmd.Parameters.AddWithValue("@Question", txtQuestion.Text);
           
            if (check.Checked == true)
            {
                String required = "Required";
                cmd.Parameters.AddWithValue("@Required", required);
            }
            else
            {

                String required = "";
                cmd.Parameters.AddWithValue("@Required", required);
            }
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("company-question.aspx");
        }
    }
}