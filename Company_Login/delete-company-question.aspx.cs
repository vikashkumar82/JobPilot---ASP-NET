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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if (Request.QueryString["id"] != null)
                {


                    SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["cn"].ToString());
                    con.Open();

                    SqlCommand cmd = new SqlCommand("delete from CustomQuestion where SNo=@id ", con);
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@id", Request.QueryString["id"].ToString());
                    cmd.ExecuteNonQuery();
                    Response.Redirect("company-question.aspx");
                }
            }
        }
    }
}