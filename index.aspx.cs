using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobPilot
{
    
    public partial class index : System.Web.UI.Page
    {
        //public void checkLogin()
        //{
        //    String sessionEmail = Session["userEmail"].ToString();
        //    String sessionPassword = Session["Password"].ToString();


        //    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["cn"].ToString());
        //    con.Open();

        //    SqlCommand cmd = new SqlCommand("Select * from Register where Email=@Email and Password=@Password", con);
        //    cmd.CommandType = CommandType.Text;
        //    cmd.Parameters.AddWithValue("@Email", sessionEmail);
        //    cmd.Parameters.AddWithValue("Password", sessionPassword);
        //    SqlDataReader reader = cmd.ExecuteReader();

        //    if (reader.HasRows)
        //    {
        //        sessionEmail = reader["Email"].ToString();
        //        sessionPassword = reader["Password"].ToString();

        //    }
        //    else
        //        Response.Redirect("Login.aspx");

        //    con.Close();
        //}
        protected void Page_Load(object sender, EventArgs e)
        {
            //checkLogin();
        }


    }
}