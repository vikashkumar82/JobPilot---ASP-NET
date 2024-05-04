using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobPilot
{
    public partial class job_description : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                String sessionEmail = Session["userEmail"].ToString();
                SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["cn"].ToString());
                con.Open();
                SqlDataReader myReader = null;
                SqlCommand cmd = new SqlCommand("select * from Profile where Email=@Email", con);
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@Email", sessionEmail);
                myReader = cmd.ExecuteReader();
                if (myReader.HasRows)
                {
                    while (myReader.Read())
                    {
                        Image1.ImageUrl = "~/profilePic/" + myReader["PicName"].ToString();
                    }
                }
            }

            if (!IsPostBack)
            {
                if (Session["userEmail"] != null && Session["userPassword"] != null)
                {

                }
                else
                {
                    Response.Redirect("Login.aspx");
                }


                try
                {
                    if (Request.QueryString["id"] != null)
                    {
                        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["cn"].ToString());
                        con.Open();
                        SqlDataReader myReader = null;
                        SqlCommand cmd = new SqlCommand("select * from PostJobs where Job_Id=@Id ", con);
                        cmd.CommandType = CommandType.Text;
                        cmd.Parameters.AddWithValue("@Id", Request.QueryString["id"].ToString());
                        myReader = cmd.ExecuteReader();
                        if (myReader.HasRows)
                        {
                            while (myReader.Read())
                            {
                                lblJobTitle.Text = myReader["JobTitle"].ToString();
                                lblLocation.Text = myReader["JobLocation"].ToString();
                                lblTitle.Text = myReader["JobTitle"].ToString();
                                lblCompany.Text = myReader["CompanyName"].ToString();
                                lblLocations.Text = myReader["JobLocation"].ToString();
                                lblPosition.Text = myReader["JobRole"].ToString();
                                lblSalary.Text = myReader["JobSalType"].ToString();
                                lblJobType.Text = myReader["JobRole"].ToString();
                                lblBenifits.Text = myReader["JobBenifits"].ToString();
                                lblJobExpire.Text = myReader["JobDeadline"].ToString();
                                lblJobtypess.Text = myReader["JobType"].ToString();
                                lblJobeRole.Text = myReader["JobRole"].ToString();
                                lblEducation.Text = myReader["JobEducation"].ToString();
                                lblExperience.Text = myReader["JobExperience"].ToString();
                                lblVacancies.Text = myReader["JobTotalVacancies"].ToString();
                                literaldescription.Text = myReader["JobDescription"].ToString();

                            }

                        }
                        con.Close();
                    }
                }
                catch (Exception ex)
                { }

                try
                {
                    String sessionEmail = Session["userEmail"].ToString();
                    if (Request.QueryString["id"] != null)
                    {
                        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["cn"].ToString());
                        con.Open();
                        SqlDataReader myReader = null;
                        SqlCommand cmd = new SqlCommand("select * from AppliedJob where JobId=@Id and UserEmail=@UserEmail", con);
                        cmd.CommandType = CommandType.Text;
                        cmd.Parameters.AddWithValue("@Id", Request.QueryString["id"].ToString());
                        cmd.Parameters.AddWithValue("@UserEmail", sessionEmail);
                        myReader = cmd.ExecuteReader();
                        if (myReader.HasRows)
                        {
                            while (myReader.Read())
                            {
                                int jobId = Convert.ToInt32(myReader["id"].ToString());
                                sessionEmail = myReader["UserEmail"].ToString();
                            }
                            btn_Apply.Visible = false;
                            applied.Visible = true;
                            dltAppliedJob.Visible = true;
                        }
                        else
                        {
                            btn_Apply.Visible = true;
                            applied.Visible = false;
                            dltAppliedJob.Visible = false;
                        }

                        con.Close();
                    }

                }
                catch (Exception ex)
                { }

                try
                {
                    String sessionEmail2 = Session["userEmail"].ToString();
                    if (Request.QueryString["id"] != null)
                    {
                        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["cn"].ToString());
                        con.Open();
                        SqlDataReader myReader = null;
                        SqlCommand cmd = new SqlCommand("select * from FevouriteJobs where JobId=@Id and UserEmail=@UserEmail", con);
                        cmd.CommandType = CommandType.Text;
                        cmd.Parameters.AddWithValue("@Id", Request.QueryString["id"].ToString());
                        cmd.Parameters.AddWithValue("@UserEmail", sessionEmail2);
                        myReader = cmd.ExecuteReader();
                        if (myReader.HasRows)
                        {

                            Bookmark.ImageUrl = "~/Picture/bookmarked.png";

                        }
                        else
                        {
                            Bookmark.ImageUrl = "~/Picture/bookmark.png";
                        }

                        con.Close();
                    }
                }
                catch (Exception ex)
                { }

            }
        }



        protected void btn_Apply_Click(object sender, EventArgs e)
        {

            String sessionEmail = Session["userEmail"].ToString();

            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["cn"].ToString());
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into AppliedJob (JobId,UserEmail) values(@Jid,@userEmail);", con);
            cmd.Parameters.AddWithValue("@Jid", Request.QueryString["id"].ToString());
            cmd.Parameters.AddWithValue("@userEmail", sessionEmail);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("job-description.aspx?id=" + Request.QueryString["id"].ToString());
        }

        protected void dltAppliedJob_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null)
            {
                String sessionEmail = Session["userEmail"].ToString();
                SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["cn"].ToString());
                con.Open();
                SqlCommand cmd = new SqlCommand("delete from AppliedJob where UserEmail=@UserEmail and JobId=@id", con);
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@id", Request.QueryString["id"].ToString());
                cmd.Parameters.AddWithValue("@UserEmail", sessionEmail);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("job-description.aspx?id=" + Request.QueryString["id"].ToString());
            }
        }

        protected void Bookmark_Click(object sender, ImageClickEventArgs e)
        {

            if (Request.QueryString["id"] != null)
            {
                String sessionEmail = Session["userEmail"].ToString();
                SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["cn"].ToString());
                con.Open();
                SqlDataReader myReader = null;
                SqlCommand cmd = new SqlCommand("select * from FevouriteJobs where JobId=@Id and UserEmail=@UserEmail", con);
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@Id", Request.QueryString["id"].ToString());
                cmd.Parameters.AddWithValue("@UserEmail", sessionEmail);
                myReader = cmd.ExecuteReader();

                if (myReader.HasRows)
                {
                    // Read data from the reader here if needed
                    while (myReader.Read())
                    {
                        // You can access data from the reader, e.g., myReader["ColumnName"]
                    }

                    con.Close();

                    SqlConnection con2 = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["cn"].ToString());
                    con2.Open();
                    SqlCommand cmd2 = new SqlCommand("delete from FevouriteJobs where UserEmail=@UserEmail and JobId=@id", con2);
                    cmd2.CommandType = CommandType.Text;
                    cmd2.Parameters.AddWithValue("@id", Request.QueryString["id"].ToString());
                    cmd2.Parameters.AddWithValue("@UserEmail", sessionEmail);
                    cmd2.ExecuteNonQuery();
                    con2.Close();
                    Response.Redirect("job-description.aspx?id=" + Request.QueryString["id"].ToString());

                }
                else
                {
                    con.Close(); // Close the connection here as well

                    SqlConnection con3 = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["cn"].ToString());
                    con3.Open();
                    SqlCommand cmd3 = new SqlCommand("insert into FevouriteJobs (JobId,UserEmail) values(@Jid,@userEmail);", con3);
                    cmd3.Parameters.AddWithValue("@Jid", Request.QueryString["id"].ToString());
                    cmd3.Parameters.AddWithValue("@userEmail", sessionEmail);
                    cmd3.ExecuteNonQuery();
                    con3.Close();
                    Response.Redirect("job-description.aspx?id=" + Request.QueryString["id"].ToString());
                }
            }
        }
    }
}