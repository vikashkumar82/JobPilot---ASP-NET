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
    public partial class user_update_education : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["eduid"] != null)
                {


                    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["cn"].ToString());
                    con.Open();
                    SqlDataReader myReader = null;
                    SqlCommand cmd = new SqlCommand("select * from Education where EduId=@id ", con);
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@id", Request.QueryString["eduid"].ToString());
                    myReader = cmd.ExecuteReader();
                    if (myReader.HasRows)
                    {
                        while (myReader.Read())
                        {
                            userEducationLavel.Text = myReader["EducationLavel"].ToString();
                            userDegree.Text = myReader["Degree"].ToString();
                            userYear.Text = myReader["Year"].ToString();
                            userNotes.Text = myReader["Notes"].ToString();
                            
                        }

                    }
                    con.Close();
                }
            }
        }

        protected void btnUpdateEducation_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["cn"].ToString());
            con.Open();
            SqlCommand cmd = new SqlCommand("update Education set EducationLavel=@EducatioLavel,Degree=@Degree,Year=@Year,Notes=@Notes where EduId=@id", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@id", Request.QueryString["eduid"].ToString());
            cmd.Parameters.AddWithValue("@EducatioLavel", userEducationLavel.Text);
            cmd.Parameters.AddWithValue("@Degree", userDegree.Text);
            cmd.Parameters.AddWithValue("@Year", userYear.Text);
            cmd.Parameters.AddWithValue("@Notes", userNotes.Text);
           
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Setting.aspx");
        }
    }
}