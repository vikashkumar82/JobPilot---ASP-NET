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
    public partial class CompanySetting : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["companyEmail"] != null && Session["companyPassword"] != null)
                {

                }
                else
                {
                    Response.Redirect("CompanyLogin.aspx");
                }
            }

            if (!IsPostBack)
            {

                String sessionCompanyEmail = Session["companyEmail"].ToString();
                SqlConnection con = new SqlConnection("Data Source=DESKTOP-S290ELH\\SQLEXPRESS;Initial Catalog=jobPilot;Integrated Security=True");
                con.Open();
                SqlDataReader myReader = null;
                SqlCommand cmd = new SqlCommand("select * from companyProfile where companyEmail=@Email ", con);
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@Email", sessionCompanyEmail);
                myReader = cmd.ExecuteReader();
                if (myReader.HasRows)
                {
                    while (myReader.Read())
                    {
                        companyName.Text = myReader["companyName"].ToString();
                        companyAboutUs.Text = myReader["companyAboutUs"].ToString();
                        companyOrganization.Text = myReader["companyOrganizationType"].ToString();
                        companyIndustry.Text = myReader["companyIndustryType"].ToString();
                        comapanyTeamSize.Text = myReader["companyTeamSize"].ToString();
                        companyEstablishment.Text = myReader["companyEstablishment"].ToString();
                        companyWebsite.Text = myReader["companyWebsite"].ToString();
                        companyVision.Text = myReader["companyVision"].ToString();
                        companyLocation.Text = myReader["companyLocation"].ToString();
                        companyPhone.Text = myReader["companyPhone"].ToString();
                        companyUserName.Text = myReader["companyUserName"].ToString();
                        companyEmail.Text = myReader["companyEmail"].ToString();
                        companyEmail1.Text = myReader["companyEmail"].ToString();
                        companyLogo.ImageUrl = "~/CompanyLogoPic/" + myReader["companyLogo"].ToString();
                        companyPic.ImageUrl = "~/CompanyProfilePic/" + myReader["companyProfile"].ToString();
                    }
                }
                con.Close();

            }


            if (!IsPostBack)
            {
                String sessionCompanyEmail = Session["companyEmail"].ToString();
                SqlConnection con = new SqlConnection("Data Source=DESKTOP-S290ELH\\SQLEXPRESS;Initial Catalog=jobPilot;Integrated Security=True");
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from companyProfile where companyEmail=@Email", con);
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@Email", sessionCompanyEmail);
                grid_socialMedia.DataSource = cmd.ExecuteReader();
                grid_socialMedia.DataBind();
                con.Close();

            }
        }

        protected void btn_companyInfoUpdate_Click(object sender, EventArgs e)
        {
            String sessionCompanyEmail = Session["companyEmail"].ToString();
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-S290ELH\\SQLEXPRESS;Initial Catalog=jobPilot;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("update companyProfile set companyName=@CompanyName,companyAboutUs=@CompanyAboutus where companyEmail=@Email", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Email", sessionCompanyEmail);
            cmd.Parameters.AddWithValue("@CompanyName", companyName.Text);
            cmd.Parameters.AddWithValue("@CompanyAboutus", companyAboutUs.Text);
            cmd.ExecuteNonQuery();

            if (companyLogoUpload.HasFile)
            {
                SqlCommand cmd2 = new SqlCommand("update companyProfile set companyLogo=@companyLogo where companyEmail=@Email", con);
                cmd2.CommandType = CommandType.Text;
                cmd2.Parameters.AddWithValue("@Email", sessionCompanyEmail);

                string img = "";

                if (companyLogoUpload.HasFile)
                {
                    string pic = "~/CompanyLogoPic/";
                    img = companyLogoUpload.FileName;
                    companyLogoUpload.PostedFile.SaveAs(Server.MapPath(pic + img));
                    companyLogo.ImageUrl = img;

                    cmd2.Parameters.AddWithValue("@companyLogo", img);  // Use cmd2, not cmd


                    cmd2.ExecuteNonQuery(); // Execute the SQL update command
                    con.Close();
                    Response.Redirect("CompanySetting.aspx");
                }
            }

            if (companyPicUpload.HasFile)
            {
                SqlCommand cmd3 = new SqlCommand("update companyProfile set companyProfile=@companyPic where companyEmail=@Email", con);
                cmd3.CommandType = CommandType.Text;
                cmd3.Parameters.AddWithValue("@Email", sessionCompanyEmail);

                string companyImg = "";

                if (companyPicUpload.HasFile)
                {
                    string companyPics = "~/CompanyProfilePic/";
                    companyImg = companyPicUpload.FileName;
                    companyPicUpload.PostedFile.SaveAs(Server.MapPath(companyPics + companyImg));
                    companyPic.ImageUrl = companyImg;

                    cmd3.Parameters.AddWithValue("@companyPic", companyImg);  // Use cmd2, not cmd


                    cmd3.ExecuteNonQuery(); // Execute the SQL update command
                    con.Close();
                    Response.Redirect("CompanySetting.aspx");
                }
            }


            con.Close();
        }

        protected void btn_companyFoundingUpdate_Click(object sender, EventArgs e)
        {
            String sessionCompanyEmail = Session["companyEmail"].ToString();
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-S290ELH\\SQLEXPRESS;Initial Catalog=jobPilot;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("update companyProfile set companyOrganizationType=@CompanyOrganization,companyIndustryType=@CompanyIndustry,companyTeamSize=@CompanyTeamSize,companyEstablishment=@CompanyEstablishment,companyWebsite=@CompanyWebsite,companyVision=@CompanyVision  where companyEmail=@Email", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Email", sessionCompanyEmail);
            cmd.Parameters.AddWithValue("@CompanyOrganization", companyOrganization.Text);
            cmd.Parameters.AddWithValue("@CompanyIndustry", companyIndustry.Text);
            cmd.Parameters.AddWithValue("@CompanyTeamSize", comapanyTeamSize.Text);
            cmd.Parameters.AddWithValue("@CompanyEstablishment", companyEstablishment.Text);
            cmd.Parameters.AddWithValue("@CompanyWebsite", companyWebsite.Text);
            cmd.Parameters.AddWithValue("@CompanyVision", companyVision.Text);

            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void btn_addSocialMedia_Click(object sender, EventArgs e)
        {
            String sessionCompanyEmail = Session["companyEmail"].ToString();
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-S290ELH\\SQLEXPRESS;Initial Catalog=jobPilot;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("update companyProfile set companySocialMedia=@CompanySocialMedia where companyEmail=@Email", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Email", sessionCompanyEmail);
            cmd.Parameters.AddWithValue("@CompanySocialMedia", companySocialMedia.Text);

            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("CompanySetting.aspx");
        }

        protected void btn_companyPhone_Click(object sender, EventArgs e)
        {
            String sessionCompanyEmail = Session["companyEmail"].ToString();
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-S290ELH\\SQLEXPRESS;Initial Catalog=jobPilot;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("update companyProfile set companyLocation=@CompanyLocation,companyPhone=@CompanyPhone where companyEmail=@Email", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Email", sessionCompanyEmail);
            cmd.Parameters.AddWithValue("@CompanyLocation", companyLocation.Text);
            cmd.Parameters.AddWithValue("@CompanyPhone", companyPhone.Text);

            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void btn_companyUsername_Click(object sender, EventArgs e)
        {
            String sessionCompanyEmail = Session["companyEmail"].ToString();
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-S290ELH\\SQLEXPRESS;Initial Catalog=jobPilot;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("update companyProfile set companyUserName=@CompanyUserName where companyEmail=@Email", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Email", sessionCompanyEmail);
            cmd.Parameters.AddWithValue("@CompanyUserName", companyUserName.Text);

            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}