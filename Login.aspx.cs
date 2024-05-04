using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using static System.Collections.Specialized.BitVector32;


namespace JobPilot
{
    
    public partial class Login : System.Web.UI.Page
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
                SqlCommand cmd = new SqlCommand("select Id,Name,Email,Password from Register where Email=@Email and Password=@Password", con);
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
                SqlDataReader reader = cmd.ExecuteReader();
                
                if (reader.Read())
                {
                    Session["userId"]=reader.GetValue(0).ToString();
                    Session["userName"]= reader.GetValue(1).ToString();
                    Session["userEmail"]= reader.GetValue(2).ToString();
                    Session["userPassword"]= reader.GetValue(3).ToString();
                    Response.Redirect("Profile.aspx");
                }
                else
                    Response.Redirect("Register.aspx");
            }
            catch (Exception ex) { 
                Response.Write(ex.Message); 
            }

        }
    }
}