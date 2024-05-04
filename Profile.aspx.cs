using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobPilot
{
    public partial class profile3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //checkLogin();
                if (Session["userEmail"] != null || Session["userPassword"] != null)
                {
                    String sessionEmail = Session["userEmail"].ToString();
                    String sessionPassword = Session["userPassword"].ToString();


                    SqlConnection con2 = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["cn"].ToString());
                    con2.Open();

                    SqlCommand cmd2 = new SqlCommand("Select * from Register where Email=@Email and Password=@Password", con2);
                    cmd2.CommandType = CommandType.Text;
                    cmd2.Parameters.AddWithValue("@Email", sessionEmail);
                    cmd2.Parameters.AddWithValue("Password", sessionPassword);
                    SqlDataReader reader = cmd2.ExecuteReader();

                    if (reader.HasRows)
                    {


                    }
                    else
                        Response.Redirect("Login.aspx");

                    con2.Close();
                    reader.Close();
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }

                user.Text = Session["userName"].ToString();

                SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["cn"].ToString());
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from PostJobs ", con);
                cmd.CommandType = CommandType.Text;
                SqlDataReader reader2 = cmd.ExecuteReader();
                allJobsRepeter.DataSource = reader2;
                allJobsRepeter.DataBind();
                con.Close();
            }

            if (!IsPostBack)
            {
                try
                {
                    String sessionEmail = Session["userEmail"].ToString();
                    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["cn"].ToString());
                    string myquery = "select count(*) from AppliedJob where UserEmail=@UserEmail";
                    SqlCommand cmd = new SqlCommand(myquery, con);
                    cmd.Connection.Open();
                    cmd.Parameters.AddWithValue("@UserEmail", sessionEmail);
                    int countUser = (int)cmd.ExecuteScalar();
                    con.Close();
                    con.Dispose();
                    lblJobApplied.Text = countUser.ToString();
                }
                catch (Exception ex)
                {
                    lblJobApplied.Text = "150";
                }

                try
                {
                    String sessionEmail = Session["userEmail"].ToString();
                    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["cn"].ToString());
                    string myquery = "select count(*) from FevouriteJobs where UserEmail=@UserEmail";
                    SqlCommand cmd = new SqlCommand(myquery, con);
                    cmd.Connection.Open();
                    cmd.Parameters.AddWithValue("@UserEmail", sessionEmail);
                    int countUser = (int)cmd.ExecuteScalar();
                    con.Close();
                    con.Dispose();
                    lblBookmarked.Text = countUser.ToString();
                }
                catch (Exception ex)
                {
                    lblBookmarked.Text = "0";
                }
            }

        }
    }
}