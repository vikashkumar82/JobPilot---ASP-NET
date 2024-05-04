using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Runtime.InteropServices.ComTypes;
using System.IO;
using System.Runtime.InteropServices;
using System.Web.Services.Description;
using System.Text;

namespace JobPilot
{
    public partial class Setting : System.Web.UI.Page
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


                if (Session["userEmail"] != null)
                {
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
                if (Session["userName"] != null && Session["userPassword"] != null)
                {

                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
            }

            if (!IsPostBack)
            {

                String sessionEmail = Session["userEmail"].ToString();
                SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["cn"].ToString());
                con.Open();
                SqlDataReader myReader = null;
                SqlCommand cmd = new SqlCommand("select * from Profile where Email=@Email ", con);
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@Email", sessionEmail);
                myReader = cmd.ExecuteReader();
                if (myReader.HasRows)
                {
                    while (myReader.Read())
                    {
                        user_FullName.Text = myReader["Name"].ToString();
                        userEmail.Text = myReader["Email"].ToString();
                        user_Tagline.Text = myReader["ProffessionaTagline"].ToString();
                        user_Experience.Text = myReader["Experience"].ToString();
                        user_Education.Text = myReader["EducationLavel"].ToString();
                        user_Website.Text = myReader["Website"].ToString();
                        user_Dob.Text = myReader["DateOfBirth"].ToString();
                        user_Gender.Text = myReader["Gender"].ToString();
                        user_MaritalStatus.Text = myReader["MaratialStatus"].ToString();
                        user_Profession.Text = myReader["Proffession"].ToString();
                        user_Availability.Text = myReader["Availability"].ToString();
                        user_Skills.Text = myReader["Skills"].ToString();
                        user_Languages.Text = myReader["Languages"].ToString();
                        user_Biography.Text = myReader["Biography"].ToString();
                        user_SocialMedia.Text = myReader["SocialLink"].ToString();
                        user_Address.Text = myReader["Address"].ToString();
                        user_Phone.Text = myReader["Phone"].ToString();
                        user_AltNumber.Text = myReader["SecondaryPhone"].ToString();
                        user_Whatsapp.Text = myReader["WhatsappNumber"].ToString();

                        profilePic.ImageUrl = "~/ProfilePic/" + myReader["PicName"].ToString();
                        //Image1.ImageUrl = "~/profilePic/" + myReader["PicName"].ToString();
                    }
                }
                con.Close();
            }
            if (!IsPostBack)
            {
                String sessionEmail = Session["userEmail"].ToString();
                SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["cn"].ToString());
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from Experience where Email=@Email", con);
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@Email", sessionEmail);
                SqlDataReader reader = cmd.ExecuteReader();
                experienceRepeter.DataSource = reader;
                experienceRepeter.DataBind();
                con.Close();
            }
            if (!IsPostBack)
            {
                String sessionEmail = Session["userEmail"].ToString();
                SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["cn"].ToString());
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from Education where Email=@Email", con);
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@Email", sessionEmail);
                SqlDataReader reader = cmd.ExecuteReader();
                educationRepeter.DataSource = reader;
                educationRepeter.DataBind();
                con.Close();
            }
        }

        protected void btn_BasicDetails_Click(object sender, EventArgs e)
        {
            String sessionEmail = Session["userEmail"].ToString();
            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["cn"].ToString());
            con.Open();
            SqlCommand cmd = new SqlCommand("update Profile set Name=@Name,DateOfBirth=@Dob,ProffessionaTagline=@Tagline,Experience=@Experience,EducationLavel=@Education,Website=@Website where Email=@Email", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Email", sessionEmail);
            cmd.Parameters.AddWithValue("@Name", user_FullName.Text);
            cmd.Parameters.AddWithValue("@Dob", user_Dob.Text.ToString());
            cmd.Parameters.AddWithValue("@Tagline", user_Tagline.Text);
            cmd.Parameters.AddWithValue("@Experience", user_Experience.Text);
            cmd.Parameters.AddWithValue("@Education", user_Education.Text);
            cmd.Parameters.AddWithValue("@Website", user_Website.Text);

            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void btn_ProfileDetails_Click(object sender, EventArgs e)
        {
            String sessionEmail = Session["userEmail"].ToString();
            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["cn"].ToString());
            con.Open();
            SqlCommand cmd = new SqlCommand("update Profile set Gender=@Gender,MaratialStatus=@Maritial,Biography=@Biography,Proffession=@Profession,Availability=@Availability,Skills=@Skills,Languages=@Language where Email=@Email ", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Email", sessionEmail);
            cmd.Parameters.AddWithValue("@Gender", user_Gender.Text);
            cmd.Parameters.AddWithValue("@Maritial", user_MaritalStatus.Text);
            cmd.Parameters.AddWithValue("@Biography", user_Biography.Text);
            cmd.Parameters.AddWithValue("@Profession", user_Profession.Text);
            cmd.Parameters.AddWithValue("@Availability", user_Availability.Text);
            cmd.Parameters.AddWithValue("@Skills", user_Skills.Text);
            cmd.Parameters.AddWithValue("@Language", user_Languages.Text);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void btn_SocialMedia_Click(object sender, EventArgs e)
        {
            String sessionEmail = Session["userEmail"].ToString();
            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["cn"].ToString());
            con.Open();
            SqlCommand cmd = new SqlCommand("update Profile set SocialLink=@SocialMedia where Email=@Email ", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Email", sessionEmail);
            cmd.Parameters.AddWithValue("@SocialMedia", user_SocialMedia.Text);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void btn_Contact_Click(object sender, EventArgs e)
        {
            String sessionEmail = Session["userEmail"].ToString();
            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["cn"].ToString());
            con.Open();
            SqlCommand cmd = new SqlCommand("update Profile set Address=@Address,Phone=@Phone,SecondaryPhone=@AltPhone,WhatsappNumber=@Whatsapp where Email=@Email", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Email", sessionEmail);
            cmd.Parameters.AddWithValue("@Address", user_Address.Text);
            cmd.Parameters.AddWithValue("@Phone", user_Phone.Text);
            cmd.Parameters.AddWithValue("@AltPhone", user_AltNumber.Text);
            cmd.Parameters.AddWithValue("@Whatsapp", user_Whatsapp.Text);
            cmd.ExecuteNonQuery();
            con.Close();
        }


        protected void add_Experience_Click(object sender, EventArgs e)
        {
            String sessionEmail = Session["userEmail"].ToString();
            String sessionId = Session["userId"].ToString();

            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["cn"].ToString());
            if (con.State == ConnectionState.Closed)
                con.Open();

            SqlCommand cmd = new SqlCommand("insert into Experience (Id,Email,Company,Department,StartDate,EndDate,Designation,Responsibility,Working) values(@Id,@Email,@Company,@Department,@StartDate,@EndDate,@Designation,@Responsibility,@working);", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Id", sessionId);
            cmd.Parameters.AddWithValue("@Email", sessionEmail);
            cmd.Parameters.AddWithValue("@Company", user_Company.Text);
            cmd.Parameters.AddWithValue("@Department", user_Department.Text);
            cmd.Parameters.AddWithValue("@StartDate", user_ExpStartDate.Text);
            cmd.Parameters.AddWithValue("@EndDate", user_ExpEndDate.Text);
            cmd.Parameters.AddWithValue("@Designation", user_Designation.Text);
            cmd.Parameters.AddWithValue("@Responsibility", user_ExpResponsibility.Text);
            if (exp_CheckBox.Checked == true)
            {
                String working = "Currently working";
                cmd.Parameters.AddWithValue("@Working", working);
            }
            else
            {

                String working = "";
                cmd.Parameters.AddWithValue("@Working", working);
            }
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Setting.aspx");
        }

        protected void btn_AddEducation_Click(object sender, EventArgs e)
        {
            String sessionEmail = Session["userEmail"].ToString();
            String sessionId = Session["userId"].ToString();

            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["cn"].ToString());
            if (con.State == ConnectionState.Closed)
                con.Open();

            SqlCommand cmd = new SqlCommand("insert into Education (Id,Email,EducationLavel,Degree,Year,Notes) values(@Id,@Email,@EducationLavel,@Degree,@Year,@Notes);", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Id", sessionId);
            cmd.Parameters.AddWithValue("@Email", sessionEmail);
            cmd.Parameters.AddWithValue("@EducationLavel", user_EducationLavel.Text);
            cmd.Parameters.AddWithValue("@Degree", user_Degree.Text);
            cmd.Parameters.AddWithValue("@Year", user_EduYear.Text.ToString());
            cmd.Parameters.AddWithValue("@Notes", user_Notes.Text);


            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Setting.aspx");
        }

        protected void PicUpload_Click(object sender, EventArgs e)
        {


            if (profilePicSelect.HasFile)
            {
                String sessionEmail = Session["userEmail"].ToString();

                SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["cn"].ToString());
                if (con.State == ConnectionState.Closed)
                    con.Open();
                SqlCommand cmd = new SqlCommand("update Profile set PicName=@ProfilePic where Email=@Email ", con);
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@Email", sessionEmail);

                string img = "";

                if (profilePicSelect.HasFile)
                {
                    string pic = "~/ProfilePic/";
                    img = profilePicSelect.FileName;
                    profilePicSelect.PostedFile.SaveAs(Server.MapPath(pic + img));
                    profilePic.ImageUrl = img;

                    cmd.Parameters.AddWithValue("@ProfilePic", img);
                }
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                Response.Redirect("Setting.aspx");
            }
        }

        protected void btn_changePassword_Click(object sender, EventArgs e)
        {

            if (cnfPassword.Text.Length < 8)
            {
                errorDiv.Visible = true;
                errorLbl.Text = "Minimum 8 digits Password Required";
                return;
            }
            if (newPassword.Text != cnfPassword.Text)
            {
                errorDiv.Visible = true;
                errorLbl.Text = "Password Did't Matched";
                return;
            }

            try
            {
                String sessionEmail = Session["userEmail"].ToString();

                SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["cn"].ToString());
               
                con.Open();
                SqlCommand cmd = new SqlCommand("select Id,Name,Email,Password from Register where Email=@Email and Password=@Password", con);
                cmd.Parameters.AddWithValue("@Email", sessionEmail);
                cmd.Parameters.AddWithValue("@Password", currentPaasword.Text);
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    String sessionEmail2 = Session["userEmail"].ToString();

                    SqlConnection con2 = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["cn"].ToString());
                    con2.Open();
                    SqlCommand cmd2 = new SqlCommand("update Register set Password=@Password where Email=@Email ", con2);
                    cmd2.CommandType = CommandType.Text;
                    cmd2.Parameters.AddWithValue("@Email", sessionEmail2);
                    cmd2.Parameters.AddWithValue("Password", cnfPassword.Text);
                    cmd2.ExecuteNonQuery();
                    con2.Close();

                    successDiv.Visible = true;
                    successLbl.Text = "Password Changed Sucessfully";

                }
                else
                {
                    errorDiv.Visible = true;
                    errorLbl.Text = "Invalid current password";
                }
                reader.Close();
                con.Close();
            }
            catch (Exception ex)
            {
                errorDiv.Visible = true;
                errorLbl.Text = ex.Message;
            }


        }

        protected void resumeupload_Click(object sender, EventArgs e)
        {
            String sessionEmail = Session["userEmail"].ToString();

            if (resumeFile.HasFile)
            {
                string fileName=Path.GetFileName(resumeFile.FileName);
                string contentType=resumeFile.PostedFile.ContentType;
                using(Stream fs=resumeFile.PostedFile.InputStream)
                {
                    using(BinaryReader reader=new BinaryReader(fs))
                    {
                        byte[] bytes = reader.ReadBytes((Int32)fs.Length);
                        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["cn"].ToString());
                        con.Open();
                        SqlCommand cmd = new SqlCommand("update Profile set ResumeName=@FileName,Resume=@FileData where Email=@Email", con);
                        cmd.Parameters.AddWithValue("@Email", sessionEmail);
                        cmd.Parameters.AddWithValue("@FileName", fileName);
                        cmd.Parameters.AddWithValue("@FileData", bytes);
                       
                        cmd.ExecuteNonQuery();
                    }
                }
            }
        }

        protected void download_Click(object sender, EventArgs e)
        {
            string connectionString = System.Configuration.ConfigurationManager.AppSettings["cn"].ToString();
            string sessionEmail = Session["userEmail"].ToString();

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();

                // Replace "YourTable" with the actual table name and "Resume" with the binary data column name.
                using (SqlCommand cmd = new SqlCommand("SELECT ResumeName, Resume FROM Profile WHERE Email=@Email", con))
                {
                    cmd.Parameters.AddWithValue("@Email", sessionEmail);

                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);

                        if (dt.Rows.Count > 0)
                        {
                            string base64String = dt.Rows[0]["Resume"].ToString(); // Assuming the string is base64-encoded binary data

                            // Remove whitespace characters if present in the base64 string
                            base64String = base64String.Replace(" ", "+");

                            try
                            {
                                byte[] bytes = Convert.FromBase64String(base64String);
                                string fileName = dt.Rows[0]["ResumeName"].ToString();
                                // Now you have the binary data in the 'bytes' variable.
                                Response.Clear();
                                Response.Buffer = true;
                                Response.Charset = "";
                                Response.ContentType = "application/pdf";
                                Response.AddHeader("content-disposition", "attachment;filename=" + fileName);
                                Response.BinaryWrite(bytes);
                                Response.Flush();
                                Response.End();
                            }
                            catch (FormatException ex)
                            {
                                // Handle the format exception, such as logging the error or taking appropriate action.
                            }

                          
                        }
                    }
                }
            }
        }
    }
}