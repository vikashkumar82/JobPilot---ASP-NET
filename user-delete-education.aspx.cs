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
    public partial class user_education_delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["eduid"] != null)
                {


                    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["cn"].ToString());
                    con.Open();

                    SqlCommand cmd = new SqlCommand("delete from Education where EduId=@id ", con);
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@id", Request.QueryString["eduid"].ToString());
                    cmd.ExecuteNonQuery();
                    Response.Redirect("Setting.aspx");
                }
            }
        }
    }
}