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
    public partial class update_user_experience : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if (Request.QueryString["exid"] != null)
                {

                    
                    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["cn"].ToString());
                    con.Open();
                    SqlDataReader myReader = null;
                    SqlCommand cmd = new SqlCommand("select * from Experience where ExpId=@id ", con);
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@id", Request.QueryString["exid"].ToString());
                    myReader = cmd.ExecuteReader();
                    if (myReader.HasRows)
                    {
                        while (myReader.Read())
                        {
                            userCompany.Text = myReader["Company"].ToString();
                            userDepartment.Text = myReader["Department"].ToString();
                            userDesignation.Text = myReader["Designation"].ToString();
                            userStart.Text = myReader["StartDate"].ToString();
                            userEnd.Text = myReader["EndDate"].ToString();
                            lblUserWorking.Text = myReader["Working"].ToString();
                            
                            userResponsibility.Text = myReader["Responsibility"].ToString();
                            

                        

                        }
                        
                    }
                    con.Close();
                }
            }

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["cn"].ToString());
            con.Open();
            SqlCommand cmd = new SqlCommand("update Experience set Company=@Company,Department=@Department,Designation=@Designation,StartDate=@StartDate,EndDate=@EndDate,Working=@Working,Responsibility=@Responsibility where ExpId=@id", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@id", Request.QueryString["exid"].ToString());
            cmd.Parameters.AddWithValue("@Company", userCompany.Text);
            cmd.Parameters.AddWithValue("@Department", userDepartment.Text);
            cmd.Parameters.AddWithValue("@Designation", userDesignation.Text);
            cmd.Parameters.AddWithValue("@StartDate", userStart.Text);
            cmd.Parameters.AddWithValue("@EndDate", userEnd.Text);

            if (userWorking.Checked == true)
            {
                String working = "Currently working";
                cmd.Parameters.AddWithValue("@Working", working);
            }
            else
            {

                String working = "";
                cmd.Parameters.AddWithValue("@Working", working);
            }

            cmd.Parameters.AddWithValue("@Responsibility ", userResponsibility.Text);

            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Setting.aspx");
        }
    }
}