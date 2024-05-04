using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Runtime.InteropServices;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace JobPilot.Company_Login
{
    public partial class CompanyPostJob : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            if (RadioButton1.Checked)
            {
                Panel1.Visible = true;
                Panel2.Visible = false;
                //RadioButton2.Checked = false;
            }
            if (Panel1.Visible)
            {
                customSal.Text = "";
                salType2.Text = "";
            }
            if (Panel2.Visible)
            {
                minSal.Text = "";
                maxSal.Text = "";
                salType1.Text = "";
            }
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            if (RadioButton2.Checked)
            {
                Panel1.Visible = false;
                Panel2.Visible = true;
                //RadioButton1.Checked = false;
            }
        }

        protected void company_postJob_Click(object sender, EventArgs e)
        {
            String sessionCompanyEmail = Session["companyEmail"].ToString();
            String sessionCompanyId = Session["companyId"].ToString();
            String sessionCompanyName = Session["companyName"].ToString();

            List<string> selectedValues = new List<string>();
            if (CheckBox1.Checked == true)
            {
                selectedValues.Add(CheckBox1.Text.ToString());
            }
            if (CheckBox2.Checked == true)
            {
                selectedValues.Add(CheckBox2.Text.ToString());
            }
            if (CheckBox3.Checked == true)
            {
                selectedValues.Add(CheckBox3.Text.ToString());
            }
            if (CheckBox4.Checked == true)
            {
                selectedValues.Add(CheckBox4.Text.ToString());
            }

            if (CheckBox5.Checked == true)
            {
                selectedValues.Add(CheckBox5.Text.ToString());
            }

            if (CheckBox6.Checked == true)
            {
                selectedValues.Add(CheckBox6.Text.ToString());
            }
            if (CheckBox7.Checked == true)
            {
                selectedValues.Add(CheckBox7.Text.ToString());
            }
            if (CheckBox4.Checked == true)
            {
                selectedValues.Add(CheckBox4.Text.ToString());
            }
            if (CheckBox8.Checked == true)
            {
                selectedValues.Add(CheckBox8.Text.ToString());
            }
            if (CheckBox9.Checked == true)
            {
                selectedValues.Add(CheckBox9.Text.ToString());
            }
            if (CheckBox10.Checked == true)
            {
                selectedValues.Add(CheckBox10.Text.ToString());
            }
            if (CheckBox11.Checked == true)
            {
                selectedValues.Add(CheckBox11.Text.ToString());
            }
            if (CheckBox12.Checked == true)
            {
                selectedValues.Add(CheckBox12.Text.ToString());
            }
            if (CheckBox13.Checked == true)
            {
                selectedValues.Add(CheckBox13.Text.ToString());
            }
            if (CheckBox14.Checked == true)
            {
                selectedValues.Add(CheckBox14.Text.ToString());
            }
            if (CheckBox15.Checked == true)
            {
                selectedValues.Add(CheckBox15.Text.ToString());
            }
            if (CheckBox16.Checked == true)
            {
                selectedValues.Add(CheckBox16.Text.ToString());
            }
            String s = "";
            foreach (string option in selectedValues)
            {
                s += ", " + option;
            }

            SqlConnection con = new SqlConnection("Data Source=DESKTOP-S290ELH\\SQLEXPRESS;Initial Catalog=jobPilot;Integrated Security=True");
            if (con.State == ConnectionState.Closed)
                con.Open();

            SqlCommand cmd = new SqlCommand("insert into PostJobs (CompnyID,CompanyName,CompanyEmail,JobTitle,JobCategory,JobTags,JobRole,JobMaxSal,JobMinSal,JobSalType,JobCustomSal,JobCustomSalType,JobEducation,JobExperience,JobType,JobTotalVacancies,JobDeadline,JobLocation,JobSkills,JobDescription,JobBenifits) values( @Id,@Name,@Email,@jobTitle,@jobCategory,@jobTags,@jobRole,@jobMaxSal,@jobMinSal,@jobSalType,@jobCoustomSal,@jobCoustomSalType,@jobEducation,@jobExperience,@jobType,@jobVacancies,@jobDeadline,@jobLocation,@jobSkills,@jobDescription,@Benifits);", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Id", sessionCompanyId);
            cmd.Parameters.AddWithValue("@Email", sessionCompanyEmail);
            cmd.Parameters.AddWithValue("@Name", sessionCompanyName);
            cmd.Parameters.AddWithValue("@jobTitle", jobTitle.Text);
            cmd.Parameters.AddWithValue("@jobCategory", jobCategory.Text);
            cmd.Parameters.AddWithValue("@jobTags", jobTags.Text);
            cmd.Parameters.AddWithValue("@jobRole", jobRole.Text);
            cmd.Parameters.AddWithValue("@jobMinSal", minSal.Text);
            cmd.Parameters.AddWithValue("@jobMaxSal", maxSal.Text);
            cmd.Parameters.AddWithValue("@jobSalType", salType1.Text);
            cmd.Parameters.AddWithValue("@jobCoustomSal", customSal.Text);
            cmd.Parameters.AddWithValue("@jobCoustomSalType", salType2.Text);
            cmd.Parameters.AddWithValue("@jobEducation", jobEducation.Text);
            cmd.Parameters.AddWithValue("@jobExperience", jobExperience.Text);
            cmd.Parameters.AddWithValue("@jobType", jobType.Text);
            cmd.Parameters.AddWithValue("@jobVacancies", jobVacacies.Text);
            cmd.Parameters.AddWithValue("@jobDeadline", jobDeadline.Text);
            cmd.Parameters.AddWithValue("@jobDescription", postJobDescription.Text);
            cmd.Parameters.AddWithValue("@jobSkills", postJobSkills.Text);
            cmd.Parameters.AddWithValue("@jobLocation", jobLocation.Text);
            cmd.Parameters.AddWithValue("@Benifits", s);
            cmd.ExecuteNonQuery();

            con.Close();
            Response.Redirect("CompanyPprofile.aspx");
        }
    }
}