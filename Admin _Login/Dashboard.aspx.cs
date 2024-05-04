using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobPilot.Admin__Login
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["cn"].ToString());
                    string myquery = "select count(*) from PostJobs";
                    SqlCommand cmd = new SqlCommand(myquery, con);
                    cmd.Connection.Open();
                    int countUser = (int)cmd.ExecuteScalar();
                    con.Close();
                    con.Dispose();
                    allJobsLabel.Text = countUser.ToString();
                }
                catch (Exception ex)
                {
                    allJobsLabel.Text = "0";
                }

                try
                {
                    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["cn"].ToString());
                    string myquery = "select count(*) from Register";
                    SqlCommand cmd = new SqlCommand(myquery, con);
                    cmd.Connection.Open();
                    int countUser = (int)cmd.ExecuteScalar();
                    con.Close();
                    con.Dispose();
                    verifiedUsersLabel.Text = countUser.ToString();
                    totalCandidatesLabel.Text = countUser.ToString();
                }
                catch (Exception ex)
                {
                    verifiedUsersLabel.Text = "0";
                    totalCandidatesLabel.Text = "0";
                }

                try
                {
                    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["cn"].ToString());
                    string myquery = "select count(*) from CompanyRegister";
                    SqlCommand cmd = new SqlCommand(myquery, con);
                    cmd.Connection.Open();
                    int countUser = (int)cmd.ExecuteScalar();
                    con.Close();
                    con.Dispose();
                    totalCompanieslabel.Text = countUser.ToString();
                }
                catch (Exception ex)
                {
                    totalCompanieslabel.Text = "0";
                }

                //int count = 0;
                //SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["cn"].ToString());
                //con.Open();
                //SqlCommand cmd = new SqlCommand("select count(*) from PostJobs", con);
                //cmd.CommandType = CommandType.Text;
                //count = (int)cmd.ExecuteScalar();
                //con.Close();
                //allJobsLabel.Text = count.ToString();

                //int count2 = 0;
                //SqlConnection con2 = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["cn"].ToString());
                //con.Open();
                //SqlCommand cmd2 = new SqlCommand("select count(*) from Register", con2);
                //cmd2.CommandType = CommandType.Text;
                //count2 = (int)cmd2.ExecuteScalar();
                //con2.Close();
                //verifiedUsersLabel.Text = count2.ToString();
                //totalCandidatesLabel.Text = count2.ToString();

                //int count3 = 0;
                //SqlConnection con3 = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["cn"].ToString());
                //con3.Open();
                //SqlCommand cmd3 = new SqlCommand("select count(*) from CompanyRegister", con3);
                //cmd3.CommandType = CommandType.Text;
                //count3 = (int)cmd3.ExecuteScalar();
                //con3.Close();
                //totalCompanieslabel.Text = count3.ToString();
            }
        }
    }
}