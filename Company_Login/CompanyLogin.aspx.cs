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
    public partial class CompanyLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-S290ELH\\SQLEXPRESS;Initial Catalog=jobPilot;Integrated Security=True");
            try
            {
                if (con.State == ConnectionState.Closed)
                    con.Open();
                SqlCommand cmd = new SqlCommand("select C_Id,CompanyName,CompanyEmail,CompanyPassword from CompanyRegister where CompanyEmail=@Email and CompanyPassword=@Password", con);
                cmd.Parameters.AddWithValue("@Email", C_Email.Text);
                cmd.Parameters.AddWithValue("@Password", C_Password.Text);
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.Read())
                {
                    //while(reader.Read())
                    //{
                    //    Session["companyId"] = reader["companyId"].ToString();
                    //}
                    Session["companyId"] = reader.GetValue(0).ToString();
                    Session["companyName"] = reader.GetValue(1).ToString();
                    Session["companyEmail"] = reader.GetValue(2).ToString();
                    Session["companyPassword"] = reader.GetValue(3).ToString();
                    Response.Redirect("~/Company_Login/CompanyPprofile.aspx");
                }
                else
                    Response.Redirect("CompanyRegister.aspx");
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}