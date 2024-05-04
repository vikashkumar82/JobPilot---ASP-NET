using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace JobPilot
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-S290ELH\\SQLEXPRESS;Initial Catalog=jobPilot;Integrated Security=True");
            if(con.State==ConnectionState.Closed)
                con.Open();
            SqlCommand cmd = new SqlCommand("insert into Register (Name,Email,Password) values(@Name,@Email,@Password);", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Name",txtName.Text);
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
            cmd.ExecuteNonQuery();


            SqlCommand cmd1 = new SqlCommand("insert into Profile (Name,Email) values(@Name,@Email);", con);
            cmd1.CommandType = CommandType.Text;
            cmd1.Parameters.AddWithValue("@Name", txtName.Text);
            cmd1.Parameters.AddWithValue("@Email", txtEmail.Text);
            cmd1.ExecuteNonQuery();


            con.Close();
            Response.Redirect("profile.aspx");
        }
    }
} 