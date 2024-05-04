using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;


namespace JobPilot.Company_Login
{
    public partial class CompanyRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-S290ELH\\SQLEXPRESS;Initial Catalog=jobPilot;Integrated Security=True");
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlCommand cmd = new SqlCommand("insert into CompanyRegister (CompanyName,CompanyEmail,CompanyPassword) values(@C_Name,@C_Email,@C_Password);", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@C_Name", C_Name.Text);
            cmd.Parameters.AddWithValue("@C_Email", C_Email.Text);
            cmd.Parameters.AddWithValue("@C_Password", C_Password.Text);
            cmd.ExecuteNonQuery();


            SqlCommand cmd1 = new SqlCommand("insert into companyProfile (companyName,companyEmail) values(@C_Name,@C_Email);", con);
            cmd1.CommandType = CommandType.Text;
            cmd1.Parameters.AddWithValue("@C_Name", C_Name.Text);
            cmd1.Parameters.AddWithValue("@C_Email", C_Email.Text);
            cmd1.ExecuteNonQuery();


            con.Close();
            Response.Redirect("~/Company_Login/CompanyPprofile.aspx"); 
        }
    }
}