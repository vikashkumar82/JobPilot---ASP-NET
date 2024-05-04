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
    public partial class company_page_profile : System.Web.UI.Page
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

                try
                {
                    String sessionCompanyEmail = Session["companyEmail"].ToString();
                    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["cn"].ToString());
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
                            lblcompanyName.Text = myReader["companyName"].ToString();
                            lblJobTitle.Text = myReader["companyIndustryType"].ToString();
                            lblorganizationType.Text = myReader["companyOrganizationType"].ToString();
                            lblCompanySizee.Text = myReader["companyTeamSize"].ToString();
                            lblLocation.Text = myReader["companyLocation"].ToString();
                            imgBannner.ImageUrl= "~/CompanyProfilePic/" + myReader["companyProfile"].ToString();
                            imgLogo.ImageUrl = "~/CompanyLogoPic/" +  myReader["companyLogo"].ToString();
                        }
                    }
                    con.Close();
                }
                catch(Exception ex) { }
                
            }
        }
    }
}