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
    public partial class CompanyPprofile1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["companyName"] != null)
                companyName.Text = Session["companyName"].ToString();

            if (!IsPostBack)
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
                    string sessionCompanyName = Session["companyName"].ToString();
                    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["cn"].ToString());
                    con.Open();
                    SqlCommand cmd = new SqlCommand("select * from PostJobs ", con);
                    cmd.CommandType = CommandType.Text;
                    SqlDataReader reader2 = cmd.ExecuteReader();
                    allJobsRepeter.DataSource = reader2;
                    allJobsRepeter.DataBind();
                    con.Close();
                }
                catch { }
               

            }
            if(!IsPostBack)
            {
                try
                {
                    string sessionCompanyEmail = Session["companyEmail"].ToString();
                    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["cn"].ToString());
                    string myquery = "select count(*) from PostJobs where CompanyEmail=@CompanyEmail";
                    SqlCommand cmd = new SqlCommand(myquery, con);
                    cmd.Connection.Open();
                    cmd.Parameters.AddWithValue("@CompanyEmail", sessionCompanyEmail);
                    int countUser = (int)cmd.ExecuteScalar();
                    con.Close();
                    con.Dispose();
                    lblOpenJob.Text = countUser.ToString();
                }
                catch (Exception ex)
                {
                    lblOpenJob.Text = "150";
                }
            }

        }
    }
}